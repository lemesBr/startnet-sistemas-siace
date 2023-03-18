Public Class Form1

    Private Sub ButCaptcha_Click(sender As Object, e As EventArgs) Handles ButCaptcha.Click
        If (UDownloadXMLNFeDLL.Captcha("Captcha.gif")) Then
            Img1.Load("Captcha.gif")
        Else
            MessageBox.Show(UDownloadXMLNFeDLL.Msg)
        End If
    End Sub

    Private Sub ButLerCaptcha_Click(sender As Object, e As EventArgs) Handles ButLerCaptcha.Click
        If (UDownloadXMLNFeDLL.CaptchaLer(EditLicencaLeitorCaptcha.Text, "Captcha.gif")) Then
            EditCaptcha.Text = UDownloadXMLNFeDLL.CaptchaLerTexto
        Else
            MessageBox.Show(UDownloadXMLNFeDLL.Msg)
        End If
    End Sub

    Private Sub ButBuscarCertificado_Click(sender As Object, e As EventArgs) Handles ButBuscarCertificado.Click
        EditCertificado.Text = UDownloadXMLNFeDLL.GetCertificadoDigital()
    End Sub

    Private Sub ButBaixar2_Click(sender As Object, e As EventArgs) Handles ButBaixar2.Click
        If (EditCertificado.Text.Trim() = "") Then
            If (UDownloadXMLNFeDLL.BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, Environment.CurrentDirectory & "\" & EditChave.Text & ".xml")) Then
                Web1.Navigate(Environment.CurrentDirectory & "\" & EditChave.Text & ".xml")
            Else
                MessageBox.Show(UDownloadXMLNFeDLL.Msg)
            End If
        Else
            UDownloadXMLNFeDLL.SetCertificadoDigital(EditCertificado.Text.Trim())
            If (UDownloadXMLNFeDLL.BaixarXMLNFeComCert(EditChave.Text, EditCaptcha.Text, Environment.CurrentDirectory & "\" & EditChave.Text & ".xml")) Then
                Web1.Navigate(Environment.CurrentDirectory & "\" & EditChave.Text & ".xml")
            Else
                MessageBox.Show(UDownloadXMLNFeDLL.Msg)
            End If
        End If
    End Sub
End Class
