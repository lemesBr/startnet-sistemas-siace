object FormFornecedores: TFormFornecedores
  Left = 379
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Fornecedores / Produtores'
  ClientHeight = 391
  ClientWidth = 782
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 339
    Width = 782
    Height = 52
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object DBNavigator: TsDBNavigator
      Left = 9
      Top = 6
      Width = 80
      Height = 30
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 0
      TabStop = True
      DataSource = DM.DTS_Fornecedores
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Novo Rgistro'
        'Excluir Registro'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
    end
    object btnNovo: TAdvGlowButton
      Left = 105
      Top = 7
      Width = 82
      Height = 32
      Caption = 'F3 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 1
      OnClick = btnNovoClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnEditar: TAdvGlowButton
      Left = 210
      Top = 7
      Width = 100
      Height = 32
      Caption = 'F4 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 2
      OnClick = btnEditarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnCancelar: TAdvGlowButton
      Left = 316
      Top = 7
      Width = 117
      Height = 32
      Caption = 'F5 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 3
      OnClick = btnCancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnexcluir: TAdvGlowButton
      Left = 438
      Top = 7
      Width = 100
      Height = 32
      Caption = 'F6 | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 4
      OnClick = btnExcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnSalvar: TAdvGlowButton
      Left = 538
      Top = 7
      Width = 122
      Height = 32
      Caption = 'F10 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 10
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 5
      OnClick = btnSalvarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnLocalizar: TAdvGlowButton
      Left = 658
      Top = 7
      Width = 119
      Height = 32
      Caption = 'F7 | Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 6
      OnClick = btnLocalizarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 339
    Align = alClient
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 46
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 486
      Top = 5
      Width = 91
      Height = 13
      Caption = 'Cadastrado em:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 575
      Top = 5
      Width = 87
      Height = 17
      Alignment = taCenter
      Color = 15263976
      DataField = 'DATACADASTRO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 5
      Top = 30
      Width = 39
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 5
      Top = 85
      Width = 38
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 266
      Top = 85
      Width = 19
      Height = 13
      Caption = 'IE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 5
      Top = 110
      Width = 61
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 5
      Top = 135
      Width = 40
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 5
      Top = 160
      Width = 46
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 342
      Top = 160
      Width = 46
      Height = 13
      Caption = 'Estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 306
      Top = 135
      Width = 31
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 5
      Top = 185
      Width = 57
      Height = 13
      Caption = 'Telefone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 264
      Top = 185
      Width = 27
      Height = 13
      Caption = 'Fax:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 5
      Top = 210
      Width = 41
      Height = 13
      Caption = 'E-mail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel22: TRxLabel
      Left = 5
      Top = 313
      Width = 81
      Height = 13
      Caption = 'Observa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 5
      Top = 235
      Width = 72
      Height = 13
      Caption = 'Home-Page:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 5
      Top = 262
      Width = 71
      Height = 13
      Caption = 'Prod. Rural:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 141
      Top = 262
      Width = 87
      Height = 13
      Caption = 'Insc. Produtor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel24: TRxLabel
      Left = 389
      Top = 263
      Width = 73
      Height = 13
      Caption = 'Linha/Zona:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel25: TRxLabel
      Left = 5
      Top = 284
      Width = 68
      Height = 13
      Caption = 'Valor Leite:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel26: TRxLabel
      Left = 5
      Top = 57
      Width = 55
      Height = 13
      Caption = 'Fantasia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel27: TRxLabel
      Left = 189
      Top = 284
      Width = 58
      Height = 13
      Caption = 'Cod Ibge:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel23: TRxLabel
      Left = 407
      Top = 114
      Width = 21
      Height = 13
      Caption = 'N'#186':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel28: TRxLabel
      Left = 249
      Top = 213
      Width = 41
      Height = 13
      Caption = 'Compl:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbt_codigo: TDBEdit
      Left = 85
      Top = 5
      Width = 85
      Height = 20
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DM.DTS_Fornecedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object GroupBox1: TGroupBox
      Left = 506
      Top = 24
      Width = 258
      Height = 204
      Caption = 'Representante'
      TabOrder = 22
      object RxLabel16: TRxLabel
        Left = 5
        Top = 14
        Width = 39
        Height = 13
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel18: TRxLabel
        Left = 5
        Top = 53
        Width = 37
        Height = 13
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel19: TRxLabel
        Left = 5
        Top = 92
        Width = 61
        Height = 13
        Caption = 'Fone/Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel20: TRxLabel
        Left = 131
        Top = 92
        Width = 46
        Height = 13
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel21: TRxLabel
        Left = 5
        Top = 134
        Width = 117
        Height = 13
        Caption = 'Outras Informa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 5
        Top = 148
        Width = 247
        Height = 52
        Color = 15263976
        Ctl3D = True
        DataField = 'REPRESOBSERVACOES'
        DataSource = DM.DTS_Fornecedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnEnter = DBMemo1Enter
        OnExit = DBMemo1Exit
      end
      object suiDBEdit11: TDBEdit
        Left = 5
        Top = 28
        Width = 246
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'REPRESNOME'
        DataSource = DM.DTS_Fornecedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = suiDBEdit11Enter
        OnExit = suiDBEdit11Exit
      end
      object suiDBEdit13: TDBEdit
        Left = 5
        Top = 67
        Width = 247
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'REPRESEMAIL'
        DataSource = DM.DTS_Fornecedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = suiDBEdit13Enter
        OnExit = suiDBEdit13Exit
      end
      object suiDBEdit14: TDBEdit
        Left = 5
        Top = 107
        Width = 115
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'REPRESFONEFAX'
        DataSource = DM.DTS_Fornecedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = suiDBEdit14Enter
        OnExit = suiDBEdit14Exit
      end
      object suiDBEdit15: TDBEdit
        Left = 131
        Top = 107
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'REPRESCELULAR'
        DataSource = DM.DTS_Fornecedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = suiDBEdit15Enter
        OnExit = suiDBEdit15Exit
      end
    end
    object DBMemo2: TDBMemo
      Left = 85
      Top = 305
      Width = 676
      Height = 28
      Color = 15263976
      Ctl3D = True
      DataField = 'OBSERVACOES'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
      OnEnter = DBMemo1Enter
      OnExit = DBMemo1Exit
    end
    object db_nome: TDBEdit
      Left = 85
      Top = 30
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NOME'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = db_nomeEnter
      OnExit = db_nomeExit
    end
    object suiDBEdit3: TDBEdit
      Left = 292
      Top = 85
      Width = 182
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'IE'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = suiDBEdit3Enter
      OnExit = suiDBEdit3Exit
    end
    object suiDBEdit2: TDBEdit
      Left = 85
      Top = 85
      Width = 165
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CNPJ'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = suiDBEdit2Enter
      OnExit = suiDBEdit2Exit
      OnKeyPress = suiDBEdit2KeyPress
    end
    object suiDBEdit4: TDBEdit
      Left = 85
      Top = 110
      Width = 316
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ENDERECO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = suiDBEdit4Enter
      OnExit = suiDBEdit4Exit
    end
    object suiDBEdit6: TDBEdit
      Left = 85
      Top = 135
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'BAIRRO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnEnter = suiDBEdit6Enter
      OnExit = suiDBEdit6Exit
    end
    object suiDBEdit7: TDBEdit
      Left = 343
      Top = 135
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CEP'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnEnter = suiDBEdit7Enter
      OnExit = suiDBEdit7Exit
    end
    object suiDBEdit8: TDBEdit
      Left = 85
      Top = 160
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CIDADE'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnEnter = suiDBEdit8Enter
      OnExit = suiDBEdit8Exit
    end
    object suiDBEdit9: TDBEdit
      Left = 85
      Top = 185
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'TELEFONE'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnEnter = suiDBEdit9Enter
      OnExit = suiDBEdit9Exit
    end
    object suiDBEdit10: TDBEdit
      Left = 294
      Top = 185
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'FAX'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnEnter = suiDBEdit10Enter
      OnExit = suiDBEdit10Exit
    end
    object suiDBEdit12: TDBEdit
      Left = 85
      Top = 210
      Width = 159
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'EMAIL'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnEnter = suiDBEdit12Enter
      OnExit = suiDBEdit12Exit
    end
    object suiDBEdit1: TDBEdit
      Left = 85
      Top = 235
      Width = 389
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'HOMEPAGE'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnEnter = suiDBEdit1Enter
      OnExit = suiDBEdit1Exit
    end
    object suiDBComboBox5: TDBComboBox
      Left = 391
      Top = 160
      Width = 83
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTADO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'FN'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentFont = False
      TabOrder = 10
      OnEnter = suiDBComboBox5Enter
      OnExit = suiDBComboBox5Exit
    end
    object DBComboBox1: TDBComboBox
      Left = 85
      Top = 259
      Width = 50
      Height = 21
      Style = csDropDownList
      DataField = 'PRODUTOR_RURAL'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        ''
        'S'
        'N')
      ParentColor = True
      ParentFont = False
      TabOrder = 16
      OnChange = DBComboBox1Change
      OnExit = DBComboBox1Exit
    end
    object DBEdit1: TDBEdit
      Left = 229
      Top = 260
      Width = 137
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'INSC_PRODUTOR'
      DataSource = DM.DTS_Fornecedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnEnter = suiDBEdit1Enter
      OnExit = suiDBEdit1Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 473
      Top = 259
      Width = 290
      Height = 21
      DataField = 'COD_LINHA'
      DataSource = DM.DTS_Fornecedores
      KeyField = 'COD_ZONA'
      ListField = 'DESCRICAO'
      ListSource = DM.DTS_ZONAS
      ParentColor = True
      TabOrder = 18
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit2: TDBEdit
      Left = 85
      Top = 282
      Width = 85
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'VALOR_LEITE'
      DataSource = DM.DTS_Fornecedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnEnter = suiDBEdit1Enter
      OnExit = suiDBEdit1Exit
    end
    object DBEdit3: TDBEdit
      Left = 85
      Top = 57
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'FANTASIA'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = db_nomeEnter
      OnExit = db_nomeExit
    end
    object DBEdit4: TDBEdit
      Left = 269
      Top = 281
      Width = 85
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'codigo_ibge'
      DataSource = DM.DTS_Fornecedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnEnter = suiDBEdit1Enter
      OnExit = suiDBEdit1Exit
    end
    object DBComboBox2: TsDBRadioGroup
      Left = 402
      Top = 17
      Width = 71
      Height = 64
      Hint = 'Selecione Ativo ou Inativo'
      BiDiMode = bdRightToLeft
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13583874
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnExit = DBComboBox2Exit
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      DataField = 'TP'
      DataSource = DM.DTS_Fornecedores
      Values.Strings = (
        'F'
        'J')
    end
    object DBEdit5: TDBEdit
      Left = 432
      Top = 111
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NUMERO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = suiDBEdit7Enter
      OnExit = suiDBEdit7Exit
    end
    object DBEdit6: TDBEdit
      Left = 295
      Top = 211
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'COMPLEMENTO'
      DataSource = DM.DTS_Fornecedores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnEnter = suiDBEdit10Enter
      OnExit = suiDBEdit10Exit
    end
  end
  object MsgErro: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 426
    Top = 4
  end
  object MsgAtencao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiWarning
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 462
    Top = 3
  end
  object MsgConfirmacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Exclus'#227'o?'
    Left = 490
    Top = 3
  end
  object MsgInformacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = FromThemeFile
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 518
    Top = 3
  end
end
