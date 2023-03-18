VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "PAM 1000 Client"
   ClientHeight    =   8745
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9360
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8745
   ScaleWidth      =   9360
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSetPrice 
      Caption         =   "Send 1 Price"
      Height          =   315
      Left            =   6480
      TabIndex        =   18
      Top             =   7980
      Width           =   2055
   End
   Begin VB.Frame frmAuthorization 
      Caption         =   "Automatic Authorization"
      Height          =   495
      Left            =   1920
      TabIndex        =   13
      Top             =   0
      Width           =   5775
      Begin VB.OptionButton optAuth 
         Caption         =   "On Idle OR Call"
         Height          =   195
         Index           =   3
         Left            =   3720
         TabIndex        =   17
         Top             =   240
         Width           =   1575
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "On Idle"
         Height          =   195
         Index           =   2
         Left            =   2640
         TabIndex        =   16
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "On Call"
         Height          =   195
         Index           =   1
         Left            =   1440
         TabIndex        =   15
         Top             =   240
         Width           =   1095
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "Disabled"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Timer tmrPoll 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8880
      Top             =   7740
   End
   Begin VB.CommandButton cmdAuthorizeStopTest 
      Caption         =   "Authorize-Stop Test"
      Height          =   315
      Left            =   6480
      TabIndex        =   12
      Top             =   7620
      Width           =   2055
   End
   Begin VB.CommandButton cmdAuthorizeWithPrice 
      Caption         =   "Authorize Fillup w/Price"
      Height          =   315
      Left            =   4320
      TabIndex        =   11
      Top             =   8340
      Width           =   2055
   End
   Begin VB.CommandButton cmdVolumePreset 
      Caption         =   "Volume Preset"
      Height          =   315
      Left            =   2220
      TabIndex        =   10
      Top             =   8340
      Width           =   2055
   End
   Begin VB.CommandButton cmdMoneyPreset 
      Caption         =   "Money Preset"
      Height          =   315
      Left            =   2220
      TabIndex        =   9
      Top             =   7980
      Width           =   2055
   End
   Begin VB.CommandButton cmdAuthorizeWithHose 
      Caption         =   "Authorize Fillup w/Grade"
      Height          =   315
      Left            =   4320
      TabIndex        =   8
      Top             =   7980
      Width           =   2055
   End
   Begin VB.CommandButton cmdFullAuthorize 
      Caption         =   "Authorize Fillup"
      Height          =   315
      Left            =   4320
      TabIndex        =   7
      Top             =   7620
      Width           =   2055
   End
   Begin VB.CommandButton cmdAllStop 
      Caption         =   "All Stop"
      Height          =   315
      Left            =   2220
      TabIndex        =   6
      Top             =   7620
      Width           =   2055
   End
   Begin VB.CommandButton cmdSetLevel 
      Caption         =   "Set Random Price Levels"
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   8340
      Width           =   2055
   End
   Begin VB.CommandButton cmdSendPrices 
      Caption         =   "Send Random Prices"
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   7980
      Width           =   2055
   End
   Begin VB.CommandButton cmdMapGrades 
      Caption         =   "Map Grades 1-6"
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   7620
      Width           =   2055
   End
   Begin VB.ListBox LstSales 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7080
      ItemData        =   "Form1.frx":0442
      Left            =   1860
      List            =   "Form1.frx":04B2
      TabIndex        =   1
      Top             =   480
      Width           =   7455
   End
   Begin VB.ListBox lstStatus 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7080
      ItemData        =   "Form1.frx":053D
      Left            =   120
      List            =   "Form1.frx":05AD
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Status"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private ActivePumps(MAX_PUMPS) As Boolean
Private InitDone As Boolean
Private lstActivePumpsAvoidRecursiveEntry As Boolean
Private LastStatus As String

Private Sub cmdAllStop_Click()
    PAMStopPump 0
End Sub

