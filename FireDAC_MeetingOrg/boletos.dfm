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
      SkinData.SkinSection = 'PANEL'
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
      SkinData.SkinSection = 'PANEL'
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
      SkinData.SkinSection = 'PANEL'
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
      SkinData.SkinSection = 'PANEL'
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
        SkinData.SkinSection = 'EDIT'
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
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
      SkinData.SkinSection = 'BUTTON'
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
      SkinData.SkinSection = 'PANEL'
      object suiButton2: TsBitBtn
        Left = 3
        Top = 1
        Width = 80
        Height = 26
        Caption = 'Pesquisar'
        TabOrder = 0
        OnClick = Button1Click
        SkinData.SkinSection = 'BUTTON'
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
      SkinData.SkinSection = 'PANEL'
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
        Alignment = taLeftJustify
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = -1
        ParentFont = False
        TabOrder = 0
        Text = 'Boleto PFDr'#227'o'
        Items.Strings = (
          'Boleto PFDr'#227'o'
          'Carne')
      end
      object MaskEdit1: TsMaskEdit
        Left = 230
        Top = 6
        Width = 33
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '1'
        CheckOnExit = True
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'EDIT'
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
      SkinData.SkinSection = 'GROUPBOX'
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
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
      end
      object DBDateEdit1: TsDBDateEdit
        Left = 80
        Top = 28
        Width = 121
        Height = 21
        AutoSize = False
        Color = clWhite
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        BoundLabel.ParentFont = False
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
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
        SkinData.SkinSection = 'BUTTON'
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
      SkinData.SkinSection = 'PANEL'
      object ComboEdit1: TComboEdit
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
      SkinData.SkinSection = 'PANEL'
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
      SkinData.SkinSection = 'PANEL'
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
    inherited btnLocalizar: TsBitBtn [0]
      Left = 590
      Top = 6
      Enabled = False
      ExplicitLeft = 590
      ExplicitTop = 6
    end
    inherited btnNovo: TsBitBtn [1]
      Width = 111
      Hint = 'Gera o boleto Ref. ao Registro Selecionado...'
      Caption = 'Gerar'
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F809000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFD1
        CFC0C6C0B8BFB9BBC1BBC8C7C7E6E1E6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C012631A6287673A714123692C2068261F672520
        682727642C3C66405A715D989A98D6D1D5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C012
        631A12631A12631A097014077E12138D1D1392201392201492220E871C097B14
        0D6B181863213B643F929493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C012631A116A1B016D0E1C902A
        39B94633BE402ABE3823BC3326BD352CBB3B37BF443FBF4B3CB34811811C056C
        121B63245B6B5CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C064966702660B1E8D2B4DC45842C55031BC3D28BB371BAC
        291DBA2A1DB72B21B63129B83636C14240C24D53CA614EB9570F7B19106B1B45
        6248C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C06699
        6A0062023DA5465CCB6846C1543CC04830C23F1F952A3D75411FAC2A1EBA2B23
        B73028B63734BF413FC04A4BBF5456C1626CCB7521862B0D6E17436347C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C082AD8800620548A94E67C87053
        BF5D45C05241C64C27953059795BC7C2C73F87461FB92D24B8322BB73A36C042
        40C04A4BBF5452BF6062C06A7AD08120852A0E6C1A5E6E60C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C00E68182F903974CC7D5FBF6754BF5E4DC75933A03F
        527254CBC4C9EDE9EDA3B1A420912A2BBF3A2EBC3E39C14542C04D4BBF5552C0
        6061BF6A6DC0747FD08610771B1D6526C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        5A975E096D1181D2896DC07561C16A60CB6B318338607963CEC9CCF9F8F9FFFE
        FFF2EFF27A977D2BA13737C3453FC04C45C1514EBF5957BF5F62C06A68BF7277
        C67F6DBF7401680A3E6B44C0C0C0C0C0C000C0C0C0C0C0C0035F0B5DB2657CCC
        846DC6766CC5752C6F3477867ACECACCFAF9FBFDFBFCFCFAFCFFFEFFDED8DE58
        865A3FB84A42C1514ABF5651BF5A58C06262BF6A68BF7172C57C85D38D1B8128
        166422A1A3A3C0C0C000C0C0C07DAD8306711183D08C7DCB895CA164335535A8
        FDA8D5D2D6FDFDFDFDFDFDD6E1D8A7C3ABFFFFFFFEFEFFD0CFD049794C4CBF57
        4EC15A54C05E5AC06563C06B68BF716EC67779CA826ABE72066C115C7861C0C0
        C000C0C0C03D844527853191D7995588587B857AD3D0D5E3E1E3FDFDFEF9F9F9
        FFFAFF81BA854BA652EFF4F0FDFAFCF8F7F8BFBEBF467F4A5AC36258C0645FBF
        6963BF6B69BD7170C37876C7807DCC850D79193A6C41E6E5E800C0C0C0177123
        4CA35683CD8B75C47C85B288E4E7E3FFFFFFFBFAFBFFFCFFC3D6C44EAF554DBB
        5696C498FFFFFFFAFAFAFAF9FBB2B6B53D734164C66E61C16867C06C67BF706B
        C47571C77B81D087258B301F6828CCCFCC00C0C0C00B691657AD5F7CC9856FC4
        7664C16C65B06CA0C0A3F0F1EFFFFFFF75AF7C57C0615BC0635CAB65ECF3EEFD
        F9FCFCFBFAF3F0F3B4B5B346794C64BE6D69C26F69C06F68BF746FC77979CC80
        3A9743166620BCC5BE00C0C0C00B691655AB5D74C67C6CC37567BF6F5FC0675A
        BD6171B079A3CAA862B66B63C06A64C06D65C26E8BB590FFFFFFF8F8F8FAFBFB
        F6F5F6B5BAB74A704C67B96D6CC87267C06F69C17273CB7E3A9C4314651CBCC5
        BE00C0C0C00A681650AD5A6EC27668BF6F64C16C60BF685FC0685DBE6764BA6A
        68C2716BBF7473C57B76C87B73BC79C2D3C3FFFDFFF9F8F8FBFBFBF5F3F7C7C8
        C86A7F6A427C466BC17268C06E6EC4773A9C4312661DBDC7BF00C0C0C00E6D1A
        47A8526AC37463BF6C60BF6860C06762BF6967C16F6DC57474C77C7AC68180C8
        8683C88A83C88B85B48AEBEEEBFCFBFBF7F8F8F9F9F9FEFDFED6D2D5B2B7B15E
        A66468C27070C97835963E1A6824D4DBD500C0C0C02A7C3433953B6AC67260BF
        6860C06860BE6967BF6F6FC47775C87E80C88587C78F8DC89392C79793C79791
        C89693B298F9F7F7F9F9FAF7F7F8F9F8F8FFFFFFCEE0D066B76C67C06F75CC79
        1B832334733BC0C0C000C0C0C05C98621079196AC97461C0685FC06863BF6B6B
        C17476C87E7FC7858AC89193C69799C79E9EC8A19DC8A29CC9A297C39CB1C2B3
        FFFFFFF7F8F9F9F7F8FFFCFFB2CEB564BC6D64BF6E70C877077311638E67C0C0
        C000C0C0C0C0DFC200610660BC6A61C06A60BF6868C06E73C77A7DC7848AC88D
        93C79A9DC8A3A5CBABACCEAEAECFB0ABD0AEA7CEAB9BC39FAFBEAFFEFCFEFAF9
        F9FFFCFFACCAB064BF6E6AC4724AA95406610EB8C9BAC0C0C000C0C0C0C0C0C0
        2B7832288D336DCB7761BE6866C07174C67C83C88A90C9969DC8A2A7CCADB2D0
        B5B4D0B7B6D0B7B2D0B5B0D0B2A7CCAC9CC1A0B6C4B6FDFAFCFFFEFFB5CEB965
        BB6F76CC7F0772103E8045C0C0C0C0C0C000C0C0C0C0C0C0AFD8B4005A0055B6
        5D69C4706DC27479C78289C88E98C89DA6CAA9B2D1B5B8D1BDC0D0C0C0D0C0BC
        CFBEB6D0B9B0CFB2A4CAA795C59A9CB29FFBF7F9D1E2D271C07840A24A00630D
        B0CBB3C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0498E4E026B096BC5736FC2777B
        C7848DC8949AC89FABCBADB7D0BAC1CFC3C9D0CAC8D0CAC0CFC1B8D0BBB1CFB3
        A5C9AA99C89D8DC59393B997B1D4B561B3670069076C9F71C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C023792C00670869C47179C9818CC9949CC9A1
        AACDAFBAD0BBC4D0C5CCD2CDC9D0CBC2D0C4B8D0BBB0CFB3A5CAAA9AC99F8FCB
        9575C87E62BB6A0063053C8341C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C01F7329056F0D55B55C78CA818DC691ADD1B2B9D3BCC2D1
        C4C9CFCAC7D0C8C0D0C2B9D1BCB1CFB2A3CCA783C78C75C87F49AB5200690739
        7F3EC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C03A8540005C002E96385EBD6771C77A8CCB90A1CCA4ABCEAEAED0B0A5
        CEA999CC9D82C9886AC7755BBC65238C2E005D01589662C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C099
        CB9F156D1F0065021A82243BA0454DB4595ABF6459BE6359BE644DB057369C41
        1280200065062A772FB9DDBEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C099C69F
        388542106F1D00650300610000630000610001660B20742A519158AFD2B3C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEDF
        CEC0C0C0C0D7C2C0D6C3DCEDDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
      OnClick = AlterarExecute
      ExplicitWidth = 111
    end
    inherited btnEditar: TsBitBtn [2]
      Left = 211
      Width = 93
      Hint = 'Visualiza o Boleto Selecionado...'
      Caption = '&Visualizar'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C6752648C67526B7C67526B4C6752636FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CA7A2B5ACA7A2BFCEFBF6CFFEBBA68FFCA7A2BF6CA7A2B36FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CF80
        325ACF8032FCF4C473FFFFE3AAFFFFE19AFFEDC070FFCF8032AEFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5883B5BD588
        3BFCF5CA7CFFFFE9BEFFFFDD99FFFFDE91FFF1C97DFFD48739B4FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D98E4124DD9953FDF9E6
        C3FFFEF3D5FFFFE099FFFFDF95FFF6D388FFD98E41FCD98E41420A5CBA000A5C
        BA000A5CBA000A5CBA000A5CBA000A5CBA390A5CBA7D0A5CBAB70A5CBAE30A5C
        BAFC0A5CBAE30A5CBAB70A5CBA7D0A5CBA390A5CBA0072676880D09152FFF0C5
        81FFF7DCB9FFFFF1C6FFF7D992FFDF9549FCDF95495AFFFFFF000A5FBD000A5F
        BD000A5FBD000A5FBD230A5FBD870A5FBDE811A5DCFF14C6EAFF16DEF5FF18EC
        FBFF16DEF5FF14C6EAFF11A5DCFF0A5FBDE82961A3C2737988FFB5A89BFFE29D
        53FFF4D49AFFFAEAD1FFE49D52FCE49C505AFFFFFF00FFFFFF000A62BF000A62
        BF000A62BF350A62BFAF1BADE0FF28DFF6FF20C2E9FF1799D7FF0F78C9FF0B65
        C0FF0F78C9FF1799D7FF20C2E9FF28DFF6FF1BADE0FF3D79B9FF8DA0B5FFE8D5
        C4FFE4A25FFFEAAC68FEE9A3595BFFFFFF00FFFFFF00FFFFFF000A66C2000A66
        C2230A66C2AF2BBBE7FF38D8F5FF21A0DBFF4D8BCAFF87ACCFFFB8C6D4FFDFDF
        DCFFCEDAE0FF9EBFDBFF5693CFFC21A0DBFF38D8F5FF2BBBE7FF4F8ECFFF7B82
        91FF796B6890EDA75C2DFFFFFF00FFFFFF00FFFFFF00FFFFFF000B69C5000B69
        C58732B0E3FF49DAF6FF1E74C8FD82ADD7FFDDDEE0FFDADBDCFFD8D8D8FFD8D8
        D7FFE2E0DCFFF1EEE5FFF9F5EBFF8CB4D8FF1E73C6FF49DAF6FF32B0E3FF2C68
        A7C8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B6EC8390C6F
        C8E958E2F9FF2FA5DFFF8BB8E1FFEDEDEEFFE5E6E7FFDFE0E1FFDBDBDCFFD8D8
        D8FFD8D7D7FFE1E0DBFFF0EDE4FFFCF7EBFF8CB6D9FF2FA5DFFF58E2F9FF0B6E
        C8E80B6EC839FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B72CB7D37B1
        E4FF47C9EEFF599FDCFFF9FAFBFFF7F7F7FFEEEEEEFFE6E6E7FFE0E0E1FFDBDB
        DCFFD8D8D9FFD7D7D7FFE0DFDBFFEFECE4FFF8F4EBFF5399D3F847C9EEFF37B1
        E4FF0B72CB7DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B76CEB748D0
        F0FF2CA7E1FFA0CAECFFFFFFFFFFFDFDFDFFF7F7F8FFEEEEEFFFE6E7E7FFE0E1
        E2FFDBDCDCFFD8D8D9FFD7D7D7FFDFDEDAFFEEEBE3FF9BC3DFFB2CA7E1FF48D0
        F0FF0B76CEB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B7BD2E351E7
        F9FF178ED9FFD9EAF8FFFFFFFFFFFFFFFFFFFEFEFEFFF7F7F7FFEFEFF0FFE7E7
        E8FFE1E1E2FFDCDCDDFFD8D8D9FFD7D7D7FFDFDDDAFFCAD9DFFF178ED9FF51E7
        F9FF0B7BD2E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B7FD5FC4FF4
        FEFF0C81D6FFFAFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF7F7F8FFEFF0
        F0FFE7E8E8FFE1E1E2FFDCDCDDFFD8D9D9FFD7D7D7FFDADAD9FF0C81D6FF4FF4
        FEFF0B7FD5FCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B84D9E340EA
        FAFF1496DFFFD9ECF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF8F8
        F8FFF0F0F1FFE8E8E9FFE1E2E3FFDCDDDDFFD9D9D9FFB7CAD7FF1496DFFF40EA
        FAFF0B84D9E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B88DCB72FD8
        F4FF1EB3E9FFA0D1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFFF9FAFAFFF1F1F1FFE8E8E9FFE2E2E3FFDDDDDEFF88B9DBFD1EB3E9FF2FD8
        F4FF0B88DCB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C8CDF7D20C1
        EEFF28D6F4FF5AB1E9FFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFAFAFAFFF2F2F3FFE9E9EAFFDFE2E4FF4AA4DFF728D6F4FF20C1
        EEFF0C8CDF7DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C90E2390E91
        E2EA29EFFBFF1ABDEEFF90CDF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9FAFFF2F2F2FF84C0E6FC1ABDEEFF29EFFBFF0C90
        E2E80C90E239FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C94E5000C94
        E5871ACAF2FF23ECFAFF219DE7FE90CEF3FFFCFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFEFFFF8ECCF0FE1A9AE6F823ECFAFF1ACAF2FF0C94
        E587FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C98E8000C98
        E8230C98E8AF19D5F6FF1DEDFAFF15C2F1FF5AB9EFFFA1D7F6FFD9EFFBFFFAFD
        FFFFD9EFFBFFA1D7F6FF59B9EFFE15C2F1FF1DEDFAFF19D5F6FF0C98E8AF0C98
        E823FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C9BEA000C9B
        EA000C9BEA350C9BEAAF16CEF5FF1BF1FCFF18DCF8FF13C0F2FF0FAAEDFF0C9D
        EAFF0FAAEDFF13C0F2FF18DCF8FF1BF1FCFF16CEF5FF0C9BEAAF0C9BEA35FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C9EED000C9E
        ED000C9EED000C9EED230C9EED870C9EEDE815CCF5FF19E1F9FF1CF1FCFF1EFA
        FEFF1CF1FCFF19E1F9FF15CCF5FF0C9EEDE80C9EED870C9EED23FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000CA0EE000CA0
        EE000CA0EE000CA0EE000CA0EE000CA0EE390CA0EE7D0CA0EEB70CA0EEE30CA0
        EEFC0CA0EEE30CA0EEB70CA0EE7D0CA0EE390CA0EE000CA0EE00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = btnEditarClick
      ExplicitLeft = 211
      ExplicitWidth = 93
    end
    inherited btnCancelar: TsBitBtn [3]
      Left = 307
      Hint = 'Imprime o Boleto Selecionado...'
      Caption = '&Imprimir'
      Enabled = True
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
      OnClick = btnCancelarClick
      ExplicitLeft = 307
    end
    inherited btnSalvar: TsBitBtn [4]
      Left = 400
      ExplicitLeft = 400
    end
    inherited btnExcluir: TsBitBtn [5]
      Left = 494
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADAD9C9C9C849C9C849C
        9C849C846B9C846BAD9C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFEFDED6FFEFBDFFDEB5FFDEADFFDEB5FFEFBDFFF7CEFFDEB59C846BFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFEFDED6FFFFD6FFDEADFFD69CFFCE8C29
        A529FFF7DEFFF7DEFFFFDEFFFFD69C846BFF00FFFF00FFFF00FFFF00FFFF00FF
        DEB584FFDEA5FFF7CEFFD6A5FFCE8C29A529008400008400108C10BDEFB5FFFF
        D69C846BFF00FFFF00FFFF00FFFF00FFF7B573F7AD6BFFBD84FFDEADFFF7BD29
        A52900840039AD39EFFFEF29A529FFDEB5AD9C7BFF00FFFF00FFFF00FFEFDED6
        FFB57BFFB57BFFB57BFFB57BFFD6A529A52929A529108C10D6EFCE73CE73BDCE
        8CAD9C7BFF00FFFF00FFFF00FFEFD6B5FFCE8CFFCE8CFFCE8CFFCE8CFFDEBD6B
        BD63FFF7DE5AB55A29A52929A529D6DEADCEBD9CFF00FFFF00FFFF00FFF7D6AD
        FFD6A5FFD6A5FFD6A5FFD6A5FFDEAD39AD396BBD636BBD6B00840029A529FFDE
        B5CEBD9CFF00FFFF00FFFF00FFFFDEADFFEFB5FFEFB5FFEFB5FFEFB5FFEFB5D6
        EFB5108C1000840000840029A529FFEFCECEBD9CFF00FFFF00FFFF00FFFFDEAD
        FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6EFFFD6ADDEA5BDEFB529A529FFFF
        DED6D6B5FF00FFFF00FFFF00FFFFCE9CFFFFD6FFFFD6FFFFD6FFFFD6FFF7CEFF
        EFB5FFD6A5FFDEA5FFEFBDFFFFD6FFFFD6D6D6B5FF00FFFF00FFFF00FFFFDEBD
        FFCE9CFFCE9CFFCE9CEFBD8CEFA55AEFA552EFA55AF7AD63F7AD63F7B573FFDE
        ADD6D6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        CE9CEFBD8CF7AD6BF7AD6BF7B573F7B573FFD69CFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFCE9CFFB57BFFB5
        7BF7BD8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ExplicitLeft = 494
    end
    inherited DBNavigator: TsDBNavigator [6]
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    Left = 248
    Top = 48
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Top = 40
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    Left = 296
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
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport(Open Source) v3.24(BETA13) \251 Copyright '#169' 1999-20' +
      '07 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 481
    Top = 9
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 561
    Top = 9
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 521
    Top = 9
  end
  object GBTitulo1: TRLBTitulo
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN11
    Versao = '1.1.5'
    Left = 281
    Top = 8
  end
  object Totais: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select SUM(VALOR_PAGAR)as total, SUM(VALOR_COMPRA)as COMPRA, SUM' +
        '(VALOR_JUROS)as JUROS, SUM(VALOR_ACRESCIMO)as MULTA, SUM(VALOR_P' +
        'AGO)as PAGO,'
      'SUM(VALOR_DESCONTO)as DESC from CREDIARIO')
    Left = 336
    Top = 224
  end
end
