VERSION 5.00
Begin VB.Form frmHelp 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Comandos - CUB"
   ClientHeight    =   2025
   ClientLeft      =   3630
   ClientTop       =   2745
   ClientWidth     =   6330
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2025
   ScaleWidth      =   6330
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblF10 
      BackStyle       =   0  'Transparent
      Caption         =   "F10 - Últimas Vendas nas Bombas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   6135
   End
   Begin VB.Label lblF5 
      BackStyle       =   0  'Transparent
      Caption         =   "F5 - Envio de Níveis de Preço Aleatórios para as Bombas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   6135
   End
   Begin VB.Label lblF4 
      BackStyle       =   0  'Transparent
      Caption         =   "F4 - Envio de Preços Aleatórios para as Bombas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   5655
   End
   Begin VB.Label lblf3 
      BackStyle       =   0  'Transparent
      Caption         =   "F3 - Pausa Todas as Bombas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   3135
   End
   Begin VB.Label lblF2 
      BackStyle       =   0  'Transparent
      Caption         =   "F2 - Mudança de Preços"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   3135
   End
End
Attribute VB_Name = "frmHelp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
