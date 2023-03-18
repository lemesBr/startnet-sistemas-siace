Attribute VB_Name = "PAMDataLinkLayer"
Option Explicit
Declare Function timeGetTime Lib "winmm.dll" () As Long
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Declare Function SendSocketMessage Lib "tcpdll" (ByVal OutMsg As String, _
                ByVal OutLen As Long, ByVal InMsg As String, ByVal InBufSize As Long, _
                ByRef InLen As Long) As Long

Public Const MAX_PAM_INTERCHAR_TIMEOUT = 100

Public Const NAK = 21
Public Const ACK = 6
Public Const STX = 2
Public Const ETX = 3
Public PAMInUse As Boolean
Public SignalExit As Boolean


Public Sub PAMCommand(ByRef CommandText As String, _
                      ByRef Response As String, ByRef ACKReceived As Boolean, _
                      ByRef NAKReceived As Boolean, ByRef ResponseIsGarbage As Boolean, _
                      ByRef TXError As Boolean, ByRef NoResponse As Boolean, ByVal msTimeout As Long)
    
    Dim OutMsg As String * 32000
    Dim OutLen As Long
    Dim InMsg As String * 32000
    Dim BytesRead As Long
    Dim errcode As Long
    
    Dim FlagAlreadyActivated As Boolean
    Response = ""
    ACKReceived = False
    NAKReceived = False
    ResponseIsGarbage = False
    TXError = False
    NoResponse = False
    FlagAlreadyActivated = False
    
    frmConsole.tmrPoll.Enabled = False
    If PAMInUse Then
        NoResponse = True
        frmConsole.tmrPoll.Enabled = True
        Exit Sub
    End If
    PAMInUse = True
    
    OutMsg = CommandText
    OutLen = Len(CommandText)
    errcode = SendSocketMessage(OutMsg, OutLen, InMsg, 300, BytesRead)
'    errcode = 1
    If errcode <> 0 Then
        'MsgBox "TCP Error is " & errcode
        TXError = True
    Else
        If InMsg = "" Then
            Debug.Assert False
        End If
        If BytesRead <> 0 Then
            If InMsg = "" Then
                Debug.Assert False
            End If
            If BytesRead = 1 Then
                Select Case Left(InMsg, 1)
                    Case Chr$(NAK)
                        NAKReceived = True
                    Case Chr$(ACK)
                        ACKReceived = True
                End Select
            Else
                If Left(InMsg, 1) = Chr$(STX) Then
                    Response = Mid(InMsg, 2, BytesRead - 2)
                Else
                    Response = Left(InMsg, BytesRead)
                End If
            End If
        Else
            NoResponse = True
        End If
    End If
    PAMInUse = False
    frmConsole.tmrPoll.Enabled = True
End Sub

