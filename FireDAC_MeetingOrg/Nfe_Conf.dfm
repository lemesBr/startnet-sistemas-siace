object FormNfe_Conf: TFormNfe_Conf
  Left = 326
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Siace - NFe'
  ClientHeight = 521
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 521
    Align = alLeft
    TabOrder = 0
    object Label12: TLabel
      Left = 8
      Top = 424
      Width = 270
      Height = 39
      Caption = 
        'OBS: Configure os dados da Empresa corretamente para '#13#10'n'#227'o haver' +
        ' erros na valida'#231#227'o da nota, em Configura'#231#245'es'#13#10'--> Empresa.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 281
      Height = 377
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 277
        Height = 360
        ActivePage = TabSheet7
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox2: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label2: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object sbtnCaminhoCert: TSpeedButton
              Left = 235
              Top = 32
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnCaminhoCertClick
            end
            object Label25: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object sbtnGetCert: TSpeedButton
              Left = 235
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnGetCertClick
            end
            object edtCaminho: TEdit
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              TabOrder = 0
            end
            object edtNumSerie: TDBEdit
              Left = 8
              Top = 112
              Width = 225
              Height = 21
              DataField = 'NFE_CERTIFICAO'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 2
              OnEnter = edtNumSerieEnter
            end
            object edtSenha: TDBEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              DataField = 'NFE_SENHA'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 1
              OnEnter = edtSenhaEnter
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox3: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 269
            Caption = 'Geral'
            TabOrder = 0
            object Label7: TLabel
              Left = 8
              Top = 176
              Width = 57
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 235
              Top = 188
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnLogoMarcaClick
            end
            object sbtnPathSalvar: TSpeedButton
              Left = 235
              Top = 236
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnPathSalvarClick
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 224
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object rgTipoDanfe: TRadioGroup
              Left = 8
              Top = 16
              Width = 249
              Height = 49
              Caption = 'DANFE'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Retrato'
                'Paisagem')
              TabOrder = 1
            end
            object rgFormaEmissao: TRadioGroup
              Left = 8
              Top = 72
              Width = 249
              Height = 97
              Caption = 'Forma de Emiss'#227'o'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Normal'
                'Conting'#234'ncia'
                'SCAN'
                'DPEC'
                'FSDA')
              TabOrder = 2
            end
            object edtLogoMarca: TDBEdit
              Left = 8
              Top = 191
              Width = 225
              Height = 21
              DataField = 'NFE_LOGOMARCA'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 3
              OnEnter = edtLogoMarcaEnter
            end
            object edtPathLogs: TDBEdit
              Left = 9
              Top = 238
              Width = 225
              Height = 21
              DataField = 'NFE_CAMINHO_XML'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 4
              OnEnter = edtPathLogsEnter
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox4: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 141
            Caption = 'WebService'
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ckVisualizar: TCheckBox
              Left = 8
              Top = 118
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbUF: TComboBox
              Left = 8
              Top = 32
              Width = 249
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 10
              ParentFont = False
              TabOrder = 1
              Text = 'MT'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object rgTipoAmb: TRadioGroup
              Left = 8
              Top = 61
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 2
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 152
            Width = 265
            Height = 105
            Caption = 'Proxy'
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label9: TLabel
              Left = 208
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label10: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label11: TLabel
              Left = 138
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 208
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 135
              Top = 72
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox5: TGroupBox
            Left = 1
            Top = 4
            Width = 264
            Height = 324
            Caption = 'Email'
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Servidor SMTP'
            end
            object Label4: TLabel
              Left = 206
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label5: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label26: TLabel
              Left = 137
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object Label27: TLabel
              Left = 8
              Top = 96
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
            end
            object Label28: TLabel
              Left = 8
              Top = 168
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object edtSmtpHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtSmtpPort: TEdit
              Left = 206
              Top = 32
              Width = 51
              Height = 21
              TabOrder = 1
            end
            object edtSmtpUser: TEdit
              Left = 8
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 2
            end
            object edtSmtpPass: TEdit
              Left = 137
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 3
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 112
              Width = 249
              Height = 21
              TabOrder = 4
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 144
              Width = 167
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura'
              TabOrder = 5
            end
            object mmEmailMsg: TMemo
              Left = 8
              Top = 184
              Width = 249
              Height = 130
              TabOrder = 6
            end
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 70
      Top = 392
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnSalvarConfigClick
    end
  end
  object Panel2: TPanel
    Left = 297
    Top = 0
    Width = 566
    Height = 521
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 53
      Width = 564
      Height = 240
      Align = alTop
      TabOrder = 0
      object btnImprimir: TButton
        Left = 192
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Imprimir DANFE'
        TabOrder = 3
        OnClick = btnImprimirClick
      end
      object btnConsultar: TButton
        Left = 8
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Consultar carregando XML'
        TabOrder = 4
        OnClick = btnConsultarClick
      end
      object btnValidarXML: TButton
        Left = 377
        Top = 126
        Width = 177
        Height = 25
        Caption = 'Validar XML'
        TabOrder = 1
        OnClick = btnValidarXMLClick
      end
      object btnStatusServ: TButton
        Left = 9
        Top = 6
        Width = 177
        Height = 25
        Caption = 'Status Servi'#231'o'
        TabOrder = 0
        OnClick = btnStatusServClick
      end
      object btnCancNF: TButton
        Left = 9
        Top = 126
        Width = 177
        Height = 25
        Caption = 'Cancelamento NFe com XML'
        TabOrder = 6
        OnClick = btnCancNFClick
      end
      object btnCriarEnviar: TButton
        Left = 7
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Criar e Enviar'
        Enabled = False
        TabOrder = 2
        OnClick = btnCriarEnviarClick
      end
      object btnInutilizar: TButton
        Left = 192
        Top = 6
        Width = 177
        Height = 25
        Hint = 'Inutilizar Numera'#231#227'o NF-E - 55, NFC-e 65'
        Caption = 'Inutilizar Numera'#231#227'o Nfe/Nfce'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnInutilizarClick
      end
      object btnGerarNFE: TButton
        Left = 193
        Top = 96
        Width = 177
        Height = 25
        Caption = 'Gerar NFe'
        Enabled = False
        TabOrder = 7
        OnClick = btnGerarNFEClick
      end
      object btnConsCad: TButton
        Left = 193
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Consulta Cadastro'
        Enabled = False
        TabOrder = 8
        OnClick = btnConsCadClick
      end
      object btnGerarPDF: TButton
        Left = 192
        Top = 126
        Width = 177
        Height = 25
        Caption = 'Gerar PDF'
        TabOrder = 9
        OnClick = btnGerarPDFClick
      end
      object btnEnviarEmail: TButton
        Left = 377
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Enviar NFe Email'
        TabOrder = 10
        OnClick = btnEnviarEmailClick
      end
      object btnConsultarRecibo: TButton
        Left = 192
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Consultar Recibo Lote'
        TabOrder = 11
        OnClick = btnConsultarReciboClick
      end
      object btnEnvDPEC: TButton
        Left = 377
        Top = 6
        Width = 177
        Height = 25
        Caption = 'Enviar DPEC'
        Enabled = False
        TabOrder = 12
        OnClick = btnEnvDPECClick
      end
      object btnConsultarDPEC: TButton
        Left = 377
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Consultar DPEC'
        Enabled = False
        TabOrder = 13
        OnClick = btnConsultarDPECClick
      end
      object btnImportarXML: TButton
        Left = 377
        Top = 96
        Width = 177
        Height = 25
        Caption = 'Importar TXT/XML'
        TabOrder = 14
        OnClick = btnImportarXMLClick
      end
      object btnConsultarChave: TButton
        Left = 8
        Top = 96
        Width = 177
        Height = 25
        Caption = 'Consultar pela Chave'
        TabOrder = 15
        OnClick = btnConsultarChaveClick
      end
      object btnCancelarChave: TButton
        Left = 9
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Cancelamento NFe pela Chave'
        Enabled = False
        TabOrder = 16
        OnClick = btnCancelarChaveClick
      end
      object btnGerarTXT: TButton
        Left = 377
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Gerar TXT'
        TabOrder = 17
        OnClick = btnGerarTXTClick
      end
      object btnAdicionarProtNFe: TButton
        Left = 8
        Top = 184
        Width = 177
        Height = 25
        Caption = 'FDicionar nfeProc ao XML'
        TabOrder = 18
        OnClick = btnAdicionarProtNFeClick
      end
      object btnCarregarXMLEnviar: TButton
        Left = 376
        Top = 183
        Width = 177
        Height = 25
        Caption = 'Carregar XML e Enviar'
        TabOrder = 19
        OnClick = btnCarregarXMLEnviarClick
      end
      object btnCartadeCorrecao: TButton
        Left = 377
        Top = 183
        Width = 177
        Height = 25
        Caption = 'Carta de Corre'#231#227'o CC-e'
        Enabled = False
        TabOrder = 20
        OnClick = btnCartadeCorrecaoClick
      end
      object btnImprimirCCe: TButton
        Left = 8
        Top = 211
        Width = 177
        Height = 25
        Caption = 'Imprimir CC-e'
        TabOrder = 21
        OnClick = btnImprimirCCeClick
      end
      object btnEnviarEvento: TButton
        Left = 377
        Top = 211
        Width = 177
        Height = 25
        Caption = 'Enviar Evento Email'
        Enabled = False
        TabOrder = 22
        OnClick = btnEnviarEventoClick
      end
      object Button1: TButton
        Left = 192
        Top = 211
        Width = 177
        Height = 25
        Caption = 'Imprimir Evento'
        TabOrder = 23
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 192
        Top = 184
        Width = 177
        Height = 25
        Caption = 'Imprimir NFC-e'
        TabOrder = 24
        OnClick = Button2Click
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 293
      Width = 564
      Height = 227
      ActivePage = TabSheet9
      Align = alClient
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C00000077390000911400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object trvwNFe: TTreeView
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Memo: TMemo
          Left = 0
          Top = 0
          Width = 556
          Height = 105
          Align = alCustom
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 556
          Height = 199
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 1
      Width = 564
      Height = 52
      Align = alTop
      TabOrder = 2
      object myLabel3d2: TmyLabel3d
        Left = 163
        Top = 11
        Width = 301
        Height = 33
        Caption = 'Configura'#231#227'o da  NF-e'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        AStyle3D = Resit3d
        AShadeLTSet = False
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 688
    Top = 376
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 696
    Top = 416
  end
end
