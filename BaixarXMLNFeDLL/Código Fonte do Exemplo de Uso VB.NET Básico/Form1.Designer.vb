<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Web1 = New System.Windows.Forms.WebBrowser()
        Me.panel1 = New System.Windows.Forms.Panel()
        Me.Img1 = New System.Windows.Forms.PictureBox()
        Me.EditLicencaLeitorCaptcha = New System.Windows.Forms.TextBox()
        Me.label5 = New System.Windows.Forms.Label()
        Me.ButBaixar2 = New System.Windows.Forms.Button()
        Me.ButBuscarCertificado = New System.Windows.Forms.Button()
        Me.EditCertificado = New System.Windows.Forms.TextBox()
        Me.label4 = New System.Windows.Forms.Label()
        Me.ButLerCaptcha = New System.Windows.Forms.Button()
        Me.EditCaptcha = New System.Windows.Forms.TextBox()
        Me.label3 = New System.Windows.Forms.Label()
        Me.EditChave = New System.Windows.Forms.TextBox()
        Me.label1 = New System.Windows.Forms.Label()
        Me.ButCaptcha = New System.Windows.Forms.Button()
        Me.panel1.SuspendLayout()
        CType(Me.Img1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Web1
        '
        Me.Web1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Web1.Location = New System.Drawing.Point(12, 156)
        Me.Web1.MinimumSize = New System.Drawing.Size(20, 20)
        Me.Web1.Name = "Web1"
        Me.Web1.Size = New System.Drawing.Size(544, 337)
        Me.Web1.TabIndex = 40
        '
        'panel1
        '
        Me.panel1.BackColor = System.Drawing.Color.White
        Me.panel1.Controls.Add(Me.Img1)
        Me.panel1.Location = New System.Drawing.Point(12, 8)
        Me.panel1.Name = "panel1"
        Me.panel1.Size = New System.Drawing.Size(252, 114)
        Me.panel1.TabIndex = 34
        '
        'Img1
        '
        Me.Img1.Location = New System.Drawing.Point(1, 1)
        Me.Img1.Name = "Img1"
        Me.Img1.Size = New System.Drawing.Size(250, 112)
        Me.Img1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.Img1.TabIndex = 0
        Me.Img1.TabStop = False
        '
        'EditLicencaLeitorCaptcha
        '
        Me.EditLicencaLeitorCaptcha.Location = New System.Drawing.Point(270, 63)
        Me.EditLicencaLeitorCaptcha.Name = "EditLicencaLeitorCaptcha"
        Me.EditLicencaLeitorCaptcha.Size = New System.Drawing.Size(292, 20)
        Me.EditLicencaLeitorCaptcha.TabIndex = 46
        '
        'label5
        '
        Me.label5.AutoSize = True
        Me.label5.Location = New System.Drawing.Point(267, 47)
        Me.label5.Name = "label5"
        Me.label5.Size = New System.Drawing.Size(132, 13)
        Me.label5.TabIndex = 45
        Me.label5.Text = "Licença Leitor de Captcha"
        '
        'ButBaixar2
        '
        Me.ButBaixar2.Location = New System.Drawing.Point(462, 127)
        Me.ButBaixar2.Name = "ButBaixar2"
        Me.ButBaixar2.Size = New System.Drawing.Size(97, 23)
        Me.ButBaixar2.TabIndex = 44
        Me.ButBaixar2.Text = "Baixar XML"
        Me.ButBaixar2.UseVisualStyleBackColor = True
        '
        'ButBuscarCertificado
        '
        Me.ButBuscarCertificado.Location = New System.Drawing.Point(288, 127)
        Me.ButBuscarCertificado.Name = "ButBuscarCertificado"
        Me.ButBuscarCertificado.Size = New System.Drawing.Size(168, 23)
        Me.ButBuscarCertificado.TabIndex = 43
        Me.ButBuscarCertificado.Text = "Buscar Certificado Digital"
        Me.ButBuscarCertificado.UseVisualStyleBackColor = True
        '
        'EditCertificado
        '
        Me.EditCertificado.Location = New System.Drawing.Point(354, 102)
        Me.EditCertificado.Name = "EditCertificado"
        Me.EditCertificado.Size = New System.Drawing.Size(205, 20)
        Me.EditCertificado.TabIndex = 42
        '
        'label4
        '
        Me.label4.AutoSize = True
        Me.label4.Location = New System.Drawing.Point(351, 86)
        Me.label4.Name = "label4"
        Me.label4.Size = New System.Drawing.Size(92, 13)
        Me.label4.TabIndex = 41
        Me.label4.Text = "Certificado Digital "
        '
        'ButLerCaptcha
        '
        Me.ButLerCaptcha.Location = New System.Drawing.Point(150, 127)
        Me.ButLerCaptcha.Name = "ButLerCaptcha"
        Me.ButLerCaptcha.Size = New System.Drawing.Size(132, 23)
        Me.ButLerCaptcha.TabIndex = 39
        Me.ButLerCaptcha.Text = "Ler Captcha"
        Me.ButLerCaptcha.UseVisualStyleBackColor = True
        '
        'EditCaptcha
        '
        Me.EditCaptcha.Location = New System.Drawing.Point(270, 102)
        Me.EditCaptcha.Name = "EditCaptcha"
        Me.EditCaptcha.Size = New System.Drawing.Size(78, 20)
        Me.EditCaptcha.TabIndex = 38
        '
        'label3
        '
        Me.label3.AutoSize = True
        Me.label3.Location = New System.Drawing.Point(267, 86)
        Me.label3.Name = "label3"
        Me.label3.Size = New System.Drawing.Size(47, 13)
        Me.label3.TabIndex = 37
        Me.label3.Text = "Captcha"
        '
        'EditChave
        '
        Me.EditChave.Location = New System.Drawing.Point(270, 24)
        Me.EditChave.Name = "EditChave"
        Me.EditChave.Size = New System.Drawing.Size(292, 20)
        Me.EditChave.TabIndex = 36
        '
        'label1
        '
        Me.label1.AutoSize = True
        Me.label1.Location = New System.Drawing.Point(267, 8)
        Me.label1.Name = "label1"
        Me.label1.Size = New System.Drawing.Size(38, 13)
        Me.label1.TabIndex = 35
        Me.label1.Text = "Chave"
        '
        'ButCaptcha
        '
        Me.ButCaptcha.Location = New System.Drawing.Point(12, 127)
        Me.ButCaptcha.Name = "ButCaptcha"
        Me.ButCaptcha.Size = New System.Drawing.Size(132, 23)
        Me.ButCaptcha.TabIndex = 33
        Me.ButCaptcha.Text = "Captcha Atualizar"
        Me.ButCaptcha.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(568, 505)
        Me.Controls.Add(Me.Web1)
        Me.Controls.Add(Me.panel1)
        Me.Controls.Add(Me.EditLicencaLeitorCaptcha)
        Me.Controls.Add(Me.label5)
        Me.Controls.Add(Me.ButBaixar2)
        Me.Controls.Add(Me.ButBuscarCertificado)
        Me.Controls.Add(Me.EditCertificado)
        Me.Controls.Add(Me.label4)
        Me.Controls.Add(Me.ButLerCaptcha)
        Me.Controls.Add(Me.EditCaptcha)
        Me.Controls.Add(Me.label3)
        Me.Controls.Add(Me.EditChave)
        Me.Controls.Add(Me.label1)
        Me.Controls.Add(Me.ButCaptcha)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.panel1.ResumeLayout(False)
        CType(Me.Img1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Private WithEvents Web1 As System.Windows.Forms.WebBrowser
    Private WithEvents panel1 As System.Windows.Forms.Panel
    Private WithEvents Img1 As System.Windows.Forms.PictureBox
    Private WithEvents EditLicencaLeitorCaptcha As System.Windows.Forms.TextBox
    Private WithEvents label5 As System.Windows.Forms.Label
    Private WithEvents ButBaixar2 As System.Windows.Forms.Button
    Private WithEvents ButBuscarCertificado As System.Windows.Forms.Button
    Private WithEvents EditCertificado As System.Windows.Forms.TextBox
    Private WithEvents label4 As System.Windows.Forms.Label
    Private WithEvents ButLerCaptcha As System.Windows.Forms.Button
    Private WithEvents EditCaptcha As System.Windows.Forms.TextBox
    Private WithEvents label3 As System.Windows.Forms.Label
    Private WithEvents EditChave As System.Windows.Forms.TextBox
    Private WithEvents label1 As System.Windows.Forms.Label
    Private WithEvents ButCaptcha As System.Windows.Forms.Button

End Class
