Imports System.Runtime.InteropServices

'***********************ATENÇÃO*************************************
'É necessário alterar a opção "Target CPU" para "x86"
'***********************ATENÇÃO*************************************

Public Class UDownloadXMLNFeDLL
    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function Proxy(Host As String, Port As Integer, User As String, Pass As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function Captcha(SalvarEm As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Sub Https(Sim As Integer)
    End Sub

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function GetCertificadoDigital() As String
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function Msg() As String
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Sub SetCertificadoDigital(CertSerialNumber As String)
    End Sub

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function BaixarXMLNFeSemCert(Chave As String, Captcha As String, SalvarEm As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function BaixarXMLNFeComCert(Chave As String, Captcha As String, SalvarEm As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Sub DLLLicenca(Chave As String)
    End Sub

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function CaptchaLer(ChaveCaptcha As String, ArquivoImagem As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function CaptchaLerTexto() As String
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function Imprimir(ArquivoXML As String, LogoMarca As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Function ExportarPDF(ArquivoXML As String, LogoMarca As String, PDF As String) As Boolean
    End Function

    <DllImport("BaixarXMLNFe.dll")> _
    Public Shared Sub DLLRegistra(PastaDestino As String)
    End Sub

End Class