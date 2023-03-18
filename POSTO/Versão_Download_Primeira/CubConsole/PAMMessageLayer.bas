Attribute VB_Name = "CUBFuncoes"
Option Explicit

Public Function MapearBicos(ByVal PumpID As Integer, ByVal SystemGrade As Integer, _
                            ByVal PumpGrade As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que mapeia os produtos cadastrados no programa no CUBServer                       *
'* Parâmetros:  Numero da Bomba                                                             *
'*              Numero do Bico                                                              *
'*              Codigo do Produto                                                           *
'*------------------------------------------------------------------------------------------*
    MapearBicos = IIf(CUBMapearProduto(PumpID, PumpGrade, SystemGrade) = 0, True, False)
End Function

Public Function DisponibilizaBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que habilita uma posição de abastecimento no CUBServer                            *
'* Parâmetros:  Numero da Bomba                                                             *
'*------------------------------------------------------------------------------------------*
    DisponibilizaBomba = IIf(CUBAbrirBomba(PumpID) = 0, True, False)
End Function

Public Function RetirarBomba(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que desabilita uma posição de abastecimento no CUBServer                          *
'* Parâmetros:  Numero da Bomba                                                             *
'*------------------------------------------------------------------------------------------*
    RetirarBomba = IIf(CUBFecharBomba(PumpID) = 0, True, False)
End Function

Public Function EstadoBomba(ByVal PumpID As Integer, ByRef Response As String) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que retorna o estado de uma posição de abastecimento                              *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Estado da posição de abastecimento                                          *
'*------------------------------------------------------------------------------------------*
    Dim tmp As String * 100
     
    tmp = Space(100)
    If CUBLerEstado(PumpID, tmp) = 0 Then
        EstadoBomba = True
        Response = Trim(tmp)
    Else
        EstadoBomba = False
    End If
End Function

Public Function LerVendasBomba(ByVal PumpID As Integer, _
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
        LerVendasBomba = True
    Else
        LerVendasBomba = False
    End If
   
End Function

Public Function LeituraVendaConfirmada(ByVal PumpID As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que envia comando de confirmação de leitura da venda ao CUB Server.               *
'* Parâmetros:  Número da posição de abastecimento.                                         *
'*------------------------------------------------------------------------------------------*
    LeituraVendaConfirmada = IIf(CUBConfirmarLeituraVenda(CLng(PumpID)) = 0, True, False)
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

Public Function LerTotaisBomba(ByVal PumpID As Integer, _
                              ByVal SystemGrade As String, ByVal Level As Integer, _
                              ByRef Volume As Double, ByRef Money As Double, _
                              ByRef Price As Double) As Boolean
    
    Dim szEncerranteLitros As String * 20
    Dim szEncerranteDinheiro As String * 20
    Dim Preco As Long
    
    If CUBLerTotais(PumpID, CLng(Left(SystemGrade, 1)), Level, szEncerranteLitros, szEncerranteDinheiro, Preco) = 0 Then
        Volume = CDbl(szEncerranteLitros) / 100
        Money = CDbl(szEncerranteDinheiro) / 100
        Price = Preco / 1000
        LerTotaisBomba = True
    Else
        LerTotaisBomba = False
    End If
End Function
Public Function ProgramarPreco(ByVal SystemGrade As String, _
                               ByVal PriceLevel As Integer, _
                               ByVal Price As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar os preços                                                          *
'* Parâmetros:  Codigo do produto                                                           *
'*              Nivel de preço                                                              *
'*              Novo preço                                                                  *
'*------------------------------------------------------------------------------------------*
    ProgramarPreco = IIf(CUBProgramarPreco(CLng(Left(SystemGrade, 1)), PriceLevel, Price) = 0, True, False)
End Function

Public Function ProgramarNivelPreco(ByVal PumpID As String, _
                                    ByVal PriceLevel As Integer) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar o nivel de preço                                                   *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Nivel de Preço                                                              *
'*------------------------------------------------------------------------------------------*
    ProgramarNivelPreco = IIf(CUBSetarNivelDePreco(PumpID, PriceLevel) = 0, True, False)
End Function

Public Function PAMAuthorizeFillUpWithHose(ByVal PumpID As Integer, _
                                           ByVal PriceLevel As Integer, _
                                           ByVal HoseID As Integer) As Boolean
    PAMAuthorizeFillUpWithHose = IIf(CUBAutorizarBico(PumpID, PriceLevel, HoseID) = 0, True, False)
End Function

Public Function PreDeterminacaoDinheiro(ByVal PumpID As Integer, _
                                        ByVal PriceLevel As Integer, _
                                        ByVal Money As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função para programar uma pre-determinação de abasteciemnto em dinheiro                  *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Nivel de Preço                                                              *
'*              Valor da pré-determinação em dinheiro                                       *
'*------------------------------------------------------------------------------------------*
    PreDeterminacaoDinheiro = IIf(CUBPresetDinheiro(PumpID, PriceLevel, CLng(Money * 100)) = 0, True, False)
End Function

Public Function PreDeterminacaoVolume(ByVal PumpID As Integer, _
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
    PreDeterminacaoVolume = IIf(CUBPresetLitros(PumpID, PriceLevel, PumpGrade, CLng(Volume * 1000)) = 0, True, False)
End Function

Public Function PAMAuthorizeFillUpWithPrice(ByVal PumpID As Integer, ByVal PriceLevel As Integer, ByVal HoseID As Integer, ByVal Money As Double, ByRef CommandRejected As Boolean) As Boolean
    PAMAuthorizeFillUpWithPrice = False
End Function

Public Function PAMRealTimeMoney(ByVal PumpID As Integer, ByRef Dinheiro As Double) As Boolean
'*------------------------------------------------------------------------------------------*
'* Função que retorna o valor em tempo real em dinheiro de uma posição de abastecimento     *
'* Parâmetros:  Numero da posição de abastecimento                                          *
'*              Valor do abastecimento em dinheiro                                          *
'*------------------------------------------------------------------------------------------*
    Dim RTM As Long
    PAMRealTimeMoney = IIf(CUBLerRTM(PumpID, RTM) = 0, True, False)
    Dinheiro = RTM / 100
End Function

Public Function LerTAG(ByVal NroTag As Long, ByRef DataRead As String) As Boolean
Dim Temp As String * 100

    LerTAG = False
    
    If CUBLerPaginaTag(NroTag, 1, Temp) = 0 Then
       DataRead = Left(Temp, 16)
       If DataRead <> "0000000000000000" Then
          LerTAG = True
        End If
    End If
End Function
