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
      Left = 616
      Top = 1
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 1
      Visible = False
    end
    object BitBtn1: TAdvGlowButton
      Left = 441
      Top = 17
      Width = 75
      Height = 31
      Caption = '&Buscar'
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = BitBtn1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
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
          Width = 64
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
          Width = 64
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
          Width = 64
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
          Width = 64
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
          Width = 64
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
      Width = 65
      Height = 13
      Caption = 'Adicionais:'
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
    object suiButton1: TAdvGlowButton
      Left = 580
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Falta - F5'
      ImageIndex = 18
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = suiButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object suiButton3: TAdvGlowButton
      Left = 476
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Custos - F4'
      ImageIndex = 29
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = suiButton3Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object suiButton2: TAdvGlowButton
      Left = 685
      Top = 2
      Width = 100
      Height = 27
      Caption = 'Cadastro - F6'
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = suiButton2Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object sBitBtn1: TAdvGlowButton
      Left = 340
      Top = 2
      Width = 133
      Height = 27
      Caption = '&Lan'#231'ar Similar'
      ImageIndex = 27
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = sBitBtn1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
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
      Color = clWhite
      ColCount = 6
      DrawingStyle = gdsClassic
      FixedColor = 15717318
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goVertLine, goHorzLine, goRangeSelect, goFixedRowDefAlign]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      ActiveRowShow = True
      ActiveRowColor = clWhite
      GridLineColor = 15987699
      GridFixedLineColor = 15987699
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
      FixedFont.Color = clBlack
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
      SearchFooter.ColorTo = clWhite
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
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = 13782835
      SortSettings.DefaultFormat = ssAutomatic
      Version = '2.4.6.3'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
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
          ButtonHeight = 18
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
          ButtonHeight = 18
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
          ButtonHeight = 18
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
          ButtonHeight = 18
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
          ButtonHeight = 18
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
