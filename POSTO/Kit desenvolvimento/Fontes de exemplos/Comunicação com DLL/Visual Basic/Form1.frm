VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5655
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10575
   LinkTopic       =   "Form1"
   ScaleHeight     =   5655
   ScaleWidth      =   10575
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      Caption         =   "VB_SendText"
      Height          =   975
      Left            =   60
      TabIndex        =   8
      Top             =   4620
      Width           =   8415
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   5760
         TabIndex        =   11
         Text            =   "0"
         Top             =   480
         Width           =   675
      End
      Begin VB.CommandButton Bt_SendText 
         Caption         =   "VB_SendText"
         Height          =   375
         Left            =   6540
         TabIndex        =   10
         Top             =   480
         Width           =   1755
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Text            =   "(&S)"
         Top             =   480
         Width           =   5535
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Enviados"
         Height          =   195
         Index           =   1
         Left            =   5760
         TabIndex        =   13
         Top             =   240
         Width           =   660
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Comando"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   12
         Top             =   240
         Width           =   675
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "VB_ReceiveText"
      Height          =   4515
      Left            =   60
      TabIndex        =   5
      Top             =   60
      Width           =   8415
      Begin VB.CommandButton Bt_RecText 
         Caption         =   "VB_ReceiveText"
         Height          =   375
         Left            =   6540
         TabIndex        =   7
         Top             =   4020
         Width           =   1755
      End
      Begin VB.ListBox List1 
         Height          =   4155
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   6315
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Comunicação"
      Height          =   2415
      Left            =   8520
      TabIndex        =   0
      Top             =   60
      Width           =   1995
      Begin VB.CommandButton Bt_OpenSerial 
         Caption         =   "VB_OpenSerial"
         Height          =   375
         Left            =   120
         TabIndex        =   14
         Top             =   660
         Width           =   1755
      End
      Begin VB.CommandButton Bt_CloseSocket 
         Caption         =   "VB_CloseSocket"
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   1920
         Width           =   1755
      End
      Begin VB.CommandButton Bt_CloseSerial 
         Caption         =   "VB_CloseSerial"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   1500
         Width           =   1755
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   1755
      End
      Begin VB.CommandButton Bt_OpenSocket 
         Caption         =   "VB_OpenSocket"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   1080
         Width           =   1755
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Bt_CloseSerial_Click()
Dim rta As Integer
rta = VB_CloseSerial
If rta > 0 Then
    List1.AddItem "Porta serial fechada com sucesso"
Else
    List1.AddItem "Não foi possível fechar a porta serial"
End If
End Sub

Private Sub Bt_CloseSocket_Click()
If VB_CloseSocket > 0 Then
    List1.AddItem "Socket fechado com sucesso"
Else
    List1.AddItem "Não foi possível fechar o Socket"
End If
End Sub


Private Sub Bt_OpenSerial_Click()
Dim ret As Integer
ret = VB_OpenSerial(Text1.Text)
If ret > 0 Then
    List1.AddItem "Porta serial aberta com sucesso"
Else
    List1.AddItem "Não foi possível abrir a porta serial"
End If
End Sub

Private Sub Bt_OpenSocket_Click()
If VB_OpenSocket(Text1.Text) > 0 Then
    List1.AddItem "Socket aberto com sucesso"
Else
    List1.AddItem "Não foi possível abrir o socket"
End If
End Sub

Private Sub Bt_RecText_Click()
Dim rta As String
If VB_ReceiveText(rta) > 0 Then
    List1.AddItem rta
End If
End Sub

Private Sub Bt_SendText_Click()
Text3.Text = VB_SendText(Text2.Text)
End Sub

Private Sub Command1_Click(Index As Integer)

End Sub


