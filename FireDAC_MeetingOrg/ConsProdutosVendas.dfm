object FormConsProdutosVendas: TFormConsProdutosVendas
  Left = 243
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Localizar Produto  Cadastrado'
  ClientHeight = 532
  ClientWidth = 826
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 129
      Top = 5
      Width = 84
      Height = 13
      Caption = 'Descri'#231'ao - F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 1
      Top = 5
      Width = 96
      Height = 13
      Caption = 'TP Pesquisa - F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel9: TRxLabel
      Left = 531
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 576
      Top = 7
      Width = 208
      Height = 35
      Alignment = taRightJustify
      Color = clBlack
      DataField = 'PRECO_VENDA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cbxpesquisa: TComboBox
      Left = 5
      Top = 24
      Width = 116
      Height = 21
      TabOrder = 0
      Text = 'Qualquer parte desc.'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Inicio da descri'#231#227'o'
        'Qualquer parte desc.'
        'Por Codigo Barras'
        'Por Ref'#234'rencia'
        'Por Codigo'
        'Por NCM'
        'Por C'#243'd. Original'
        'Por Cod. Pacote'
        'Todos Campos')
    end
    object Edit2: TEdit
      Left = 640
      Top = 20
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 1
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 441
      Top = 17
      Width = 75
      Height = 31
      Caption = '&Buscar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
        BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
        FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
        6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
        CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
        FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
        75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875F3B875F3B875F4B975F4B975F4B975
        F4B975F4B975F4B975F4B975F4B975F4B975F4BE80F8D4ACF6C894F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74F4BA74F6BA74F7BB75F7
        BB75F7BB75F7BB75F7BB75F7BB75F7BB75F7BB75F7BB75F8C588FEF8F0FFFFFF
        FFFFFFF7C993F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73F7BB
        73F8BC74F8BC74F8BC74F8BC74F9C383FAD09FFACD98F8BF7AF8BC74F9C588FE
        F8F0FFFFFFFFFFFFFFFFFFFAD8B0F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FABD73FABD73FABD73FBD09BFEF7EDFFFFFFFFFFFFFFFFFFFFFF
        FFFEF2E2FEF9F2FFFFFFFFFFFFFFFFFFFFFBF7FBC586F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FBBE73FEE4C5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FCCC90FBBE73FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FED7A5FFFFFFFF
        FFFFFFFFFFFFFEFEFEF2E3FFF4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FECD90
        FDC072FDC072FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC5
        7BFFFBF5FFFFFFFFFFFFFFF0DCFEC880FEC171FEC171FECF8FFFF9F2FFFFFFFF
        FFFFFFF2E0FEC171FEC171FEC171FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFD8A3FFFFFFFFFFFFFFFBF5FFC87CFFC371FFC371FFC371FFC3
        71FFD194FFFFFFFFFFFFFFFEFEFFC97FFFC371FFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFE3BCFFFFFFFFFFFFFFEACCFFC470FFC470
        FFC470FFC470FFC470FFC470FFFBF5FFFFFFFFFFFFFFD395FFC470FFC470FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFE5BEFFFFFFFFFFFFFF
        EBCCFFC56FFFC56FFFC56FFFC56FFFC56FFFC56FFFFBF5FFFFFFFFFFFFFFD596
        FFC56FFFC56FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFDF
        ABFFFFFFFFFFFFFFFBF7FFCC7AFFC76EFFC76EFFC76EFFC76EFFD592FFFFFFFF
        FFFFFFFFFFFFCF85FFC76EFFC76EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFCF81FFFEFEFFFFFFFFFFFFFFF2DBFFCE7DFFC86EFFC86EFFD4
        8EFFF9F0FFFFFFFFFFFFFFF6E7FFC86EFFC86EFFC86EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFE9C3FFFFFFFFFFFFFFFFFFFFFFFF
        FFF4E2FFF7E9FFFFFFFFFFFFFFFFFFFFFFFFFFDA9AFFCA6DFFCA6DFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFCC71FFF2DDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B7FFCA6CFFCA6C
        FFCB6CFFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFCC6CFFE3AEFFFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0FFDA95FF
        CC6CFFCC6CFFCC6CFFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCF73FFD990FFE4AFFFE1A7FFD6
        89FFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object CheckBox1: TCheckBox
      Left = 221
      Top = 3
      Width = 218
      Height = 17
      Caption = '&Descric'#227'o com N'#250'meros e Letras?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object Edit1: TEdit
      Left = 128
      Top = 24
      Width = 309
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 826
    Height = 198
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 818
      Height = 190
      Align = alClient
      DataSource = DM.Dts_produtos_c
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      MarkerStyle = msMild
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking]
      OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgLoadCurrentOrder, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
      TabOrder = 0
      Totals.Color = 10930928
      OnDblClick = suiDBGrid1DblClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyPress = suiDBGrid1KeyPress
      OnOrderChanged = XDBGrid1OrderChanged
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 58
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Title.Caption = 'C'#243'd. Barras'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 6
          Visible = True
          Width = 97
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Cod. Fab/Ref.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 4
          Visible = True
          Width = 99
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 2
          Visible = True
          Width = 245
        end
        item
          Expanded = False
          FieldName = 'DESC_UNIDADE'
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 30
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Caption = 'Est. I.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 44
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_FRACAO'
          Title.Caption = 'Est. F'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 37
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'Pre'#231'o Vda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 67
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Caption = 'Pre'#231'o Vda2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 69
        end
        item
          Expanded = False
          FieldName = 'NCM_SH'
          Title.Caption = 'Cod. NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 72
        end
        item
          Expanded = False
          FieldName = 'PRECO_ANT'
          Title.Caption = 'Preco_Anterior'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          CheckBox = True
          CheckBoxValues = 'A;I'
          Expanded = False
          FieldName = 'ATIVO'
          ReadOnly = True
          Title.Caption = 'Ativo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 29
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Caption = 'Chassi do Veiculo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N_MOTOR'
          Title.Caption = 'N'#186' do Motor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIZACAO'
          Title.Caption = 'Localiza'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODORIGINAL'
          Title.Caption = 'C'#243'd. Original'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PACOTE'
          Title.Caption = 'C'#243'd. Pacote'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
      OrderFields = 'DESCRICAO,REFERENCIA,CODIGO_BARRAS'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 248
    Width = 826
    Height = 182
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object RxLabel27: TRxLabel
      Left = 166
      Top = 64
      Width = 66
      Height = 13
      Caption = 'FDicionais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel26: TRxLabel
      Left = 6
      Top = 158
      Width = 51
      Height = 13
      Caption = 'Localiz.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 166
      Top = 109
      Width = 50
      Height = 13
      Caption = 'Sec'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel28: TRxLabel
      Left = 6
      Top = 6
      Width = 69
      Height = 13
      Caption = 'Gar/Meses:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 6
      Top = 32
      Width = 56
      Height = 13
      Caption = 'Validade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel36: TRxLabel
      Left = 6
      Top = 60
      Width = 63
      Height = 13
      Caption = 'Quant. Cx:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel37: TRxLabel
      Left = 6
      Top = 85
      Width = 67
      Height = 13
      Caption = 'Qtde Frac.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 166
      Top = 8
      Width = 73
      Height = 13
      Caption = 'Princ. Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 166
      Top = 36
      Width = 71
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 6
      Top = 111
      Width = 73
      Height = 13
      Caption = 'Data Fabric:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 6
      Top = 135
      Width = 46
      Height = 13
      Caption = 'Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 417
      Top = 135
      Width = 55
      Height = 13
      Caption = 'Cod. MS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 166
      Top = 131
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel19: TRxLabel
      Left = 417
      Top = 159
      Width = 73
      Height = 13
      Caption = 'Est. Vendido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 165
      Top = 86
      Width = 44
      Height = 13
      Caption = 'Chassi:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 417
      Top = 87
      Width = 76
      Height = 13
      Caption = 'Cod Original:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 417
      Top = 110
      Width = 77
      Height = 13
      Caption = 'Cod. Pacote:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 239
      Top = 57
      Width = 394
      Height = 23
      DataField = 'APLICACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 76
      Top = 153
      Width = 340
      Height = 25
      DataField = 'LOCALIZACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit11: TDBEdit
      Left = 77
      Top = 1
      Width = 85
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 77
      Top = 31
      Width = 85
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 77
      Top = 59
      Width = 85
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 77
      Top = 83
      Width = 85
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_FRACIONADA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBMemo3: TDBMemo
      Left = 239
      Top = 2
      Width = 394
      Height = 26
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 316
      Top = 32
      Width = 317
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 239
      Top = 32
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 77
      Top = 130
      Width = 86
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit7: TDBEdit
      Left = 78
      Top = 107
      Width = 85
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DATA_FABRICACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 497
      Top = 132
      Width = 136
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBImage1: TDBImage
      Left = 640
      Top = 4
      Width = 177
      Height = 165
      Hint = 'Foto do Produto'
      Color = 15263976
      DataField = 'FOTO'
      DataSource = DM.Dts_produtos_c
      Stretch = True
      TabOrder = 12
      TabStop = False
    end
    object DBEdit1: TDBEdit
      Left = 239
      Top = 108
      Width = 177
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM.dts_seccao2
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object DBEdit10: TDBEdit
      Left = 239
      Top = 83
      Width = 177
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'CHASSI'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object DBEdit11: TDBEdit
      Left = 239
      Top = 131
      Width = 177
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'NOME_MARCA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object DBEdit9: TDBEdit
      Left = 497
      Top = 156
      Width = 136
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object DBEdit12: TDBEdit
      Left = 497
      Top = 83
      Width = 136
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'CODORIGINAL'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object DBEdit13: TDBEdit
      Left = 497
      Top = 107
      Width = 136
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_PACOTE'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 501
    Width = 826
    Height = 31
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator: TDBNavigator
      Left = 189
      Top = 3
      Width = 144
      Height = 24
      DataSource = DM.DTS_PRODUTOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
    end
    object suiButton1: TBitBtn
      Left = 580
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Falta - F5'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
        BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
        FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
        6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
        CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
        FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
        75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875F3B875F3B875F4B975F4B975FBEAD6
        FFFFFFFBEAD6F4B975F4B975F4B975F4B975FAE0C3FFFFFFFAE0C3F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74F4BA74F6BA74F7BB75F7
        BB75F7BB75FFFFFFFFFFFFFFFFFFF7BB75F7BB75F7BB75F7BB75FFFFFFFFFFFF
        FFFFFFF4BA74F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73F7BB
        73F8BC74F8BC74F8BC74F8BC74FDEBD5FFFFFFFDEBD5F8BC74F8BC74F8BC74F8
        BC74FCE2C3FFFFFFFCE2C3F7BB73F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FABD73FABD73FABD73FABD73FABD73FABD73FABD73FABD73FABD
        73FABD73FABD73FABD73FABD73FABD73FABD73FABD73F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FBBE73FBBE73FBBE73FBBE73FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFB9FBBE73FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FDC072FDC072FD
        C072FDC072FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDC072FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC1
        71FEC171FEC171FEC171FEC171FFFFFFFFFFFFFEC171FEC171FEC171FEC171FE
        C171FEC171FFFFFFFFFFFFFEC171FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFC371FFC371FFC371FFC371FFFFFFFFFFFFFFFFFFFFC371FFC3
        71FFC371FFC371FFC371FFC371FFFFFFFFFFFFFFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFC470FFC470FFC470FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC470FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFC56FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC56FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFC7
        6EFFFFFFFFFFFFFFFFFFFFC76EFFC76EFFC76EFFC76EFFC76EFFC76EFFC76EFF
        C76EFFC76EFFC76EFFC76EFFC76EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFFFFFFFFF
        FFFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA6D
        FFCA6DFFFFFFFFFFFFFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFCA6CFFCA6CFF
        CA6CFFCA6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA6CFFCA6CFFCA6C
        FFCB6CFFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFCC6CFFCC6CFFCC6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC6CFFCC6CFFCC6CFFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCC6CFFCC6CFFCC6CFFFFFFFFFF
        FFFFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFFFFFFFFFFFFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = suiButton1Click
    end
    object suiButton3: TBitBtn
      Left = 476
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Custos - F4'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFC8D8FFA4BEFF94B3FF94B3FF94B3FF94
        B3FF94B3FF94B3FF94B3FF94B3FF94B3FF94B3FF94B3FF94B3FF94B3FF94B3FF
        94B3FF94B3FFB3C9FFF0F4FFFF00FFFF00FFFDFEFF82A7FF4D81FF4D81FF5286
        FF5286FF5286FF5286FF5286FF5286FF5286FF5286FF5286FF5286FF5286FF52
        86FF5286FF5286FF5286FF5286FF4D81FF5C8CFFDFE9FFFF00FFC3D4FF5082FF
        628DFF6087FF5F84FF5F84FF5F84FF5F84FF5F84FF5F84FF5F84FF688BFF5F84
        FF5F84FF5F84FF5F84FF5F84FF5F84FF5F84FF5F84FF6089FF5283FF7FA4FFFF
        00FFA5BFFF5073F95E7DF35E7DF35E7DF35E7DF35E7DF35E7DF35E7DF37A94F5
        EEF1FEFFFFFFC2CEFB5E7DF35E7DF35E7DF35E7DF35E7DF35E7DF35E7DF35E7D
        F35C7CF75E89FFFF00FFC4D3FF5171EA6080F9607FF85F7FF75F7FF75F7FF75F
        7FF75F7FF7C1CDFCFFFFFFFFFFFFFFFFFF7F99F95F7FF75F7FF75F7FF75F7FF7
        607FF86080F96080F95878F27491FDFF00FFFBFCFF6584F35B7DF86183FC6182
        FA6182F96182F96182F96182F9B2C3FCFFFFFFFFFFFFFBFCFF708EF96182F961
        82F96182F96182F96182FB6183FD6284FF5375F2C4D1FCFF00FFFF00FFC1CEFC
        5478F46385FF6284FC6283FA6283F96283F96283F96888F9BECCFDDAE2FE96AC
        FB6283F96283F96283F96283F96283FA6284FD6386FF597CF97793F8FF00FFFF
        00FFFF00FFFDFEFF7793F95D7FFB6587FF6586FC6586FB6586FB6586FB6586FB
        6A8AFB839EFB6787FB6586FB6586FB6586FB6586FB6586FD6587FF6688FF577A
        F8D7E0FDFF00FFFF00FFFF00FFFF00FFCED8FD597BF76789FF6788FE6787FC67
        87FB6787FB7A96FCEFF2FEFFFFFFE4EAFE6E8DFB6787FB6787FC6787FD6788FF
        6789FF5B7EFA8AA3FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF859FFB5E80
        FB698AFF688AFF6889FE6889FDB5C5FEFFFFFFFFFFFFFFFFFF9DB2FE6889FD68
        89FE688AFF698BFF698CFF5D7FFCE4EAFEFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFE0E7FE5D80FA6C8EFF6B8DFF6A8BFE6A8BFEC2CFFEFFFFFFFFFFFFFFFF
        FFA7BBFE6A8BFE6A8BFF6B8DFF6C8EFF5D80FBA0B5FDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF97AEFE6083FB6D8FFF6C8EFF6C8DFFC3D0FF
        FFFFFFFFFFFFFFFFFFA9BCFF6C8DFF6D8EFF6E8FFF6B8EFF6688FEEEF2FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9EEFF6588FD6F91FF6F
        91FF6E8FFFC3D1FFFFFFFFFFFFFFFFFFFFAABDFF6E90FF6F91FF7093FF6285FE
        AFC1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFA7BBFF6386FD7293FF7191FFC4D1FFFFFFFFFFFFFFFFFFFFABBEFF7192FF72
        94FF6E90FF7494FFF8FAFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFF4F6FF6C8EFF7092FF7394FFBECEFFFFFFFFFFFFFFFFFF
        FFA7BCFF7395FF7497FF6588FFBFCEFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB8C9FF678AFF7597FF94AEFF
        FEFEFFFFFFFFF9FAFF85A3FF7698FF6E91FF819EFFFDFEFFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF8FAFF79
        99FF7294FF7799FF91ACFFACC1FF8BA7FF7799FF789BFF698DFFD3DDFFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFC6D4FF6B8DFF7A9BFF7899FF7899FF7899FF7A9BFF6E91FF8E
        A9FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFDFEFF85A2FF7395FF7B9CFF7A9BFF7B9D
        FF7C9FFF6D90FFE2E9FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4DFFF6F92FF
        7FA1FF7EA1FF7FA2FF7094FFA2B8FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF9EB8FF7298FF7CA2FF749AFF7FA0FFEEF2FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFCFDFFB5CAFF90AFFFA3BCFFE8EEFFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = suiButton3Click
    end
    object suiButton2: TBitBtn
      Left = 685
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Cadastro - F6'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
        BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
        FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
        6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
        CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
        FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
        75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875FBBD77FEBF78FFC278FFC378FFC378
        FFC378FFC378FFC378FFC378FFC378FFC378FFC178FDBE77F9BC76F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74FBBE75FFC177FFEDD6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD6
        FFC176FABD75F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73FEBF
        75FFECD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDD6FDBF75F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FCBE74FFFFFFFFFFFFFDDEBAFABD73FABD73FFC878FFCD79FFCC
        78FFC576FABD73FABD73FDDEBAFFFFFFFFFFFFFEC074F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FFFFFFFFFFFFFBBE73FBBE73FBBE73
        FFCB77FFFFFFFFFFFFFFC976FBBE73FBBE73FBBE73FFFFFFFFFFFFFEC073FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FFFFFFFFFFFFFD
        C072FDC072FDC072FFC975FFFFFFFFFFFFFFCC76FDC072FDC072FDC072FFFFFF
        FFFFFFFEC172FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC1
        71FFFFFFFFFFFFFFCE75FFD477FFD478FFCF75FFFFFFFFFFFFFFD678FFD878FF
        D277FFCA74FFFFFFFFFFFFFFC271FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFC371FFFFFFFFFFFFFFCE74FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCC73FFFFFFFFFFFFFFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFC470FFFFFFFFFFFFFFC570FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC570FFFFFFFFFFFFFFC570FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFC56FFFFFFFFFFFFFFF
        C66FFFC56FFFC56FFFC56FFFFFFFFFFFFFFFC56FFFC56FFFC56FFFC56FFFFFFF
        FFFFFFFFC66FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFC7
        6EFFFFFFFFFFFFFFC86FFFC76EFFC76EFFC76EFFFFFFFFFFFFFFC76EFFC76EFF
        C76EFFC76EFFFFFFFFFFFFFFC86EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFC86EFFFFFFFFFFFFFFCC6FFFCD6FFFC86EFFC86EFFFFFFFFFF
        FFFFC86EFFC86EFFCB6EFFCA6EFFFFFFFFFFFFFFC96EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFFFFFFFFFFFFFE9B7FFD570FFD670
        FFD570FFD570FFD570FFD570FFD570FFD36FFFE7B7FFFFFFFFFFFFFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFEFD3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF0D3FFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFF0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0D3FFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCC6CFFCC6CFFCC6CFFCC6CFFCC
        6CFFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = suiButton2Click
    end
    object sBitBtn1: TsBitBtn
      Left = 340
      Top = 2
      Width = 133
      Height = 27
      Caption = '&Lan'#231'ar Similar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
        FBF2B9EBB885DC8262D25E52CD4D52CD4D5CD0587CD979ACE7AAEBF9EAFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFBFEFBB0E8AF5CD15A52CE5058D4565FDB5C62DE6062DE6060DC5D5AD65752
        CE5055CF539BE39AF4FCF4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFF2FBF27CDA7C52CF525ED95E61D66160D0605FCC5F5FCA5F5FCA
        5F5FCB5F60CF6060D46061DC6152CF526AD56AE7F8E7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFF7FDF770D87351CF5560D6635ECC625ECB625ECB62
        5ECB625ECB625ECB625ECB625ECB625ECB625ECC6260D36352D05760D363E7F8
        E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86DF8B51CF575FD1655ECC645E
        CC645ECC6460D96661E16762E66962E56860DE6760D5655ECC645ECC645ECC64
        5FCF6552CF596DD872F7FDF8FF00FFFF00FFFF00FFFF00FFCBF1CE51D05B5FCF
        675ECC675ECC675ECD675ECE6760DC69CFF7D3FFFFFFFFFFFFCFF7D260DA695E
        CE675ECD675ECC675ECC675ECE6751CF5AABE9B0FF00FFFF00FFFF00FFFF00FF
        6FDA7B56CA625ECD695ECD695ECF6A5ECF6A5ECF6A5ED46CFFFFFFFFFFFFFFFF
        FFFFFFFF5FD76C5ECF6A5ECF6A5ECE695ECD695ECD695ACC6758D365F2FCF3FF
        00FFFF00FFDAF6DD50CC605ECE6C5ECE6C5ECF6C5ECF6D5ECF6D5ECF6D5ED26E
        FFFFFFFFFFFFFFFFFFFFFFFF5FD9705ECF6D5ECF6D5ECF6D5ECF6C5ECE6C5ECE
        6C50C960B9EDBFFF00FFFF00FFAFEBB950C3625ECF705ECF705FDD7460E47661
        EA7860E6775FDC74FFFFFFFFFFFFFFFFFFFFFFFF61E87761EC7861E97860E175
        5FD9735ECF705ECF7054C5668CE19AFF00FFFF00FF8FE19E52C5685DD1735DD1
        735FE078CFF9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCFF8D75EDD775DD1735DD07358CB6E6ED682FF00FFFF00FF83DB96
        54C96E5DD1765DD2775ED878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDA7A5DD2775DD17659CD7363CF7BFF
        00FFFF00FF86DB9B53CA715CD37A5CD37A5CD37AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CD47B5CD37A5CD3
        7A59CF7665CE7FFF00FFFF00FF99E2AD50C8715CD57D5CD47D5CD37DCEF2D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEF2D8
        5CD47D5CD47D5CD57D55CE767AD693FF00FFFF00FFC0EECE4DC9735CD7815BD6
        815BD6815BD5815BD5815BD5815BD581FFFFFFFFFFFFFFFFFFFFFFFF5BD5815B
        D5815BD5815BD5815BD6815BD6815CD7814ECA74A1E3B5FF00FFFF00FFF2FCF5
        51CC795BD8835CD8845BD6835BD6835BD6835BD6835BD683FFFFFFFFFFFFFFFF
        FFFFFFFF5BD6835BD6835BD6835BD6835BD7845CD8845CD9854DCB76D7F4E1FF
        00FFFF00FFFF00FF92E0AD4DCD7A5CDA885CD8875BD7865BD6865BD6865BD686
        FFFFFFFFFFFFFFFFFFFFFFFF5BD6865BD6865BD7865BD8875CD9875CDA8852D1
        7E71D794FF00FFFF00FFFF00FFFF00FFECFAF155D28354D5835BDA8A5BD98A5B
        D8895BD8895BD789CDF3DBFFFFFFFFFFFFCDF3DB5BD7895BD8895BD88A5BDA8A
        5BDC8B59DA894DD07DD5F4E1FF00FFFF00FFFF00FFFF00FFFF00FFC8F1D84DD1
        8157DA8A5BDC8E5BDA8D5BD98D5BD88C5BD88C5BD88C5BD88C5BD88C5BD88C5B
        D98D5BDA8D5BDD8E5BDF8F4DD281A7E9C1FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB1EDC94FD58653D8895BDF915BDC8F5BDB8F5BDA8F5BDA8F5BDA
        8F5BDB8F5BDB8F5BDD905BDF9157DD8E4DD48491E5B4FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCF4DD59DA904CD68659E0925BE194
        5BE0945BDF935BE0945BE0945BE2945BE3944DD78850D88AB1EECBFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4FDF89E
        EABF57DB904CD8894CD7884DD88A4FDA8C4CD7884CD88950DA8C8FE7B6EAFAF1
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFBFEFCCFF5E0B7F1D19AEBBE94EABBB7F1D1C8F4DCF2
        FCF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = sBitBtn1Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 430
    Width = 826
    Height = 71
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 4
    object suiDBGrid1: TDBAdvGrid
      Left = 4
      Top = 4
      Width = 818
      Height = 63
      Cursor = crDefault
      Hint = 'Mostra os Produtos Similares'
      Align = alClient
      BorderStyle = bsNone
      ColCount = 6
      DrawingStyle = gdsClassic
      FixedColor = 15717318
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      ActiveRowShow = True
      ActiveRowColor = clWhite
      GridFixedLineColor = clNone
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clDefault
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientFrom = clMenuBar
      ControlLook.FixedGradientTo = clMenuBar
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.ControlStyle = csWinXP
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      Grouping.HeaderColor = cl3DLight
      Grouping.SummaryColor = clScrollBar
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clMenuBar
      SearchFooter.ColorTo = clNone
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SelectionColor = 13782835
      SelectionTextColor = clWhite
      SortSettings.DefaultFormat = ssAutomatic
      Version = '2.4.0.2'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SEQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Seq'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 20
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SEQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Seq'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 64
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SIMILAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'C'#243'd Barras Prod'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 94
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_BARRAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Cod. Prod. Similar'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 107
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'C'#243'd. F'#225'b/Ref.'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 110
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Descri'#231#227'o do Produto Similar / Compat'#237'vel'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 350
        end>
      DataSource = DM.dts_similares1
      InvalidPicture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000777777777777000000000000000000777788FFFF887777
        000000000000007778F8887117788F877700000000000778F87111111111178F
        877000000000778871111111111999178877000000077F811111111111199999
        18F7700000778811111111111119999991887700007881111111111111119199
        99188700077F711111811111111198719997F7700788111118FF111111118FF7
        1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
        911918777881111118888FF1188888811111188778811111118888FF88888811
        111117877F7111111118888888888111111117F77F7999111111888888881111
        111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
        111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
        11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
        71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
        1117F77000788879978799999999787111188700007788879999999999999999
        1188770000077F88799999999999999778F77000000077888879999999999778
        8877000000000778F88877799777788F877000000000007778F8888878888F87
        7700000000000000777788FFFF88777700000000000000000077777777777700
        00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
        C000000380000001800000010000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000080000001
        80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
        FFC003FF}
      ShowUnicode = False
      ColWidths = (
        20
        64
        94
        107
        110
        350)
    end
  end
end
