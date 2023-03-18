VERSION 5.00
Begin VB.Form frmPrincipal 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Logitron Brasil  - Controlador Universal de Bombas"
   ClientHeight    =   2610
   ClientLeft      =   4395
   ClientTop       =   3120
   ClientWidth     =   8775
   Icon            =   "frmPrincipal.frx":0000
   LinkTopic       =   "frmPrincipal"
   MaxButton       =   0   'False
   Picture         =   "frmPrincipal.frx":0442
   ScaleHeight     =   2610
   ScaleWidth      =   8775
   WhatsThisHelp   =   -1  'True
   Begin VB.Menu mnuControlePista 
      Caption         =   "&Controle de Pista"
   End
   Begin VB.Menu mnuConfig 
      Caption         =   "C&onfiguração"
      Begin VB.Menu mnuProdutos 
         Caption         =   "Produtos"
      End
      Begin VB.Menu mnuBicos 
         Caption         =   "Bicos"
      End
      Begin VB.Menu mnuCadastroTags 
         Caption         =   "Tags"
      End
   End
End
Attribute VB_Name = "frmPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_Terminate()
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

Private Sub mnuBicos_Click()
    frmBicos.Show 1
End Sub

Private Sub mnuCadastroTags_Click()
    frmTAG.Show 1
End Sub

Private Sub mnuControlePista_Click()
    frmConsole.Show 1
End Sub

Private Sub mnuProdutos_Click()
    frmProdutos.Show 1
End Sub

