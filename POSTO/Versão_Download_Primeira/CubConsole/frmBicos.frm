VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmBicos 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Cadastro de Bicos"
   ClientHeight    =   5655
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   2940
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   2940
   ShowInTaskbar   =   0   'False
   Begin VB.Data datBicos 
      Connect         =   "Access"
      DatabaseName    =   "cub"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   120
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   0  'Table
      RecordSource    =   "tabBicos"
      Top             =   5280
      Visible         =   0   'False
      Width           =   1455
   End
   Begin MSDBGrid.DBGrid dbgBicos 
      Bindings        =   "frmBicos.frx":0000
      Height          =   5640
      Left            =   0
      OleObjectBlob   =   "frmBicos.frx":0013
      TabIndex        =   0
      Top             =   0
      Width           =   3255
   End
End
Attribute VB_Name = "frmBicos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
