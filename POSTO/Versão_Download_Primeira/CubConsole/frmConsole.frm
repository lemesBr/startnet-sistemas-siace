VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form frmConsole 
   BorderStyle     =   0  'None
   Caption         =   "Monitoramento de Bombas"
   ClientHeight    =   3990
   ClientLeft      =   435
   ClientTop       =   7440
   ClientWidth     =   7170
   ForeColor       =   &H00000000&
   Icon            =   "frmConsole.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   3990
   ScaleWidth      =   7170
   Begin VB.TextBox txtNumBomba 
      Alignment       =   2  'Center
      BackColor       =   &H80000004&
      Height          =   285
      Index           =   0
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   840
      Visible         =   0   'False
      Width           =   735
   End
   Begin ComCtl2.Animation anmStatus 
      Height          =   615
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   735
      _ExtentX        =   1296
      _ExtentY        =   1085
      _Version        =   327681
      BackStyle       =   1
      FullWidth       =   49
      FullHeight      =   41
   End
   Begin VB.Timer tmrPoll 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   960
      Top             =   120
   End
   Begin VB.Menu mnuBomba 
      Caption         =   "Opções da Bomba"
      Visible         =   0   'False
      Begin VB.Menu mnuUltimasVendas 
         Caption         =   "Últimas Vendas"
      End
      Begin VB.Menu mnuLine 
         Caption         =   "-"
      End
      Begin VB.Menu mnuTesteAutorizaDesautoriza 
         Caption         =   "Teste de Autorização/Desautorização"
      End
      Begin VB.Menu mnuLine2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPresetMoney 
         Caption         =   "Pré-Determinação em Dinheiro"
      End
      Begin VB.Menu mnuLine3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPresetVolume 
         Caption         =   "Pré-Determinação em Volume"
      End
   End
   Begin VB.Menu mnuOpcoesCUB 
      Caption         =   "Opções - CUB"
      Begin VB.Menu mnuMudancaPreco 
         Caption         =   "Mudança de Preço"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuPausaBombas 
         Caption         =   "Pausa Todas as Bombas"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuPrecosAleatorios 
         Caption         =   "Envio de Preços Aleatórios para as Bombas"
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnuNiveisPrecosAleatorios 
         Caption         =   "Envio de Niveis de Preços Aleatórios para as Bombas"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuAutorizarTodasBombas 
         Caption         =   "Autorizar Todas as Bombas"
         Shortcut        =   {F11}
      End
   End
   Begin VB.Menu mnuAutorizacaoBomba 
      Caption         =   "Autorizações"
      Begin VB.Menu mnuDesativado 
         Caption         =   "Desativado"
      End
      Begin VB.Menu mnuLevantaBico 
         Caption         =   "Ao Levantar Bico"
      End
      Begin VB.Menu mnuBicoDisponivel 
         Caption         =   "Ao Perceber Bico Disponível"
      End
      Begin VB.Menu mnuBicoLevantadoDisponivel 
         Caption         =   "Ao Perceber Bico Disponível ou Levantado"
      End
      Begin VB.Menu mnuTAG 
         Caption         =   "Ao Perceber TAG e Bico Levantado"
      End
   End
End
Attribute VB_Name = "frmConsole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private InitDone As Boolean
Private LastStatus As String * 100
Private CurrentAnimation As Integer
Public TipoAutorizacao As Integer
Private strTAG(1 To 99) As String


Private Sub Form_Activate()
    If Not InitDone Then
        InitPAMStatusCodes
        LastStatus = String(MAX_PUMPS, Chr(STATUS_PAM_ERROR + Asc("0")))
        If Not LerConfiguracao() Then
            Unload Me
        End If
        MapearProdutos
        AbrirBombas
        TrocarPrecos
        MontarObjetos
        tmrPoll_Timer
        InitDone = True
        Ler_TipoAutorizacao
        tmrPoll.Enabled = True
    End If
End Sub

Private Sub Form_Load()
    Me.Height = 1
    Me.Width = 1
    LastStatus = String(MAX_PUMPS, "0")
    InitDone = False
End Sub