Private Sub cmdAuthorizeWithPrice_Click()
    Dim Hose As String
    Dim Level As String
    Dim PumpID As Integer
    Dim strPrice As String
    Dim CommandRejected As Boolean
    
    PumpID = LstSales.ListIndex + 1
    If PumpID = 0 Then
        Exit Sub
    End If
    Hose = InputBox("Please choose hose (1-6)", "Authorization for pump " & PumpID & " with price programming", "1")
    If Hose = "" Then
        Exit Sub
    End If
    Level = InputBox("Please choose price level (1=cash 2=credit)", "Authorization for pump " & PumpID & " with price programming", "1")
    If Level = "" Then
        Exit Sub
    End If
    strPrice = InputBox("Please type price to be programmed (0.010 - 9.999)", "Authorization for pump " & PumpID & " with price programming", "1")
    If strPrice = "" Then
        Exit Sub
    End If
    PAMAuthorizeFillUpWithPrice PumpID, Left(Level, 1), Left(Hose, 1), CDbl(strPrice), CommandRejected

End Sub

Private Sub cmdFullAuthorize_Click()
    Dim CommandRejected As Boolean
    PAMAuthorizeFillUp LstSales.ListIndex + 1, CommandRejected
End Sub

Private Sub cmdMapGrades_Click()
    Dim PumpID As Integer
    Dim HoseID As Integer
    Dim status As Integer
    Dim OriginalCaption As String
    
    OriginalCaption = cmdMapGrades.Caption
    Dim CommandRejected As Boolean
    For PumpID = 1 To MAX_PUMPS
        status = Asc(Mid(LastStatus, PumpID, 1))
        If status <> STATUS_CLOSED And status <> STATUS_PAM_ERROR And status <> STATUS_UNKNOWN Then
            For HoseID = 1 To 6
                cmdMapGrades.Caption = "Mapping Hose " & PumpID & Chr(HoseID + Asc("a"))
                cmdMapGrades.Refresh
                If Not PAMMapGrades(PumpID, HoseID, HoseID, CommandRejected) Then
                    If CommandRejected Then
                        Exit For
                    Else
                        MsgBox "Communications error mapping pump " & PumpID & " - Grade " & HoseID
                        GoTo cmdMapGrades_Click_Exit
                    End If
                End If
            Next HoseID
        End If
    Next PumpID
    MsgBox "Grade mapped OK"
cmdMapGrades_Click_Exit:
    cmdMapGrades.Caption = OriginalCaption
    
End Sub

Private Sub cmdMoneyPreset_Click()
    Dim Level As String
    Dim PumpID As Integer
    Dim dblMoney As Double
    Dim strMoney As String
    Dim CommandRejected As Boolean
    
    PumpID = LstSales.ListIndex + 1
    If PumpID = 0 Then
        Exit Sub
    End If
    strMoney = InputBox("Please choose amount of money ($0.10 to $9999.99)", "Money Preset for pump " & PumpID & " with price level selection", "")
    If strMoney = "" Then
        Exit Sub
    End If
    dblMoney = CDbl(strMoney)
    Level = InputBox("Please choose price level (1=cash 2=credit)", "Money Preset for pump " & PumpID & " with price level selection", "1")
    If Level = "" Then
        Exit Sub
    End If
    PAMMoneyPreset PumpID, Left(Level, 1), dblMoney, CommandRejected
End Sub

Private Sub cmdSendPrices_Click()
    Dim OriginalCaption As String
    Dim GradeID As Integer
    Dim Level As Integer
    
    OriginalCaption = cmdSendPrices.Caption
    Randomize
    Dim CommandRejected As Boolean
    For GradeID = 1 To 6
        For Level = 1 To 2
            cmdSendPrices.Caption = "Pricing Grade " & GradeID & " Level: " & IIf(Level = 1, "Cash", "Credit")
            cmdSendPrices.Refresh
            If Not PAMSetPrice(Chr(GradeID + Asc("0")), Level, CInt(Rnd(1) * 9999)) Then
                MsgBox "Communications error pricing Grade " & GradeID & " Level: " & IIf(Level = 1, "Cash", "Credit")
                GoTo cmdSendPrices_Click_Exit
            End If
        Next Level
    Next GradeID
    MsgBox "Prices sent OK"
