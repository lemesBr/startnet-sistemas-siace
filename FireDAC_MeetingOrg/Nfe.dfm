object FormNfe: TFormNfe
  Left = 0
  Top = 89
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Siace -Modulo de Envio da NF-e/NFC-e'
  ClientHeight = 409
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = CHE
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1
    Height = 409
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 22
      Top = 8
      Width = 294
      Height = 377
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 290
        Height = 360
        ActivePage = TabSheet3
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
            object edtSenha: TDBEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              DataField = 'NFE_SENHA'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 1
            end
            object edtNumSerie: TDBEdit
              Left = 8
              Top = 112
              Width = 225
              Height = 21
              DataField = 'NFE_CERTIFICAO'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 2
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
            end
            object edtPathLogs: TDBEdit
              Left = 9
              Top = 238
              Width = 225
              Height = 21
              DataField = 'NFE_CAMINHO_XML'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 4
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
    Left = 1
    Top = 0
    Width = 589
    Height = 409
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 53
      Width = 587
      Height = 140
      Align = alTop
      TabOrder = 0
      object Label12: TLabel
        Left = 384
        Top = 116
        Width = 64
        Height = 13
        Caption = 'Total tributos:'
      end
      object btnImprimir: TAdvGlowButton
        Left = 416
        Top = 0
        Width = 155
        Height = 25
        Caption = 'Imprimir DANFE'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF737373696969656563929391FFFFFFAFAFAFAFAF
          AFAFAFAFFFFFFF7B7B754F4F4F545454545454FF00FFFF00FF73737393979793
          979775777590918EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B755B5C5C787B7B
          606161545454FF00FF737373939797ADB5B56667665F5F5F7777777777777777
          777777777171715A5A586869697F8282707171545454FF00FF737373ADB5B5AD
          B5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5A2A8A86AA47708B518
          767878565757FF00FF737373D2D2D2988D91997C809A797BAA8186AA7F86AA7E
          86AD828AA77F859D7C7F8B7D7A5E9063787A7A575858FF00FF737373D2D2D285
          5A62956B6D8A6969896D6D876B6B866A6A886E6D8A706F8D6A6993636A9C6C81
          9397975C5D5DFF00FF737373D2D2D26F4952583F415F4C4C7469697267677166
          667166667166665E424254393C8A72749397976C6D6DFF00FF737373ADB5B57E
          686A757272A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B6E5F61988989
          FDB5B56C6D6DFF00FFFF00FF7373738E81818F8485A6A8A9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9B9B9B8473748F85856C6D6DFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFA6A8A99B9B9B9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FFFFFFFFFFFFFFFF
          FFA6A8A9FFFFFF9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFCFCFCFFFFFFA6A8A99B9B9BFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 2
        OnClick = btnImprimirClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnConsultar: TAdvGlowButton
        Left = 216
        Top = 57
        Width = 155
        Height = 25
        Caption = 'Consultar carregando XML'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnConsultarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnStatusServ: TAdvGlowButton
        Left = 216
        Top = 0
        Width = 155
        Height = 25
        Caption = 'Status Servi'#231'o NF-e - F2'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnStatusServClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnCriarEnviar: TAdvGlowButton
        Left = 16
        Top = 4
        Width = 155
        Height = 45
        Caption = 'Enviar NF-e - F3'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D220E00000000000036000000280000002400000021000000010018000000
          0000EC0D000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEBD389CE934B
          B35A1F9F331D9D2F45AD5683C78DCCE7D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA2DBAB38B24B19AB2F1CB5331EBE361DC13716B42F15A52A2FA6419AD1A2
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE9E8E8BBBABA538C5C21AC361EB53423C03C23C23B17AD2E19B330
          23CC3C1ECC3816B62E139E289AD0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0F0F0D9D8D99F9D9E666365333233233F27229E3523B33926BA3D
          27BE3D17A0293DA64B0487151CB93522C83B20CB3914B62C2EA440CCE7D0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE7E7E7B0AEAF817F805756572726262929293A3A3A494848
          3E854925B23B2AB83E2ABB411C9F31F7FCF8F7FCF740A94E129C2524C73C22C7
          3A1ECA3714A52A82C68CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE8E8E8D6D6D69393933D3D3D1919191A1A1A373737575656
          7D7B7B989292AAA1A0BAB0AE1F9F332AB33F2EB94427AD3BF7FDF8EDFAEFF7FC
          F8D2EFD60789191FB83624C53D23C73B16B22E44AB54FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFCFCDCDCDCA1A1A16B6B6B353535121212292929363535
          585757827D7DA7A1A0C3BAB8D3CCC9D5D2D1D7D6D4CECDCB1F9F333FBB5136BA
          4BEFFBF2EEFBF130C64DA1E3ACF7FCF865BD71139F2823BF3A23C33B1EBC351A
          992CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F36C67671111110A0A0A2E2E2E
          6D6C6C8D8989ACA5A4C5BCBAD4CECCDCD9D7D8D6D5CFCFCEC2C0BEB8B4B0ADA7
          9EABA2971F9F336ACC795FCD713AC04F39C24E38C34D31C54DF7FDF8D2EFD60A
          8C1D1DB13224C03C1FB8361C9B2EFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB5AFAE
          5A5858797676958F8EBDB5B3D4CDCBDAD7D5D8D7D6D4D2D0C7C6C4B9B6B2B4AD
          A5B4AA9FB4AA9EB8B0A7BAB6B2BEBCB91F9F3359C66A94DFA05ACA6A4EC86140
          C4543AC44EA4E6B0F7FDF892D59C10952027BC3D1EAF3448AF57FFFFFFFFFFFF
          FFFFFFFFFFFFCEC7C69A9695C6BEBBDAD6D4D7D6D4D0CFCEC7C5C3BBB8B3B6B0
          A8B5ABA1BAB2A6BAB4ACC1BCB9BFBCB9C5C4C2C4C2C2BEBBBB9A958F1F9F333F
          BD5293DDA19BE1A684DA9271D3805ACD6C3CCE59EDFAF0F8FDF846AC5034BE48
          1DA93386CB91FFFFFFFFFFFFFFFFFFFFFFFFBBB5B3BDBCB9C6C3C2B6B3AFB5AE
          A6B5ACA1B9B1A6C1BBB5C8C6C2CAC8C7CBCAC9D0CFCEA9A59FCCC8C7A5A09BCD
          CCCCBDBCBCBDBCBB839C7F1F9F3355C76784D9929FE4AA85D99186DC9676D484
          81E294F3FCF34AC35D30B54435AE47CEEAD2FFFFFFFFFFFFFFFFFFFFFFFFF0EF
          EE939291ABA7A5BBB3ABC7C4C0D1D1CFADA9A4D8D8D8D7D7D7D9D9D9AEA8A2D2
          D1D1D0CDCCABA6A1CFCAC8ACA8A3CCCCCBC0C0BFC6C5C486BF8E1F9F3359C86B
          9DE3A8A0E3AA8BDC997CD68A7BD58B70D18040B95221AA359FD6A6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD5D0CEABABABC1C1C1CFCECEAAA6A0CDC5C1AB
          A39CCAC8C6D8D8D8DBDBDBAEA7A1D6D3D2D3CFCEDBDADADAD5D5D8D8D8CFD1CF
          A0ACA5707974366F3E1F9F334BC35E71D28089D99677D28459C56A39B74D34AF
          4668A070F2F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0B5B59A
          9A9AC3C0BFCAC8C6A6A099C7C5C3C2C1C1D2D2D2DADADADEDDDCDEDDDCD4DED8
          9ED2B280CA9E7CC197519B6F11492812261A21212146634B1F9F331F9F3329B3
          3F27B13E41B15180C68BAFCCB4AEACACE8E7E7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFAF9F9A9A1A0A1A1A1C8C8C8C2C1C0CBCBCAD0D0CFCDCCCB
          D0CFCFC6C6C693A69A49B27439B66C38B76B41B06E569E7386978D9195939A99
          999C989898929197908FD1C8C7E3DCDAF3F1F0F8F7F7F2F0EFE9E7E7DEDFDFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7A59D9DA2A2A2
          BFBDBCADADAD9595956F6F6F7D7D7D6E6E6E687B70779B8680A28E89A594959B
          95A09B9AAAA3A3B2ACABBFBBBCC5C3C3AAA8A88B9191FAFAFAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F7F7ADA2A2A4A4A48989898181818B8A8A9695959794959D98
          98ACA5A6B9B3B4CAC5C5DDDCDDEEEEEEF0F0F0EFEFEFF1F1F1E8E8E8BCBBBB78
          7B7BDEE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCABCBCA29695B6AA
          A9D2C7C7DBD5D5CECACBA9A9A9DCDCDCF6F6F6F9F9F9FAFAFAFAFAFAFAFAFAFA
          FAFAF9F9F9F9F9F9D5D5D5848383ADB3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9B9B9BC7C7C7FCFCFCFC
          FCFCFEFEFEFDFDFDFCFCFCFAFAFAFAFAFAFAFAFAF3F3F3C7C4C4919494FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAFAFAFBABABAFDFDFDFBFBFBFEFEFEFDFDFDFCFCFCFBFBFBFBFBFBFBFBFB
          FBFBFBE8E8E89B9999D1D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE6E6E6F1F1F1F9F9F9FCFCFCFCFCFC
          FBFBFBFBFBFBFBFBFBFBFBFBFCFCFCF4F3F3BCB9B99EA0A0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
          E6E6E6F5F5F5F8F8F8F8F8F8F9F9F9F9F9F9FBFBFBFBFBFBFCFCFCFDFDFDD9D7
          D7858585EFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0F0F0E1E1E1EDEDEDF5F5F5F7F7F7F8F8F8F8F8F8FAFA
          FAFBFBFBFCFCFCFDFDFDF4F4F4999797B5B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDBDBDBDEDEDEF1F1
          F1F4F4F4F6F6F6F5F5F5F4F4F4EFEFEFEDEDEDE7E7E7E1E1E1B9B7B7797878FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE2E2E2D2D2D2DEDEDED9D9D9D0D0D0C9C9C9C0C0C0B9B9B9B3B3B3AB
          ABABA5A5A5B6B6B6D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5BABABAB2B2B2C5C5C5CFCFCFD7
          D7D7DEDEDEF0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        TabOrder = 1
        OnClick = btnCriarEnviarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnGerarPDF: TAdvGlowButton
        Left = 416
        Top = 56
        Width = 155
        Height = 25
        Caption = 'Gerar PDF'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnGerarPDFClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnEnviarEmail: TAdvGlowButton
        Left = 416
        Top = 85
        Width = 155
        Height = 25
        Caption = 'Enviar NFe Email'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = btnEnviarEmailClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Enabled = False
      end
      object btnConsultarChave: TAdvGlowButton
        Left = 216
        Top = 86
        Width = 155
        Height = 25
        Caption = 'Consultar pela Chave'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = btnConsultarChaveClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnCriarEnviarNFCe: TAdvGlowButton
        Left = 17
        Top = 66
        Width = 154
        Height = 45
        Caption = 'Enviar NFC-e - F10'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA793000000097048597300000B1200
          000B1201D2DD7EFC0000000774494D4507D30A081033356984F60C00000F5C49
          44415478DAED9A7970DDD575C73FBFFDEDBB9E24CB8B842D83B1011B3B0B1830
          A60C743AA44CC2A49374A63329294BD2AC341D2049036D20256C490C21C51887
          180FB669C1091030B6B1BC1B79B7252F5A2D59DBD3BEBCA7B7FD96DB3FF4245B
          B671489A4033933BF3E65EBDF9CDEF7DCFBDDF73CEF7DC23F8331FD2C7F5C38E
          654999EEEE687E60C0A7BABD43BE9915C39224893F0B03868F1F2F3FF5CB97BE
          956D3DFD19B3AF2F926EE9ECF35FE56EECBAD9AEFEC7078E3E319274463FECBB
          948F1A7CD7DBEFDC52FFE3275EF7C7E3B746CB2BC2EEC16197DAD11949D777CE
          5AFCE5A21B4D97CD8EFDA92D1FF67DF247093ED5DC3CBD73EDBA67A75EBB787A
          E9A24FE21919C5DBD145C4B289392A4EBA883B964EFFF23498FEB118B0724DF5
          8217D7ECFBCD332BB6DC03B8CF7EBF6D5952CBF2171E8B54545486E7CC818646
          A43DD5E8891E3CB6C0EFD1D12B2204DC7AF17D2EFDD60FFB9BEA1F0BFC4BEBF6
          2E300CBDEADA4533829DDDC9BF5DB9F6C0130383436B5B9A8E2F7BF6C9AFD7B5
          BEBCFA4E7968F88B915B3E85686FC7D9530D6DED6059283981B6C48FE7CA38BD
          9B0F10CE49951FA9012FFFCFDE0586AE57DD7CFDEC6038E4667A59884F5F3DCD
          5FD7D47FD7E12925772DBA7267CDC07BBF2C2FBF6929F2E010F6FB7B114DCD88
          5C0E2927C8973BF87EB008333342FB7B5DE842497E64147AE5F57D0B1C47A92A
          2D89040F9FE8E5E8F16E52A91C96E570E9CC287F77DB657CB267FF15C573E7F8
          0D8F077BDF0144ED314432053658AA89F16FF3F12FA8E4C8CBBB48EFC8DB9A2E
          6DFD939DC0E3BFD8BDD471ECAB25A4F91E8F5EAE68BEEBCAA7FB09F80D027E83
          77AA9A08FA0DBC6E13599618786D1DA2ED34C1A54B700ED7208ED420FA07C176
          10590BFEA984D067AFA06BE726EA9E6A279097D77ECE4EEEF83F1BF0D3157B43
          B66D2F706CFB26C71115D188F74ABFDF7DC5B4523F45510FF1A88780DF00C034
          6D4CD306E0A66B67B0737F07B72C8CD2BB7307C9DA1AA65F7F3D667B074EF53E
          E44437D836E41CEC051A9107AEA3FFF811B6DC7F14778B68CAEBCE83D81F7E43
          55806756EEAA10820A90960AC1FC50D0736534EC9D1E8B78282B19036CE8CA24
          B0B62D181C4C93CB59083196408580A9253EDA4BFD9C7CF0BB14632117C5E86D
          6CC038528BD2D08091CBA2DB32B6CFC2F3F0A7913C19763EF43EDA6E41E24BF7
          D989CB16DDCE039F7911C801CEEFCCC4CFAFAABE6F4A69E8A919538344C31EA6
          14FB0B6004B62D304D1BC771304D07CBB219C32A108273D6634648924430E8A2
          EAEEAF314332090F0CD1517B8C3E2B4F289B232AABE896C0737F05F1FB17B3F7
          C9DFD0F4FD0EAEFEDEFD84BFFA6D0ED624683835901C1A1A5ADBDE7A62D9F29F
          7DA30EB0800BCA0CA5F2D2F94DC5A565F7DCB478A6E1325472398B6CD62493B1
          C8E72D2CCBC1B24401A0340172F27A4C954892841082E4BE6A8CFE04F9A9659C
          DEB59B705F3F615B9030732447F3B8AE713363D967196A3ACEFBDF3A42C55F7F
          91CA477E4830E0A2B222C2FCB9C54628E85B28E9B1AF5EB3E40BB75CBBE40ED7
          F6CD6B6A0A2732C910E5FD9D6FE7162FF96C2C160B5D130AB830CDF15D1E0775
          EE7A1C38173002A4D4307DCB9F63EAE2C5F86D875C6B2B2DDD0924E150E1F230
          9AB318AE5029F94C09F51B6A491E8C32EBF1A7C90A9564328B6D3BB85D1A65A5
          7E165E51426971706A4B67EE6FAE5CF857CAEE6DAFED07CCB38D5000A7A8A8F4
          583876C95DF32E2B312C6BDCC80B809BB4DBE71B263916BDCF2DA378EEE5B874
          1DAB6A1BFAF17ABCA645AF99A3C73229F779F0770BF6AE3FC2F10D235CF5EF3F
          C53BFBB2091FCAE52CF2791B9F6F2C40EC3DDCC5D12347773CF51F7FFF129002
          D270C6CD6580D5BF7C229148245634B70E60180A9234066A1CF0D8DF67AFCF50
          E6CC1AFAD7ACC665DB78A64C41D435A034346364B2046595992E0FBA2471289D
          24670B3E713A404C2DA3BBE892C951459589C7C7FC70CF810EAA0F34B4AD5EF1
          BD5F5D08FCD96AD4298A971E8BC42BEEBA7CF6F8293089DBE7D36832A5ACD3A7
          48FDF64D4AAEBF0EB9AF1F67FB4E38DD8662DB28928C2CCBB86599BC6DD1984D
          939305A38642EFD5D7D3D8E9309A3109F90DA64E0DA1AA0A8D2D83BCBBB521BD
          FA85EFFDA8B5B9F604700AE8FF200338727057FAC69B3F178D4543D784431E6C
          DB99542E5C943E8EA0F3E927295DB410C3307076EE461CAD45A4338084224948
          4898C2C1746C74E1207EF42895DF7D809B6E5CC8FCB9A520491CA8EDA6B17588
          5CCEA26ACF69D6BCF4C823470F6E390C3401DD05FE7F603DE0C4E3538EC58A2B
          EEBA6C56B161DBE22C5F903ED86925895C533DD681FD8467CF461C3B89B3A71A
          D13F30F18C00F24290762C864C93F097EFE6923BBF82DB1DC071240C43A134EE
          E3AACBE314453D34B60CD2D79F4A7BFD315B55B5836D2DC7EB80CC8542E9B915
          99BAE2E5CD8FDF7CE3826F979584C8E5AC8BC6FCB1B543E7CF9E26A469789170
          76ED8193F5609A13E04D21485A26FDF92C5D9F5ACAA75E7C1EC7190BCDE3B3AE
          AB04022E3C1E1D5996C8E56D1A5B06395893A0BDB3BF3A934EAEFEE10512DC24
          03B6EDA80EAB9A7B7BDE32E6DDB87836998C8910A2F06122C19D6D8C3532CCE9
          EFDCC7D4F9F3918FD422D5D4C2C8193199170E19DB66D0CC919A3E95F40F7E8E
          5114A3724664920113514596F07874020117BA3EA6747AFAD31F98E0262874F8
          C88990A6E95B675E32F54A555549674D424137B6ED5C34718DD61CC13E568B57
          4850730C697068FCB8C66863DBA42C9341C7A2ECB1A7B8EAB61B3870B49370C0
          85AE2B67E51C264E359FB7492673A4D3269224110EB999551E66CEACA8515337
          B4B0BBABA5E9D0BE8D75405E06385A733204626BF98C29574523412A66C4686D
          EB4351C6A2C7D961F5CC3CB6CE3435A238205A4E230D0C826D231005F016492B
          CF683E47E09FBF41F0C6A5E4B2264BAE29A7B6A117D3BAB8D4C9E7C754C1F8F8
          CDC6065A9A8E6E5CF9F37FA92D547C920A60DBF69DB22C5F95CF9BE4F326BAAE
          51120FD2D13548493C483E6F17765E2084C4F8ED8710305A5F8FDED787393004
          B92C92109805F0292B4FD2B171EE7F80CABBEFC5B61D0606069165074D4EB26D
          670765C53E8410288A822CCBE8BA412010C4E7F3E172E9C4623E00366C6DE6D8
          F193879E7DFCAE178181425EB0558005F3E73EFBE3C79F3E3167CEDC6F96964D
          BB35120E120EF96968EAA6AC348C2C3B6769A1C9B3E4F230D2D088E60874338F
          E3404ED8642D93DE6814F9A187B8F486A5B4B49C2291E8A2A7A787647204DB31
          395ED785DFABE2D25524494255553C1E2FB366CD66DEBC2B282F8F0170B02641
          F58186B6977EF1AFCF011DC069600470267C60F3A677136BD6ACAEEAEDEEDEAE
          E96EC711DA4CCB169A61E8F87D6E1C475C20944A58D9419A7EB11219301D8BAC
          6D9134F39C9C7319997BEF452E2AE2C081FDD4D61EE5D4A96612892E06070749
          A552183A9CEE18221CF2E2F37A89468B282B9BC6942965CC9E3D0DC3D069EB4A
          F2C6BB27CF4E68CD405F41A14E8A4212A0015E2008C41E7DEC675FB861C9CDF7
          5EF7E9CBBDF9BC7D4E441A9BB3ED0F9358B689E6F5A748E323591C6370C1D528
          73E6904C67181D4D6159F684005414154DD3F07A7D8442014CC74033C22C9877
          095EAF0FB7DB4D4949089FCFA0A73FCDAB6F9E60FDBA677EBC65C3AFB602F585
          13C85DA8221340BE90ED5240BFAEC91B25ECBBBB7B8688179DEF0B2068EDCE30
          EB2B3E3645EF20294FC316028120D7DF8F10024DD370BBDDB85C6E028100D168
          8C70384A3C1E23180C50541466E7DE7614DD83DFEF251070E1F319E4F236EF6E
          6D6647D5FA955B36FC6A37D002240A182F5A520AC0ACDE77749EA6E9AF5E5A39
          C3DFD492A0381E4251641CC799F001499270C5EEE1D77BB76194CA1808244946
          51140CC3C0EDF6E0F379F1FB0384C341C2E13081801FB7DB852CCB0C8F64E81F
          CA108D7868EB1862C6D430918877C2690F1D3EB4FBD5558FBE0DB4029D40F6DC
          6C7CC1BBD1FD076A16A89A5655396B46D0E376D1D3370440513488693A93B273
          3E9F636424492E9743511454554155555C2E1DC330D034155555194966194966
          184E66181EC9D2DB9F42D314DC86864BD788843D54CE8C23CB12557B4EB365DB
          E1BA471EBCFDE182886B04062F54629E7702870ED72E9024B96AF6ACF2A0DB3D
          A6C9E3B11027EA5A89C742C8B284104CE4034D73E3F37990E5337B31343C4A32
          95A5A33B4932996538994153555C868ECBD08886BC9415879025692238949404
          90658963F57D6CDF7DA2ED8565DF7CB2C0F75660F883EAE3F30CB06DEB1245D1
          A4F6CE6E8A626142C1316D5E140BD1D73F4C2C1A9C78D6B26D464773A4D25952
          A31952A92CC95416974B2F80D5298D8799555E728EF661928488C7FDE8BA4A4F
          7F9ADF6EAE4BBFBDFEB9E5DD5D2DCD05DEF78F479C0F753BBD7CF97F35261289
          F52EC38365CB1543C369AF10108D06E8ECEA219FB7E8EE19A0ADBD87B6F65E32
          D93C9665E3D27522613FD3A716138B0408FABD783D63141A4F7A179AA3512F1E
          8F4E2E6FF3F26BB56C79F795E7ABDE5DB5A3102ECF73DA0FD31F90011710068A
          1E7AF847B72FFAC4B59F8F1515CFD5758580DF4D38E4C7ED36F0B85D38CE999B
          0BC7E13C9579E179EC398F472312F192CBDBBCFAE609366F7A6BEDAAE71F5C5B
          E07C2B30FA41B71117EB0F884228CD00C3DBB6BE57B3E69597DEEAEC68DF5E5C
          32236A5A4A71DE149ADFE7C1EDD20B19544651E40205C545777C7CD634654226
          6CDED1C2AE3D7B773FFF93AFAD2CD0E6742194FFCE8ECDC51A1C4EC1903430D2
          D850D7BEFEF5359B0E1FDAB7C11F8C665369697AA237E55554058F5B47556454
          5546D3C66A6ADB76CEAA2326CF8A225354E44392240ED624D8B2F378DB63DFBF
          E3D102F0968B39ED1FD2A1110527CA02C99E9EAEDECD1BDFAC5EF7CA8AD7A2B1
          D24426AF16257A32F14CD6C2E735307415559571B9341465CC9071DA8C4B9048
          C48BAACA34B60CF2DBF7EAD3CB1EBBF3FBA3A9A19602EF07CEAD7BFF982D26A7
          90C6D3C0F09E5D5B6A7EFDDAAAB7BABADAB7BB7DF1685B225D3C3C92D75C2E0D
          AF474751C60CD13405210496E51008B8318CB188B3FE9D13E9752FFFE763F527
          F6D616EADE9E0BD5BD7F8A1ED9247AB534D7B7BFF3D6BA4DC76AF66FD08C70B6
          77484C6F6D4F7A354D2112F24C18E2F5EA689A422E6FF3C6C606DEDBB87ED5C6
          B756541576BEEB6C8DF35135F926D1ABAF37D1BB63EB5BD56FBCBEF2B560B838
          3198548A1A5B9371D316F8BD06863116527FBDA19EAD5B36BFB16AF977FFBB90
          69DB0B9BF1FFA24FAC0206E00722D7DE70DBBC5B6FFBD23DF1921937555644C9
          E46CB66D7B7FF7933FFC879F14C037FF3E4EFB51F68965402FC8F3D0CCD9F32B
          6EFFFCD7EFF4FAC2952F3CF39D67139DCD7505DEFF5E4EFB7134BAA5C2A98CD7
          19E1C2F789B30B933F977F3518A79754705893BF8CBF8C8F77FC2FC6C58EC3E2
          D0CE800000000049454E44AE426082}
        TabOrder = 7
        OnClick = btnCriarEnviarNFCeClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object Button1: TAdvGlowButton
        Left = 416
        Top = 28
        Width = 155
        Height = 25
        Caption = 'Imprimir NFC-e'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF737373696969656563929391FFFFFFAFAFAFAFAF
          AFAFAFAFFFFFFF7B7B754F4F4F545454545454FF00FFFF00FF73737393979793
          979775777590918EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B755B5C5C787B7B
          606161545454FF00FF737373939797ADB5B56667665F5F5F7777777777777777
          777777777171715A5A586869697F8282707171545454FF00FF737373ADB5B5AD
          B5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5A2A8A86AA47708B518
          767878565757FF00FF737373D2D2D2988D91997C809A797BAA8186AA7F86AA7E
          86AD828AA77F859D7C7F8B7D7A5E9063787A7A575858FF00FF737373D2D2D285
          5A62956B6D8A6969896D6D876B6B866A6A886E6D8A706F8D6A6993636A9C6C81
          9397975C5D5DFF00FF737373D2D2D26F4952583F415F4C4C7469697267677166
          667166667166665E424254393C8A72749397976C6D6DFF00FF737373ADB5B57E
          686A757272A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B6E5F61988989
          FDB5B56C6D6DFF00FFFF00FF7373738E81818F8485A6A8A9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9B9B9B8473748F85856C6D6DFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFA6A8A99B9B9B9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FFFFFFFFFFFFFFFF
          FFA6A8A9FFFFFF9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFCFCFCFFFFFFA6A8A99B9B9BFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 8
        OnClick = Button1Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object Button3: TAdvGlowButton
        Left = 216
        Top = 28
        Width = 155
        Height = 25
        Caption = 'Status Servi'#231'o NFC-e - F5'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 9
        OnClick = Button3Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 117
        Width = 209
        Height = 17
        Caption = 'Enviar dados Contribuinte NFC-e - F9'
        TabOrder = 10
      end
      object FDvEdit1: TAdvEdit
        Left = 448
        Top = 112
        Width = 121
        Height = 21
        EmptyTextStyle = []
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        TabOrder = 11
        Text = ''
        Visible = True
        Version = '3.4.1.1'
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 193
      Width = 587
      Height = 215
      ActivePage = TabSheet5
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
          Width = 579
          Height = 187
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
          Width = 579
          Height = 187
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000D73B0000541300000000000000000000000000000000000000000000
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
          Width = 579
          Height = 187
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
          Width = 579
          Height = 187
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
          Width = 579
          Height = 187
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
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 579
          Height = 187
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object Memo: TMemo
          Left = 0
          Top = 0
          Width = 579
          Height = 187
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 579
          Height = 187
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 1
      Width = 587
      Height = 52
      Align = alTop
      TabOrder = 2
      object myLabel3d2: TmyLabel3d
        Left = 143
        Top = 11
        Width = 399
        Height = 33
        Caption = 'SIACE-Envio da NF-e / NFC-e'
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
      object CheckBox1: TCheckBox
        Left = 3
        Top = 32
        Width = 97
        Height = 17
        Caption = 'On-Line'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 72
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Off-Line'
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox4: TCheckBox
        Left = 4
        Top = 11
        Width = 126
        Height = 17
        Caption = 'FS-DA - Contingencia'
        Enabled = False
        TabOrder = 2
        OnClick = CheckBox4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    InitialDir = 'c:\siace\nfe'
    Title = 'Selecione a NFe'
    Left = 440
    Top = 8
  end
  object SPC_N_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMERONFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIENFE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_NFE'
    Left = 369
    Top = 8
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,'
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS,'
      
        'G.CFOP_EST_VENDA, G.CST_VENDA, GR.NCM_SH, GR.PERC_TRIBU, GR.FONT' +
        'E, ncm.alic_nac, ncm.alic_imp, P.VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO, P.CEST'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 504
    Top = 8
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2212
      end
      item
        Name = 'Cod_Ven'
        DataType = ftInteger
        ParamType = ptInput
        Value = 686
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PEDIDOS_ITENS.CODIGO'
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'PEDIDOS_ITENS.CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'PEDIDOS_ITENS.ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'PEDIDOS_ITENS.CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TIBStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TIBStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.DESCRICAO_PRODUTO'
      Size = 50
    end
    object QBuscaItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'PEDIDOS_ITENS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object QBuscaItensPRECO_TOTAL: TIBBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PEDIDOS_ITENS.PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'PEDIDOS_ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TIBStringField
      FieldName = 'DEV'
      Origin = 'PEDIDOS_ITENS.DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TIBBCDField
      FieldName = 'QNT_DEV'
      Origin = 'PEDIDOS_ITENS.QNT_DEV'
      Precision = 18
      Size = 4
    end
    object QBuscaItensVAL_DEV: TIBBCDField
      FieldName = 'VAL_DEV'
      Origin = 'PEDIDOS_ITENS.VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TIBBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'PEDIDOS_ITENS.ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PEDIDOS_ITENS.UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'PEDIDOS_ITENS.SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'PEDIDOS_ITENS.VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'PEDIDOS_ITENS.FRACAO'
    end
    object QBuscaItensCOD_NCM: TIBStringField
      FieldName = 'COD_NCM'
      Origin = 'PEDIDOS_ITENS.COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = 'PEDIDOS_ITENS.PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TIBBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PEDIDOS_ITENS.PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TIBBCDField
      FieldName = 'BASE_ISS'
      Origin = 'PEDIDOS_ITENS.BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TIBBCDField
      FieldName = 'VL_ISS'
      Origin = 'PEDIDOS_ITENS.VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TIBBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PEDIDOS_ITENS.PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TIBBCDField
      FieldName = 'VL_ICM'
      Origin = 'PEDIDOS_ITENS.VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TIBBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PEDIDOS_ITENS.PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'PEDIDOS_ITENS.BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TIBBCDField
      FieldName = 'VL_IPI'
      Origin = 'PEDIDOS_ITENS.VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TIBBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PEDIDOS_ITENS.PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TIBBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'PEDIDOS_ITENS.BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = 'PEDIDOS_ITENS.VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TIBBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TIBBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TIBBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PEDIDOS_ITENS.PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TIBBCDField
      FieldName = 'BASE_PIS'
      Origin = 'PEDIDOS_ITENS.BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = 'PEDIDOS_ITENS.VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TIBStringField
      FieldName = 'IMPRIME'
      Origin = 'PEDIDOS_ITENS.IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'PEDIDOS_ITENS.COD_EMPRESA'
      Required = True
    end
    object QBuscaItensICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'PRODUTOS.IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'PRODUTOS.OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_PIS_COFINS: TIBStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TIBStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA: TIBStringField
      FieldName = 'CST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = 'PRODUTOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TIBStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TIBStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA_INTER: TIBStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = 'PRODUTOS.COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'PRODUTOS.COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'PRODUTOS.QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = 'PRODUTOS.UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'PRODUTOS.ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPERC_TRIBU: TIBBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'GRUPOS.PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TIBStringField
      FieldName = 'FONTE'
      Origin = 'GRUPOS.FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TIBBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'TABELA_NCM.ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TIBBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'TABELA_NCM.ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = 'PRODUTOS.VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'PRODUTOS.CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
    object QBuscaItensCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = 'PRODUTOS.COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = 'PRODUTOS.N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = 'PRODUTOS.ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'PRODUTOS.ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'PRODUTOS.TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = 'PRODUTOS.N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = 'PRODUTOS.COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'PRODUTOS.ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'PRODUTOS.COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'PRODUTOS.TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PRODUTOS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PRODUTOS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 500
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = '"PEDIDOS_ITENS"."ID_BICO"'
    end
    object QBuscaItensID_TANQUE: TIBStringField
      FieldName = 'ID_TANQUE'
      Origin = '"PEDIDOS_ITENS"."ID_TANQUE"'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TIBStringField
      FieldName = 'ID_BOMBA'
      Origin = '"PEDIDOS_ITENS"."ID_BOMBA"'
      Size = 5
    end
    object QBuscaItensBICO: TIBStringField
      FieldName = 'BICO'
      Origin = '"PEDIDOS_ITENS"."BICO"'
      Size = 2
    end
    object QBuscaItensNCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItensCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QBuscaItensPRECO_UNITARIO: TBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 536
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42325.594024282400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  DADOS_ENDERECO: String;                                       ' +
        '          '
      '  DESCR_CST: String;'
      '    '
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while Engine.FreeSpace > 10 do Engine.ShowBand(Child1);  '
      '  Engine.ShowBand(Child2);'
      'end;'
      ''
      'procedure Child3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Child3.Visible := (<Page> = 1) and (MasterData2.DataSet.Record' +
        'Count > 0);                                                     ' +
        '         '
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := <Page> = 1;                                ' +
        '                              '
      'end;'
      ''
      'procedure Header2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := not Header2.Visible;                       ' +
        '                                       '
      'end;'
      ''
      'procedure ColumnHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnHeader1.Visible := <Page> > 1;                          ' +
        '                    '
      'end;'
      ''
      'procedure ColumnFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnFooter1.Visible := Engine.FinalPass and (<Page> = 1);   ' +
        '                                                                ' +
        ' '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Trim(<Parametros."Imagem">) <> '#39#39' then'
      '  begin              '
      '    imgLogomarca.Picture.LoadFromFile(<Parametros."Imagem">);'
      '    if Trim(<Parametros."LogoExpandido">) = '#39'1'#39' then'
      '    begin'
      '      Memo10.Visible := False;'
      '      Memo11.Visible := False;'
      
        '      imgLogomarca.Width := imgLogomarca.Width+Memo10.Width;    ' +
        '                                                                ' +
        '  '
      '    end;'
      '  end else'
      '  begin'
      '    Memo10.Width := Memo10.Width + Memo10.Left;'
      '    Memo11.Width := Memo11.Width + Memo11.Left;'
      '    Memo10.Left := 0;'
      '    Memo11.Left := 0;'
      
        '    imgLogomarca.Visible := False;                              ' +
        '                                        '
      '  end;            '
      '    '
      '  if Trim(<Emitente."CRT">) = '#39'3'#39' then'
      '    DESCR_CST := '#39'CST'#39
      '  else'
      '    DESCR_CST := '#39'CSOSN'#39';                      '
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  DADOS_ENDERECO := Trim('
      '    <Emitente."XLgr"> + '#39', '#39' + <Emitente."Nro"> + #13 +       '
      
        '    <Emitente."XBairro"> + '#39' - '#39' + <Emitente."XMun"> + '#39' - '#39' + <' +
        'Emitente."UF"> + #13 +                   '
      
        '    '#39'Fone: '#39' + <Emitente."Fone"> + '#39' CEP: '#39' + <Emitente."CEP"> +' +
        ' #13 +       '
      '    <Parametros."Site"> + #13 +       '
      '    <Parametros."Email">  '
      '  );  '
      'end;'
      ''
      'procedure Overlay1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Overlay1.Visible := <Identificacao."TpAmb"> = '#39'2'#39';'
      '  if Overlay1.Visible then'
      '  begin              '
      '    Overlay1.Height        := Engine.PageHeight;'
      
        '    memWatermark.Width     := Overlay1.Width;                   ' +
        '               '
      '    memWatermark.Height    := Engine.PageHeight;'
      '    memWatermark.Font.Size := 50;'
      '  end;                  '
      'end;'
      '  '
      '    '
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'IF Length (<Destinatario."CNPJCPF">) = 14 then'
      'Sender.EditMask := '#39'999.999.999-99;0;'#39';'
      'else'
      'Sender.EditMask := '#39'99.999.999/9999-99;0;'#39';    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 288
    Top = 200
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      BackPictureVisible = False
      LargeDesignHeight = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 11.338582680000000000
        Top = 865.512370000000000000
        Width = 755.906000000000000000
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992089370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[DadosProdutos."XProd"] [DadosProdutos."infAdProd"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 283.464537640000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."NCM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          Left = 321.259813230000000000
          Width = 26.456695350000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."ORIGEM"][DadosProdutos."CST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          Left = 347.716506140000000000
          Width = 24.566929130000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataField = 'UTrib'
          DataSetName = 'DadosProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."UTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo138: TfrxMemoView
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo139: TfrxMemoView
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo143: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo144: TfrxMemoView
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."PICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."PIPI"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Width = 642.520100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            
              'Destinat'#225'rio: [Destinatario."Xnome"] - [Destinatario."XLgr"], [D' +
              'estinatario."Nro"] - [Destinatario."XBairro"] - [Destinatario."X' +
              'Mun"] - [Destinatario."UF"].'
            
              'Emiss'#227'o: [Identificacao."DEmi"]  Valor Total: R$ [CalculoImposto' +
              '."VNF" #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795300000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 73.811070000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385802360000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 642.520100000000000000
          Top = 25.456710000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 525.354670000000000000
          Top = 11.559060000000000000
          Width = 109.606370000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 173.858362910000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo1: TfrxMemoView
          Left = 445.984540000000000000
          Width = 309.921460000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 462.236237560000000000
          Top = 7.559060000000000000
          Width = 79.000000000000000000
          Height = 45.354330710000000000
          BarType = bcCode128C
          Expression = '<Identificacao."ID">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Top = 60.472480000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 445.984540000000000000
          Top = 90.708720000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulta de autenticidade no portal da NF-e'
            'www.nfe.fazenda.gov.br/portal ou no site da SEFAZ Autenticadora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 445.984540000000000000
          Top = 70.811070000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Width = 94.488164570000000000
          Height = 120.944960000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Top = 8.338590000000000000
          Width = 219.212740000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."XNome"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Top = 47.574830000000000000
          Width = 219.212740000000000000
          Height = 62.362221810000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            '[DADOS_ENDERECO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 351.496290000000000000
          Top = 20.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da '
            'Nota Fiscal Eletr'#244'nica')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 351.496290000000000000
          Top = 70.811070000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]'
            'Folha [Page#]/[TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 359.834880000000000000
          Top = 46.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '0 - ENTRADA'
            '1 - SA'#205'DA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 416.748300000000000000
          Top = 46.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."TpNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 120.944960000000000000
          Width = 445.984540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NATUREZA DA OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 130.393700790000000000
          Width = 442.205010000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Identificacao."NatOp"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 445.984540000000000000
          Top = 120.944960000000000000
          Width = 309.921460000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Parametros."Contingencia_Descricao"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 445.984540000000000000
          Top = 129.393700790000000000
          Width = 309.921460000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IE"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 253.228510000000000000
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL DO SUBSTITUTO TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 253.228510000000000000
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IEST"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 249.448980000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 506.457020000000000000
          Top = 156.850410790000000000
          Width = 249.448980000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."CNPJ"]')
          ParentFont = False
        end
        object imgLogomarca: TfrxPictureView
          Top = 5.118120000000000000
          Width = 124.724490000000000000
          Height = 105.826840000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 9.448816460000000000
        Top = 1288.819730000000000000
        Width = 755.906000000000000000
        object Memo150: TfrxMemoView
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'DATA E HORA DA IMPRESS'#195'O: [Date #ddd/mm/yyyy] [Time #dhh:mm:ss] ' +
              '[Parametros."Usuario"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 396.850650000000000000
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."Sistema"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 960.000620000000000000
        Visible = False
        Width = 755.906000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Child = frxReport1.Child1
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 3.779527560000000000
        Top = 982.677800000000000000
        Width = 755.906000000000000000
        object Memo161: TfrxMemoView
          Width = 60.472480000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 321.260050000000000000
          Width = 26.456695350000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 347.716564720000000000
          Width = 24.566929130000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Height = 35.795300000000000000
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Child3OnBeforePrint'
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 0.779530000000000000
          Top = 16.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frxReport1.Page2
        end
        object Memo55: TfrxMemoView
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DUPLICATAS')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 96.267762910000000000
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child3
        DataSetName = 'Identificacao'
        RowCount = 0
        object Memo29: TfrxMemoView
          Top = 16.897650000000000000
          Width = 468.661720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 26.346390790000000000
          Width = 464.882190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Top = 16.897650000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 631.181510000000000000
          Top = 26.346390790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DEmi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 631.181510000000000000
          Top = 43.354360000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.803100790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DSaiEnt"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 631.181510000000000000
          Top = 69.811070000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'HORA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 631.181510000000000000
          Top = 79.259810790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."HoraSaida"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 468.661720000000000000
          Top = 16.897650000000000000
          Width = 162.519790000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 468.661720000000000000
          Top = 26.346390790000000000
          Width = 162.519790000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          Left = 555.590910000000000000
          Top = 43.354360000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590910000000000000
          Top = 52.803100790000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 385.512060000000000000
          Top = 43.354360000000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BAIRRO / DISTRITO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 52.803100790000000000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XBairro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          Top = 43.354360000000000000
          Width = 385.512060000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 52.803100790000000000
          Width = 381.732530000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[Destinatario."XLgr"], [Destinatario."Nro"]  [Destinatario."XCpl' +
              '"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Top = 69.811070000000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 79.259810790000000000
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XMun"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.811070000000000000
          Width = 30.236240000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.259810790000000000
          Width = 30.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          Left = 385.512060000000000000
          Top = 69.811070000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'TELEFONE / FAX')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 79.259810790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."Fone"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          Left = 498.897960000000000000
          Top = 69.811070000000000000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 498.897960000000000000
          Top = 79.259810790000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."IE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 162.519772910000000000
        Top = 597.165740000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo58: TfrxMemoView
          Top = 2.779530000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 0.543290000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = -31.236240000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Left = 114.944960000000000000
          Top = 15.118120000000000000
          Width = 114.897637795276000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 102.047310000000000000
          Top = 24.566860790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Left = 229.551330000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 230.551330000000000000
          Top = 24.566860790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBCST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          Left = 343.937230000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 314.921460000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 574.488560000000000000
          Top = 23.566860790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          Left = 459.590848000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 459.590848000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          Left = 344.693136000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 344.693136000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VOutro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          Left = 229.795424000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 229.795424000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          Left = 114.897712000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 114.897712000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VSeg"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 574.488560000000000000
          Top = 41.574830000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 574.488560000000000000
          Top = 50.023570790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          Top = 69.921259840000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 636.094512600000000000
          Top = 83.149660000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 636.094512600000000000
          Top = 92.598400790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          Left = 604.724800000000000000
          Top = 83.149660000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 604.724800000000000000
          Top = 92.598400790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Veiculo."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          Left = 536.693260000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 536.693260000000000000
          Top = 92.598400790000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          Left = 453.543600000000000000
          Top = 83.149660000000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 453.543600000000000000
          Top = 92.598400790000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."RNTC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo91: TfrxMemoView
          Left = 362.834880000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 362.834880000000000000
          Top = 92.598400790000000000
          Width = 90.708720000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."ModFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          Top = 83.149660000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Top = 92.598400790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          Left = 604.724800000000000000
          Top = 109.606370000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 604.724800000000000000
          Top = 119.055110790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Transportador."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          Left = 636.094512600000000000
          Top = 109.606370000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 636.094512600000000000
          Top = 119.055110790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."IE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo99: TfrxMemoView
          Left = 362.834880000000000000
          Top = 109.606370000000000000
          Width = 241.889920000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 362.834880000000000000
          Top = 119.055110790000000000
          Width = 241.889920000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XMun"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo101: TfrxMemoView
          Top = 109.606370000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Top = 119.055110790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XEnder"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo103: TfrxMemoView
          Top = 136.063080000000000000
          Width = 51.653576670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Top = 145.511820790000000000
          Width = 51.653576670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."QVol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo105: TfrxMemoView
          Left = 51.653576670000000000
          Top = 136.063080000000000000
          Width = 134.803236670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 51.653576670000000000
          Top = 145.511820790000000000
          Width = 134.803236670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Esp"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          Left = 186.456813330000000000
          Top = 136.063080000000000000
          Width = 142.362296670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 186.456813330000000000
          Top = 145.511820790000000000
          Width = 142.362296670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Marca"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo109: TfrxMemoView
          Left = 328.819110000000000000
          Top = 136.063080000000000000
          Width = 187.716656670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 328.819110000000000000
          Top = 145.511820790000000000
          Width = 187.716656670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."NVol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo111: TfrxMemoView
          Left = 516.535766670000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 516.535766670000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          Left = 636.220883330000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 636.220883330000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo193: TfrxMemoView
          Left = 459.102660000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DOS TRIBUTOS APROXIMADO')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 464.882190000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VTotTrib"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 37.795287800000000000
        Top = 805.039890000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header2OnBeforePrint'
        object Memo115: TfrxMemoView
          Top = 2.000000000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Top = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 60.472480000000000000
          Top = 15.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 283.464537640000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 321.259813230000000000
          Top = 15.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCR_CST]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 347.716506140000000000
          Top = 15.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 372.283493860000000000
          Top = 15.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 394.960659210000000000
          Top = 15.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE/TRIB')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 438.425480000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 483.779840000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 529.134200000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 619.842920000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 710.551640000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 733.228820000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 710.551640000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'QUOTA %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Top = 782.362710000000000000
        Width = 755.906000000000000000
        RowCount = 1
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 35.795287800000000000
        Top = 317.480520000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnHeader1OnBeforePrint'
        object Memo5: TfrxMemoView
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Top = 13.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 60.472480000000000000
          Top = 13.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 283.464537640000000000
          Top = 13.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 321.259813230000000000
          Top = 13.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCR_CST]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 347.716506140000000000
          Top = 13.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 372.283493860000000000
          Top = 13.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 394.960659210000000000
          Top = 13.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 438.425480000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 483.779840000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 529.134200000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 574.488560000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 619.842920000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 665.197280000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 710.551640000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          Left = 733.228820000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          Left = 710.551640000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'QUOTA %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Top = 1009.134510000000000000
        Width = 755.906000000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 194.535542910000000000
        Top = 1069.606990000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnFooter1OnBeforePrint'
        object Memo152: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Top = 16.897650000000100000
          Width = 217.322859060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Top = 26.346390790000200000
          Width = 217.322859060000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IM"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 217.322859060000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS SERVI'#199'OS')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 217.322859060000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VServ"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 396.850418110000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 396.850418110000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VBC"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 576.377977170000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO ISSQN')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 576.377977170000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VISS"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 517.795610000000000000
          Top = 58.472480000000100000
          Width = 238.110216690000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Top = 45.354360000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS FDICIONAIS')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Top = 58.472480000000100000
          Width = 517.795319530000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Top = 68.031540000000000000
          Width = 517.795610000000000000
          Height = 124.724490000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        Height = 37.795177950000000000
        Top = 899.528140000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object memWatermark: TfrxMemoView
          Align = baClient
          Width = 755.906000000000000000
          Height = 37.795177950000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'HOMOLOGA'#199#195'O'
            ''
            'SEM VALOR FISCAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      LargeDesignHeight = True
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 5
        ColumnWidth = 151.181102362205000000
        DataSetName = 'Duplicatas'
        RowCount = 0
        object Memo81: TfrxMemoView
          Left = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Duplicatas."NDup"]'
            '[Duplicatas."DVenc"]'
            '[Duplicatas."VDup" #n%2,2n]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Width = 52.913420000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero'
            'Vencimento'
            'Valor R$')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 52.913420000000000000
          Width = 3.779530000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          LineSpacing = 3.000000000000000000
          Memo.UTF8W = (
            ':'
            ':'
            ':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
end
