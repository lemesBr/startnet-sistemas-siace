VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmLastSales 
   AutoRedraw      =   -1  'True
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Últimas Vendas"
   ClientHeight    =   5985
   ClientLeft      =   90
   ClientTop       =   435
   ClientWidth     =   12315
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5985
   ScaleWidth      =   12315
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdDeleteAll 
      Caption         =   "Apagar o conteúdo da tabela de vendas"
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   5520
      Width           =   12255
   End
   Begin MSDBGrid.DBGrid dbgVendas 
      Align           =   1  'Align Top
      Bindings        =   "frmVendas.frx":0000
      Height          =   5415
      Left            =   0
      OleObjectBlob   =   "frmVendas.frx":0014
      TabIndex        =   0
      Top             =   0
      Width           =   12315
   End
   Begin VB.Data datVendas 
      Connect         =   "Access"
      DatabaseName    =   "cub.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   375
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   2  'Snapshot
      RecordSource    =   "Select * from tabVendas order by date DESC, time DESC"
      Top             =   3000
      Visible         =   0   'False
      Width           =   1575
   End
End
Attribute VB_Name = "frmLastSales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdDeleteAll_Click()
    Dim db As Database
    
    Set db = DBEngine.OpenDatabase("cub.mdb")
    db.Execute "DELETE * from TABVendas"
    db.Close
    Set db = Nothing
    datVendas.Refresh
End Sub