cmdSendPrices_Click_Exit:
    cmdSendPrices.Caption = OriginalCaption
    
End Sub

Private Sub cmdSetLevel_Click()
    Dim PumpID As Integer
    Dim HoseID As Integer
    Dim status As Integer
    Dim OriginalCaption As String
    Dim CommandRejected As Boolean
    Dim NewLevel As Integer
    
    OriginalCaption = cmdSetLevel.Caption
    Randomize
    For PumpID = 1 To MAX_PUMPS
        status = Asc(Mid(LastStatus, PumpID, 1))
        If status = STATUS_IDLE Or status = STATUS_CALL Then
            NewLevel = (CInt(Rnd(1) * 9999) Mod 2) + 1
            NewLevel = 2
            cmdSetLevel.Caption = "Setting Pump " & PumpID & " to " & IIf(NewLevel = 1, "Cash", "Credit")
            cmdSetLevel.Refresh
            If Not PAMSetLevel(PumpID, NewLevel, CommandRejected) Then
                If Not CommandRejected Then
                    MsgBox "Communications error changing price levels" & PumpID & " - Grade " & HoseID
                    GoTo cmdSetLevel_Click_Exit
                Else
                    MsgBox "Price level change rejected for Pump " & PumpID & " - Grade " & HoseID
                
                End If
            End If
        End If
    Next PumpID
cmdSetLevel_Click_Exit:
    cmdSetLevel.Caption = OriginalCaption

End Sub

Private Sub cmdAuthorizeWithHose_Click()
    Dim Hose As String
    Dim Level As String
    Dim PumpID As Integer
    Dim CommandRejected As Boolean
    
    PumpID = LstSales.ListIndex + 1
    If PumpID = 0 Then
        Exit Sub
    End If
    Hose = InputBox("Please choose hose (1-6)", "Authorization for pump " & PumpID & " with hose selection", "1")
    If Hose = "" Then
        Exit Sub
    End If
    Level = InputBox("Please choose price level (1=cash 2=credit)", "Authorization for pump " & PumpID & " with price level selection", "1")
    If Level = "" Then
        Exit Sub
    End If
    PAMAuthorizeFillUpWithHose PumpID, Left(Level, 1), Left(Hose, 1), CommandRejected
End Sub

Private Sub cmdAuthorizeStopTest_Click()
    Dim PumpID As Integer
    Dim Times As Integer
    Dim strTimes As String
    Dim CommandRejected As Boolean
    Dim i As Integer
    Dim Ok As Integer
    Dim NotOK As Integer
    Dim Response As String * 500
   
    If LstSales.ListIndex = -1 Then
        LstSales.ListIndex = 0
    End If
    PumpID = LstSales.ListIndex + 1
    strTimes = InputBox("Please choose repetitions", "Authorize-Stop Test for pump " & PumpID, "40")
    If strTimes = "" Then
        Exit Sub
    End If
    Times = CInt(strTimes)
    Ok = 0
    NotOK = 0
    PAMStopPump PumpID 'desautorizar por si acaso
    For i = 1 To Times
        If Not PAMAuthorizeFillUp(PumpID, CommandRejected) Then
            Exit Sub
        End If
        Sleep 50
        PAMStatus PumpID, Response
        If Mid(Response, PumpID, 1) <> CStr(STATUS_AUTHORIZED) Then
            NotOK = NotOK + 1
        Else
            Ok = Ok + 1
            PAMStopPump PumpID
        End If
    Next i
    MsgBox "Result: OK=" & Ok & " Error=" & NotOK
End Sub

Private Sub cmdSetPrice_Click()
    Dim Level As String
    Dim strProdID As String
    Dim ProdID As Integer
    Dim dblMoney As Double
    Dim strMoney As String
    Dim CommandRejected As Boolean
    
    strProdID = InputBox("Please choose product number", "Price change", "1")
    If strProdID = "" Then
        Exit Sub
    End If
    ProdID = CInt(strProdID)
    strMoney = InputBox("Please choose amount of money ($0.10 to $9999.99)", "Price change", "")
    If strMoney = "" Then
        Exit Sub
    End If
    dblMoney = CDbl(strMoney)
    Level = InputBox("Please choose price level (1=cash 2=credit)", "Price change", "1")
    If Level = "" Then
        Exit Sub
    End If
    PAMSetPrice Chr(ProdID + Asc("0")), Level, CInt(dblMoney)
