inherited FrmCadCaixa: TFrmCadCaixa
  Left = 243
  Top = 91
  Caption = 'Cadastro de Caixa'
  ClientHeight = 556
  ClientWidth = 653
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 653
    Height = 505
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 649
      Height = 501
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Caixa'
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label6: TLabel
          Left = 80
          Top = 8
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object EdtCodCaixa: TAlignEdit
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Alignment = taRightJustify
          ColorOnFocus = clWindow
          ColorOnNoFocus = clWindow
          FontOnFocus.Charset = DEFAULT_CHARSET
          FontOnFocus.Color = clWindowText
          FontOnFocus.Height = -11
          FontOnFocus.Name = 'MS Sans Serif'
          FontOnFocus.Style = []
          FontOnNoFocus.Charset = DEFAULT_CHARSET
          FontOnNoFocus.Color = clWindowText
          FontOnNoFocus.Height = -11
          FontOnNoFocus.Name = 'MS Sans Serif'
          FontOnNoFocus.Style = []
        end
        object EdtNome: TEdit
          Left = 80
          Top = 24
          Width = 289
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 56
          Width = 361
          Height = 401
          Caption = 'ECF'
          TabOrder = 2
          object Label3: TLabel
            Left = 256
            Top = 176
            Width = 87
            Height = 13
            Caption = 'Tam.da Descri'#231#227'o'
          end
          object Label4: TLabel
            Left = 10
            Top = 176
            Width = 25
            Height = 13
            Caption = 'Porta'
          end
          object Label7: TLabel
            Left = 104
            Top = 176
            Width = 35
            Height = 13
            Caption = 'Gaveta'
          end
          object Label5: TLabel
            Left = 88
            Top = 16
            Width = 53
            Height = 13
            Caption = 'Marca ECF'
          end
          object Label23: TLabel
            Left = 184
            Top = 16
            Width = 58
            Height = 13
            Caption = 'Modelo ECF'
          end
          object Label24: TLabel
            Left = 8
            Top = 56
            Width = 79
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie'
          end
          object Label25: TLabel
            Left = 8
            Top = 96
            Width = 61
            Height = 13
            Caption = 'MF FDicional'
          end
          object Label2: TLabel
            Left = 8
            Top = 16
            Width = 44
            Height = 13
            Caption = 'Tipo ECF'
          end
          object Label26: TLabel
            Left = 88
            Top = 96
            Width = 50
            Height = 13
            Caption = 'Versao SB'
          end
          object Label27: TLabel
            Left = 192
            Top = 96
            Width = 40
            Height = 13
            Caption = 'Data SB'
          end
          object Label28: TLabel
            Left = 280
            Top = 96
            Width = 40
            Height = 13
            Caption = 'Hora SB'
          end
          object Label30: TLabel
            Left = 88
            Top = 136
            Width = 66
            Height = 13
            Caption = 'CNPJ Usu'#225'rio'
          end
          object Label31: TLabel
            Left = 232
            Top = 136
            Width = 103
            Height = 13
            Caption = 'Insc.Estadual Usu'#225'rio'
          end
          object Label29: TLabel
            Left = 8
            Top = 136
            Width = 61
            Height = 13
            Caption = 'Num.Usu'#225'rio'
          end
          object Label51: TLabel
            Left = 288
            Top = 16
            Width = 64
            Height = 13
            Caption = 'Cod.Nacional'
          end
          object Image1: TImage
            Left = 251
            Top = 361
            Width = 24
            Height = 24
            AutoSize = True
            Center = True
            Picture.Data = {
              0B54504E474772617068696336090000424D3609000000000000360000002800
              0000180000001800000001002000000000000009000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00514E
              4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E4FFF514E
              4FFF514E4FFF514E4FFF514E4FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005754
              55FF535052FF848081FF848081FF848081FF848081FF848081FF848081FF8480
              81FF848081FF535052FF575455FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00C3712200C3712200C3712200C3712200C3712200C37122005D5B
              5CFF4A474AFFB2ADADFFD3D0D0FFD3D0D0FFD3D0D0FFD3D0D0FFD3D0D0FFD3D0
              D0FFB2ADADFF4A474AFF5D5B5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00C5742400C5742400C574240FC5742433C5742433C5742433605E
              5FFF403E40FFA7A2A2FFEAE9EAFFEAE9EAFFEAE9EAFFEAE9EAFFEAE9EAFFEAE9
              EAFFA7A2A2FF403E40FF646263FFC5742433C5742433C5742433C5742403FFFF
              FF00FFFFFF00C777271EC77727C0CA7D2CFFD28B38FF54493EFF424142FF403F
              40FF3E3D3EFF989495FFDFDEDFFFDFDEDFFFDFDEDFFFDFDEDFFFDFDEDFFFDFDE
              DFFF989495FF3F3E3FFF434141FF46423FFF54493EFFD28B38FFC87828FFC777
              2799C7772706CA7A2BC6E6B05BFFFFD679FFFFCF71FF524C45FF5E5C5EFF5958
              59FF595859FF898586FFD5D3D4FFD5D3D4FFD5D3D4FFD5D3D4FFD5D3D4FFD5D3
              D4FF898586FF595859FF595859FF5E5C5EFF524C45FFFFD173FFFFD97CFFE1A8
              53FFCA7A2B87D5903FFFFFDB82FFFFD076FFFFC96DFF575149FF4B4A4BFF4645
              46FF464546FF7A7677FFC2C0C1FFC2C0C1FFC2C0C1FFC2C0C1FFC2C0C1FFC2C0
              C1FF7A7677FF464546FF464546FF4B4A4BFF575149FFFFCA6FFFFFD278FFFBD6
              7EFFCD7E2FEADB9A4BFFFFD984FFFFCD77FFFFC66FFF7A6952FF424142FF3E3D
              3DFF3E3D3DFF686566FF686566FF686566FF686566FF686566FF686566FF6865
              66FF676566FF434242FF3E3D3EFF424142FF7A6952FFFFC770FFFFD07AFFFFDC
              88FFD08234FFDE9E50FFFFDA8AFFFFCE7EFFFFC775FFA5885EFF61594FFF6159
              4FFF61594FFF61594FFF61594FFF61594FFF61594FFF61594FFF61594FFF6159
              4FFF61594FFF61594FFF625A50FF61594FFFA5885EFFFFC877FFFFD080FFFFDD
              8EFFD48739FFE1A356FFFFDF94FFFFD488FFFFCC80FFFAC97CFFFAC97CFFFAC9
              7CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFFFAC9
              7CFFFAC97CFFFAC97CFFFAC97CFFFAC97CFF4A5A54FF4E5455FFFFD58AFFFFE1
              97FFD88C3EFFE3A85DFFFFE4A0FFFFD993FFFFD28CFFFBCF88FFFBCF88FFFBCF
              88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FFFBCF
              88FFFBCF88FFFBCF88FFFBCF88FFFBCF88FF3AD9DDFF51A4DBFFFFDB96FFFFE7
              A3FFDB9043FFE7AD64FFFFEBABFFFFE09FFFFFD897FFFBD593FFFBD593FF819E
              ACFF186FC2FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF0B69C5FF0B69
              C5FF0B69C5FF1E71C1FF93A6A9FFFBD593FFFBD593FFFFD998FFFFE1A1FFFFEE
              AFFFDF9549FFEAB26BFFFFF1B8FFFFE6ABFFFFDEA2FFFDDA9EFFFCDA9EFF3286
              C6FF54DCF6FF55CCFBFF54C8FBFF54C8FBFF54C8FBFF54C8FBFF54C8FBFF54C8
              FBFF56CDFBFF51D9F4FF3B8AC4FFFCDA9EFFFEDB9FFFFFDFA4FFFFE8ADFFFFF4
              BBFFE39A4EFFECB572FFFFFBC7FFFFEFBBFFFFE9B4FFFFE5B2FFFFE6B4FF2299
              DAFF3FE1FAFF3AD2FAFF3AD2FAFF3BD3FAFF3CD4FAFF3CD5FAFF3CD5FAFF3CD4
              FAFF3CD4FAFF42E2FAFF28A0DCFFFFE7B8FFFFE7B6FFFFEAB7FFFFF1BFFFFFFE
              CBFFE69E52FFECAD68FFFFFFD8FFFFFCCDFFFFF4C5FFFFF1C3FFFFF1C5FF28A7
              E3FF29F2FBFF28F1FBFF29F2FBFF2AF2FCFF2BF2FCFF2BF2FCFF2BF2FCFF2AF2
              FCFF29F2FBFF2AF1FBFF30AFE4FFFFF1C8FFFFF2C6FFFFF6C8FFFFFED0FFFBEF
              C4FFE9A257DEECA55AA8F5CE9DFFFDF7D3FFFFFFD9FFFFFFD6FFFFFFD6FF21AD
              EBFF0EABEDFF0EAFEEFF0FB3EFFF0FB5F0FF0FB6F0FF0FB7F0FF0FB7F0FF0FB6
              F0FF0FB4EFFF0FB1EFFF1EB1EDFFFFFFD9FFFFFFD8FFFFFFDCFFFCF1CEFFF4CA
              97FFECA55A69EEA85E0CEEA85E96EEA85EE7EEA85EFFEFAB61FFEFAC63FFF0B0
              66FFF0B36AFFF1B76EFFF1B970FFF2BB73FFF2BC74FFF2BC74FFF2BC74FFF2BC
              73FFF2BA72FFF1B870FFF1B56CFFF0B168FFEFAE65FFEFAB62FFEEAA62D9EEA8
              5E6CFFFFFF00F0AB6000FFFFFF00FFFFFF00FFFFFF00FFFFFF04A49E9FFFE9E6
              E8FFDCD9DBFFDDDBDCFFDEDCDDFFDFDDDEFFDFDDDFFFDFDDDFFFDFDDDFFFDFDD
              DEFFDFDCDEFFDEDBDDFFE9E7E8FFA9A3A5FFFFFFFF0EFFFFFF09FFFFFF04FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8A2A4FFECEB
              EBFFE2E0E1FFE3E1E2FFE4E2E3FFE4E3E3FFE4E2E3FFE4E3E4FFE5E3E4FFE5E3
              E4FFE4E3E3FFE4E2E3FFEDECECFFACA6A8FFFFFFFF09FFFFFF05FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABA6A7FFF0EF
              F0FFE9E7E8FFE9E7E8FFEAE8E9FFEAE8E9FFE9E7E8FFE9E7E8FFEBE9EAFFEBE9
              EAFFEAE8E9FFEAE8E9FFF1F0F1FFAFAAABFFFFFFFF05FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1ABADFFF5F4
              F5FFEFEEEFFFEFEEEFFFF0EFF0FFEFEEEFFFEFEEEFFFEFEEEFFFF0EFF0FFF0EF
              F0FFF0EFF0FFF0EFF0FFF5F4F5FFB2ACAEFFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B0B2FFF9F8
              F8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
              F5FFF5F5F5FFF5F5F5FFF9F8F8FFB5B0B2FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B4B6FFFDFD
              FDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
              FCFFFCFCFCFFFCFCFCFFFDFDFDFFB9B4B6FFFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDB7B9FFBDB7
              B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7
              B9FDBDB7B9FDBDB7B9FDBDB7B9FDBDB7B9FDFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00}
          end
          object EdtTamDesc: TAlignEdit
            Left = 256
            Top = 192
            Width = 97
            Height = 21
            Color = clSilver
            TabOrder = 14
            Alignment = taRightJustify
            ColorOnFocus = clWindow
            ColorOnNoFocus = clWindow
            FontOnFocus.Charset = DEFAULT_CHARSET
            FontOnFocus.Color = clWindowText
            FontOnFocus.Height = -11
            FontOnFocus.Name = 'MS Sans Serif'
            FontOnFocus.Style = []
            FontOnNoFocus.Charset = DEFAULT_CHARSET
            FontOnNoFocus.Color = clWindowText
            FontOnNoFocus.Height = -11
            FontOnNoFocus.Name = 'MS Sans Serif'
            FontOnNoFocus.Style = []
          end
          object ComboGaveta: TComboBox
            Left = 104
            Top = 192
            Width = 145
            Height = 21
            Style = csDropDownList
            Color = clSilver
            ItemHeight = 13
            TabOrder = 13
            Items.Strings = (
              'BEMATECH'
              'DARUMA'
              'SEM GAVETA')
          end
          object ComboPortaECF: TComboBox
            Left = 8
            Top = 190
            Width = 89
            Height = 21
            Style = csDropDownList
            Color = clSilver
            ItemHeight = 13
            TabOrder = 12
            Items.Strings = (
              'COM1'
              'COM2')
          end
          object RDGDecimaisQuant: TRadioGroup
            Left = 8
            Top = 224
            Width = 345
            Height = 41
            Caption = 'Casas Decimais Quantidade'
            Columns = 2
            Items.Strings = (
              '2 Casas'
              '3 Casas')
            TabOrder = 15
          end
          object RDGDecimaisUnitario: TRadioGroup
            Left = 8
            Top = 272
            Width = 345
            Height = 41
            Caption = 'Casas Decimais Valor Unit'#225'rio'
            Columns = 2
            Items.Strings = (
              '2 Casas'
              '3 Casas')
            TabOrder = 16
          end
          object CheckTrunca: TCheckBox
            Left = 8
            Top = 347
            Width = 249
            Height = 17
            Caption = 'Truncar'
            TabOrder = 18
          end
          object CheckComprovante: TCheckBox
            Left = 8
            Top = 368
            Width = 241
            Height = 17
            Caption = 'Imprimir Comprovante N'#227'o Fiscal (Promiss'#243'ria)'
            TabOrder = 19
          end
          object CheckMFD: TCheckBox
            Left = 8
            Top = 323
            Width = 305
            Height = 17
            Caption = 'MFD'
            TabOrder = 17
          end
          object EdtMarcaECF: TEdit
            Left = 88
            Top = 32
            Width = 89
            Height = 21
            Color = clSilver
            MaxLength = 20
            TabOrder = 1
          end
          object EdtModeloECF: TEdit
            Left = 184
            Top = 32
            Width = 97
            Height = 21
            Color = clSilver
            MaxLength = 20
            TabOrder = 2
          end
          object EdtNumeroSerieECF: TEdit
            Left = 8
            Top = 72
            Width = 345
            Height = 21
            Color = clSilver
            MaxLength = 20
            TabOrder = 4
          end
          object EdtMemoriaAdicional: TEdit
            Left = 8
            Top = 112
            Width = 65
            Height = 21
            Color = clSilver
            MaxLength = 1
            TabOrder = 5
          end
          object EdtTipoECF: TEdit
            Left = 8
            Top = 32
            Width = 65
            Height = 21
            Color = clSilver
            MaxLength = 7
            TabOrder = 0
          end
          object EdtVersaoSB: TEdit
            Left = 88
            Top = 112
            Width = 89
            Height = 21
            Color = clSilver
            MaxLength = 10
            TabOrder = 6
          end
          object EdtCNPJUsuario: TEdit
            Left = 88
            Top = 152
            Width = 137
            Height = 21
            Color = clSilver
            MaxLength = 14
            TabOrder = 10
          end
          object EdtIEUsuario: TEdit
            Left = 232
            Top = 152
            Width = 121
            Height = 21
            Color = clSilver
            MaxLength = 14
            TabOrder = 11
          end
          object EdtDataSB: TEdit
            Left = 192
            Top = 112
            Width = 73
            Height = 21
            Color = clSilver
            MaxLength = 10
            TabOrder = 7
          end
          object EdtHoraSB: TEdit
            Left = 280
            Top = 112
            Width = 73
            Height = 21
            Color = clSilver
            MaxLength = 8
            TabOrder = 8
          end
          object EdtNumeroUsuario: TEdit
            Left = 8
            Top = 152
            Width = 65
            Height = 21
            Color = clSilver
            MaxLength = 2
            TabOrder = 9
            OnKeyPress = EdtCodGrpKeyPress
          end
          object EdtCodNacional: TEdit
            Left = 288
            Top = 32
            Width = 57
            Height = 21
            Color = clSilver
            MaxLength = 6
            TabOrder = 3
          end
        end
        object GroupBox1: TGroupBox
          Left = 384
          Top = 184
          Width = 249
          Height = 97
          Caption = 'Balan'#231'a'
          TabOrder = 4
          object Label8: TLabel
            Left = 10
            Top = 26
            Width = 35
            Height = 13
            Caption = 'Modelo'
          end
          object Label9: TLabel
            Left = 10
            Top = 50
            Width = 25
            Height = 13
            Caption = 'Porta'
          end
          object Label10: TLabel
            Left = 10
            Top = 74
            Width = 51
            Height = 13
            Caption = 'Baud Rate'
          end
          object ComboBalanca: TComboBox
            Left = 80
            Top = 20
            Width = 161
            Height = 21
            Style = csDropDownList
            Color = clSilver
            ItemHeight = 13
            TabOrder = 0
            OnChange = ComboBalancaChange
            Items.Strings = (
              'IDS FILIZOLA'
              'IQ PLUS 810 FILIZOLA'
              '9091 TOLEDO'
              '8132 TOLEDO'
              'ID 10000 OU IDS COM PROTOCOLO DEMANDA'
              'LINHA BP FILIZOLA'
              'MF FILIZOLA'
              'IDC FILIZOLA'
              'LINHA E'
              'LINHA CS'
              'TOLEDO'
              'SEM BALAN'#199'A')
          end
          object ComboPortaBal: TComboBox
            Left = 80
            Top = 44
            Width = 161
            Height = 21
            Style = csDropDownList
            Color = clSilver
            ItemHeight = 13
            TabOrder = 1
            Items.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4')
          end
          object ComboBaudBal: TComboBox
            Left = 80
            Top = 68
            Width = 161
            Height = 21
            Style = csDropDownList
            Color = clSilver
            ItemHeight = 13
            TabOrder = 2
            Items.Strings = (
              '1200'
              '2400'
              '4800'
              '9600'
              '19200'
              '38400')
          end
        end
        object GroupBox4: TGroupBox
          Left = 384
          Top = 288
          Width = 249
          Height = 169
          Caption = 'TEF'
          TabOrder = 5
          object GBTEF: TGroupBox
            Left = 16
            Top = 31
            Width = 217
            Height = 130
            TabOrder = 1
            object Label11: TLabel
              Left = 8
              Top = 8
              Width = 75
              Height = 13
              Caption = 'IP Servidor TEF'
            end
            object Label13: TLabel
              Left = 8
              Top = 88
              Width = 54
              Height = 13
              Caption = 'ID Terminal'
            end
            object Label12: TLabel
              Left = 8
              Top = 48
              Width = 34
              Height = 13
              Caption = 'ID Loja'
            end
            object EdtIPTef: TEdit
              Left = 8
              Top = 24
              Width = 202
              Height = 21
              Color = clSilver
              MaxLength = 15
              TabOrder = 0
            end
            object EdtIDLoja: TEdit
              Left = 8
              Top = 64
              Width = 202
              Height = 21
              Color = clSilver
              MaxLength = 8
              TabOrder = 1
            end
            object EdtIDTerminal: TEdit
              Left = 8
              Top = 104
              Width = 202
              Height = 21
              Color = clSilver
              MaxLength = 8
              TabOrder = 2
            end
          end
          object CheckTEF: TCheckBox
            Left = 16
            Top = 14
            Width = 105
            Height = 17
            Caption = 'Habilita TEF'
            TabOrder = 0
            OnClick = CheckTEFClick
          end
        end
        object GroupBox3: TGroupBox
          Left = 384
          Top = 24
          Width = 249
          Height = 153
          Caption = 'Comunicador'
          TabOrder = 3
          object Label55: TLabel
            Left = 8
            Top = 64
            Width = 85
            Height = 13
            Caption = 'Intervalo RX (seg)'
          end
          object Label56: TLabel
            Left = 8
            Top = 24
            Width = 75
            Height = 13
            Caption = 'Caminho Banco'
          end
          object Label57: TLabel
            Left = 136
            Top = 64
            Width = 84
            Height = 13
            Caption = 'Intervalo TX (seg)'
          end
          object Label58: TLabel
            Left = 8
            Top = 104
            Width = 84
            Height = 13
            Caption = 'Dias Atualiza PAF'
          end
          object CheckExportar: TCheckBox
            Left = 128
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Exportar Dados'
            TabOrder = 0
          end
          object EdtCaminhoBanco: TEdit
            Left = 8
            Top = 40
            Width = 217
            Height = 21
            CharCase = ecUpperCase
            Color = clSilver
            MaxLength = 60
            TabOrder = 1
          end
          object EdtIntervaloRecebe: TEdit
            Left = 8
            Top = 80
            Width = 89
            Height = 21
            Color = clSilver
            MaxLength = 7
            TabOrder = 2
          end
          object EdtIntervaloTransmite: TEdit
            Left = 136
            Top = 80
            Width = 89
            Height = 21
            Color = clSilver
            MaxLength = 7
            TabOrder = 3
          end
          object EdtDiasPAF: TEdit
            Left = 8
            Top = 120
            Width = 89
            Height = 21
            Color = clSilver
            MaxLength = 7
            TabOrder = 4
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #205'ndice Rel.Gerencial'
        ImageIndex = 3
        object Label15: TLabel
          Left = 16
          Top = 24
          Width = 85
          Height = 13
          Caption = 'Ordem de Servi'#231'o'
        end
        object Label16: TLabel
          Left = 16
          Top = 64
          Width = 52
          Height = 13
          Caption = 'Or'#231'amento'
        end
        object Label17: TLabel
          Left = 16
          Top = 104
          Width = 101
          Height = 13
          Caption = 'Confer'#234'ncia de Mesa'
        end
        object Label18: TLabel
          Left = 312
          Top = 40
          Width = 215
          Height = 13
          Caption = '* Bematech - Usar N'#250'mero no '#205'ndice.  Ex.: 01'
        end
        object Label19: TLabel
          Left = 312
          Top = 56
          Width = 266
          Height = 13
          Caption = '* Daruma - Usar a Descricao como '#205'ndice.  Ex.: DAV-OS'
        end
        object EdtIndiceOS: TEdit
          Left = 16
          Top = 40
          Width = 233
          Height = 21
          Color = clSilver
          MaxLength = 15
          TabOrder = 0
        end
        object EdtIndiceOrcamento: TEdit
          Left = 16
          Top = 80
          Width = 233
          Height = 21
          Color = clSilver
          MaxLength = 15
          TabOrder = 1
        end
        object EdtIndiceMesa: TEdit
          Left = 16
          Top = 120
          Width = 233
          Height = 21
          Color = clSilver
          MaxLength = 15
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Mensagem ECF'
        ImageIndex = 1
        object Label20: TLabel
          Left = 16
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Linha 1'
        end
        object Label21: TLabel
          Left = 16
          Top = 56
          Width = 35
          Height = 13
          Caption = 'Linha 2'
        end
        object Label22: TLabel
          Left = 16
          Top = 96
          Width = 35
          Height = 13
          Caption = 'Linha 3'
        end
        object EdtLinha1: TEdit
          Left = 16
          Top = 32
          Width = 369
          Height = 21
          Color = clSilver
          MaxLength = 48
          TabOrder = 0
        end
        object EdtLinha2: TEdit
          Left = 16
          Top = 72
          Width = 369
          Height = 21
          Color = clSilver
          MaxLength = 48
          TabOrder = 1
        end
        object EdtLinha3: TEdit
          Left = 16
          Top = 112
          Width = 369
          Height = 21
          Color = clSilver
          MaxLength = 48
          TabOrder = 2
        end
      end
      object TabSheet3: TTabSheet
        Caption = #205'ndices Al'#237'quota ECF'
        ImageIndex = 2
        object Label32: TLabel
          Left = 8
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Grupo'
        end
        object BtnConsGRP: TSpeedButton
          Left = 68
          Top = 24
          Width = 23
          Height = 21
          Hint = 'Consultar Produto'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
            B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
            EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
            FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
            B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
            FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
            E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
            A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
            FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
            C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
            FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
            A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnConsGRPClick
        end
        object Label33: TLabel
          Left = 98
          Top = 8
          Width = 95
          Height = 13
          Caption = 'Descri'#231#227'o do Grupo'
        end
        object Label34: TLabel
          Left = 376
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Indice ECF'
        end
        object Label50: TLabel
          Left = 440
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Indice R03'
        end
        object EdtCodGrp: TAlignEdit
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = EdtCodGrpEnter
          OnExit = EdtCodGrpExit
          OnKeyDown = EdtCodGrpKeyDown
          OnKeyPress = EdtCodGrpKeyPress
          Alignment = taRightJustify
          ColorOnFocus = clWindow
          ColorOnNoFocus = clWindow
          FontOnFocus.Charset = DEFAULT_CHARSET
          FontOnFocus.Color = clWindowText
          FontOnFocus.Height = -11
          FontOnFocus.Name = 'MS Sans Serif'
          FontOnFocus.Style = []
          FontOnNoFocus.Charset = DEFAULT_CHARSET
          FontOnNoFocus.Color = clWindowText
          FontOnNoFocus.Height = -11
          FontOnNoFocus.Name = 'MS Sans Serif'
          FontOnNoFocus.Style = []
        end
        object EdtNomeGrp: TEdit
          Left = 98
          Top = 24
          Width = 263
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object BtnGravaAliquota: TBitBtn
          Left = 512
          Top = 20
          Width = 57
          Height = 25
          Caption = '&Gravar'
          TabOrder = 3
          OnClick = BtnGravaAliquotaClick
        end
        object BtnExcluiAliquota: TBitBtn
          Left = 576
          Top = 20
          Width = 57
          Height = 25
          Caption = '&Excluir'
          TabOrder = 4
          OnClick = BtnExcluiAliquotaClick
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 54
          Width = 641
          Height = 251
          TabStop = False
          Color = clSilver
          DataSource = DSItensAliquotas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_GRP'
              Title.Alignment = taCenter
              Title.Caption = 'GRP'
              Width = 80
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'NOME_GRP'
              Title.Alignment = taCenter
              Title.Caption = 'DESCRI'#199#195'O'
              Width = 380
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'INDICE_ECF'
              Title.Alignment = taCenter
              Title.Caption = 'INDICE ECF'
              Width = 80
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'INDICE_R03'
              Title.Alignment = taCenter
              Title.Caption = 'INDICE R03'
              Width = 80
              Visible = True
            end>
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 320
          Width = 617
          Height = 137
          Caption = 'Tabela C'#243'digo dos Totalizadores Parciais [R03]'
          TabOrder = 7
          object Label35: TLabel
            Left = 8
            Top = 24
            Width = 133
            Height = 14
            Caption = 'xxTnnnn - Trib.ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 8
            Top = 40
            Width = 140
            Height = 14
            Caption = 'xxSnnnn - Trib.ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 8
            Top = 56
            Width = 161
            Height = 14
            Caption = 'Fn      - Sub.Trib.ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 8
            Top = 72
            Width = 147
            Height = 14
            Caption = 'In      - Isento ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 8
            Top = 88
            Width = 175
            Height = 14
            Caption = 'Nn      - N'#227'o Incid. ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 208
            Top = 24
            Width = 203
            Height = 14
            Caption = 'FSn  - Sub.Tribut'#225'ria - ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 208
            Top = 40
            Width = 147
            Height = 14
            Caption = 'ISn  - Isento - ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 208
            Top = 56
            Width = 203
            Height = 14
            Caption = 'NSn  - N'#227'o Incid'#234'ncia - ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 208
            Top = 72
            Width = 196
            Height = 14
            Caption = 'OPNF - Opera'#231#245'es N'#227'o Fiscais'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 208
            Top = 88
            Width = 154
            Height = 14
            Caption = 'DT   - Desconto - ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 208
            Top = 104
            Width = 161
            Height = 14
            Caption = 'DS   - Desconto - ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 448
            Top = 24
            Width = 112
            Height = 14
            Caption = 'AT - Acr'#233'sc.ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 448
            Top = 40
            Width = 119
            Height = 14
            Caption = 'AS - Acr'#233'sc.ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 448
            Top = 56
            Width = 133
            Height = 14
            Caption = 'Can-T - Cancel.ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 448
            Top = 72
            Width = 140
            Height = 14
            Caption = 'Can-S - Cancel.ISSQN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
        end
        object EdtIndiceECF: TEdit
          Left = 376
          Top = 24
          Width = 57
          Height = 21
          Color = clSilver
          MaxLength = 5
          TabOrder = 1
        end
        object EdtIndiceR03: TEdit
          Left = 440
          Top = 24
          Width = 57
          Height = 21
          Color = clSilver
          MaxLength = 10
          TabOrder = 2
        end
      end
      object TabSheet5: TTabSheet
        Caption = #205'ndice Formas Pagamentos'
        ImageIndex = 4
        object Label14: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 13
          Caption = 'C'#243'd.Forma'
        end
        object BtnConsForma: TSpeedButton
          Left = 68
          Top = 24
          Width = 23
          Height = 21
          Hint = 'Consultar Produto'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
            B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
            EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
            FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
            B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
            FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
            E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
            A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
            FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
            C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
            FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
            A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnConsFormaClick
        end
        object Label52: TLabel
          Left = 98
          Top = 8
          Width = 167
          Height = 13
          Caption = 'Descri'#231#227'o da Forma de Pagamento'
        end
        object Label53: TLabel
          Left = 320
          Top = 8
          Width = 52
          Height = 13
          Caption = #205'ndice ECF'
        end
        object Label54: TLabel
          Left = 408
          Top = 8
          Width = 86
          Height = 13
          Caption = 'Descri'#231#227'o no ECF'
        end
        object EdtCodForma: TAlignEdit
          Left = 8
          Top = 24
          Width = 57
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Color = clSilver
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = EdtCodFormaEnter
          OnExit = EdtCodFormaExit
          OnKeyDown = EdtCodFormaKeyDown
          OnKeyPress = EdtCodGrpKeyPress
          Alignment = taRightJustify
          ColorOnFocus = clWindow
          ColorOnNoFocus = clWindow
          FontOnFocus.Charset = DEFAULT_CHARSET
          FontOnFocus.Color = clWindowText
          FontOnFocus.Height = -11
          FontOnFocus.Name = 'MS Sans Serif'
          FontOnFocus.Style = []
          FontOnNoFocus.Charset = DEFAULT_CHARSET
          FontOnNoFocus.Color = clWindowText
          FontOnNoFocus.Height = -11
          FontOnNoFocus.Name = 'MS Sans Serif'
          FontOnNoFocus.Style = []
        end
        object EdtNomeForma: TEdit
          Left = 98
          Top = 24
          Width = 207
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object EdtIndiceForma: TEdit
          Left = 320
          Top = 24
          Width = 73
          Height = 21
          Color = clSilver
          MaxLength = 20
          TabOrder = 1
        end
        object BtnGravaForma: TBitBtn
          Left = 512
          Top = 20
          Width = 57
          Height = 25
          Caption = '&Gravar'
          TabOrder = 3
          OnClick = BtnGravaFormaClick
        end
        object BtnExcluiForma: TBitBtn
          Left = 576
          Top = 20
          Width = 57
          Height = 25
          Caption = '&Excluir'
          TabOrder = 4
          OnClick = BtnExcluiFormaClick
        end
        object DBGridForma: TDBGrid
          Left = 0
          Top = 54
          Width = 641
          Height = 403
          TabStop = False
          Color = clSilver
          DataSource = DSFormas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_FORMA'
              Title.Alignment = taCenter
              Title.Caption = 'C'#211'DIGO'
              Width = 60
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'DESCRI'#199#195'O'
              Width = 310
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'INDICE'
              Title.Alignment = taCenter
              Title.Caption = #205'NDICE'
              Width = 120
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCRICAO_ECF'
              Title.Alignment = taCenter
              Title.Caption = 'DESCRI'#199#195'O NO ECF'
              Width = 130
              Visible = True
            end>
        end
        object EdtDescECF: TEdit
          Left = 408
          Top = 24
          Width = 89
          Height = 21
          Color = clSilver
          MaxLength = 20
          TabOrder = 2
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 505
    Width = 653
    inherited Panel3: TPanel
      Width = 649
      inherited btnNovo: TAdvGlowButton
        OnClick = btnNovoClick
      end
    end
  end
  object IBSQLCaixa: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    Transaction = IBTRCaixa
    Left = 384
  end
  object IBTRCaixa: TIBTransaction
    Active = False
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 328
  end
  object QBuscaCod: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX(COD_CAI) AS CODCAIXA'
      'FROM CAIXA'
      'WHERE COD_EMP = :CODEMP')
    Left = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object QBuscaCodCODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
    end
  end
  object DSItensAliquotas: TDataSource
    AutoEdit = False
    DataSet = QItensAliquotas
    Left = 528
  end
  object QItensAliquotas: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRCaixa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT I.*, G.NOME_GRP'
      'FROM INDICE_ECF I'
      'INNER JOIN GRUPO_ICMS G'
      'ON (I.COD_GRP = G.COD_GRP)'
      'WHERE I.COD_CAI = :CODCAI AND I.COD_EMP = :CODEMP'
      'ORDER BY I.COD_GRP')
    Left = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object QItensAliquotasCOD_CAI: TIntegerField
      FieldName = 'COD_CAI'
      Origin = 'INDICE_ECF.COD_CAI'
      Required = True
    end
    object QItensAliquotasCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'INDICE_ECF.COD_EMP'
      Required = True
    end
    object QItensAliquotasCOD_GRP: TIntegerField
      FieldName = 'COD_GRP'
      Origin = 'INDICE_ECF.COD_GRP'
      Required = True
    end
    object QItensAliquotasINDICE_ECF: TIBStringField
      FieldName = 'INDICE_ECF'
      Origin = 'INDICE_ECF.INDICE_ECF'
      Required = True
      Size = 5
    end
    object QItensAliquotasINDICE_R03: TIBStringField
      FieldName = 'INDICE_R03'
      Origin = 'INDICE_ECF.INDICE_R03'
      Required = True
      Size = 10
    end
    object QItensAliquotasNOME_GRP: TIBStringField
      FieldName = 'NOME_GRP'
      Origin = 'GRUPO_ICMS.NOME_GRP'
      Required = True
      Size = 50
    end
  end
  object QItensFormas: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRCaixa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT I.*, F.DESCRICAO'
      'FROM INDICE_FORMA_PAGAMENTO I'
      'INNER JOIN FORMAS_PAGAMENTO  F'
      'ON (I.COD_FORMA = F.CODIGO)'
      'WHERE I.COD_CAIXA = :CODCAI AND I.COD_EMP = :CODEMP'
      'ORDER BY I.COD_FORMA')
    Left = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object QItensFormasCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'INDICE_FORMA_PAGAMENTO.COD_CAIXA'
      Required = True
    end
    object QItensFormasCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'INDICE_FORMA_PAGAMENTO.COD_EMP'
      Required = True
    end
    object QItensFormasCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
      Origin = 'INDICE_FORMA_PAGAMENTO.COD_FORMA'
      Required = True
    end
    object QItensFormasINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = 'INDICE_FORMA_PAGAMENTO.INDICE'
      Required = True
    end
    object QItensFormasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FORMAS_PAGAMENTO.DESCRICAO'
      Required = True
    end
    object QItensFormasDESCRICAO_ECF: TIBStringField
      FieldName = 'DESCRICAO_ECF'
      Origin = 'INDICE_FORMA_PAGAMENTO.DESCRICAO_ECF'
      Required = True
    end
  end
  object DSFormas: TDataSource
    AutoEdit = False
    DataSet = QItensFormas
    Left = 488
  end
end
