Attribute VB_Name = "CUBEstados"
Option Explicit

Public Const FORADOAR = 0
Public Const DESAUTORIZADA = 1
Public Const ABASTECENDO = 2
Public Const VENDAPENDENTE = 3
Public Const STATUS_RESERVED4 = 4
Public Const BICOFORA = 5
Public Const FECHADA = 6
Public Const STATUS_RESERVED7 = 7
Public Const PAUSA = 8
Public Const AUTORIZADO = 9
Public Const STATUS_ERROR = 10
Public Const STATUS_UNKNOWN = 11

Public StatusDesc(0 To 11) As String
Public Const MAX_PUMPS = 99

Public Sub InitStatusDesc()
    StatusDesc(FORADOAR) = "Fora do Ar"
    StatusDesc(DESAUTORIZADA) = "Desautorizada"
    StatusDesc(ABASTECENDO) = "Abastecendo"
    StatusDesc(VENDAPENDENTE) = "Venda Pendente"
    StatusDesc(STATUS_RESERVED4) = "Reserved4"
    StatusDesc(BICOFORA) = "Bico Fora"
    StatusDesc(FECHADA) = "Fechado"
    StatusDesc(STATUS_RESERVED7) = "Reserved4"
    StatusDesc(PAUSA) = "Pausa"
    StatusDesc(AUTORIZADO) = "Liberado"
    StatusDesc(STATUS_ERROR) = "CUB Fora do Ar"
    StatusDesc(STATUS_UNKNOWN) = "Desconhecido"
End Sub


