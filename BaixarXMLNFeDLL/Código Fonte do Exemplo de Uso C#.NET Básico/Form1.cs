using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DownloadXMLNFeExemploBasico
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
                
        private void ButCaptcha_Click(object sender, EventArgs e)
        {
            if (UDownloadXMLNFeDLL.Captcha("Captcha.gif"))
                Img1.ImageLocation = "Captcha.gif";
            else
                MessageBox.Show(UDownloadXMLNFeDLL.Msg());
        }

        private void ButLerCaptcha_Click(object sender, EventArgs e)
        {
            if (UDownloadXMLNFeDLL.CaptchaLer(EditLicencaLeitorCaptcha.Text, "Captcha.gif"))
                EditCaptcha.Text = UDownloadXMLNFeDLL.CaptchaLerTexto();
            else
                MessageBox.Show(UDownloadXMLNFeDLL.Msg());
        }

        private void ButBuscarCertificado_Click(object sender, EventArgs e)
        {
            EditCertificado.Text = UDownloadXMLNFeDLL.GetCertificadoDigital();

            if (EditCertificado.Text.Trim() != "")
                UDownloadXMLNFeDLL.SetCertificadoDigital(EditCertificado.Text);
        }

        private void ButBaixar2_Click(object sender, EventArgs e)
        {
            if (EditCertificado.Text == "")
            {
                if (UDownloadXMLNFeDLL.BaixarXMLNFeSemCert(EditChave.Text, EditCaptcha.Text, EditChave.Text + ".xml"))
                    Web1.Navigate(Environment.CurrentDirectory + "\\" + EditChave.Text + ".xml");
                else
                    MessageBox.Show(UDownloadXMLNFeDLL.Msg());
            }
            else
            {
                if (UDownloadXMLNFeDLL.BaixarXMLNFeComCert(EditChave.Text, EditCaptcha.Text, EditChave.Text + ".xml"))
                    Web1.Navigate(Environment.CurrentDirectory + "\\" + EditChave.Text + ".xml");
                else
                    MessageBox.Show(UDownloadXMLNFeDLL.Msg());
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Caso você tenha uma licença de basta descomentar a linha abaixo
            //UDownloadXMLNFeDLL.DLLLicenca("COLOQUE SUA LICENÇA AQUI");
        }
    }
}