Private Sub anmStatus_Click(Index As Integer)
'*--------------------------------------------------------------------------------------*
'* Verificação do estado atual da posição de abastecimento selecionada com o click do   *
'* mouse.                                                                               *
'* Dependendo do estado da posição selecionada o programa toma uma determinada ação.    *
'* Em BICOFORA ou DISPONIVEL    - a a posição de abastecimento é autorizada a abastecer *
'* Em PAUSA                     - o abastecimento na posição selecionada que estava em  *
'*                                pausa foi reiniciado                                  *
'* Em ABASTECENDO ou AUTORIZADO - o abastecimento na posição selecionada está entrando  *
'*                                em pausa                                              *
'* Em FECHADA                   - a posição selecionada será disponibilizada no sistema *
'*--------------------------------------------------------------------------------------*
    Dim CurrentStatus As Integer
    Dim CommandRejected As Boolean
    
    CurrentStatus = Asc(Mid(LastStatus, StatusIndex(Index), 1))
    Select Case CurrentStatus
    Case BICOFORA, DISPONIVEL:
        If TipoAutorizacao <> 5 Then
            AutorizarBomba StatusIndex(Index)
        End If
    Case PAUSA:
        ContinuarAbastecimento StatusIndex(Index)
    Case ABASTECENDO, AUTORIZADO:
        DesautorizarBomba StatusIndex(Index)
    Case FECHADA:
        DisponibilizaBomba StatusIndex(Index)
    End Select

End Sub

Private Sub mnuAutorizarTodasBombas_Click()
    If TipoAutorizacao <> 5 Then
        AutorizarTodasBombas
    End If
End Sub

Private Sub txtNumBomba_Click(Index As Integer)
'*--------------------------------------------------------------------------------------*
'* Menu com opções referentes a posição de abastecimento selecionada                    *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
   mnuTesteAutorizaDesautoriza.Tag = Index
   mnuPresetMoney.Tag = Index
   mnuPresetVolume.Tag = Index
   PopupMenu mnuBomba, vbPopupMenuRightAlign

End Sub

Private Sub anmStatus_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    CurrentAnimation = Index
End Sub

Private Sub MapearProdutos()
'*--------------------------------------------------------------------------------------*
'* Rotina para mapear os produtos em seus respectivos bicos no CUB                      *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
    Dim i As Integer
    Dim j As Integer
    Dim codProduto As Integer
    For i = 1 To MAX_PUMPS
        If BombaConfigurada(i) Then
            For j = 1 To 4
                codProduto = ProdutoPorBico(i, j)
                If codProduto <> 0 Then
                    MapearBicos i, codProduto, j
                End If
            Next j
        End If
    Next i
End Sub

Private Sub AbrirBombas()
'*--------------------------------------------------------------------------------------*
'* Rotina para disponibilizar as posições de abastecimento no CUB Server e no sistema   *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
    Dim i As Integer
    Dim j As Integer
    For i = 1 To MAX_PUMPS
        If BombaConfigurada(i) Then
            DisponibilizaBomba i
        Else
            RetirarBomba i
        End If
    Next i
    
End Sub

