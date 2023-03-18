namespace DownloadXMLNFeExemploBasico
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Web1 = new System.Windows.Forms.WebBrowser();
            this.panel1 = new System.Windows.Forms.Panel();
            this.Img1 = new System.Windows.Forms.PictureBox();
            this.ButBaixar2 = new System.Windows.Forms.Button();
            this.ButBuscarCertificado = new System.Windows.Forms.Button();
            this.EditCertificado = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.ButLerCaptcha = new System.Windows.Forms.Button();
            this.EditCaptcha = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.EditChave = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.ButCaptcha = new System.Windows.Forms.Button();
            this.EditLicencaLeitorCaptcha = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Img1)).BeginInit();
            this.SuspendLayout();
            // 
            // Web1
            // 
            this.Web1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.Web1.Location = new System.Drawing.Point(12, 160);
            this.Web1.MinimumSize = new System.Drawing.Size(20, 20);
            this.Web1.Name = "Web1";
            this.Web1.Size = new System.Drawing.Size(547, 333);
            this.Web1.TabIndex = 26;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.Img1);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(252, 114);
            this.panel1.TabIndex = 18;
            // 
            // Img1
            // 
            this.Img1.Location = new System.Drawing.Point(1, 1);
            this.Img1.Name = "Img1";
            this.Img1.Size = new System.Drawing.Size(250, 112);
            this.Img1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.Img1.TabIndex = 0;
            this.Img1.TabStop = false;
            // 
            // ButBaixar2
            // 
            this.ButBaixar2.Location = new System.Drawing.Point(462, 131);
            this.ButBaixar2.Name = "ButBaixar2";
            this.ButBaixar2.Size = new System.Drawing.Size(97, 23);
            this.ButBaixar2.TabIndex = 30;
            this.ButBaixar2.Text = "Baixar XML";
            this.ButBaixar2.UseVisualStyleBackColor = true;
            this.ButBaixar2.Click += new System.EventHandler(this.ButBaixar2_Click);
            // 
            // ButBuscarCertificado
            // 
            this.ButBuscarCertificado.Location = new System.Drawing.Point(288, 131);
            this.ButBuscarCertificado.Name = "ButBuscarCertificado";
            this.ButBuscarCertificado.Size = new System.Drawing.Size(168, 23);
            this.ButBuscarCertificado.TabIndex = 29;
            this.ButBuscarCertificado.Text = "Buscar Certificado Digital";
            this.ButBuscarCertificado.UseVisualStyleBackColor = true;
            this.ButBuscarCertificado.Click += new System.EventHandler(this.ButBuscarCertificado_Click);
            // 
            // EditCertificado
            // 
            this.EditCertificado.Location = new System.Drawing.Point(354, 106);
            this.EditCertificado.Name = "EditCertificado";
            this.EditCertificado.Size = new System.Drawing.Size(205, 20);
            this.EditCertificado.TabIndex = 28;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(351, 90);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(92, 13);
            this.label4.TabIndex = 27;
            this.label4.Text = "Certificado Digital ";
            // 
            // ButLerCaptcha
            // 
            this.ButLerCaptcha.Location = new System.Drawing.Point(150, 131);
            this.ButLerCaptcha.Name = "ButLerCaptcha";
            this.ButLerCaptcha.Size = new System.Drawing.Size(132, 23);
            this.ButLerCaptcha.TabIndex = 25;
            this.ButLerCaptcha.Text = "Ler Captcha";
            this.ButLerCaptcha.UseVisualStyleBackColor = true;
            this.ButLerCaptcha.Click += new System.EventHandler(this.ButLerCaptcha_Click);
            // 
            // EditCaptcha
            // 
            this.EditCaptcha.Location = new System.Drawing.Point(270, 106);
            this.EditCaptcha.Name = "EditCaptcha";
            this.EditCaptcha.Size = new System.Drawing.Size(78, 20);
            this.EditCaptcha.TabIndex = 24;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(267, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(47, 13);
            this.label3.TabIndex = 23;
            this.label3.Text = "Captcha";
            // 
            // EditChave
            // 
            this.EditChave.Location = new System.Drawing.Point(270, 28);
            this.EditChave.Name = "EditChave";
            this.EditChave.Size = new System.Drawing.Size(292, 20);
            this.EditChave.TabIndex = 20;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(267, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 19;
            this.label1.Text = "Chave";
            // 
            // ButCaptcha
            // 
            this.ButCaptcha.Location = new System.Drawing.Point(12, 131);
            this.ButCaptcha.Name = "ButCaptcha";
            this.ButCaptcha.Size = new System.Drawing.Size(132, 23);
            this.ButCaptcha.TabIndex = 17;
            this.ButCaptcha.Text = "Captcha Atualizar";
            this.ButCaptcha.UseVisualStyleBackColor = true;
            this.ButCaptcha.Click += new System.EventHandler(this.ButCaptcha_Click);
            // 
            // EditLicencaLeitorCaptcha
            // 
            this.EditLicencaLeitorCaptcha.Location = new System.Drawing.Point(270, 67);
            this.EditLicencaLeitorCaptcha.Name = "EditLicencaLeitorCaptcha";
            this.EditLicencaLeitorCaptcha.Size = new System.Drawing.Size(292, 20);
            this.EditLicencaLeitorCaptcha.TabIndex = 32;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(267, 51);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(132, 13);
            this.label5.TabIndex = 31;
            this.label5.Text = "Licença Leitor de Captcha";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(574, 505);
            this.Controls.Add(this.EditLicencaLeitorCaptcha);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.Web1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.ButBaixar2);
            this.Controls.Add(this.ButBuscarCertificado);
            this.Controls.Add(this.EditCertificado);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.ButLerCaptcha);
            this.Controls.Add(this.EditCaptcha);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.EditChave);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.ButCaptcha);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Img1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.WebBrowser Web1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox Img1;
        private System.Windows.Forms.Button ButBaixar2;
        private System.Windows.Forms.Button ButBuscarCertificado;
        private System.Windows.Forms.TextBox EditCertificado;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button ButLerCaptcha;
        private System.Windows.Forms.TextBox EditCaptcha;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox EditChave;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button ButCaptcha;
        private System.Windows.Forms.TextBox EditLicencaLeitorCaptcha;
        private System.Windows.Forms.Label label5;
    }
}

