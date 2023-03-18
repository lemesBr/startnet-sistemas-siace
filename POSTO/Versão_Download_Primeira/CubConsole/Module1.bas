Attribute VB_Name = "CUBRotinas"
Option Explicit
Public BombaConfigurada(1 To 99) As Boolean
Public StatusIndex(1 To 99) As Integer
Public ProdutoPorBico(1 To 99, 1 To 4) As Integer
Public NomeProduto(1 To 64) As String
Public Preco1Produto(1 To 64) As Currency
Public Preco2Produto(1 To 64) As Currency
Public CodigoTAG(1 To 50) As String
Public DescriTAG(1 To 50) As String
Public NumBomba As Integer

Public Function LerConfiguracao() As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que lê os todos os dados gravados no access e joga para variáveis a fim de        *
'* minimizar o acesso a base de dados para somente 1 vez.                                   *
'*------------------------------------------------------------------------------------------*
    Dim dbDatabase As Database
    Dim rsProdutos As Recordset
    Dim rsBicos As Recordset
    Dim rsTAG As Recordset
    Dim i, j, k As Integer
    Dim UltimaBomba As Integer
    
    ZerarTudo
    LerConfiguracao = False
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
        NomeProduto(i) = rsProdutos!textprod
        Preco1Produto(i) = rsProdutos!Preco01
        Preco2Produto(i) = rsProdutos!Preco02
        rsProdutos.MoveNext
    Wend
    rsProdutos.Close
    Set rsProdutos = Nothing
    Set rsBicos = dbDatabase.OpenRecordset("select * from tabBicos order by codbomba, codbico", dbOpenSnapshot)
    If rsBicos.RecordCount = 0 Then
        MsgBox "Não há bicos cadastrados."
        LerConfiguracao = False
        Exit Function
    End If
    While Not rsBicos.EOF
        i = rsBicos!codBomba
        If i < 1 Or i > 99 Then
            MsgBox "O código de bomba " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        j = rsBicos!codBico
        If j < 1 Or j > 4 Then
            MsgBox "O código de bico " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        BombaConfigurada(i) = True
        If UltimaBomba <> i Then
            NumBomba = NumBomba + 1
            UltimaBomba = i
        End If
        k = rsBicos!codProduto
        If k < 1 Or k > 64 Then
            MsgBox "O código de produto " & i & " é invalido. Verifique o cadastro de bicos."
            Exit Function
        End If
        If NomeProduto(k) = "" Then
            MsgBox "O código de produto " & i & " não está cadastrado na tabela de produtos. Verifique o cadastro de bicos ou o de produtos."
            Exit Function
        End If
        ProdutoPorBico(i, j) = k
        rsBicos.MoveNext
    Wend
    rsBicos.Close
    Set rsBicos = Nothing
    
    Set rsTAG = dbDatabase.OpenRecordset("select * from tabtag order by codtag", dbOpenSnapshot)
    If rsTAG.RecordCount = 0 Then
        'MsgBox "Não há Titulares de TAG cadastrados."
        Exit Function
    End If
    i = 1
    rsTAG.MoveFirst
    While Not rsTAG.EOF
        CodigoTAG(i) = rsTAG!codTAG
        DescriTAG(i) = rsTAG!desTag
        i = 1 + 1
        rsTAG.MoveNext
    Wend
    rsTAG.Close
    Set rsTAG = Nothing
    
    LerConfiguracao = True
End Function

Private Sub ZerarTudo()
'*------------------------------------------------------------------------------------------*
'* Rotina para zerar as variaveis que recebem os dados da base de dados em access           *
'*------------------------------------------------------------------------------------------*
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
    NumBomba = 0
End Sub

Public Function GravarVendas(ByVal icodBomba As Integer, ByVal codProduto As Integer, ByRef dvalVolume As Double, ByVal dvalMoney As Double, ByVal dvalPrice As Double, ByVal AutorAbastecimento As String) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que grava os abastecimentos lidos em uma tabela de abastecimento no access        *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Codigo do produto                                                           *
'*              Volume vendido                                                              *
'*              Total a pagar                                                               *
'*              Preço por litro                                                             *
'*------------------------------------------------------------------------------------------*
    On Error GoTo ErroGravarVendas
    Dim dbDatabase As Database
    Dim rsVendas As Recordset
    Dim bico As Integer
    Dim i As Integer
    
    bico = 0
    For i = 1 To 4
        If ProdutoPorBico(icodBomba, i) = codProduto Then
            bico = i
            Exit For
        End If
    Next i
    Set dbDatabase = DBEngine.Workspaces(0).OpenDatabase("cub.mdb", False)
    Set rsVendas = dbDatabase.OpenRecordset("tabVendas", dbOpenTable, 0, dbOptimistic)
    
    rsVendas.AddNew
    rsVendas!codBomba = icodBomba
    rsVendas!codBico = bico
    rsVendas!Date = Date
    rsVendas!Time = Time
    If codProduto = -1 Then
        rsVendas!txtProduto = "Bico não mapeado"
    Else
        rsVendas!txtProduto = NomeProduto(codProduto)
    End If
    rsVendas!valVolume = dvalVolume
    rsVendas!valMoney = dvalMoney
    rsVendas!valPrice = dvalPrice
    If AutorAbastecimento = "" Then
        AutorAbastecimento = "N/A"
    End If
    rsVendas!desTag = Left(AutorAbastecimento, 50)
    rsVendas.Update
    rsVendas.Bookmark = rsVendas.LastModified
    
    rsVendas.Close
    GravarVendas = True
    On Error GoTo ErroAtualizaTelaVendas
    frmLastSales.datVendas.Refresh
    Exit Function
        
