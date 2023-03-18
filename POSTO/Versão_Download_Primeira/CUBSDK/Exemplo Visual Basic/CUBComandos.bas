Attribute VB_Name = "CUBComandos"
Option Explicit

Public Function MapearProduto(ByVal PumpID As Integer, ByVal SystemGrade As Integer, _
                            ByVal PumpGrade As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que mapeia os produtos cadastrados no programa no CUBServer                       *
'* Parâmetros:  Numero da Bomba                                                             *
'*              Numero do Bico                                                              *
'*              Codigo do Produto                                                           *
'*------------------------------------------------------------------------------------------*
    MapearProduto = IIf(CUBMapearProduto(PumpID, PumpGrade, SystemGrade) = 0, True, False)
End Function

Public Function AbrirBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que habilita uma posição de abastecimento no CUBServer                            *
'* Parâmetros:  Numero da Bomba                                                             *
'*------------------------------------------------------------------------------------------*
    AbrirBomba = IIf(CUBAbrirBomba(PumpID) = 0, True, False)
End Function

Public Function FecharBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que desabilita uma posição de abastecimento no CUBServer                          *
'* Parâmetros:  Numero da Bomba                                                             *
'*------------------------------------------------------------------------------------------*
    FecharBomba = IIf(CUBFecharBomba(PumpID) = 0, True, False)
End Function

Public Function LerEstado(ByVal PumpID As Integer, ByRef Response As String) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que retorna o estado de uma posição de abastecimento                              *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Estado da posição de abastecimento                                          *
'*------------------------------------------------------------------------------------------*
    Dim tmp As String * 100
     
    tmp = Space(100)
    If CUBLerEstado(PumpID, tmp) = 0 Then
        LerEstado = True
        Response = Trim(tmp)
    Else
        LerEstado = False
    End If
End Function

Public Function LerVenda(ByVal PumpID As Integer, _
                         ByRef SystemGrade As Integer, ByRef PumpLevel As Integer, _
                         ByRef Volume As Double, ByRef Money As Double, _
                         ByRef Price As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que lê a venda que acaba de ser feita em uma posição de abastecimento.            *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Numero do produto                                                           *
'*              Nivel de preço utilizado                                                    *
'*              Volume em mililitros                                                        *
'*              Valor a Pagar                                                               *
'*              Preço por Litro                                                             *
'*------------------------------------------------------------------------------------------*
    Dim NroProduto As Long
    Dim NivelDePreco As Long
    Dim Mililitros As Long
    Dim Dinheiro As Long
    Dim Preco As Long
    Dim retval As Long
    
    retval = CUBLerVenda(PumpID, NroProduto, NivelDePreco, Mililitros, Dinheiro, Preco)
    If retval = 0 Then
        SystemGrade = NroProduto
        PumpLevel = NivelDePreco
        Volume = Mililitros / 1000
        Price = Preco / 1000
        Money = Dinheiro / 100
        LerVenda = True
    Else
        LerVenda = False
    End If
   
End Function

Public Function ConfirmarLeituraVenda(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que envia comando de confirmação de leitura da venda ao CUB Server.               *
'* Parâmetros:  Número da posição de abastecimento.                                         *
'*------------------------------------------------------------------------------------------*
    ConfirmarLeituraVenda = IIf(CUBConfirmarLeituraVenda(CLng(PumpID)) = 0, True, False)
End Function

Public Function AutorizarBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que envia o comando de autorização de abastecimento a uma posição de abastecimento*
'* Parâmetros:  Número da posição de abastecimento                                          *
'*------------------------------------------------------------------------------------------*
    AutorizarBomba = IIf(CUBAutorizarBomba(PumpID) = 0, True, False)
End Function

Public Function DesautorizarBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que envia o comando de desautorização ou pausa de abastecimento a uma posição de  *
'* abastecimento                                                                            *
'* Parâmetros:  Número da posição de abastecimento                                          *
'*------------------------------------------------------------------------------------------*
    DesautorizarBomba = IIf(CUBDesautorizarBomba(PumpID) = 0, True, False)
End Function

Public Function ContinuarAbastecimento(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que envia o comando para continuar o abastecimento de uma posição que estava em   *
'* pausa                                                                                    *
'* Parâmetros:  Número da posição de abastecimento                                          *
'*------------------------------------------------------------------------------------------*
    ContinuarAbastecimento = IIf(CUBContinuarAbastecimento(PumpID) = 0, True, False)
End Function

Public Function LerTotais(ByVal PumpID As Integer, _
                          ByVal SystemGrade As Integer, ByVal Level As Integer, _
                          ByRef Volume As Double, ByRef Money As Double, _
                          ByRef Price As Double) As Boolean
    
    Dim szEncerranteLitros As String * 20
    Dim szEncerranteDinheiro As String * 20
    Dim Preco As Long
    
    If CUBLerTotais(PumpID, SystemGrade, Level, szEncerranteLitros, szEncerranteDinheiro, Preco) = 0 Then
        Volume = CDbl(szEncerranteLitros) / 100
        Money = CDbl(szEncerranteDinheiro) / 100
        Price = Preco / 1000
        LerTotais = True
    Else
        LerTotais = False
    End If
End Function
Public Function ProgramarPreco(ByVal SystemGrade As Integer, _
                               ByVal PriceLevel As Integer, _
                               ByVal Price As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar os preços                                                          *
'* Parâmetros:  Codigo do produto                                                           *
'*              Nivel de preço                                                              *
'*              Novo preço                                                                  *
'*------------------------------------------------------------------------------------------*
    ProgramarPreco = IIf(CUBProgramarPreco(SystemGrade, PriceLevel, Price) = 0, True, False)
End Function

Public Function SetarNivelDePreco(ByVal PumpID As String, _
                                    ByVal PriceLevel As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar o nivel de preço                                                   *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Nivel de Preço                                                              *
'*------------------------------------------------------------------------------------------*
    SetarNivelDePreco = IIf(CUBSetarNivelDePreco(PumpID, PriceLevel) = 0, True, False)
End Function

Public Function AutorizarBico(ByVal PumpID As Integer, _
                              ByVal PriceLevel As Integer, _
                              ByVal HoseID As Integer) As Boolean
    AutorizarBico = IIf(CUBAutorizarBico(PumpID, PriceLevel, HoseID) = 0, True, False)
End Function

Public Function PresetDinheiro(ByVal PumpID As Integer, _
                               ByVal PriceLevel As Integer, _
                               ByVal Money As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar uma pre-determinação de abasteciemnto em dinheiro                  *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Nivel de Preço                                                              *
'*              Valor da pré-determinação em dinheiro                                       *
'*------------------------------------------------------------------------------------------*
    PresetDinheiro = IIf(CUBPresetDinheiro(PumpID, PriceLevel, CLng(Money * 100)) = 0, True, False)
End Function

Public Function PresetLitros(ByVal PumpID As Integer, _
                             ByVal PriceLevel As Integer, _
                             ByVal Volume As Double, _
                             ByVal PumpGrade As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar uma pre-determinação de abasteciemnto em volume                    *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Nivel de Preço                                                              *
'*              Valor da pré-determinação em litros                                         *
'*              Codigo do produto                                                           *
'*------------------------------------------------------------------------------------------*
    PresetLitros = IIf(CUBPresetLitros(PumpID, PriceLevel, PumpGrade, CLng(Volume * 1000)) = 0, True, False)
End Function

Public Function LerRTM(ByVal PumpID As Integer, ByRef Dinheiro As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que retorna o valor em tempo real em dinheiro de uma posição de abastecimento     *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Valor do abastecimento em dinheiro                                          *
'*------------------------------------------------------------------------------------------*
    Dim RTM As Long
    LerRTM = IIf(CUBLerRTM(PumpID, RTM) = 0, True, False)
    Dinheiro = RTM / 100
End Function

Public Function LerPaginaTAG(ByVal NroTag As Long, ByRef DataRead As String) As Boolean
Dim Temp As String * 100

    LerPaginaTAG = False
    If CUBLerPaginaTag(NroTag, 1, Temp) = 0 Then
       DataRead = Left(Temp, 16)
       If DataRead <> "0000000000000000" Then
          LerPaginaTAG = True
        End If
    End If
End Function
