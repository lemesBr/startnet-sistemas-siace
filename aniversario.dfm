object FormAniversario: TFormAniversario
  Left = 566
  Top = 279
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o de Aniversariantes'
  ClientHeight = 179
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 138
    Align = alClient
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 53
      Top = 11
      Width = 291
      Height = 33
      Caption = 'Rela'#231#227'o de Aniversariantes'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Label5: TLabel
      Left = 10
      Top = 66
      Width = 81
      Height = 13
      Caption = 'Data de Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 203
      Top = 67
      Width = 59
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 106
      Top = 105
      Width = 111
      Height = 13
      Caption = 'M'#234's de Aniversario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit3: TsDateEdit
      Left = 105
      Top = 64
      Width = 92
      Height = 20
      AutoSize = False
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object DateEdit4: TsDateEdit
      Left = 266
      Top = 64
      Width = 93
      Height = 20
      AutoSize = False
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object ComboBox1: TsComboBox
      Left = 226
      Top = 100
      Width = 89
      Height = 21
      TabOrder = 2
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      ItemIndex = 0
      Items.Strings = (
        ''
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 138
    Width = 396
    Height = 41
    Align = alBottom
    TabOrder = 1
    object suiButton1: TsBitBtn
      Left = 272
      Top = 4
      Width = 100
      Height = 27
      Caption = '&Fechar'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000000000000000000000000000000000000A5BBA000A5B
        BA000A5BBA000A5BBA000A5BBA000A5BBA000A5BBA000A5BBA000A5BBA000A5B
        BA0000AEFF2A0A5BBAFF0A5BBAFF0A5BBA000A5BBA000A5BBA00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A5DBB000A5D
        BB000A5DBB000A5DBB000A5DBB000A5DBB000A5DBB000A5DBB000A5DBB0000AE
        FF2A0A5DBBFF0D98D6FF0A5DBBFF0A5DBB000A5DBB000A5DBB00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A60BD000A60
        BD000A60BD000A60BD000A60BD000A60BD000A60BD000A60BD0000AEFF2A0A60
        BDFF139BD7FF1FE5FBFF0A60BDFF0A60BD000A60BD000A60BD00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A62BF000A62
        BF000A62BF000A62BF000A62BF000A62BF000A62BF0000AEFF2A0A62BFFF199C
        D9FF27AFF3FF29C0F6FF0A62BFFF0A62BF000A62BF000A62BF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A65C1000A65
        C1000A65C1000A65C1000A65C1000A65C10000AEFF2A0A65C1FF209EDAFF35B1
        F5FF2E8DF1FF37BAF7FF0A65C1FF0A65C1000A65C1000A65C100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B68C4000B68
        C4000B68C4000B68C4000B68C40000AEFF2A0B68C4FF27A0DBFF42B4F7FF3A91
        F4FF3889F3FF42B7F8FF0B68C4FF0B68C4000B68C4000B68C400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B6BC6000B6B
        C6000B6BC6000B6BC60000AEFF2A0B6BC6FF2DA2DDFF4DB7F9FF4396F7FF418E
        F6FF418EF6FF49A9F8FF2C9EDDFF0B6BC6FF0B6BC6FF0B6BC6FF0B6BC6FF0B6B
        C6FF0B6BC6FFFFFFFF000B6BC6FF0B6BC6FF0B6BC6FF0B6BC6FF0B6FC9000B6F
        C9000B6FC90000AEFF2A0B6FC9FF30A5DFFF52BBFBFF489BF8FF4694F8FF4694
        F8FF4694F8FF489BF8FF4EADFAFF53BEFBFF55C3FBFF55C3FBFF55C3FBFF57ED
        F5FF0B6FC9FFFFFFFF000B6FC9FF60E5FDFF59ECF6FF0B6FC9FF0B72CB000B72
        CB0000AEFF2A0B72CBFF30A7E0FF52BEFBFF48A1F8FF469AF8FF469AF8FF469A
        F8FF469AF8FF469AF8FF469AF8FF469AF8FF469AF8FF469AF8FF469AF8FF5AEE
        F6FF0B72CBFFFFFFFF000B72CBFF55C6FBFF59E7F7FF0B72CBFF0B76CE0000AE
        FF2A0B76CEFF2EA9E2FF50C2FBFF46A6F8FF44A0F8FF44A0F8FF44A0F8FF44A0
        F8FF44A0F8FF44A0F8FF44A0F8FF44A0F8FF44A0F8FF44A0F8FF44A0F8FF5EEF
        F6FF0B76CEFFFFFFFF000B76CEFF52C9FBFF5CE8F7FF0B76CEFF00AEFF2A0B79
        D1FF2CACE4FF4BC7FBFF42ADF8FF40A7F8FF40A7F8FF40A7F8FF40A7F8FF40A7
        F8FF40A7F8FF40A7F8FF40A7F8FF40A7F8FF40A7F8FF40A7F8FF40A7F8FF62F0
        F7FF0B79D1FFFFFFFF000B79D1FF4DCDFBFF5EEAF8FF0B79D1FF0B7DD3FF29AE
        E5FF47D1FBFF3DB4F8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAF
        F8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF3BAFF8FF67F2
        F8FF0B7DD3FFFFFFFF000B7DD3FF48D2FBFF61ECF9FF0B7DD3FF0F87D9FF30B7
        E8FF78F4F9FF47C4F9FF47C1F9FF49C2F9FF4BC3F9FF4DC4F9FF4FC5F9FF51C6
        F9FF52C6F9FF53C7F9FF53C7F9FF54C7F9FF53C7F9FF53C7F9FF52C6F9FF84F5
        F9FF1695DEFF808080001492DDFF54DDFCFF78F1FAFF128EDBFF00AEFF2A118E
        DDFF31BCEBFF82F6FAFF47CDF9FF48CBF9FF4ACCF9FF4DCDF9FF4FCEF9FF51CF
        FAFF52D0FAFF54D0FAFF54D1FAFF55D1FAFF54D1FAFF54D0FAFF52D0FAFF8FF8
        FBFF199DE2FF808080001799E0FF52E1FCFF7FF3FAFF1495DFFF8080800000AE
        FF2A1295E0FF31C0EDFF8AF7FBFF45D4F9FF46D2F9FF49D3F9FF4BD4FAFF4DD5
        FAFF4FD6FAFF50D6FAFF51D6FAFF51D7FAFF51D6FAFF50D6FAFF4FD6FAFF95F8
        FBFF19A2E5FF80808000179EE3FF4DE5FCFF84F5FBFF1599E2FF808080008080
        800000AEFF2A1599E3FF30C3EEFF90F9FCFF41D9F9FF42D7F9FF44D8F9FF46D9
        F9FF48D9F9FF4ADCFAFF4FE3FBFF9CFAFCFF9BFAFCFF9BFAFCFF9AFAFCFF98FA
        FCFF1BA3E6FF80808000189FE5FF90F9FCFF92F9FCFF169BE3FF808080008080
        80008080800000AEFF2A159CE5FF2CC5F0FF94FAFCFF3BDDF9FF3BDBF9FF3DDC
        F9FF3EDCF9FF45E5FBFF9CFBFCFF1CA7E9FF1CA7E9FF1BA6E9FF1BA6E8FF1AA5
        E8FF19A3E8FF8080800017A0E7FF169EE6FF17A0E6FF159CE5FF808080008080
        8000808080008080800000AEFF2A159FE7FF29C7F1FF98FCFCFF34E1F9FF34DF
        F9FF36DFF9FF9DFCFCFF1AA8E9FF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800000AEFF2A14A2E9FF25C8F2FF9AFCFDFF2FE4
        F8FF2EE2F7FF9DFCFDFF18A7EBFF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800000AEFF2A14A2EBFF21C8F3FF9CFD
        FDFF28E6F8FF9EFDFDFF16A6ECFF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        8000808080008080800080808000808080008080800000AEFF2A13A4ECFF1DC9
        F3FF9DFEFEFF9EFEFEFF14A6EDFF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000808080008080800000AEFF2A12A5
        EEFF1BCAF4FF9EFFFEFF12A6EEFF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000808080008080800000AE
        FF2A10A5EEFF1AC9F5FF11A6EEFF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800000AEFF2A0FA6F0FF0FA6F0FF808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000}
      TabOrder = 0
      OnClick = suiButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton11: TsBitBtn
      Left = 43
      Top = 4
      Width = 100
      Height = 27
      Caption = '&Imprimir'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00514E4FFF514E4FFF514E4FFF514E
        4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E
        4FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00575455FF535052FF848081FF8480
        81FF848081FF848081FF848081FF848081FF848081FF848081FF535052FF5754
        55FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3712200C371
        2200C3712200C3712200C3712200C37122005D5B5CFF4A474AFFB2ADADFFD3D0
        D0FFD3D0D0FFD3D0D0FFD3D0D0FFD3D0D0FFD3D0D0FFB2ADADFF4A474AFF5D5B
        5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5742400C574
        2400C574240FC5742433C5742433C5742433605E5FFF403E40FFA7A2A2FFEAE9
        EAFFEAE9EAFFEAE9EAFFEAE9EAFFEAE9EAFFEAE9EAFFA7A2A2FF403E40FF6462
        63FFC5742433C5742433C5742433C5742403FFFFFF00FFFFFF00C777271EC777
        27C0CA7D2CFFD28B38FF54493EFF424142FF403F40FF3E3D3EFF989495FFDFDE
        DFFFDFDEDFFFDFDEDFFFDFDEDFFFDFDEDFFFDFDEDFFF989495FF3F3E3FFF4341
        41FF46423FFF54493EFFD28B38FFC87828FFC7772799C7772706CA7A2BC6E6B0
        5BFFFFD679FFFFCF71FF524C45FF5E5C5EFF595859FF595859FF898586FFD5D3
        D4FFD5D3D4FFD5D3D4FFD5D3D4FFD5D3D4FFD5D3D4FF898586FF595859FF5958
        59FF5E5C5EFF524C45FFFFD173FFFFD97CFFE1A853FFCA7A2B87D5903FFFFFDB
        82FFFFD076FFFFC96DFF575149FF4B4A4BFF464546FF464546FF7A7677FFC2C0
        C1FFC2C0C1FFC2C0C1FFC2C0C1FFC2C0C1FFC2C0C1FF7A7677FF464546FF4645
        46FF4B4A4BFF575149FFFFCA6FFFFFD278FFFBD67EFFCD7E2FEADB9A4BFFFFD9
        84FFFFCD77FFFFC66FFF7A6952FF424142FF3E3D3DFF3E3D3DFF686566FF6865
        66FF686566FF686566FF686566FF686566FF686566FF676566FF434242FF3E3D
        3EFF424142FF7A6952FFFFC770FFFFD07AFFFFDC88FFD08234FFDE9E50FFFFDA
        8AFFFFCE7EFFFFC775FFA5885EFF61594FFF61594FFF61594FFF61594FFF6159
        4FFF61594FFF61594FFF61594FFF61594FFF61594FFF61594FFF61594FFF625A
        50FF61594FFFA5885EFFFFC877FFFFD080FFFFDD8EFFD48739FFE1A356FFFFDF
        94FFFFD488FFFFCC80FFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC9
        7CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC9
        7CFFFAC97CFF4A5A54FF4E5455FFFFD58AFFFFE197FFD88C3EFFE3A85DFFFFE4
        A0FFFFD993FFFFD28CFFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF
        88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF
        88FFFBCF88FF3AD9DDFF51A4DBFFFFDB96FFFFE7A3FFDB9043FFE7AD64FFFFEB
        ABFFFFE09FFFFFD897FFFBD593FFFBD593FF819EACFF186FC2FF0B69C5FF0B69
        C5FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF1E71C1FF93A6
        A9FFFBD593FFFBD593FFFFD998FFFFE1A1FFFFEEAFFFDF9549FFEAB26BFFFFF1
        B8FFFFE6ABFFFFDEA2FFFDDA9EFFFCDA9EFF3286C6FF54DCF6FF55CCFBFF54C8
        FBFF54C8FBFF54C8FBFF54C8FBFF54C8FBFF54C8FBFF56CDFBFF51D9F4FF3B8A
        C4FFFCDA9EFFFEDB9FFFFFDFA4FFFFE8ADFFFFF4BBFFE39A4EFFECB572FFFFFB
        C7FFFFEFBBFFFFE9B4FFFFE5B2FFFFE6B4FF2299DAFF3FE1FAFF3AD2FAFF3AD2
        FAFF3BD3FAFF3CD4FAFF3CD5FAFF3CD5FAFF3CD4FAFF3CD4FAFF42E2FAFF28A0
        DCFFFFE7B8FFFFE7B6FFFFEAB7FFFFF1BFFFFFFECBFFE69E52FFECAD68FFFFFF
        D8FFFFFCCDFFFFF4C5FFFFF1C3FFFFF1C5FF28A7E3FF29F2FBFF28F1FBFF29F2
        FBFF2AF2FCFF2BF2FCFF2BF2FCFF2BF2FCFF2AF2FCFF29F2FBFF2AF1FBFF30AF
        E4FFFFF1C8FFFFF2C6FFFFF6C8FFFFFED0FFFBEFC4FFE9A257DEECA55AA8F5CE
        9DFFFDF7D3FFFFFFD9FFFFFFD6FFFFFFD6FF21ADEBFF0EABEDFF0EAFEEFF0FB3
        EFFF0FB5F0FF0FB6F0FF0FB7F0FF0FB7F0FF0FB6F0FF0FB4EFFF0FB1EFFF1EB1
        EDFFFFFFD9FFFFFFD8FFFFFFDCFFFCF1CEFFF4CA97FFECA55A69EEA85E0CEEA8
        5E96EEA85EE7EEA85EFFEFAB61FFEFAC63FFF0B066FFF0B36AFFF1B76EFFF1B9
        70FFF2BB73FFF2BC74FFF2BC74FFF2BC74FFF2BC73FFF2BA72FFF1B870FFF1B5
        6CFFF0B168FFEFAE65FFEFAB62FFEEAA62D9EEA85E6CFFFFFF00F0AB6000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF04A49E9FFFE9E6E8FFDCD9DBFFDDDBDCFFDEDC
        DDFFDFDDDEFFDFDDDFFFDFDDDFFFDFDDDFFFDFDDDEFFDFDCDEFFDEDBDDFFE9E7
        E8FFA9A3A5FFFFFFFF0EFFFFFF09FFFFFF04FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00A8A2A4FFECEBEBFFE2E0E1FFE3E1E2FFE4E2
        E3FFE4E3E3FFE4E2E3FFE4E3E4FFE5E3E4FFE5E3E4FFE4E3E3FFE4E2E3FFEDEC
        ECFFACA6A8FFFFFFFF09FFFFFF05FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00ABA6A7FFF0EFF0FFE9E7E8FFE9E7E8FFEAE8
        E9FFEAE8E9FFE9E7E8FFE9E7E8FFEBE9EAFFEBE9EAFFEAE8E9FFEAE8E9FFF1F0
        F1FFAFAAABFFFFFFFF05FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00B1ABADFFF5F4F5FFEFEEEFFFEFEEEFFFF0EF
        F0FFEFEEEFFFEFEEEFFFEFEEEFFFF0EFF0FFF0EFF0FFF0EFF0FFF0EFF0FFF5F4
        F5FFB2ACAEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00B5B0B2FFF9F8F8FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF9F8
        F8FFB5B0B2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00B9B4B6FFFDFDFDFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFD
        FDFFB9B4B6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00BDB7B9FFBDB7B9FDBDB7B9FDBDB7B9FDBDB7
        B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7
        B9FDBDB7B9FDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 1
      OnClick = suiButton11Click
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton3: TsBitBtn
      Left = 158
      Top = 4
      Width = 100
      Height = 27
      Caption = '&Limpar'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6752500C675
        2500C6752500C6752500C6752500C6752500C6752500C6752500C6752500C675
        2500C6752500C6752500C6752500C6752500C6752500C6752500C675259DC675
        2561C675251BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7772700C777
        2700C7772700C7772700C7772700C7772700C7772700C77727FAC7772700C777
        2700C7772700C7772700C7772700C7772700C7772700C7772700C77727FADDA0
        4EFAC77727C1C7772763C7772701FFFFFF00FFFFFF00FFFFFF00C9792A00C979
        2A00C9792A00C9792A00C9792A00C9792A00C9792AFADFA554FAC9792AFAC979
        2A00C9792A00C9792A00C9792A00C9792A00C9792A00C9792A00C9792AFAFFDF
        8BFAF3C573FADEA150FAC9792A86C9792A12FFFFFF00FFFFFF00CB7C2D00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00CB7C2DFAE7B779FBFFD683FAE2A75CFACB7D
        2FFAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CB7C2DFAFFD9
        85FAFFD37FFAFCD07CFAE4AA59FACB7C2D86CB7C2D01FFFFFF00CD7E3000FFFF
        FF00FFFFFF00FFFFFF00CD7E30FAF1D1AAFDFFD897FBFFCB77FAFFCE7DFAE2A2
        53FACD7E30FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CD7E30FAFFD7
        85FAFFCF7CFAFFCE7BFAFCCF7DFAE1A455FACD7E3063FFFFFF00D0813300FFFF
        FF00FFFFFF00D08133FAF5DFC3FDFFE6BDFDFFD391FBFFC370FAFFC672FAFFCC
        7AFAE3A455FAD08133FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00D08133FAF9D0
        7FFAFFD17FFAFFCC7AFAFFCF7DFAF4C575FAD08133C1D081331BD2843600FFFF
        FF00D28436FAF8E5CEFEFFEFD2FDFFE3BCFDFFD091FBFFC16EFAFFC270FAFFC8
        76FAFFD180FAE5A95AFAD28436FAFFFFFF00FFFFFF00FFFFFF00D2843681D284
        36DBF4C375FAFFD07FFAFFCF7EFAFFD687FAE3A95BFAD2843661D4883A00D488
        3AFAF6E3C7FDFFEECDFDFFEDD0FDFFE5C0FDFFD092FBFDC170FAFFC372FAFFC8
        77FAFFD080FAFFDB8CFAE6AF61FAD4883AFAFFFFFF00FFFFFF00FFFFFF00D488
        3A58D4883ADBFACC7DFAFFD282FAFFD687FAEFC072FAD4883A9DD78B3DFAF3DB
        B4FCFFF2C6FCFFE8B7FCFFEBCAFDFFE9C9FDFFD498FBFFC577FAFFC778FAFFCC
        7EFAFFD486FAFFDE92FAFFEA9FFAE7B669FAD78B3DFAFFFFFF00FFFFFF00FFFF
        FF00D78B3D81ECB568FAFFD789FAFFD88BFAF8D185FAD78B3DCDD98E41FAD98E
        41FAD98E41FAD98E41FAF1CA9AFCFFECCCFDFFDAA3FBFFCA7EFAFFCD80FAEAAC
        60FADA9043FAD98E41FAD98E41FAD98E41FAD98E41FAFFFFFF00FFFFFF00FFFF
        FF00D98E4138E1A155FAFFDB90FAFFDB90FAFDDE95FADA9044EEDC914400FFFF
        FF00FFFFFF00FFFFFF00E6B078F3FEF0D4FDFFE1B1FCFFD085FAFFD389FADD93
        46FADC914407FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DC914407DD9346FAFFDF96FAFFDE96FAFDE39FFADE9850EFDF944800FFFF
        FF00FFFFFF00FFFFFF00E5A86AD5FDF2DBFEFFE9C1FCFFD68EFAFFD88FFAE6A5
        5AFADF944838FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DF944838E6A75CFAFFE29AFAFFE39EFAFADE9FFBE3A15ED2E1984B00FFFF
        FF00FFFFFF00FFFFFF00E1984B9DFBECCEFDFFF4DDFDFFDD99FAFFDC94FAF1BF
        75FAE1984B81FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E1984B81F1C279FAFFE59EFAFFE9A8FAF6D9A0FBE5A664A6E39B4F00FFFF
        FF00FFFFFF00FFFFFF00E39B4F61F4D2A2FCFFFBF0FEFFE4A5FBFFDF99FAFBDB
        94FAE39B4FDBE39B4F58FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E39B
        4F58E39B4FDBFBDF99FAFFE8A4FAFFF2C1FBF2CE96FBE4A05864E69E5200FFFF
        FF00FFFFFF00FFFFFF00E69E521BE69E52C1FCEEC9FCFFF0C6FCFFE4A2FAFFE4
        A0FAF9D893FAE69E52DBE69E5281E69E5238E69E5207E69E5238E69E5281E69E
        52DBF9DA95FAFFE9A6FAFFF0BDFBFCEEC7FCE69E52C1E69E521BE8A05500FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E8A05563F4D197FBFFF9E1FDFFF6D6FDFFE8
        A7FAFFE8A5FAFCE29EFAF4C983FAEDB36AFAE9A258FAEDB36AFAF4CA84FAFCE4
        A1FAFFECAAFAFFF2C0FBFFF8D9FDF1C67FFAE8A05563FFFFFF00EAA35800FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EAA35801EAA35886F8DFB3FCFFFBE8FEFFF8
        E0FDFFEEB7FBFFEBABFAFFEDACFAFFEEAEFAFFEFAFFAFFEFAFFAFFEFAEFAFFF0
        B2FAFFF6CDFCFFFBE3FDF4CF8CFAEAA35886EAA35801FFFFFF00ECA55A00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECA55A12ECA55A86F4C985FAFEF7
        E2FDFFFCEDFEFFF9E0FDFFF6CFFCFFF4C5FBFFF3C2FBFFF5C9FBFFF8D6FCFFFC
        E7FDFEF8E5FEF4C985FAECA55A86ECA55A12FFFFFF00FFFFFF00EDA75C00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDA75C01EDA75C63EDA7
        5CC1F8DEB4FCFCF3DAFDFEFAEAFEFFFDF3FEFFFEF6FEFEFBEFFEFDF4DFFDFAE5
        C5FDEDA75CC1EDA75C63EDA75C01FFFFFF00FFFFFF00FFFFFF00EFA95E00EFA9
        5E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA9
        5E1BEFA95E61EFA95E9DEFA95ECDEFA95EEEEFA95EEEEFA95ECDEFA95E9DEFA9
        5E61EFA95E1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 2
      OnClick = suiButton3Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