ErroGravarVendas:
    Debug.Print "Ocorreu um erro " & Err.Number & "-" & Err.Description & " ao tentar gravar o abastecimento na base de dados"
    Exit Function
ErroAtualizaTelaVendas:
    frmLastSales.datVendas.Refresh
   
End Function

Public Function TrocarPrecos()
Dim i As Integer
    
    For i = 1 To 64
        If NomeProduto(i) <> "" Then
          ProgramarPreco i, 1, Preco1Produto(i)
          ProgramarPreco i, 2, Preco2Produto(i)
        Else
          Exit For
        End If
    Next i

End Function

Public Function AutorizaPausaBomba(ByVal NroBomba As Integer)
    Dim codBomba As Integer
    Dim QtdVezes As Integer
    Dim strQtdVezes As String
    Dim i As Integer
    Dim Ok As Integer
    Dim NaoOK As Integer
    Dim Response As String * 500
    Dim StartTime As Long
    
    codBomba = NroBomba
    strQtdVezes = InputBox("Numero de repetições para testar a bomba", "Teste de Autorização-Desautorização da Bomba " & codBomba, "40")
    If strQtdVezes = "" Then
        Exit Function
    End If
    QtdVezes = CInt(strQtdVezes)
    Ok = 0
    NaoOK = 0
    'desautorizar se por acaso...
    CUBDesautorizarBomba codBomba
    Sleep 1500
    For i = 1 To QtdVezes
        CUBAutorizarBomba codBomba
        StartTime = timeGetTime()
        Do
            Sleep 10
            EstadoBomba codBomba, Response
        Loop While Left(Response, 1) <> CStr(AUTORIZADO) And timeGetTime() - StartTime < 1500
        
        If Left(Response, 1) <> CStr(AUTORIZADO) Then
            NaoOK = NaoOK + 1
        Else
            Ok = Ok + 1
        End If
        CUBDesautorizarBomba codBomba
        StartTime = timeGetTime()
        Do
            Sleep 10
            EstadoBomba codBomba, Response
        Loop While Left(Response, 1) <> CStr(DISPONIVEL) And timeGetTime() - StartTime < 1500
    Next i
    MsgBox "Resultado: OK=" & Ok & " Erro=" & NaoOK
End Function

Public Sub EnviaPrecosRandom()
    Dim NumBico As Integer
    Dim NivelPreco As Integer
    
    Randomize
    Dim CommandRejected As Boolean
    For NumBico = 1 To 6
        For NivelPreco = 1 To 2
            If Not ProgramarPreco(Chr(NumBico + Asc("0")), NivelPreco, CInt(Rnd(1) * 9999)) Then
                MsgBox "Erro de comunicação mudando preço - bico " & NumBico & " Nivel de Preço: " & IIf(NivelPreco = 1, "Preço #1", "Preço #2")
                GoTo EnviaPrecosRandom_Exit
            End If
        Next NivelPreco
    Next NumBico
    Exit Sub
    
EnviaPrecosRandom_Exit:
    MsgBox "Preços não enviados OK"

End Sub

Public Sub EnviaPresetMoney(ByVal NroBomba As Integer)
    Dim NivelPreco As String
    Dim codBomba As Integer
    Dim dblDinheiro As Double
    Dim strDinheiro As String
    Dim CommandRejected As Boolean
    
    codBomba = NroBomba
    If codBomba = 0 Then
        Exit Sub
    End If
    strDinheiro = InputBox("Por favor digite o valor da Pré-Determinação em dinheiro (R$0.10 a R$999.99)", "Pré-Determinação em Dinheiro - Bomba " & codBomba & " com seleção de nível de preço", "")
    If strDinheiro = "" Then
        Exit Sub
    End If
    dblDinheiro = CDbl(strDinheiro)
    NivelPreco = InputBox("Por favor escolha o nível de preço 1=a vista 2=a prazo)", "Pré-Determinação em Dinheiro - Bomba " & codBomba & " com seleção de nível de preço", "1")
    If NivelPreco = "" Then
        Exit Sub
    End If
'    PreDeterminacaoDinheiro PumpID, Left(Level, 1), dblMoney, CommandRejected
    PreDeterminacaoDinheiro codBomba, Left(NivelPreco, 1), dblDinheiro

End Sub

Public Sub EnviaPresetVolume(ByVal NroBomba As Integer)
    Dim NivelPreco As String
    Dim NumBico As String
    Dim codBomba As Integer
    Dim dblVolume As Double
    Dim strVolume As String
    Dim CommandRejected As Boolean
   
    codBomba = NroBomba
    If codBomba = 0 Then
        Exit Sub
    End If
    strVolume = InputBox("Por favor escolha o volume (0.10 a 999.99 litros)", "Pré-Determinação em Volume - Bomba " & codBomba & " com seleção de bico e nível de preço", "")
    If strVolume = "" Then
        Exit Sub
    End If
    dblVolume = CDbl(strVolume)
    NivelPreco = InputBox("Por favor escolha o nível de preço 1=a vista 2=a prazo)", "Pré-Determinação em Volume - Bomba " & codBomba & " com seleção de bico e nível de preço", "1")
    If NivelPreco = "" Then
        Exit Sub
    End If
    NumBico = InputBox("Por favor, escolha o bico (0-6)", "Pré-Determinação em Volume - Bomba " & codBomba & " com seleção de bico e nível de preço", "1")
    If NumBico = "" Then
        Exit Sub
    End If
    PreDeterminacaoVolume codBomba, Left(NivelPreco, 1), dblVolume, CInt(NumBico)

End Sub