End Sub

Private Sub cmdVolumePreset_Click()
    Dim Level As String
    Dim PumpGrade As String
    Dim PumpID As Integer
    Dim dblVolume As Double
    Dim strVolume As String
    Dim CommandRejected As Boolean
   
    PumpID = LstSales.ListIndex + 1
    If PumpID = 0 Then
        Exit Sub
    End If
    strVolume = InputBox("Please choose volume ($0.10 to $999.99)", "Volume Preset for pump " & PumpID & " with price level and hose selection", "")
    If strVolume = "" Then
        Exit Sub
    End If
    dblVolume = CDbl(strVolume)
    Level = InputBox("Please choose price level (1=cash 2=credit)", "Volume Preset for pump " & PumpID & " with price level and hose selection", "1")
    If Level = "" Then
        Exit Sub
    End If
    PumpGrade = InputBox("Please choose hose (0-6)", "Volume Preset for pump " & PumpID & " with price level and hose selection", "1")
    If PumpGrade = "" Then
        Exit Sub
    End If
    PAMVolumePreset PumpID, Left(Level, 1), dblVolume, CInt(PumpGrade), CommandRejected
End Sub

Private Sub Form_Activate()
    Dim i As Integer
    InitDone = False
    DoEvents
    DoEvents
    DoEvents
    InitPAMStatusCodes
    LastStatus = String(MAX_PUMPS, STATUS_UNKNOWN)
    tmrPoll_Timer
    DoEvents
    DoEvents
    DoEvents
    InitDone = True
    i = CInt(GetSetting("CUB", "TCPClientDemo", "AUTH", "0"))
    If i < 0 Or i > 3 Then
        i = 0
    End If
    optAuth(i).Value = True
    tmrPoll.Enabled = True
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    End
End Sub

Private Sub Form_Terminate()
       
    End
End Sub

Private Sub LstSales_DblClick()
    Dim status As Integer
    Dim PumpID As Integer
    Dim CommandRejected As Boolean
    
    PumpID = LstSales.ListIndex + 1
    status = Asc(Mid(LastStatus, PumpID, 1))
    
    Select Case status
    Case STATUS_CALL, STATUS_IDLE
        PAMAuthorizeFillUp PumpID, CommandRejected
    Case STATUS_BUSY, STATUS_AUTHORIZED
        PAMStopPump PumpID
    Case STATUS_STOP
        PAMRestartPump PumpID
    End Select

End Sub

Private Sub lstStatus_dblClick()
    Dim status As Integer
    Dim CommandRejected As Boolean
    
    status = Asc(Mid(LastStatus, lstStatus.ListIndex + 1, 1))
    If status = STATUS_CLOSED Then
        PAMOpenPump lstStatus.ListIndex + 1, CommandRejected
    Else
        PAMClosePump lstStatus.ListIndex + 1, CommandRejected
    End If
       
End Sub

Private Sub optAuth_Click(Index As Integer)
    SaveSetting "CUB", "TCPClientDemo", "AUTH", Index
End Sub

