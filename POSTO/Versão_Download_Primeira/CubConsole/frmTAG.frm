VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmTAG 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Cadasto de TAGS"
   ClientHeight    =   5265
   ClientLeft      =   120
   ClientTop       =   435
   ClientWidth     =   5715
   LinkTopic       =   "frmPrincipal"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   5715
   ShowInTaskbar   =   0   'False
   Begin MSDBGrid.DBGrid dbgTAG 
      Bindings        =   "frmTAG.frx":0000
      Height          =   5160
      Left            =   0
      OleObjectBlob   =   "frmTAG.frx":0011
      TabIndex        =   0
      Top             =   120
      Width           =   5775
   End
   Begin VB.Data datTAG 
      Connect         =   "Access"
      DatabaseName    =   "CUB.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   495
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "select * from tabtag order by codtag"
      Top             =   5040
      Visible         =   0   'False
      Width           =   3495
   End
End
Attribute VB_Name = "frmTAG"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
