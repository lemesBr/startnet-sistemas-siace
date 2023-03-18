object FormConsProdutos: TFormConsProdutos
  Left = 131
  Top = 54
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Produto  Cadastrado'
  ClientHeight = 513
  ClientWidth = 910
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 427
    Width = 3
    Height = 13
  end
  object lUltimaLeitura: TLabel
    Left = 624
    Top = 41
    Width = 139
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 184
      Top = 34
      Width = 158
      Height = 13
      Caption = 'Entre Com a Descri'#231'ao  - F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 5
      Top = 34
      Width = 137
      Height = 13
      Caption = ' Op'#231#227'o de Pesquisa - F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel9: TRxLabel
      Left = 489
      Top = 53
      Width = 92
      Height = 13
      Caption = 'Pre'#231'o de Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 726
      Top = 41
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'PRECO_VENDA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 491
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText2: TDBText
      Left = 726
      Top = 6
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 5
      Top = 5
      Width = 126
      Height = 13
      Caption = 'Sele'#231#227'o dos produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 186
      Top = 53
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object cbxpesquisa: TComboBox
      Left = 5
      Top = 49
      Width = 170
      Height = 21
      TabOrder = 1
      Text = 'Pesquisa qualquer parte da descric'#227'o'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Pesquisa inicio da descri'#231#227'o produto'
        'Pesquisa qualquer parte da descric'#227'o'
        'Pesquisa Por Codigo Barras'
        'Pesquisa Por Referencia'
        'Pesquisa Por C'#243'digo'
        'Pesquisa Por NCM'
        'Por C'#243'd. Original'
        'Por Cod. Pacote'
        'Todos Campos')
    end
    object Edit2: TEdit
      Left = 776
      Top = 52
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 2
      Visible = False
    end
    object suiButton2: TAdvGlowButton
      Left = 617
      Top = 2
      Width = 72
      Height = 24
      Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      Visible = False
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
    object CheckBox1: TCheckBox
      Left = 149
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 230
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Inativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 317
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 386
      Top = 5
      Width = 207
      Height = 17
      Caption = 'Por qualquer parte da descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 910
    Height = 164
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 902
      Height = 156
      Align = alClient
      DataSource = DM.DTS_PRODUTOS
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      ListBorder = lbMild
      MarkerStyle = msDefault
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
          Title.Caption = 'Cod. Prod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 57
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
          Width = 91
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
          Width = 106
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
          Width = 277
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
          Width = 32
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
          Width = 42
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_FRACAO'
          Title.Caption = 'Est. F.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 41
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'P'#231' Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 70
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Caption = 'P'#231' Venda2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 79
        end
        item
          Expanded = False
          FieldName = 'PRECO_ANT'
          Title.Caption = 'Pre'#231'o Anterior'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 96
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          CheckBox = True
          CheckBoxStyle = cbLoweredGray
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
          Width = 37
        end
        item
          Expanded = False
          FieldName = 'NCM_SH'
          Title.Caption = 'C'#243'digo NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 90
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Caption = 'Chassi Veiculo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 231
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
          Width = 158
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
    object GroupBox1: TGroupBox
      Left = 216
      Top = 32
      Width = 473
      Height = 105
      Caption = 'Altera'#231#227'o do Grupo de Tributa'#231#227'o'
      TabOrder = 1
      Visible = False
      object RxLabel13: TRxLabel
        Left = 8
        Top = 23
        Width = 57
        Height = 13
        Caption = 'Tributa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object D_grupo_t: TEdit
        Left = 112
        Top = 36
        Width = 345
        Height = 21
        Color = clBtnFace
        TabOrder = 0
      end
      object Grupo_Trib: TfrxComboEdit
        Left = 8
        Top = 36
        Width = 97
        Height = 21
        Style = csSimple
        TabOrder = 1
        OnExit = Grupo_TribExit
        Glyph.Data = {
          96000000424D960000000000000076000000280000000F000000040000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFF0F00FFF00FFF00FF0F00FFF00FFF00FF0FFFFFFFFFFFFFFF0}
        OnButtonClick = Grupo_TribButtonClick
      end
      object suiButton5: TAdvGlowButton
        Left = 97
        Top = 72
        Width = 120
        Height = 27
        Caption = '&Confirma'
        ImageIndex = 4
        Images = FormPrincipal.sAlphaImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = suiButton5Click
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
      object suiButton6: TAdvGlowButton
        Left = 249
        Top = 72
        Width = 120
        Height = 27
        Caption = '&Sair'
        ImageIndex = 8
        Images = FormPrincipal.sAlphaImageList3
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = suiButton6Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 245
    Width = 910
    Height = 152
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object RxLabel27: TRxLabel
      Left = 188
      Top = 64
      Width = 82
      Height = 13
      Caption = 'Inf. Adicional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel38: TRxLabel
      Left = 188
      Top = 88
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
    object RxLabel3: TRxLabel
      Left = 188
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
      Left = 3
      Top = 10
      Width = 97
      Height = 13
      Caption = 'Garantia/Meses:'
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
      Left = 3
      Top = 38
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
      Left = 3
      Top = 66
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
      Left = 3
      Top = 93
      Width = 101
      Height = 13
      Caption = 'Qtde Fracionada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 188
      Top = 10
      Width = 89
      Height = 13
      Caption = 'Principio Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 188
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
    object RxLabel10: TRxLabel
      Left = 188
      Top = 130
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
    object RxLabel7: TRxLabel
      Left = 3
      Top = 125
      Width = 46
      Height = 13
      Caption = 'Frac'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 518
      Top = 132
      Width = 75
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 482
      Top = 86
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
    object RxLabel16: TRxLabel
      Left = 483
      Top = 109
      Width = 73
      Height = 13
      Caption = 'Cod Pacote:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 279
      Top = 57
      Width = 448
      Height = 22
      DataField = 'APLICACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 279
      Top = 82
      Width = 194
      Height = 23
      DataField = 'CHASSI'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit11: TDBEdit
      Left = 107
      Top = 9
      Width = 77
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 37
      Width = 77
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 65
      Width = 77
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 92
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_FRACIONADA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 279
      Top = 6
      Width = 448
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 356
      Top = 31
      Width = 371
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 279
      Top = 32
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit8: TDBEdit
      Left = 279
      Top = 128
      Width = 122
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit6: TDBEdit
      Left = 107
      Top = 124
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit1: TDBEdit
      Left = 279
      Top = 106
      Width = 194
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM.DTS_SECCAO1
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DBEdit7: TDBEdit
      Left = 605
      Top = 128
      Width = 122
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'LOCALIZACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBImage1: TDBImage
      Left = 729
      Top = 6
      Width = 175
      Height = 141
      DataField = 'FOTO'
      DataSource = DM.DTS_PRODUTOS
      TabOrder = 13
    end
    object DBMemo5: TDBMemo
      Left = 560
      Top = 81
      Width = 167
      Height = 23
      DataField = 'CODORIGINAL'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBMemo6: TDBMemo
      Left = 560
      Top = 105
      Width = 167
      Height = 23
      DataField = 'COD_PACOTE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 472
    Width = 910
    Height = 41
    Align = alBottom
    TabOrder = 3
    object RxLabel8: TRxLabel
      Left = 435
      Top = 13
      Width = 98
      Height = 13
      Caption = 'Estoque Vendido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiButton1: TAdvGlowButton
      Left = 652
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Cadastro - F4'
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object DBNavigator: TsDBNavigator
      Left = 3
      Top = 8
      Width = 86
      Height = 27
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      DataSource = DM.DTS_PRODUTOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
    end
    object suiButton3: TAdvGlowButton
      Left = 780
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Custos - F5'
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
    object suiDBEdit1: TDBEdit
      Left = 536
      Top = 8
      Width = 109
      Height = 28
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object suiButton4: TAdvGlowButton
      Left = 92
      Top = 8
      Width = 173
      Height = 27
      Caption = '&Alterar Grupo Tributa'#231#227'o'
      ImageIndex = 25
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = suiButton4Click
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
      Left = 268
      Top = 8
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
      TabOrder = 5
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
    Top = 397
    Width = 910
    Height = 75
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 4
    object suiDBGrid1: TDBAdvGrid
      Left = 4
      Top = 4
      Width = 902
      Height = 67
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
      GridLineColor = 15987699
      GridFixedLineColor = 15987699
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
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
          FieldName = 'CODIGO_BARRAS'
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
          FieldName = 'CODIGO_SIMILAR'
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
          Color = 14609391
          FieldName = 'REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
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
          Width = 486
        end>
      DataSource = DM.dts_similares2
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
        486)
    end
  end
  object ACBrLCB4: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB4LeCodigo
    Left = 710
    Top = 1
  end
end