Private Sub tmrPoll_Timer()
    Dim status As String
    Dim i As Integer
    Dim old_status As Integer
    Dim new_status As Integer
    Dim SystemGrade As String
    Dim PumpLevel As String
    Dim Volume As Double
    Dim Money As Double
    Dim Price As Double
    Dim CommandRejected As Boolean
              
    If InitDone Then
        tmrPoll.Enabled = False
    End If
    If Not WaitingForPAM Then
        If Not PAMStatus(0, status) Or Not InitDone Then
            status = String(MAX_PUMPS, Chr(STATUS_PAM_ERROR + Asc("0")))
            tmrPoll.Interval = 1000
        Else
            tmrPoll.Interval = 500
            'status = Right(status, Len(status))
        End If
        
        'PATCH LENGTH
        If Len(status) < MAX_PUMPS Then
            status = status & String(MAX_PUMPS - Len(status), Chr(STATUS_UNKNOWN + Asc("0")))
        End If
        For i = 1 To MAX_PUMPS
            new_status = Asc(Mid(status, i, 1)) - Asc("0")
            old_status = Asc(Mid(LastStatus, i, 1))
            If new_status > UBound(PAMStatusCodes) Or (new_status < 0) Then
                new_status = STATUS_UNKNOWN
            End If
            If (old_status <> new_status) Or Not InitDone Then
                lstStatus.List(i - 1) = i & " - " & PAMStatusCodes(new_status)
                lstStatus.Refresh
                DoEvents
            End If
            Mid(LastStatus, i, 1) = Chr(new_status)
            Select Case new_status
            Case STATUS_EOT
                If old_status <> new_status Then
                    If PAMSalesReport(i, SystemGrade, PumpLevel, Volume, Money, Price) Then
                        'Money = Price * Volume
                        LstSales.List(i - 1) = i & " - Prod: " & SystemGrade & _
                               " - Level: " & PumpLevel & _
                               " - Volume: " & Format(Volume, "0.000") & _
                               " - Money: " & Format(Money, "0.00") & _
                               " - Price: " & Format(Price, "0.000")
    
                        If PAMRegisterSaleCompletion(i) Then
                            If PAMPumpTotals(i, SystemGrade, PumpLevel, _
                                  Volume, Money, Price) Then
                                LstSales.List(i - 1) = LstSales.List(i - 1) & _
                                   " - Totals are $" & Format(Money, "0.00") & " Ltr:" & _
                                   Format(Volume, "0.00")
                            End If
                            'guardar na fila
                        End If
                        LstSales.Refresh
                        DoEvents
                    End If
                End If
            Case STATUS_BUSY
                If old_status <> STATUS_BUSY Then
                    LstSales.List(i - 1) = CStr(i)
                End If
                
                If PAMSalesReport(i, SystemGrade, PumpLevel, Volume, Money, Price) Then
                    LstSales.List(i - 1) = i & " - Real Time Money is: " & Format(Money, "0.00")
                    LstSales.Refresh
                End If
            Case STATUS_CALL
                If optAuth(1).Value Or optAuth(3).Value Then
                    PAMAuthorizeFillUp i, CommandRejected
                End If
            Case STATUS_IDLE
                If optAuth(2).Value Or optAuth(3).Value Then
                    PAMAuthorizeFillUp i, CommandRejected
                End If
            End Select
        Next i
    End If
    Me.Refresh
    DoEvents
    DoEvents
    DoEvents
    If InitDone Then
        tmrPoll.Enabled = True
    End If

    
End Sub

Function GetCommandLine(Optional MaxArgs)
    'Declare variables.
    Dim C, CmdLine, CmdLnLen, InArg, i, NumArgs
    'See if MaxArgs was provided.
    If IsMissing(MaxArgs) Then MaxArgs = 10
    'Make array of the correct size.
    ReDim ArgArray(MaxArgs)
    NumArgs = 0: InArg = False
    'Get command line arguments.
    CmdLine = Command()
    CmdLnLen = Len(CmdLine)
    'Go thru command line one character
    'at a time.
    For i = 1 To CmdLnLen
        C = Mid(CmdLine, i, 1)

'Test for space or tab.
        If (C <> " " And C <> vbTab) Then
            'Neither space nor tab.
            'Test if already in argument.
            If Not InArg Then
            'New argument begins.
            'Test for too many arguments.
                If NumArgs = MaxArgs Then Exit For
                NumArgs = NumArgs + 1
                InArg = True
            End If
            'Concatenate character to current argument.
            ArgArray(NumArgs) = ArgArray(NumArgs) & C
        Else
            'Found a space or tab.

'Set InArg flag to False.
            InArg = False
        End If
    Next i
    'Resize array just enough to hold arguments.
    ReDim Preserve ArgArray(NumArgs)
    'Return Array in Function name.
    GetCommandLine = ArgArray()
End Function
