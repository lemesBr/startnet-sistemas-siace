Attribute VB_Name = "Module1"
Declare Function VB_OpenSerial Lib "companytec.dll" (ByVal np As Integer) As Integer
Declare Function VB_CloseSerial Lib "companytec.dll" () As Integer
Declare Function VB_SendText Lib "companytec.dll" (ByVal st As String) As Integer
Declare Function VB_ReceiveText Lib "companytec.dll" (ByRef st As String) As Integer
Declare Function VB_OpenSocket Lib "companytec.dll" (ByVal ip As String) As Integer
Declare Function VB_CloseSocket Lib "companytec.dll" () As Integer


