VERSION 5.00
Begin VB.Form frmAutoriza 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Autorização de Abastecimento"
   ClientHeight    =   1365
   ClientLeft      =   4590
   ClientTop       =   10320
   ClientWidth     =   5760
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1365
   ScaleWidth      =   5760
   ShowInTaskbar   =   0   'False
   Begin VB.Frame fraAutoriza 
      Height          =   1335
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5715
      Begin VB.OptionButton optAuth 
         Caption         =   "Quando sensa bico disponível ou bico fora"
         Height          =   915
         Index           =   3
         Left            =   4080
         TabIndex        =   4
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "Quando sensa bico disponível"
         Height          =   915
         Index           =   2
         Left            =   2760
         TabIndex        =   3
         Top             =   360
         Width           =   1215
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "Quando sensa bico fora"
         Height          =   975
         Index           =   1
         Left            =   1440
         TabIndex        =   2
         Top             =   300
         Width           =   1215
      End
      Begin VB.OptionButton optAuth 
         Caption         =   "Desativado"
         Height          =   975
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   300
         Width           =   1215
      End
   End
End
Attribute VB_Name = "frmAutoriza"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub optAuth_Click(Index As Integer)
    SaveSetting "CUB", "TCPClientDemo", "AUTH", Index
End Sub
