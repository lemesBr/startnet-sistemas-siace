object FormPedidoParcela: TFormPedidoParcela
  Left = 371
  Top = 41
  Caption = 'Finaliza'#231#227'o de Venda Frente de Caixa'
  ClientHeight = 594
  ClientWidth = 637
  Color = clBtnFace
  Constraints.MinHeight = 29
  Constraints.MinWidth = 150
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 88
    Width = 637
    Height = 409
    TabStop = False
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    Visible = False
  end
  object memo: TMemo
    Left = -8
    Top = 80
    Width = 637
    Height = 409
    TabStop = False
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 369
    Width = 637
    Height = 177
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    ExplicitWidth = 620
    object RxLabel7: TRxLabel
      Left = 248
      Top = 141
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
    object RxLabel9: TRxLabel
      Left = 13
      Top = 2
      Width = 182
      Height = 23
      Caption = 'Parcelas da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 453
      Top = 8
      Width = 162
      Height = 13
      Caption = 'F2 - Consulta Cond. de Pagto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 16
      Top = 140
      Width = 196
      Height = 27
      FullRepaint = False
      TabOrder = 0
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 447
      Top = 137
      Width = 167
      Height = 27
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
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 2
      Top = 25
      Width = 615
      Height = 111
      Align = alCustom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object DBGrid1: TsDBGrid
        Left = 2
        Top = 2
        Width = 611
        Height = 107
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DataSource1
        Enabled = False
        FixedColor = 15263976
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
        OnExit = DBGrid1Exit
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
            Width = 121
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
            Width = 120
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
            Width = 76
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
            Width = 131
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 540
    Width = 637
    Height = 54
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    ExplicitTop = 546
    ExplicitWidth = 620
    object suiButton3: TsBitBtn
      Left = 6
      Top = 6
      Width = 180
      Height = 40
      Caption = 'Gerar Parcelas - F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      TabOrder = 0
      OnClick = suiButton3Click
      OnExit = suiButton3Exit
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton1: TsBitBtn
      Left = 234
      Top = 5
      Width = 170
      Height = 40
      Caption = 'Cancela - F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      TabOrder = 1
      OnClick = suiButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton2: TsBitBtn
      Left = 441
      Top = 5
      Width = 170
      Height = 40
      Caption = 'Finalizar - F10'
      Default = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      TabOrder = 2
      OnClick = suiButton2Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 369
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 15263976
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 620
    object RxLabel4: TRxLabel
      Left = 10
      Top = 87
      Width = 115
      Height = 18
      AutoSize = False
      Caption = 'Cond. de Pagto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TRxLabel
      Left = 10
      Top = 109
      Width = 64
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' Parcelas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel2: TRxLabel
      Left = 517
      Top = 62
      Width = 45
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' Dias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel13: TRxLabel
      Left = 254
      Top = 104
      Width = 108
      Height = 16
      Caption = 'Total  da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 10
      Top = 39
      Width = 107
      Height = 15
      AutoSize = False
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 256
      Top = 272
      Width = 119
      Height = 16
      Caption = 'Dinheiro/Entrada:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 8
      Top = 293
      Width = 146
      Height = 16
      Caption = 'Valor Total  da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 10
      Top = 62
      Width = 115
      Height = 18
      AutoSize = False
      Caption = 'Cond. de Pagto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel12: TRxLabel
      Left = 10
      Top = 144
      Width = 107
      Height = 16
      Caption = 'Valor dos Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 8
      Top = 220
      Width = 204
      Height = 16
      Caption = 'Valor Total  da Venda c/ Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 380
      Top = 312
      Width = 238
      Height = 50
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel11: TRxLabel
      Left = 256
      Top = 330
      Width = 43
      Height = 16
      Caption = 'Troco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 379
      Top = 250
      Width = 238
      Height = 51
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape3: TShape
      Left = 380
      Top = 191
      Width = 238
      Height = 51
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 381
      Top = 85
      Width = 238
      Height = 51
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel15: TRxLabel
      Left = 256
      Top = 164
      Width = 90
      Height = 16
      Caption = 'Desconto %: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape5: TShape
      Left = 5
      Top = 308
      Width = 218
      Height = 50
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape6: TShape
      Left = 6
      Top = 243
      Width = 218
      Height = 51
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape7: TShape
      Left = 6
      Top = 162
      Width = 218
      Height = 51
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object myLabel3d2: TsLabelFX
      Left = 9
      Top = 4
      Width = 365
      Height = 33
      Caption = 'F E C H A M E N T O  D A  V E N D A'
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Shape8: TShape
      Left = 379
      Top = 139
      Width = 238
      Height = 51
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel16: TRxLabel
      Left = 256
      Top = 212
      Width = 93
      Height = 16
      Caption = 'Desconto R$: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mFormas: TMemo
      Left = 8
      Top = 135
      Width = 353
      Height = 25
      TabStop = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 16
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 130
      Top = 108
      Width = 85
      Height = 22
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'NUMERO_PAR'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 565
      Top = 60
      Width = 52
      Height = 22
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'VARIACAO_DIAS'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 388
      Top = 90
      Width = 224
      Height = 41
      AutoSize = False
      Color = clNavy
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object DB_CODIGO: TsDBEdit
      Left = 130
      Top = 37
      Width = 85
      Height = 19
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'CODIGO'
      DataSource = DM.DTS_Clientes
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object db_nome: TsDBEdit
      Left = 220
      Top = 36
      Width = 397
      Height = 20
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'NOME_RS'
      DataSource = DM.DTS_Clientes
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 10
      Top = 312
      Width = 209
      Height = 41
      AutoSize = False
      Color = clBtnText
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 388
      Top = 256
      Width = 223
      Height = 38
      AutoSize = False
      BorderStyle = bsNone
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = CurrencyEdit4Change
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit4Exit
    end
    object Desc_cond_pagto: TDBEdit
      Left = 222
      Top = 61
      Width = 273
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 7991028
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Edit1: TEdit
      Left = 130
      Top = 84
      Width = 85
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 10
      Top = 168
      Width = 207
      Height = 40
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 11
      Top = 250
      Width = 208
      Height = 39
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object suiButton4: TsButton
      Left = 457
      Top = 3
      Width = 161
      Height = 31
      Hint = 'Novo Registro'
      Caption = '&Desbloquear  Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = suiButton4Click
      SkinData.SkinSection = 'BUTTON'
      CommandLinkFont.Charset = DEFAULT_CHARSET
      CommandLinkFont.Color = clWindowText
      CommandLinkFont.Height = -11
      CommandLinkFont.Name = 'Tahoma'
      CommandLinkFont.Style = []
    end
    object DBComboPgto: TComboEdit
      Left = 130
      Top = 59
      Width = 85
      Height = 21
      ClickKey = 113
      GlyphKind = gkEllipsis
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      NumGlyphs = 1
      TabOrder = 0
      Text = ''
      OnButtonClick = DBComboPgtoButtonClick
      OnChange = DBComboPgtoChange
      OnEnter = DBComboPgtoEnter
      OnExit = DBComboPgtoExit
      OnKeyPress = DBComboPgtoKeyPress
    end
    object Edit62: TCurrencyEdit
      Left = 388
      Top = 318
      Width = 223
      Height = 36
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
    end
    object E_Desconto: TCurrencyEdit
      Left = 388
      Top = 197
      Width = 224
      Height = 38
      AutoSize = False
      BeepOnError = False
      BorderStyle = bsNone
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = E_DescontoChange
      OnExit = E_DescontoExit
      OnKeyPress = E_DescontoKeyPress
    end
    object edCod: TEdit
      Left = 215
      Top = 84
      Width = 33
      Height = 24
      Cursor = crIBeam
      TabOrder = 15
    end
    object EdtPercentualDesconto: TCurrencyEdit
      Left = 385
      Top = 145
      Width = 224
      Height = 38
      AutoSize = False
      BeepOnError = False
      BorderStyle = bsNone
      Color = clNavy
      DecimalPlaces = 5
      DisplayFormat = '% ,0.00000;-%,0.00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnExit = EdtPercentualDescontoExit
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 65
    Top = 6
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforeInsert = ClientDataSet1BeforeInsert
    AfterPost = ClientDataSet1AfterPost
    Left = 33
    Top = 11
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
      EditMask = '!99/99/0000;0;_'
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
    Left = 252
    Top = 5
  end
  object SPC_MOV_DIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTO_DIARIO'
    Left = 251
    Top = 32
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'FDobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 369
  end
  object RvRenderHTML1: TRvRenderHTML
    DisplayName = 'Web Page (HTML)'
    FileExtension = '*.html;*.htm'
    ServerMode = False
    UseBreakingSpaces = False
    Left = 345
  end
  object RvRenderRTF1: TRvRenderRTF
    DisplayName = 'Rich Text Format (RTF)'
    FileExtension = '*.rtf'
    Left = 321
  end
  object RvRenderText1: TRvRenderText
    DisplayName = 'Plain Text (TXT)'
    FileExtension = '*.txt'
    CPI = 10.000000000000000000
    LPI = 6.000000000000000000
    Left = 289
  end
  object SPC_CHEQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'QNT'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_CHEQUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNARDO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNADO_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_DEPOSITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'COMPENSADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CHEQUES'
    Left = 6
    Top = 5
  end
  object SPC_N_CUPOM: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMEROCUMPOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMEROECF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CUPOM_FISCAL'
    Left = 393
    Top = 8
  end
  object qrcaixa_mov: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 272
    Top = 252
  end
  object sds_pagto: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from PEDIDOS_FORMAS_PAGAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 0
    Params = <>
    Left = 316
    Top = 254
    object sds_pagtoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_pagtoCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
    end
    object sds_pagtoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sds_pagtoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_pagtoDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 40
    end
  end
  object IBTRAce: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 288
    Top = 104
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
    Left = 393
    Top = 88
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Pr'#233' Visualiza'#231#227'o da Venda'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 3
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 6.0 -  C'#243'pia de Demonstra'#231#227'o '
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o da Impressora'
    TitulodoRelatorio = 'Impress'#227'o da Venda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Bobina
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox PFDr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 371
    Top = 240
  end
  object FXduplicata: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 42275.893752905100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin  '
      ''
      ''
      'end.')
    OnGetValue = FXduplicataGetValue
    Left = 250
    Top = 466
    Datasets = <
      item
      end
      item
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 487.559370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape17: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape16: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape18: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape5: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape6: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape7: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape8: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape9: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape10: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 49.133890000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'TELEFONE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."TELEFONE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[fxemitente."ENDERECO"] - [fxemitente."BAIRRO"] -  [fxemitente."' +
              'CIDADE"] - [fxemitente."UF"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."IE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."DATA_COMPRA"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 51.133890000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 1 - EMPRESA')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape12: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape13: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape14: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape15: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line3: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clBackground
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clBackground
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo24: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE.:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_RS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsclientes."NOME_RS"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fxemitente."ENDERECO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'CIDADE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CIDADE"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."TELEFONE"] - [fsclientes."TELEFONE2"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_CNPJ'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'RG_IE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."RG_IE"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'UF'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."UF"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'CEP'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CEP"]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clGray
          Shape = skRoundRectangle
        end
        object Shape21: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 83.149660000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBackground
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E32323030307D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B6678656D6974656E74652E2252415A414F5F534F4349414C22
            5D205C62305C6930204F55205C27633020535541204F5244454D204E41205052
            415C2763374120452056454E43494D454E544F204143494D4120494E44494341
            444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo47: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DataField = 'CODIGO_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 272.126160000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[extenso]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape23: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Shape24: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape25: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
        end
        object Shape26: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape27: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape28: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape29: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape30: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape31: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape32: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape33: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape34: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo57: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."NOME_FANTASIA"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo58: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 154.960730000000000000
          Top = 49.133890000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."telefone"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'IE'
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."IE"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."DATA_COMPRA"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 15720447
          HAlign = haCenter
          Memo.UTF8W = (
            'VIA 2 - CLIENTE')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape36: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape37: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Shape38: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
        end
        object Shape39: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clBlack
        end
        object Line17: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PARA USO DA'
            'INSTITUI'#199#195'O FINANCEIRA')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
        end
        object Memo80: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor-R$')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'AT'#201)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONDI'#199#213'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'MUNIC'#205'PIO:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_RS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsclientes."NOME_RS"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."ENDERECO"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataField = 'CIDADE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CIDADE"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."TELEFONE"] - [fsclientes."TELEFONE2"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'CPF_CNPJ'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          DataField = 'RG_IE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."RG_IE"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'UF'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."UF"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'CEP'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsclientes."CEP"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          Curve = 1
          Fill.BackColor = clBlack
          Shape = skRoundRectangle
        end
        object Shape42: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Fill.BackColor = clBlack
        end
        object Memo101: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[extenso]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C66636861727365743020417269616C3B7D7B5C66315C666E69
            6C20417269616C3B7D7D0D0A7B5C2A5C67656E657261746F7220526963686564
            32302031302E302E32323030307D5C766965776B696E64345C756331200D0A5C
            706172645C66693534305C66733132205245434F4E48455C2763374F28454D4F
            53292041204558415449445C2763334F204445535441205C62204455504C4943
            415441204D455243414E54494C5C6230202C204120494D504F52545C2763324E
            434941204143494D4120515545205041474152454928454D4F5329205C276330
            205C625C69205B6678656D6974656E74652E2252415A414F5F534F4349414C22
            5D20205C62305C6930204F55205C27633020535541204F5244454D204E412050
            52415C2763374120452056454E43494D454E544F204143494D4120494E444943
            41444F2E5C66315C667331365C7061720D0A7D0D0A00}
        end
        object Memo103: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EM:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo106: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo109: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."VALOR_COMPRA"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."CODIGO_COMPRA"] - [fsduplicata."PARCELA"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'data_vencimento'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataSet = DM.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[fxemitente."ENDERECO"] - [fxemitente."BAIRRO"] -  [fxemitente."' +
              'CIDADE"] - [fxemitente."UF"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 314
    Top = 474
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM SP_BUSCAITENS (:CODPRO, :COD_VEN, :ITEM);')
    Left = 352
    Top = 104
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_VEN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object QBuscaItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 5
    end
    object QBuscaItensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItensPRECO_TOTAL: TBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object QBuscaItensVAL_DEV: TBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object QBuscaItensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object QBuscaItensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
    object QBuscaItensICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object QBuscaItensIPI_IRPJ: TBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCST_VENDA_INTER: TStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensFLAG_PIS_COFINS: TStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH1: TStringField
      FieldName = 'NCM_SH1'
      Origin = 'NCM_SH1'
      Size = 8
    end
    object QBuscaItensPERC_TRIBU: TBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object QBuscaItensCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 10
    end
  end
  object Spc_itens: TFDStoredProc
    Connection = DM.Coneccao
    StoredProcName = 'SP_NOVO_PEDIDO_ITENS'
    Left = 240
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ITEN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'CODIGO_PROD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CODIGO_PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 6
        Name = 'DESCRICAO_PRODUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Position = 7
        Name = 'PRECO_UNITARIO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 5
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'QUANTIDADE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'PRECO_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'COMISSAO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'DEV'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 13
        Name = 'QNT_DEV'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'VAL_DEV'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'ENC_FINANCEIRO'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'UNIDADE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 17
        Name = 'SIT_TRIBUTARIA'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 18
        Name = 'VENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'FRACAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'COD_NCM'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 21
        Name = 'PROD_SERV'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 22
        Name = 'PERC_ISS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 23
        Name = 'BASE_ISS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 24
        Name = 'VL_ISS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'PERC_ICM'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 26
        Name = 'BASE_ICMS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 27
        Name = 'VL_ICM'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 28
        Name = 'PERC_IPI'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 29
        Name = 'BASE_IPI'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 30
        Name = 'VL_IPI'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 31
        Name = 'PERC_COFINS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 32
        Name = 'BASE_COFINS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 33
        Name = 'VL_COFINS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 34
        Name = 'PERC_ICMS_SUBST'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 35
        Name = 'BASE_ICMS_SUBST'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 36
        Name = 'VL_ICMS_SUBST'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 37
        Name = 'PERC_PIS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 38
        Name = 'BASE_PIS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 39
        Name = 'VL_PIS'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 40
        Name = 'IMPRIME'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 41
        Name = 'COD_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 42
        Name = 'ID_BICO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 43
        Name = 'ID_TANQUE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 44
        Name = 'ID_BOMBA'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 45
        Name = 'BICO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object logEst: TFDStoredProc
    Connection = DM.Coneccao
    StoredProcName = 'SP_PRODUTOS_ESTOQUES_LOG'
    Left = 240
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_FILIAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_AJUSTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'ID_LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = 'ID_PRODUTO_SERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 7
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'ID_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'ID_MOVIMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FRACAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'ESTOQUE_ANTERIOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'QUANTIDADE'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'ESTOQUE_POSTERIOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'SITUACAO_ESTOQUE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'OPERACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 16
        Name = 'ACAO_BD'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 17
        Name = 'SITUACAO_ESTOQUE_OLD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'COD_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'COD_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'HISTORICO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 21
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end>
  end
end
