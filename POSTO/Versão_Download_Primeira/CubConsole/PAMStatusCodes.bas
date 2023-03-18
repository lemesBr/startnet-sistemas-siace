Attribute VB_Name = "CUBEstados"
Option Explicit

Public Const FORADOAR = 0
Public Const DISPONIVEL = 1
Public Const ABASTECENDO = 2
Public Const FIMDEVENDA = 3
Public Const STATUS_RESERVED4 = 4
Public Const BICOFORA = 5
Public Const FECHADA = 6
Public Const STATUS_RESERVED7 = 7
Public Const PAUSA = 8
Public Const AUTORIZADO = 9
Public Const STATUS_PAM_ERROR = 10
Public Const STATUS_UNKNOWN = 11

Public PAMStatusCodes(0 To 11) As String
Public AviFiles(0 To 11) As String
Public AviPlayStyle(0 To 11) As Integer
Public Const MAX_PUMPS = 36

Public Sub InitPAMStatusCodes()
    PAMStatusCodes(FORADOAR) = "Fora do Ar"
    PAMStatusCodes(DISPONIVEL) = "Disponível"
    PAMStatusCodes(ABASTECENDO) = "Abastecendo"
    PAMStatusCodes(FIMDEVENDA) = "Venda Pendente"
    PAMStatusCodes(STATUS_RESERVED4) = "Reserved4"
    PAMStatusCodes(BICOFORA) = "Bico Fora"
    PAMStatusCodes(FECHADA) = "Fechado"
    PAMStatusCodes(STATUS_RESERVED7) = "Reserved4"
    PAMStatusCodes(PAUSA) = "Pausa"
    PAMStatusCodes(AUTORIZADO) = "Liberado"
    PAMStatusCodes(STATUS_PAM_ERROR) = "CUB Fora do Ar"
    PAMStatusCodes(STATUS_UNKNOWN) = "Desconhecido"
    AviFiles(FORADOAR) = "foradoar.avi"
    AviFiles(DISPONIVEL) = "disponivel.avi"
    AviFiles(ABASTECENDO) = "abastecendo.avi"
    AviFiles(FIMDEVENDA) = "EOT.avi"
    AviFiles(STATUS_RESERVED4) = "foradoar.avi"
    AviFiles(BICOFORA) = "bicofora.avi"
    AviFiles(FECHADA) = "FORADOAR.avi"
    AviFiles(STATUS_RESERVED7) = "foradoar.avi"
    AviFiles(PAUSA) = "pausa.avi"
    AviFiles(AUTORIZADO) = "autorizado.avi"
    AviFiles(STATUS_PAM_ERROR) = "foradoar.avi"
    AviFiles(STATUS_UNKNOWN) = "foradoar.avi"
    
    AviPlayStyle(FORADOAR) = 1
    AviPlayStyle(DISPONIVEL) = 1
    AviPlayStyle(ABASTECENDO) = -1
    AviPlayStyle(FIMDEVENDA) = 1
    AviPlayStyle(STATUS_RESERVED4) = 1
    AviPlayStyle(BICOFORA) = -1
    AviPlayStyle(FECHADA) = 1
    AviPlayStyle(STATUS_RESERVED7) = 1
    AviPlayStyle(PAUSA) = -1
    AviPlayStyle(AUTORIZADO) = -1
    AviPlayStyle(STATUS_PAM_ERROR) = 1
    AviPlayStyle(STATUS_UNKNOWN) = 1
End Sub


