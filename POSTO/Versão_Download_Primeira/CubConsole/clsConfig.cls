VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit
Public BombaConfigurada(1 To 99) As Boolean
Public ProdutoPorBico(1 To 99, 1 To 4) As Integer
Public NomeProduto(1 To 64) As String
Public Preco1Produto(1 To 64) As Currency
Public Preco2Produto(1 To 64) As Currency

Public Function ReadConfig() As Boolean
    Dim dbDbatabase As Database
    Dim rsProdutos As Recordset
    Dim rsbicos As Recordset
    Dim i, j, k As Integer
    
    ReadConfig = False
    Set dbDatabase = DBEngine.Workspaces(0).OpenDatabase("cub.mdb", False)
    Set rsProdutos = dbDatabase.OpenRecordset("select * from tabProdutos order by codprod", dbOpenSnapshot)
    If rsProdutos.RecordCount = 0 Then
        MsgBox "Não há produtos cadastrados."
        Exit Function
    End If
    rsProdutos.MoveFirst
    While Not rsProdutos.EOF
        i = rsProdutos!CodProd
        If i < 1 Or i > 64 Then
            MsgBox "O código de produto " & i & " é invalido. Verifique o cadastro de produtos."
            Exit Function
        End If
        NomeProduto(i) = rsProdutos!TextProd
        Preco1Produto(i) = rsProdutos!Preco1
        Preco2Produto(i) = rsProdutos!Preco2
    Wend
    rsProdutos.Close
    Set rsProdutos = Nothing
    Set rsbicos = dbDatabase.OpenRecordset("select * from tabBicos order by codbomba, codbico", dbOpenSnapshot)
    If rsbicos.RecordCount = 0 Then
        MsgBox "Não há bicos cadastrados."
        ReadConfig = False
        Exit Function
    End If
    While Not rsProdutos.EOF
        i = rsbicos!CodBomba
        If i < 1 Or i > 99 Then
            MsgBox "O código de bomba " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        j = rsbicos!CodBico
        If j < 1 Or j > 4 Then
            MsgBox "O código de bico " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        BombaConfigurada(i) = True
        k = rsbicos!CodProduto
        If k < 1 Or k > 64 Then
            MsgBox "O código de produto " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        If NomeProduto(k) = "" Then
            MsgBox "O código de produto " & i & " não está cadastrado na tabela de produtos. Verifique o cadastro de bicos ou o de produtos."
            Exit Function
        End If
        ProdutoPorBico(i, j) = k
    Wend
    rsbicos.Close
    Set rsbicos = Nothing
    ReadConfig = True
End Function

Private Sub Class_Initialize()
    Dim i As Integer
    Dim j As Integer
    
    For i = 1 To 99
        BombaConfigurada(i) = False
        For j = 1 To 4
            ProdutoPorBico(i, j) = 0
        Next j
    Next i
    For i = 1 To 64
        NomeProduto(i) = ""
        Preco1Produto(i) = 0
        Preco2Produto(i) = 0
    Next i
End Sub