Private Sub MontarObjetos()
'*--------------------------------------------------------------------------------------*
'* Rotina para montar a tela com as posições de abastecimento cadastradas no programa   *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
    Dim i As Integer
    Dim LastPosX As Long
    Dim LastPosY As Long
    Dim LastCol As Integer
    Dim LastRow As Integer
    Dim LastStatusIndex As Integer
    Dim FixedHeight As Long
    Dim FixedWidth As Long
    Dim MaxRow As Long
    Dim MaxCol As Long
    Dim MargemEsq As Long: Dim MargemSup As Long
    Dim MargemInf As Long: Dim MargemDir As Long
    Dim HorSpace As Long: Dim VerSpace As Long
    Dim ObjetosPorFila As Integer
    
    LastPosX = 0: LastPosY = 0: LastCol = 0: LastRow = 0:
        
    FixedWidth = 995
    FixedHeight = 755
   
    MargemEsq = 150: MargemSup = 150
    MargemDir = 150: MargemInf = 650
    
    HorSpace = 100: VerSpace = 500
    
    ObjetosPorFila = CalcularObjetosPorFilaOtimo()
    LastStatusIndex = 0
    For i = 1 To MAX_PUMPS
        If BombaConfigurada(i) Then
            LastStatusIndex = LastStatusIndex + 1
            LastCol = LastCol + 1
            If LastCol = ObjetosPorFila + 1 Then
                LastRow = LastRow + 1
                LastCol = 1
            End If
            If MaxRow < LastRow Then
                MaxRow = LastRow
            End If
            If MaxCol < LastCol Then
                MaxCol = LastCol
            End If
            Load anmStatus(LastStatusIndex)
            Load txtNumBomba(LastStatusIndex)
            StatusIndex(i) = LastStatusIndex
            anmStatus(LastStatusIndex).Visible = True
            anmStatus(LastStatusIndex).Top = FixedHeight * LastRow + MargemSup + VerSpace * LastRow
            anmStatus(LastStatusIndex).Left = FixedWidth * (LastCol - 1) + MargemEsq + (LastCol - 1) * HorSpace
                    
            txtNumBomba(LastStatusIndex).Text = i
            txtNumBomba(LastStatusIndex).Visible = True
            txtNumBomba(LastStatusIndex).Top = FixedHeight * LastRow + MargemSup + VerSpace * LastRow + 800
            txtNumBomba(LastStatusIndex).Left = FixedWidth * (LastCol - 1) + MargemEsq + (LastCol - 1) * HorSpace + 120
                    
        End If
    Next i
    
    MaxRow = MaxRow + 1
    Me.Width = MaxCol * FixedWidth + MargemEsq + MargemDir + HorSpace * (MaxCol - 1) + 125
    Me.Height = MaxRow * FixedHeight + MargemSup + MargemInf + VerSpace * (MaxRow - 1) + 365
    Me.Top = 0
    Me.Left = 0
    Me.Refresh
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'*--------------------------------------------------------------------------------------*
'* Funções especiais no programa                                                        *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
    Dim i As Integer
    Dim CommandRejected As Boolean
    
    Select Case KeyCode:
    Case vbKeyF1:           'Tela de Help
        frmHelp.Show 1
    
    Case vbKeyF7            'Testa Autorização-Desautorização somente da bomba 1
        AutorizaPausaBomba 1
    
    Case vbKeyF8:           'Preset de Dinheiro com escolha de nível de preço somente na posição 1
        EnviaPresetMoney 1
    
    Case vbKeyF9:           'Preset de Volume com escolha de bico e nível de preço somente na posição 1
        EnviaPresetVolume 1
    
    Case vbKeyF10:           'Mostra tela com as últimas vendas
        frmLastSales.Show 1
        
    Case vbKeyF11:           'Autorizar todas as posições em IDLE, CALL ou STOP
        AutorizarTodasBombas
    End Select
End Sub

Private Function CalcularObjetosPorFilaOtimo() As Integer
'*--------------------------------------------------------------------------------------*
'* Função para calcular a quantidade de posições de abastecimento possiveis por linha   *
'* na tela de controle de pista                                                         *
'*--------------------------------------------------------------------------------------*
    Dim retval As Integer
    Select Case NumBomba:
    Case 1, 4, 9, 16, 25, 36, 49, 64, 81:
        retval = NumBomba ^ (1 / 2)
    Case Else:
        retval = 10
    End Select
    CalcularObjetosPorFilaOtimo = retval

End Function

Private Sub mnuDesativado_Click()
'*--------------------------------------------------------------------------------------*
'* Opção do menu de Autorização Automática das posições de abastecimento.               *
'* O tipo de autorização é gravado na registry do windows para que não seja necessário  *
'* alterar essa opção todas as vezes que se inicializa o CUB Server                     *
'* Se TIPO DE AUTORIZAÇÃO = 1, a autorização automática está desabilitada no sistema.   *
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = 1
    SalvaAutorizacao TipoAutorizacao
End Sub

