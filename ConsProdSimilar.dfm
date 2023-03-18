object FormConsProdutos1: TFormConsProdutos1
  Left = 435
  Top = 143
  Caption = 'Consulta Produtos'
  ClientHeight = 493
  ClientWidth = 800
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel9: TRxLabel
    Left = 8
    Top = 22
    Width = 134
    Height = 13
    Caption = 'Op'#231#227'o de Pesquisa - F3:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object RxLabel10: TRxLabel
    Left = 598
    Top = 4
    Width = 92
    Height = 13
    Caption = 'Pre'#231'o de Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object RxLabel1: TRxLabel
    Left = 186
    Top = 22
    Width = 70
    Height = 13
    Caption = 'Consulta F2:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clWindow
  end
  object lUltimaLeitura: TLabel
    Left = 619
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
  object DBText1: TDBText
    Left = 598
    Top = 21
    Width = 195
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
  object Panel3: TPanel
    Left = 0
    Top = 445
    Width = 800
    Height = 48
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 296
      Top = 72
      Width = 376
      Height = 41
      Caption = 'SIACE - Consulta Produtos '
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object myLabel3d2: TsLabelFX
      Left = 211
      Top = 6
      Width = 360
      Height = 41
      Caption = 'SIACE-Consulta Produtos '
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object suiDBNavigator1: TsDBNavigator
      Left = 8
      Top = 8
      Width = 184
      Height = 30
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 0
      TabStop = True
      DataSource = DM.Dts_produtos_c
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object suiButton1: TAdvGlowButton
      Left = 575
      Top = 8
      Width = 92
      Height = 30
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
      Left = 677
      Top = 8
      Width = 92
      Height = 29
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
  end
  object cbxpesquisa: TComboBox
    Left = 7
    Top = 37
    Width = 170
    Height = 21
    ItemIndex = 1
    TabOrder = 1
    Text = 'Pesquisa qualquer parte da descric'#227'o'
    OnChange = cbxpesquisaChange
    Items.Strings = (
      'Pesquisa inicio da descri'#231#227'o produto'
      'Pesquisa qualquer parte da descric'#227'o'
      'Pesquisa Por Codigo Barras'
      'Pesquisa Por Referencia'
      'Pesquisa Por C'#243'digo')
  end
  object XDBGrid1: TDBGrid
    Left = 2
    Top = 64
    Width = 793
    Height = 201
    Color = clWhite
    DataSource = DM.DTS_PRODUTOS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = XDBGrid1DrawColumnCell
    OnDblClick = XDBGrid1DblClick
    OnKeyPress = XDBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BARRAS'
        Title.Caption = 'C'#243'd. Barras'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'Referencia'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_UNIDADE'
        Title.Caption = 'Und.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'Pre'#231'o Venda'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA2'
        Title.Caption = 'Pre'#231'o (2)'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM_SH'
        Title.Caption = 'C'#243'd NCM'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = 'Ativo'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 664
    Top = 12
    Width = 121
    Height = 21
    Color = cl3DLight
    TabOrder = 3
    Visible = False
  end
  object Edit1: TEdit
    Left = 183
    Top = 36
    Width = 408
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = Edit1Change
    OnExit = Edit1Exit
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object suiButton2: TAdvGlowButton
    Left = 689
    Top = -6
    Width = 29
    Height = 24
    Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 5
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 261
    Width = 791
    Height = 183
    Enabled = False
    TabOrder = 6
    object RxLabel11: TRxLabel
      Left = 336
      Top = 10
      Width = 34
      Height = 13
      Caption = 'D.M.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 10
      Width = 50
      Height = 13
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel19: TRxLabel
      Left = 167
      Top = 10
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
    object RxLabel12: TRxLabel
      Left = 415
      Top = 149
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
    object RxLabel28: TRxLabel
      Left = 5
      Top = 149
      Width = 97
      Height = 13
      Caption = 'Garantia/Meses:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 212
      Top = 100
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
    object RxLabel5: TRxLabel
      Left = 5
      Top = 100
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
    object RxLabel6: TRxLabel
      Left = 212
      Top = 76
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
    object RxLabel36: TRxLabel
      Left = 4
      Top = 124
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
    object RxLabel7: TRxLabel
      Left = 212
      Top = 124
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
    object RxLabel37: TRxLabel
      Left = 4
      Top = 76
      Width = 96
      Height = 13
      Caption = 'Estoque Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 212
      Top = 149
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
    object RxLabel3: TRxLabel
      Left = 516
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 418
      Top = 127
      Width = 3
      Height = 13
    end
    object suiDBEdit1: TDBEdit
      Left = 5
      Top = 24
      Width = 150
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object suiDBEdit15: TDBEdit
      Left = 167
      Top = 24
      Width = 150
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit6: TDBEdit
      Left = 329
      Top = 24
      Width = 176
      Height = 32
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'DESCONTO_MAXIMO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object suiDBEdit11: TDBEdit
      Left = 107
      Top = 147
      Width = 91
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
      TabOrder = 3
    end
    object DBMemo3: TDBMemo
      Left = 302
      Top = 96
      Width = 443
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 96
      Width = 91
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
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 302
      Top = 71
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
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 400
      Top = 71
      Width = 355
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
    object DBEdit4: TDBEdit
      Left = 107
      Top = 123
      Width = 91
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
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 303
      Top = 123
      Width = 91
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
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 473
      Top = 147
      Width = 136
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
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 107
      Top = 71
      Width = 91
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'ESTOQUE_FRACAO'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit6: TDBEdit
      Left = 303
      Top = 147
      Width = 91
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DATA_FABRICACAO'
      DataSource = DM.DTS_PRODUTOS
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
    object suiDBEdit2: TDBEdit
      Left = 514
      Top = 23
      Width = 239
      Height = 32
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object CheckBox1: TCheckBox
    Left = 5
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Ativos'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 70
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Inativos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object CheckBox3: TCheckBox
    Left = 141
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object CheckBox4: TCheckBox
    Left = 205
    Top = 4
    Width = 218
    Height = 17
    Caption = '&Descric'#227'o com N'#250'meros e Letras?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object ACBrLCB2: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB2LeCodigo
    Left = 726
    Top = 65523
  end
end
