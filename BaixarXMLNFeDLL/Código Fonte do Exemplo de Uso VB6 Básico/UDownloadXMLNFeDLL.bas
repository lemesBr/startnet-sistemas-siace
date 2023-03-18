Attribute VB_Name = "UDownloadXMLNFeDLL"

Public Declare Function Proxy Lib "BaixarXMLNFe.dll" (ByVal Host As String, ByVal Port As Integer, ByVal User As String, ByVal Pass As String) As Integer
Public Declare Function Captcha Lib "BaixarXMLNFe.dll" (ByVal SalvarEm As String) As Integer
'Public Shared Sub Https(Sim As Integer)
Public Declare Function GetCertificadoDigital Lib "BaixarXMLNFe.dll" () As String
Public Declare Function Msg Lib "BaixarXMLNFe.dll" () As String
Public Declare Sub SetCertificadoDigital Lib "BaixarXMLNFe.dll" (CertSerialNumber As String)
Public Declare Function BaixarXMLNFeSemCert Lib "BaixarXMLNFe.dll" (ByVal Chave As String, ByVal Captcha As String, ByVal SalvarEm As String) As Integer
Public Declare Function BaixarXMLNFeComCert Lib "BaixarXMLNFe.dll" (ByVal Chave As String, ByVal Captcha As String, ByVal SalvarEm As String) As Integer
Public Declare Sub DLLLicenca Lib "BaixarXMLNFe.dll" (ByVal Chave As String)
Public Declare Function CaptchaLer Lib "BaixarXMLNFe.dll" (ByVal ChaveCaptcha As String, ByVal ArquivoImagem As String) As Integer
Public Declare Function CaptchaLerTexto Lib "BaixarXMLNFe.dll" () As String
Public Declare Function Imprimir Lib "BaixarXMLNFe.dll" (ByVal ArquivoXML As String, ByVal LogoMarca As String) As Boolean
Public Declare Function ExportarPDF Lib "BaixarXMLNFe.dll" (ByVal ArquivoXML As String, ByVal LogoMarca As String, ByVal PDF As String) As Integer
'Public Shared Sub DLLRegistra(PastaDestino As String)