Private Sub mnuLevantaBico_Click()
'*--------------------------------------------------------------------------------------*
'* Opção do menu de Autorização Automática das posições de abastecimento.               *
'* O tipo de autorização é gravado na registry do windows para que não seja necessário  *
'* alterar essa opção todas as vezes que se inicializa o CUB Server                     *
'* Se TIPO DE AUTORIZAÇÃO = 2, a posição de abastecimento está autorizada a abastecer   *
'*                             assim que o CUB Server detectar que um bico foi levantado*
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = 2
    SalvaAutorizacao TipoAutorizacao
End Sub

Private Sub mnuBicoDisponivel_Click()
'*--------------------------------------------------------------------------------------*
'* Opção do menu de Autorização Automática das posições de abastecimento.               *
'* O tipo de autorização é gravado na registry do windows para que não seja necessário  *
'* alterar essa opção todas as vezes que se inicializa o CUB Server                     *
'* Se TIPO DE AUTORIZAÇÃO = 3, a posição de abastecimento está autorizada a abastecer   *
'*                             a partir do momento que o CUB Server detectar que a mesma*
'*                             está disponível                                          *
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = 3
    SalvaAutorizacao TipoAutorizacao
End Sub

Private Sub mnuBicoLevantadoDisponivel_Click()
'*--------------------------------------------------------------------------------------*
'* Opção do menu de Autorização Automática das posições de abastecimento.               *
'* O tipo de autorização é gravado na registry do windows para que não seja necessário  *
'* alterar essa opção todas as vezes que se inicializa o CUB Server                     *
'* Se TIPO DE AUTORIZAÇÃO = 4, a posição de abastecimento está autorizada a abastecer   *
'*                             a partir do momento que o CUB Server detectar que a mesma*
'*                             está disponível ou que teve um bico levantado            *
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = 4
    SalvaAutorizacao TipoAutorizacao
End Sub

Private Sub mnuTAG_Click()
'*--------------------------------------------------------------------------------------*
'* Opção do menu de Autorização Automática das posições de abastecimento.               *
'* O tipo de autorização é gravado na registry do windows para que não seja necessário  *
'* alterar essa opção todas as vezes que se inicializa o CUB Console                    *
'* Se TIPO DE AUTORIZAÇÃO = 5, a posição de abastecimento está autorizada a abastecer   *
'*                             a partir do momento que o CUBConsole detectar que a mesma*
'*                             teve um bico levantado e foi passado um TAG              *
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = 5
    SalvaAutorizacao TipoAutorizacao

End Sub

Private Sub mnuMudancaPreco_Click()
    TrocarPrecos
End Sub

Private Sub mnuNiveisPrecosAleatorios_Click()
    EnviaNiveisRandom
End Sub

Private Sub mnuPausaBombas_Click()
    DesautorizarBomba 0
End Sub

Private Sub mnuPrecosAleatorios_Click()
    EnviaPrecosRandom
End Sub

Private Sub mnuPresetMoney_Click()
    EnviaPresetMoney (mnuPresetMoney.Tag)
End Sub

Private Sub mnuPresetVolume_Click()
    EnviaPresetVolume (mnuPresetVolume.Tag)
End Sub

Private Sub mnuTesteAutorizaDesautoriza_Click()
    AutorizaPausaBomba (mnuTesteAutorizaDesautoriza.Tag)
End Sub

Private Sub mnuUltimasVendas_Click()
    frmLastSales.Show 1
End Sub

