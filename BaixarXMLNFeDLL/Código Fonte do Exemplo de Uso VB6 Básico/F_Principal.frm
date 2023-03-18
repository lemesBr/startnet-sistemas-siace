VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form F_Principal 
   Caption         =   "Form1"
   ClientHeight    =   7515
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8610
   LinkTopic       =   "Form1"
   ScaleHeight     =   7515
   ScaleWidth      =   8610
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox EditCertificado 
      Height          =   285
      Left            =   5400
      TabIndex        =   11
      Top             =   1680
      Width           =   3135
   End
   Begin VB.TextBox EditCaptcha 
      Height          =   285
      Left            =   4080
      TabIndex        =   9
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox EditLicencaLeitorCaptcha 
      Height          =   285
      Left            =   4080
      TabIndex        =   8
      Top             =   1080
      Width           =   4455
   End
   Begin VB.TextBox EditChave 
      Height          =   285
      Left            =   4080
      TabIndex        =   6
      Top             =   480
      Width           =   4455
   End
   Begin SHDocVwCtl.WebBrowser Web1 
      Height          =   4815
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   8415
      ExtentX         =   14843
      ExtentY         =   8493
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.CommandButton BaixarXML 
      Caption         =   "Baixar XML"
      Height          =   345
      Left            =   7080
      TabIndex        =   3
      Top             =   2040
      Width           =   1425
   End
   Begin VB.CommandButton ButBuscarCertificado 
      Caption         =   "Buscar Certificado Digital"
      Height          =   345
      Left            =   4200
      TabIndex        =   2
      Top             =   2040
      Width           =   2820
   End
   Begin VB.CommandButton ButCaptchaLer 
      Caption         =   "Ler Captcha"
      Height          =   345
      Left            =   2160
      TabIndex        =   1
      Top             =   2040
      Width           =   1980
   End
   Begin VB.CommandButton ButCaptcha 
      Caption         =   "Captcha Atualizar"
      Height          =   345
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   1980
   End
   Begin VB.Label Label4 
      Caption         =   "Certificado Digital"
      Height          =   195
      Left            =   5400
      TabIndex        =   12
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Captcha"
      Height          =   195
      Left            =   4080
      TabIndex        =   10
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Licença Leitor de Captcha"
      Height          =   195
      Left            =   4080
      TabIndex        =   7
      Top             =   840
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Chave"
      Height          =   200
      Left            =   4080
      TabIndex        =   5
      Top             =   240
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   1680
      Left            =   195
      Stretch         =   -1  'True
      Top             =   195
      Width           =   3750
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderStyle     =   3  'Dot
      Height          =   1710
      Left            =   180
      Top             =   180
      Width           =   3780
   End
End
Attribute VB_Name = "F_Principal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BaixarXML_Click()
    If (EditCertificado.Text = "") Then
        
        If (BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, "Temp.xml") = 1) Then
            Web1.Navigate (App.Path & "/temp.xml")
        Else
            MsgBox (Msg())
        End If
        
    Else
        
        If (BaixarXMLNFeComCert(EditChave.Text, EditCaptcha.Text, "Temp.xml") = 1) Then
            Web1.Navigate (App.Path & "/temp.xml")
        Else
            MsgBox (Msg())
        End If
        
    End If
End Sub

Private Sub ButBuscarCertificado_Click()
    EditCertificado.Text = GetCertificadoDigital()
    If (EditCertificado.Text <> "") Then
        SetCertificadoDigital (EditCertificado.Text)
    End If
End Sub

Private Sub ButCaptcha_Click()
    If (Captcha("Captcha.gif") = 1) Then
        Image1.Picture = LoadPicture("captcha.gif")
    Else
        MsgBox (Msg())
    End If
End Sub

Private Sub ButCaptchaLer_Click()
    If (CaptchaLer(EditLicencaLeitorCaptcha.Text, "Captcha.gif") = 1) Then
        EditCaptcha.Text = CaptchaLerTexto()
    Else
        MsgBox (Msg())
    End If
End Sub

Private Sub Form_Load()
    DLLLicenca ("QU2ZSLSOKEQ0E19UX983")
    ButCaptcha_Click
End Sub


