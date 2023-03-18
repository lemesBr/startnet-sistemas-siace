object FConsultaCPF_CNPJ: TFConsultaCPF_CNPJ
  Left = 332
  Top = 252
  AlphaBlendValue = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta CPF'
  ClientHeight = 216
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 10132122
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pgcCPF_CNPJ: TPageControl
    Left = 0
    Top = 0
    Width = 636
    Height = 216
    ActivePage = tbCPF
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    object tbCPF: TTabSheet
      Caption = 'tbCPF'
      TabVisible = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 628
        Height = 206
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 361
          Top = 12
          Width = 78
          Height = 16
          Caption = 'Digite o CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 361
          Top = 142
          Width = 96
          Height = 16
          Caption = 'Digite o Captcha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 361
          Top = 78
          Width = 170
          Height = 16
          Caption = 'Digite a Data de Nascimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditCaptcha: TEdit
          Left = 361
          Top = 161
          Width = 137
          Height = 41
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditCPF: TEdit
          Left = 361
          Top = 31
          Width = 264
          Height = 41
          TabStop = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Panel3: TPanel
          Left = 9
          Top = 11
          Width = 346
          Height = 127
          BevelOuter = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 344
            Height = 106
            Align = alClient
            Center = True
            Proportional = True
            Stretch = True
          end
          object LabAtualizarCaptcha: TLabel
            Left = 1
            Top = 107
            Width = 344
            Height = 19
            Cursor = crHandPoint
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Atualizar Captcha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = LabAtualizarCaptchaClick
          end
        end
        object btnConsultar: TButton
          Left = 504
          Top = 161
          Width = 120
          Height = 40
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10132122
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnConsultarClick
        end
        object EditDtNasc: TEdit
          Left = 361
          Top = 95
          Width = 264
          Height = 41
          TabStop = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '00/00/0000'
        end
      end
    end
    object tbCNPJ: TTabSheet
      Caption = 'tbCNPJ'
      ImageIndex = 1
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 628
        Height = 206
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 361
          Top = 12
          Width = 85
          Height = 16
          Caption = 'Digite o CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 361
          Top = 78
          Width = 96
          Height = 16
          Caption = 'Digite o Captcha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ButBuscar: TBitBtn
          Left = 504
          Top = 80
          Width = 121
          Height = 58
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = ButBuscarClick
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000FFFFFFFDFDFD
            C1C1C1A7A7A7F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D4D6C8C6C89F
            9F9FAEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBECD4CBCEC9C7C89595
            95CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7E8D4CCCFBAB9B98D8D8D
            EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCDDD3CBCEAEAEAE949494FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D0D2CDC7C99A9A9AB4B4B4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CCCEC6C0C2868686E3E3E3FFFFFF
            FBFBFBEDEDEDECECECF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7CFD1B6B3B3808081A2A2A2949496A3
            A3A49E9EA089898AABABABF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8B9B7B7B9E4E3E4FCFCFDFFFFFFFFFF
            FFFAFAFAD2D2D2838384E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF1F1F1ADADAFF3F3F3F9F9F9F8F8F8FAFAFAFAFAFAFAFAFA
            FBFBFBECECEC878788F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFAFAFB1ECEBEBF3F3F3F4F4F4F6F6F6F6F6F6F7F7F7F6F6F6F6F6F6F8
            F8F8D8D8D9AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
            BAB9BBF0F0F0EFEFEFF4F4F4F4F4F4F4F4F4F5F5F5F4F4F4F5F5F5F4F4F4F6F6
            F6929293DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEBC8C7C8ED
            EDEDEFEFEFF3F3F3F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F4F4F4F7F7F7B1B1B2
            C0C0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9BFBEBEEAEAEAEDED
            EDF0F0F0F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F4F4F4B5B5B7C2C2C3FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F3ADACACE4E5E4E7E7E7E8E8E8
            E8E8E8E8E8E8EAEAEAEAEAEAECECECEEEEEEF2F2F2AFAFB0DBDBDCFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B0B0CACACAF1F1F1EEEEEEEDEDEDEB
            EBEBECECECEEEEEEEFEFEFF2F2F2EBEAEBB1B1B2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7969695DFDFDFF2F3F3EEEEEEEDEDEDEFEF
            EFEFEFEFF2F2F2F0F0F0B2B2B4F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFD6D6D69C9B9BCFCFCFE8E8E8EEEEEEF0F0F0ECECEC
            DDDDDDB3B3B4D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE9E9E9B0B0AFA4A3A3ACACABB0B0AFB0AFAFAEAEAFE5
            E5E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFAFAFAE6E6E6D9D8D8DADADAE4E3E4FCFCFCFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
        object edtCaptchaCNPJ: TEdit
          Left = 361
          Top = 97
          Width = 137
          Height = 41
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditCNPJ: TMaskEdit
          Left = 361
          Top = 31
          Width = 261
          Height = 41
          EditMask = '00.000.000/0000-00;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 18
          ParentFont = False
          TabOrder = 0
          Text = '  .   .   /    -  '
        end
        object Panel4: TPanel
          Left = 9
          Top = 11
          Width = 346
          Height = 127
          BevelOuter = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object Image2: TImage
            Left = 1
            Top = 1
            Width = 344
            Height = 106
            Align = alClient
            Center = True
            Proportional = True
            Stretch = True
          end
          object Label5: TLabel
            Left = 1
            Top = 107
            Width = 344
            Height = 19
            Cursor = crHandPoint
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Atualizar Captcha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
        end
      end
    end
  end
  object ConsultaCPF: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 582
    Top = 146
  end
  object ConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    Left = 544
    Top = 146
  end
end