Private Sub tmrPoll_Timer()
'*---------------------------------------------------------------------------------------*
'* Rotina que fica verificando o estado das posições de abastecimento de tempos em tempos*
'* Dependendo do estado de cada posição de abastecimento uma ação é tomada pelo programa *
'*---------------------------------------------------------------------------------------*
    Dim status As String
    Dim i As Integer
    Dim old_status As Integer
    Dim new_status As Integer
    Dim SystemGrade As Integer
    Dim PumpLevel As Integer
    Dim Volume As Double
    Dim Money As Double
    Dim Price As Double
    Dim CommandRejected As Boolean
    Dim retval As Long
              
    On Error GoTo ErrTimerPoll
    
    If Not EstadoBomba(0, status) Then
        status = String(MAX_PUMPS, Chr(STATUS_PAM_ERROR + Asc("0")))
        tmrPoll.Interval = 1000
    Else
        tmrPoll.Interval = 50
    End If
    
    'PATCH LENGTH
    If Len(status) < MAX_PUMPS Then
        status = status & String(MAX_PUMPS - Len(status), Chr(STATUS_UNKNOWN + Asc("0")))
    End If
    For i = 1 To MAX_PUMPS
        If BombaConfigurada(i) Then
            new_status = Asc(Mid(status, i, 1)) - Asc("0")
            old_status = Asc(Mid(LastStatus, i, 1))
            If new_status > UBound(PAMStatusCodes) Or (new_status < 0) Then
                new_status = STATUS_UNKNOWN
            End If
            If (old_status <> new_status) Or Not InitDone Then
                anmStatus(StatusIndex(i)).ToolTipText = "Posição " & i & " - " & PAMStatusCodes(new_status)
                anmStatus(StatusIndex(i)).Close
                anmStatus(StatusIndex(i)).AutoPlay = False
                anmStatus(StatusIndex(i)).Open AviFiles(new_status)
                anmStatus(StatusIndex(i)).Play AviPlayStyle(new_status)
                frmConsole.Refresh
                DoEvents
                DoEvents
                DoEvents
            End If
            
            Select Case new_status
            Case FIMDEVENDA
                If old_status <> new_status Then
                    If LerVendasBomba(i, SystemGrade, PumpLevel, Volume, Money, Price) Then
                        If GravarVendas(i, SystemGrade, Volume, Money, Price, strTAG(i)) Then
                            If LeituraVendaConfirmada(i) Then
                                'LerTotaisBomba i, SystemGrade, PumpLevel, Volume, Money, Price
                            End If
                        End If
                    End If
                End If
            Case ABASTECENDO
                '*----------------------------------------------------------------------------------------*
                '* IMPORTANTE: Só pedir o Real Time Money de uma bomba, a ativa.
                '* Caso contrario pode diminuir muito a performance en caso de bombas Gilbarco ou Tokheim
                '* ja que cada RealTimeMoney implica enviar um comando à bomba
                '*----------------------------------------------------------------------------------------*
                If StatusIndex(i) = CurrentAnimation Then
                    If PAMRealTimeMoney(i, Money) Then
                         anmStatus(StatusIndex(i)).ToolTipText = "Posição " & i & " - " & PAMStatusCodes(new_status) & " - R$ " & Format(Money, "0.00")
                    End If
                End If
            Case BICOFORA
                If TipoAutorizacao = 2 Or TipoAutorizacao = 3 Then
                    AutorizarBomba i
                    strTAG(i) = ""
                End If
                If TipoAutorizacao = 5 And strTAG(i) = "" Then
                    If LerTAG(i, strTAG(i)) Then
                      If PesquisarTag(strTAG(i)) Then
                        AutorizarBomba i
                      Else
                        strTAG(i) = ""
                      End If
                    End If
                End If
            Case DISPONIVEL
                If TipoAutorizacao = 3 Or TipoAutorizacao = 4 Then
                    AutorizarBomba i
                End If
                strTAG(i) = ""
            End Select
        End If
        Mid(LastStatus, i, 1) = Chr(new_status)
    Next i
    Me.Refresh
    DoEvents
    Exit Sub

ErrTimerPoll:
    Debug.Print "Erro " & Err.Number & " " & Err.Description & " no tmrPoll_timer()"
End Sub

Public Sub EnviaNiveisRandom()
'*--------------------------------------------------------------------------------------*
'* Rotina que envia preços randômicos para as posições de abastecimento                 *
'*                                                                                      *
'*--------------------------------------------------------------------------------------*
    Dim PumpID As Integer
    Dim HoseID As Integer
    Dim status As Integer
    Dim CommandRejected As Boolean
    Dim NewLevel As Integer
    
    Randomize
    For PumpID = 1 To MAX_PUMPS
        status = Asc(Mid(LastStatus, PumpID, 1))
        If status = DISPONIVEL Or status = BICOFORA Then
            NewLevel = (CInt(Rnd(1) * 9999) Mod 2) + 1
            NewLevel = 2
            If Not ProgramarNivelPreco(PumpID, NewLevel) Then
                If Not CommandRejected Then
                    MsgBox "Erro de comunicação ao mudar níveis de preço. Bomba: " & PumpID & " - Bico " & HoseID
                    GoTo EnviaNiveisRandom_Exit
                Else
                    MsgBox "Mudança de nível de preço rejeitada pela Bomba " & PumpID & " - Bico " & HoseID
                
                End If
            End If
        End If
    Next PumpID

