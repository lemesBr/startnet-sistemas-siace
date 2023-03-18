VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Teste de utilização de CUB"
   ClientHeight    =   4050
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7830
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4050
   ScaleWidth      =   7830
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chkLiberarAutomatico 
      Caption         =   "Liberação Automática"
      Height          =   195
      Left            =   2400
      TabIndex        =   2
      Top             =   120
      Width           =   4455
   End
   Begin VB.ListBox lstVendas 
      Height          =   3375
      ItemData        =   "main.frx":0442
      Left            =   2400
      List            =   "main.frx":0444
      TabIndex        =   1
      Top             =   360
      Width           =   5055
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6600
      Top             =   3360
   End
   Begin VB.ListBox lstStatus 
      Height          =   3570
      ItemData        =   "main.frx":0446
      Left            =   120
      List            =   "main.frx":0448
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim InitDone As Boolean
Dim PumpStatus(1 To 99) As Integer
Dim Produto(1 To 64) As String
Dim Preco(1 To 64) As Integer
Dim UltimaAutorizacao(1 To 99) As Long
Dim CUBForaDoAr As Boolean

Private Sub InitializeCUB()
    Dim i As Integer
    
    'Mapeamento de 2 posições de abastecimento de 2 bicos cada uma
    lstStatus.Clear
    For i = 1 To MAX_PUMPS
        lstStatus.AddItem i & "-"
        PumpStatus(i) = STATUS_UNKNOWN
    Next i
    DoEvents
    DoEvents
    
    Preco(1) = 1111
    Preco(2) = 2222
    Preco(3) = 3333
    Preco(4) = 4444
    Produto(1) = "Gasolina Comum"
    Produto(3) = "Gasolina Comum"
    Produto(2) = "Diesel Comum"
    Produto(4) = "Diesel Comum"
    AbrirBomba 1
    AbrirBomba 2
    MapearProduto 1, 1, 1
    MapearProduto 1, 2, 2
    MapearProduto 2, 3, 1
    MapearProduto 2, 4, 2
    ProgramarPreco 1, 1, Preco(1)
    ProgramarPreco 2, 1, Preco(2)
    ProgramarPreco 3, 1, Preco(3)
    ProgramarPreco 4, 1, Preco(4)
   
    'O Inmetro não permite a instalação de kit de preço duplo.
    'Aumentamos performance: não vamos programar o nivel de preço 2.
    'ProgramarPreco 1, 2, Preco(1)
    'ProgramarPreco 2, 2, Preco(2)
    'ProgramarPreco 3, 2, Preco(3)
    'ProgramarPreco 4, 2, Preco(4)
  
End Sub

Private Sub Form_Load()
    InitStatusDesc
    CUBForaDoAr = True
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    CUBDescarregarDll
    Cancel = False
End Sub

Private Sub lstStatus_DblClick()
    Dim i As Integer
    i = lstStatus.ListIndex + 1
    Select Case PumpStatus(i)
    Case AUTORIZADO, ABASTECENDO
        DesautorizarBomba i
    Case DESAUTORIZADA, BICOFORA
        AutorizarBomba i
    Case PAUSA
        ContinuarAbastecimento i
    End Select
    
End Sub

Private Sub Timer1_Timer()
    Dim Status As String
    Dim i As Integer
    Dim NewStatus As Integer
    Dim NroBico As Integer
    Dim PriceLevel As Integer
    Dim Volume As Double
    Dim Money As Double
    Dim Price As Double
    
    If Not LerEstado(0, Status) Then
        Status = String(MAX_PUMPS, Chr(STATUS_ERROR + Asc("0")))
        CUBForaDoAr = True
    Else
        If CUBForaDoAr Then
            InitializeCUB
            CUBForaDoAr = False
        End If
    End If
    For i = 1 To MAX_PUMPS
        NewStatus = Asc(Mid(Status, i, 1)) - Asc("0")
        If NewStatus = DESAUTORIZADA Or NewStatus = BICOFORA Then
            If UltimaAutorizacao(i) + 3000 < timeGetTime() Then
                If chkLiberarAutomatico.Value Then
                    AutorizarBomba i
                    UltimaAutorizacao(i) = timeGetTime()
                End If
            End If
        End If
        If NewStatus <> PumpStatus(i) Then
            lstStatus.List(i - 1) = i & " - " & StatusDesc(NewStatus)
            Select Case NewStatus
            Case VENDAPENDENTE:
                If LerVenda(i, NroBico, PriceLevel, Volume, Money, Price) Then
                    lstVendas.AddItem "Bico " & NroBico & " - " & Produto(NroBico) _
                        & " - Lts:" & Volume & " R$:" & Money & " Preço:" & Price
                    ConfirmarLeituraVenda i
                    If LerTotais(i, NroBico, 1, Volume, Money, Price) Then
                        lstVendas.AddItem "Bico " & NroBico & " Enc Lts:" & Volume & _
                        " Enc R$:" & Money
                    End If
                End If
            End Select
        End If
        PumpStatus(i) = NewStatus
    Next i
End Sub
