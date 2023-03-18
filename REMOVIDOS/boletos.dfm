inherited FormBoletosBanc: TFormBoletosBanc
  Left = 426
  Top = 108
  Caption = 'Emiss'#227'o de boletos Banc'#225'rios'
  ClientHeight = 422
  ClientWidth = 689
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 695
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 689
    Height = 367
    ExplicitWidth = 689
    ExplicitHeight = 367
    object RxLabel1: TsLabel
      Left = 35
      Top = 30
      Width = 69
      Height = 13
      Caption = 'C'#243'd. Cliente:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object myLabel3d1: TsLabelFX
      Left = 32
      Top = -2
      Width = 412
      Height = 40
      Caption = 'Emiss'#227'o de Boletos Banc'#225'rios'
      Color = 15263976
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
    object RxLabel2: TsLabel
      Left = 145
      Top = 30
      Width = 94
      Height = 13
      Caption = 'Nome do Cliente:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object RxLabel3: TsLabel
      Left = 424
      Top = 30
      Width = 58
      Height = 13
      Caption = 'Cpf / Cnpj:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel3: TsLabel
      Left = 31
      Top = 111
      Width = 76
      Height = 13
      Caption = 'C'#243'd. Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel4: TsLabel
      Left = 141
      Top = 111
      Width = 150
      Height = 13
      Caption = 'Nome do Sacador Avalista:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object sLabel5: TsLabel
      Left = 420
      Top = 111
      Width = 58
      Height = 13
      Caption = 'Cpf / Cnpj:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Panel6: TsPanel
      Left = 33
      Top = 45
      Width = 104
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object edit1: TComboEdit
        Left = 3
        Top = 4
        Width = 102
        Height = 24
        CharCase = ecUpperCase
        ClickKey = 113
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnButtonClick = edit1ButtonClick
        OnChange = edit1Change
        OnExit = Edit1Exit
        OnKeyPress = edit1KeyPress
      end
    end
    object Panel7: TsPanel
      Left = 144
      Top = 45
      Width = 273
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TsLabel
        Left = 32
        Top = 5
        Width = 344
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object Panel8: TsPanel
      Left = 419
      Top = 45
      Width = 162
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object RxLabel7: TsLabel
        Left = 2
        Top = 4
        Width = 155
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object suiDBGrid1: TsDBGrid
      Left = 8
      Top = 152
      Width = 665
      Height = 169
      BorderStyle = bsNone
      Color = 14609391
      Ctl3D = True
      DataSource = DMCOB.DTS_Titulos
      FixedColor = 15717318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = suiDBGrid1DrawColumnCell
      OnDblClick = suiDBGrid1DblClick
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'CHEK_BOX'
          Title.Caption = 'X'
          Width = 18
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Venda'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parc.'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Alignment = taCenter
          Title.Caption = 'Num Boleto'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO_PORTADOR'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Venda'
          Width = 69
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_SACADO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Sacado'
          Width = 191
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Alignment = taCenter
          Title.Caption = 'Historico'
          Width = 149
          Visible = True
        end>
    end
    object Panel3: TsPanel
      Left = 32
      Top = 74
      Width = 185
      Height = 37
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 4
      object Label3: TsLabel
        Left = 4
        Top = 1
        Width = 79
        Height = 13
        Caption = 'C'#243'digo Venda:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object Edit2: TsEdit
        Left = 5
        Top = 13
        Width = 76
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
    end
    object suiButton1: TsBitBtn
      Left = 123
      Top = 85
      Width = 80
      Height = 24
      Caption = 'Pesquisar'
      TabOrder = 5
      OnClick = suiButton1Click
    end
    object Panel4: TsPanel
      Left = 588
      Top = 45
      Width = 85
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 6
      object suiButton2: TsBitBtn
        Left = 3
        Top = 1
        Width = 80
        Height = 26
        Caption = 'Pesquisar'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel5: TsPanel
      Left = 224
      Top = 74
      Width = 529
      Height = 36
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 7
      object Label2: TsLabel
        Left = 193
        Top = 9
        Width = 30
        Height = 13
        Caption = 'Qtde:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object Label1: TsLabel
        Left = 5
        Top = 10
        Width = 42
        Height = 13
        Caption = 'Layout:'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object ComboBox1: TsComboBox
        Left = 54
        Top = 6
        Width = 121
        Height = 21
        TabOrder = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        ItemIndex = 0
        Items.Strings = (
          'Boleto Padr'#227'o'
          'Carne')
        Text = 'Boleto Padr'#227'o'
      end
      object MaskEdit1: TsMaskEdit
        Left = 230
        Top = 6
        Width = 33
        Height = 21
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
        CheckOnExit = True
        Text = '1'
      end
    end
    object GroupBox1: TsGroupBox
      Left = 216
      Top = 160
      Width = 209
      Height = 128
      Caption = 'Nova data de Vencimento e Valor'
      TabOrder = 8
      Visible = False
      object Label4: TsLabel
        Left = 8
        Top = 65
        Width = 53
        Height = 13
        Caption = 'Novo Valor'
      end
      object Label5: TsLabel
        Left = 8
        Top = 33
        Width = 54
        Height = 13
        Caption = 'Data Venc.'
      end
      object DBEdit1: TsDBEdit
        Left = 80
        Top = 60
        Width = 118
        Height = 21
        Color = clWhite
        DataField = 'VALOR_COMPRA'
        DataSource = DMCOB.DTS_Titulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object DBDateEdit1: TsDBDateEdit
        Left = 80
        Top = 28
        Width = 121
        Height = 21
        AutoSize = False
        MaxLength = 10
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
        DataField = 'DATA_VENCIMENTO'
        DataSource = DMCOB.DTS_Titulos
      end
      object BitBtn1: TsBitBtn
        Left = 80
        Top = 87
        Width = 75
        Height = 29
        Caption = 'Ok'
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
          92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
          FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
          9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
          52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
          C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
          E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
          F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
          6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
          FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
          68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
          DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object Edit3: TEdit
      Left = 568
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object DateEdit3: TDateEdit
      Left = 584
      Top = 80
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
      Visible = False
    end
    object sPanel1: TsPanel
      Left = 31
      Top = 125
      Width = 104
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 11
      object ComboEdit1: TComboEdit
        Left = 2
        Top = 5
        Width = 102
        Height = 24
        CharCase = ecUpperCase
        ClickKey = 113
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnButtonClick = ComboEdit1ButtonClick
        OnChange = ComboEdit1Change
        OnExit = ComboEdit1Exit
      end
    end
    object sPanel2: TsPanel
      Left = 140
      Top = 125
      Width = 273
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 12
      object sLabel1: TsLabel
        Left = 32
        Top = 5
        Width = 344
        Height = 15
        AutoSize = False
        Caption = 'CLIENTE'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object sPanel3: TsPanel
      Left = 415
      Top = 125
      Width = 162
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 13
      object sLabel2: TsLabel
        Left = 2
        Top = 4
        Width = 155
        Height = 15
        AutoSize = False
        Caption = 'CPF'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
      end
    end
    object Edit4: TEdit
      Left = 504
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 14
      Visible = False
    end
    object Panel9: TPanel
      Left = 4
      Top = 322
      Width = 681
      Height = 41
      Align = alBottom
      TabOrder = 15
      object RxLabel4: TRxLabel
        Left = 2
        Top = 4
        Width = 50
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel9: TRxLabel
        Left = 107
        Top = 4
        Width = 36
        Height = 13
        Caption = 'Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel10: TRxLabel
        Left = 224
        Top = 3
        Width = 37
        Height = 13
        Caption = 'Multa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel21: TRxLabel
        Left = 336
        Top = 3
        Width = 64
        Height = 13
        Caption = 'Descontos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 455
        Top = 2
        Width = 33
        Height = 13
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 627
        Top = 1
        Width = 34
        Height = 13
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 3
        Top = 17
        Width = 94
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 110
        Top = 17
        Width = 104
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 225
        Top = 17
        Width = 98
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 335
        Top = 17
        Width = 103
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 455
        Top = 16
        Width = 96
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 568
        Top = 16
        Width = 93
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  inherited Panel2: TsPanel
    Top = 367
    Width = 689
    ExplicitTop = 367
    ExplicitWidth = 689
    inherited btnLocalizar: TAdvGlowButton [0]
      Left = 590
      Enabled = False
      ExplicitLeft = 590
    end
    inherited btnNovo: TAdvGlowButton [1]
      Width = 111
      Hint = 'Gera o boleto Ref. ao Registro Selecionado...'
      Caption = 'Gerar'
      OnClick = AlterarExecute
      ExplicitWidth = 111
    end
    inherited btnEditar: TAdvGlowButton [2]
      Left = 211
      Width = 93
      Hint = 'Visualiza o Boleto Selecionado...'
      Caption = '&Visualizar'
      OnClick = btnEditarClick
      ExplicitLeft = 211
      ExplicitWidth = 93
    end
    inherited btnCancelar: TAdvGlowButton [3]
      Left = 307
      Hint = 'Imprime o Boleto Selecionado...'
      Caption = '&Imprimir'
      OnClick = btnCancelarClick
      Enabled = True
      ExplicitLeft = 307
    end
    inherited btnSalvar: TAdvGlowButton [4]
      Left = 400
      ExplicitLeft = 400
    end
    inherited btnExcluir: TAdvGlowButton [5]
      Left = 494
      Enabled = False
      ExplicitLeft = 494
    end
    inherited DBNavigator: TsDBNavigator [6]
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    Left = 192
    Top = 88
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Top = 40
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    Left = 424
    Top = 80
    TMSStyle = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 417
    Top = 241
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      OnClick = Visualizar1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object AlteraDataVencimento1: TMenuItem
      Caption = 'Altera Data Vencimento'
      OnClick = AlteraDataVencimento1Click
    end
  end
  object Totais: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select SUM(VALOR_PAGAR)as total, SUM(VALOR_COMPRA)as COMPRA, SUM' +
        '(VALOR_JUROS)as JUROS, SUM(VALOR_ACRESCIMO)as MULTA, SUM(VALOR_P' +
        'AGO)as PAGO,'
      'SUM(VALOR_DESCONTO)as DESC from CREDIARIO')
    Left = 464
    Top = 224
  end
end