EnviaNiveisRandom_Exit:

End Sub

Private Sub SalvaAutorizacao(ByVal Autorizacao)
'*--------------------------------------------------------------------------------------*
'* Rotina que salva o tipo de autorização automática na registry do windows             *
'*--------------------------------------------------------------------------------------*
    SaveSetting "CUB", "TCPClientDemo", "AUTH", Autorizacao
    MarcaMenuAutorizacao
End Sub

Private Sub Ler_TipoAutorizacao()
'*--------------------------------------------------------------------------------------*
'*Rotina que lê da registry do windows o tipo de autorização automática gravada.        *
'*--------------------------------------------------------------------------------------*
    TipoAutorizacao = CInt(GetSetting("CUB", "TCPClientDemo", "AUTH", "0"))
    If TipoAutorizacao < 1 Or TipoAutorizacao > 5 Then
        TipoAutorizacao = 1
    End If
    MarcaMenuAutorizacao
End Sub

Private Sub MarcaMenuAutorizacao()
'*---------------------------------------------------------------------------------------*
'* Rotina para marcar e desmarcar no menu do controle de pista as opções de abastecimento*
'* automático.                                                                           *
'*---------------------------------------------------------------------------------------*
    Select Case TipoAutorizacao
    Case 1:
        mnuDesativado.Checked = True
        mnuLevantaBico.Checked = False
        mnuBicoDisponivel.Checked = False
        mnuBicoLevantadoDisponivel.Checked = False
        mnuTAG.Checked = False
    Case 2:
        mnuLevantaBico.Checked = True
        mnuDesativado.Checked = False
        mnuBicoDisponivel.Checked = False
        mnuBicoLevantadoDisponivel.Checked = False
        mnuTAG.Checked = False
    Case 3:
        mnuBicoDisponivel.Checked = True
        mnuDesativado.Checked = False
        mnuLevantaBico.Checked = False
        mnuBicoLevantadoDisponivel.Checked = False
        mnuTAG.Checked = False
    Case 4:
        mnuBicoLevantadoDisponivel.Checked = True
        mnuDesativado.Checked = False
        mnuLevantaBico.Checked = False
        mnuBicoDisponivel.Checked = False
        mnuTAG.Checked = False
    Case 5:
        mnuTAG.Checked = True
        mnuBicoLevantadoDisponivel.Checked = False
        mnuDesativado.Checked = False
        mnuLevantaBico.Checked = False
        mnuBicoDisponivel.Checked = False
    End Select
End Sub

Private Sub AutorizarTodasBombas()
Dim i As Integer
'*------------------------------------------------------------------------------------------*
'* Rotina para autorizar todas as bombas de uma vez                                         *
'*------------------------------------------------------------------------------------------*
        For i = 1 To MAX_PUMPS
            If BombaConfigurada(i) Then
                If Mid(LastStatus, i, 1) = Chr(DISPONIVEL) Or _
                   Mid(LastStatus, i, 1) = Chr(BICOFORA) Or _
                   Mid(LastStatus, i, 1) = Chr(PAUSA) Then
                    AutorizarBomba i
                End If
            End If
        Next i
End Sub

Private Function PesquisarTag(ByRef TagID As String) As Boolean
    Dim i As Integer
    On Error GoTo ErrPesquisarTag
    
    For i = 1 To UBound(CodigoTAG)
        If CodigoTAG(i) = TagID Then
            TagID = DescriTAG(i)
            PesquisarTag = True
            Exit Function
        End If
    Next i

ErrPesquisarTag:
    PesquisarTag = False
End Function

