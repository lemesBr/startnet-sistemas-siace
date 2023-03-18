object FormAgrupamento: TFormAgrupamento
  Left = 505
  Top = 168
  Caption = 'Agrupamento de Titulos a Receber'
  ClientHeight = 380
  ClientWidth = 517
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 517
    Height = 104
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 14
      Top = 5
      Width = 319
      Height = 40
      Caption = 'Agrupamento de titulos'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object RxLabel5: TRxLabel
      Left = 34
      Top = 33
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sub-total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 112
      Top = 33
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Multa/Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 183
      Top = 33
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 287
      Top = 33
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 362
      Top = 33
      Width = 141
      Height = 13
      AutoSize = False
      Caption = 'Condi'#231#227'o de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 144
      Top = 79
      Width = 124
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero de Parcelas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TRxLabel
      Left = 329
      Top = 80
      Width = 91
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Varia'#231#227'o de Dias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel9: TRxLabel
      Left = 16
      Top = 79
      Width = 35
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 360
      Top = 48
      Width = 145
      Height = 21
      KeyField = 'DESCRICAO'
      ListField = 'DESCRICAO'
      ListFieldIndex = -1
      ListSource = DM.DTS_CondPagamento
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object DBEdit3: TDBEdit
      Left = 269
      Top = 77
      Width = 63
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'NUMERO_PAR'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 428
      Top = 77
      Width = 74
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'VARIACAO_DIAS'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object EvDBNumEdit1: TCurrencyEdit
      Left = 8
      Top = 48
      Width = 82
      Height = 22
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object EvDBNumEdit2: TCurrencyEdit
      Left = 94
      Top = 48
      Width = 82
      Height = 22
      AutoSize = False
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnExit = EvDBNumEdit2Exit
    end
    object EvDBNumEdit3: TCurrencyEdit
      Left = 181
      Top = 48
      Width = 82
      Height = 22
      AutoSize = False
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnExit = EvDBNumEdit3Exit
    end
    object EvDBNumEdit4: TCurrencyEdit
      Left = 268
      Top = 48
      Width = 82
      Height = 22
      AutoSize = False
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DateEdit2: TsDateEdit
      Left = 57
      Top = 76
      Width = 106
      Height = 20
      AutoSize = False
      MaxLength = 10
      TabOrder = 7
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 104
    Width = 517
    Height = 183
    Align = alClient
    TabOrder = 1
    object DBGrid1: TsDBGrid
      Left = 2
      Top = 15
      Width = 513
      Height = 166
      Align = alClient
      BorderStyle = bsNone
      Color = 15198183
      DataSource = DataSource1
      Enabled = False
      FixedColor = 12874553
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnEnter = DBGrid1Enter
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodigoCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' do Carn'#234
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataCompra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Data da Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Parcela'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataVencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data do Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorParcela'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor da Parcela'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 328
    Width = 517
    Height = 52
    Align = alBottom
    TabOrder = 2
    object suiButton1: TsBitBtn
      Left = 193
      Top = 11
      Width = 138
      Height = 35
      Caption = 'C&ancela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
        00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
        1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
        1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
        1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentFont = False
      TabOrder = 0
      OnClick = suiButton1Click
    end
    object suiButton2: TsBitBtn
      Left = 367
      Top = 11
      Width = 138
      Height = 35
      Caption = '&Confirma'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333330000003333422433333333330000003334222243333333330000003342
        2222243333333300000034222A2222433333330000003222A2A2224333333300
        00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
        243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
        333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
        00003333333333A2224A3300000033333333333A222433000000333333333333
        A224330000003333333333333A223300000033333333333333A333000000}
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton2Click
    end
    object suiButton3: TsBitBtn
      Left = 10
      Top = 11
      Width = 144
      Height = 35
      Caption = '&Gerar Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004EAB004EAB004EAB004E
        AB004EAB004EABFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0077F1006DE40063D8
        005FCD0060C8005CC10054B7004EAB004794003A76FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007DFD0077F800
        75F32988ED67A9EC91C1F0A3CAF1A2C9F18BBCEC5C9DE01C73CD0053B3004797
        003D7CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007C
        FF0078FF3597FDAAD3FCF4F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA
        F3FD93BFED2274CB004CA7003C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF027FFF0982FF8EC5FFF5FAFFFFFFFFFFFFFFFFFFFFFFFFFFF5FAFFFAFD
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7F1FC6CA5E00054B1003D7EFF00FFFF00FFFF
        00FFFF00FFFF00FF0A84FF0A84FFA6D2FFFFFFFFFFFFFFFFFFFFE3F1FF8CC2FB
        479AF4489BF13A93EF56A1F199C7F7EEF7FFFFFFFFFFFFFFFFFFFF72A8E1004E
        AB003E7EFF00FFFF00FFFF00FFFF00FF0380FF7CBDFFFFFFFFFFFFFFFFFFFFA1
        CFFF1B89FE006BF8248AF5C5E0FC298BEE0066E5006DE72988EDB7D9FBFFFFFF
        FFFFFFF3F8FC2F7DCC004DA5FF00FFFF00FFFF00FF0F86FF2390FFE6F3FFFFFF
        FFFFFFFF95C9FF017FFF0075FF3D9DFFE5F2FFFFFFFF79B8F8006DEA0073E800
        6DE70874E9ADD3FAFFFFFFFFFFFFB6D2EE025ABA0053A9FF00FFFF00FF0A84FF
        79BBFFFFFFFFFFFFFFC7E3FF1087FF007CFF53A8FFEEF7FFFFFFFFFFFFFFCAE5
        FF0379F20073EB0073E8006DE7147DEBDCEDFDFFFFFFFDFDFD3F89D40058BEFF
        00FF1B8CFF188BFFC5E1FFFFFFFFFEFFFF5AACFF027FFF69B3FFF7FBFFFFFFFF
        FFFFFFFFFFFFFCFEFF3597F90073F20075ED0073E8006AE66BAFF4FFFFFFFFFF
        FF91BDE90061CF0053A91B8CFF3097FFF1F8FFFFFFFFDFEFFF2792FF81BFFFFC
        FEFFFFFFFFFFFFFF93C8FF7DBEFFFFFFFF8BC4FE0074F90078F50076EE0070E9
        1C83ECF3F9FFFFFFFFC9DFF60470DE0069D71D8DFF52A7FFFCFDFFFFFFFFB8DB
        FF2A94FFCEE6FFFFFFFFF9FCFF7CBDFF0681FF1087FFDBEDFFE5F2FF0B83FF00
        79FA0078F50075EF0477ECD2E6FCFFFFFFEAF3FD0E7CEC0073ED2591FF70B7FF
        FEFFFFFFFFFFB4D9FF2591FF49A3FFC7E3FF65B2FF1087FF168AFF0782FF5AAC
        FFFFFFFF57AAFF0078FF007DFB0079F70379F1C8E1FBFFFFFFF1F8FF1081F400
        77F12E95FF82C0FFFFFFFFFFFFFFC1E0FF3097FF2D95FF2E96FF218FFF2390FF
        1F8EFF188BFF0C85FFB5DAFFC1E0FF027FFF017FFF007BFC067EF8D7EBFDFFFF
        FFE8F4FF0D82F70078F53297FF86C2FFFAFDFFFFFFFFE8F3FF3D9DFF3097FF30
        97FF2E96FF2A94FF2591FF218FFF1388FF2E96FFDFEFFF3D9DFF017FFF007CFF
        2791FFF7FBFFFFFFFFC7E3FF047DFA0079F757AAFF75BAFFEEF7FFFFFFFFFFFF
        FF79BBFF2792FF3398FF3398FF3097FF2B93FF2591FF218FFF0F86FF6DB5FF99
        CCFF0480FF007AFF82C0FFFFFFFFFFFFFF8CC5FF0076FD0079F7FF00FF58ABFF
        D9ECFFFFFFFFFFFFFFDCEDFF3D9DFF2D95FF3398FF3398FF3097FF2D95FF2792
        FF218FFF188BFF82C0FF2D95FF2D95FFECF5FFFFFFFFFCFEFF389BFF007AFFFF
        00FFFF00FF5DADFFACD5FFFEFFFFFFFFFFFFFFFFBDDEFF3699FF2993FF3297FF
        3398FF3297FF2E95FF2993FF1E8DFF1F8EFF58ABFFCAE5FFFFFFFFFFFFFFACD5
        FF017FFF017FFFFF00FFFF00FFFF00FF6FB7FFE8F4FFFFFFFFFFFFFFFFFFFFCC
        E5FF5AACFF2D95FF2591FF2993FF2792FF218FFF2792FF5EAEFFD9EBFFFFFFFF
        FFFFFFEDF6FF2A94FF027FFFFF00FFFF00FFFF00FFFF00FF77BAFFA3D0FFFAFD
        FFFFFFFFFFFFFFFFFFFFFAFDFFC0DFFF8FC6FF7BBCFF7CBDFF95C9FFCAE5FFFF
        FFFFFFFFFFFFFFFFFCFEFF64B1FF017FFF0A84FFFF00FFFF00FFFF00FFFF00FF
        FF00FF76B9FFAFD7FFF5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCEDFF60AFFF0782FF0F86FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF79BBFF91C8FFDBEDFFFAFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF6FFA1CFFF3599FF0E85FF1489FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF97CAFF75B9FF9E
        CEFFCAE5FFE3F1FFEDF6FFEDF6FFE6F3FFD4E9FFABD4FF6DB5FF3097FF1D8DFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF95C9FF75B9FF75B9FF7BBCFF7BBCFF6DB5FF58ABFF44A1FF2D
        95FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 2
      OnClick = suiButton3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 287
    Width = 517
    Height = 41
    Align = alBottom
    TabOrder = 3
    object RxLabel7: TRxLabel
      Left = 228
      Top = 16
      Width = 123
      Height = 13
      Caption = 'Valor Total  das Parcelas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 360
      Top = 8
      Width = 146
      Height = 29
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 9
      Top = 10
      Width = 196
      Height = 27
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 1
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO'
    Left = 401
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforeInsert = ClientDataSet1BeforeInsert
    AfterPost = ClientDataSet1AfterPost
    Left = 433
    object ClientDataSet1CodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object ClientDataSet1CodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object ClientDataSet1Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object ClientDataSet1Historico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object ClientDataSet1DataCompra: TDateField
      FieldName = 'DataCompra'
    end
    object ClientDataSet1ValorParcela: TCurrencyField
      FieldName = 'ValorParcela'
    end
    object ClientDataSet1Parcela: TStringField
      FieldName = 'Parcela'
      Size = 10
    end
    object ClientDataSet1DataVencimento: TDateField
      FieldName = 'DataVencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Tipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 469
  end
end
