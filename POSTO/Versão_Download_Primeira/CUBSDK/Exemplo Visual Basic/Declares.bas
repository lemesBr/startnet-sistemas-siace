Attribute VB_Name = "Declares"
Option Explicit
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Declare Function timeGetTime Lib "winmm.dll" () As Long
'*------------------------------------------------------------------------------------------*
'* Arquivo com todas as declarações das funções existentes na dll de comunicação entre o    *
'* CUB Server e o programa que irá controlar as bombas e os abastecimentos.                 *
'*------------------------------------------------------------------------------------------*
Declare Function CUBMapearProduto Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                                    ByVal NroBico As Long, _
                                                    ByVal NroProduto As Long) As Long
                                                    
Declare Function CUBProgramarPreco Lib "CUB32.DLL" (ByVal NroProduto As Long, _
                                                    ByVal NivelDePreco As Long, _
                                                    ByVal NovoPreco As Long) As Long
                                                    
Declare Function CUBLerEstado Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                               ByVal Estado As String) As Long
                                               
Declare Function CUBAutorizarBomba Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBDesautorizarBomba Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBContinuarAbastecimento Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBLerTotais Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                               ByVal NroProduto As Long, _
                                               ByVal NivelDePreco As Long, _
                                               ByVal szEncerranteLitros As String, _
                                               ByVal szEncerranteDinheiro As String, _
                                               ByRef Preco As Long) As Long

Declare Function CUBLerVenda Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                               ByRef NroProduto As Long, _
                                               ByRef NivelDePreco As Long, _
                                               ByRef Mililitros As Long, _
                                               ByRef Dinheiro As Long, _
                                               ByRef Preco As Long) As Long

Declare Function CUBConfirmarLeituraVenda Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBSetarNivelDePreco Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                                       ByVal NivelDePreco As Long) As Long

Declare Function CUBAutorizarBico Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                                    ByVal NivelDePreco As Long, _
                                                    ByVal NroBico As Long) As Long

Declare Function CUBPresetDinheiro Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                                    ByVal NivelDePreco As Long, _
                                                    ByVal ValorMaximo As Long) As Long

Declare Function CUBPresetLitros Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                                  ByVal NivelDePreco As Long, _
                                                  ByVal NroBico As Long, _
                                                  ByVal LitrosMaximo As Long) As Long

Declare Function CUBFecharBomba Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBAbrirBomba Lib "CUB32.DLL" (ByVal NroBomba As Long) As Long

Declare Function CUBLerRTM Lib "CUB32.DLL" (ByVal NroBomba As Long, _
                                            ByRef RTM As Long) As Long

Declare Function CUBLerPaginaTag Lib "CUB32.DLL" (ByVal NroTag As Long, _
                                                  ByVal NroPagina As Long, _
                                                  ByVal DataRead As String) As Long

Declare Function CUBDescarregarDll Lib "CUB32.DLL" () As Long
