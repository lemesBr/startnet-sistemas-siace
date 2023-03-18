object FormClientes: TFormClientes
  Left = 358
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes  / Funcion'#225'rios'
  ClientHeight = 549
  ClientWidth = 994
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = CE
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 498
    Width = 994
    Height = 51
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    ParentBackground = False
    TabOrder = 0
    object dbfirst: TDBAdvGlowButton
      Left = 13
      Top = 8
      Width = 44
      Height = 32
      Hint = 'Primeiro Registro'
      ImageIndex = 31
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
      TabOrder = 0
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_CLI
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object dbprior: TDBAdvGlowButton
      Left = 59
      Top = 8
      Width = 44
      Height = 32
      Hint = 'Registro Anterior'
      ImageIndex = 21
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
      TabOrder = 1
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_CLI
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object dbnext: TDBAdvGlowButton
      Left = 105
      Top = 8
      Width = 44
      Height = 32
      Hint = 'Proximo Registro'
      ImageIndex = 33
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
      TabOrder = 2
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_CLI
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object dblast: TDBAdvGlowButton
      Left = 151
      Top = 8
      Width = 44
      Height = 32
      Hint = 'Ultimo Registro'
      ImageIndex = 34
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Transparent = True
      TabOrder = 3
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = DM.DTS_CLI
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object btnNovo: TAdvGlowButton
      Left = 201
      Top = 7
      Width = 100
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
      TabOrder = 4
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
      Left = 330
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
      TabOrder = 5
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
      Left = 452
      Top = 7
      Width = 117
      Height = 32
      Caption = 'F5 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 12
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
      Left = 582
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
      TabOrder = 7
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
      Left = 703
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
      TabOrder = 8
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
      Left = 831
      Top = 6
      Width = 130
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
      TabOrder = 9
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
  object pc: TRzPageControl
    Left = 0
    Top = 37
    Width = 994
    Height = 461
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    Color = 16119543
    FlatColor = 10263441
    ParentColor = False
    TabColors.HighlightBar = 1350640
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsDoubleSlant
    OnChange = pcChange
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = 16119543
      ImageIndex = 26
      Caption = 'Informa'#231#245'es Cadastrais'
      object pnldados: TPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 260
        Align = alClient
        BevelOuter = bvNone
        Color = 15263976
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 990
          Height = 289
          Align = alTop
          BevelInner = bvRaised
          Color = 15263976
          TabOrder = 0
          object RxLabel21: TRxLabel
            Left = 3
            Top = 136
            Width = 61
            Height = 13
            Caption = 'Estado Civil:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel20: TRxLabel
            Left = 3
            Top = 161
            Width = 61
            Height = 13
            Caption = 'Nascimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel2: TRxLabel
            Left = 3
            Top = 33
            Width = 41
            Height = 13
            Caption = 'Apelido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel19: TRxLabel
            Left = 291
            Top = 160
            Width = 30
            Height = 13
            Caption = 'Sexo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel17: TRxLabel
            Left = 476
            Top = 161
            Width = 34
            Height = 13
            Caption = 'E-mail:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel16: TRxLabel
            Left = 476
            Top = 136
            Width = 39
            Height = 13
            Caption = 'Celular:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel15: TRxLabel
            Left = 657
            Top = 109
            Width = 24
            Height = 13
            Caption = 'Fax:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel14: TRxLabel
            Left = 476
            Top = 109
            Width = 48
            Height = 13
            Caption = 'Telefone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel12: TRxLabel
            Left = 476
            Top = 33
            Width = 25
            Height = 13
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel10: TRxLabel
            Left = 617
            Top = 33
            Width = 19
            Height = 13
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel6: TRxLabel
            Left = 3
            Top = 85
            Width = 28
            Height = 13
            Caption = 'R.G.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel9: TRxLabel
            Left = 476
            Top = 8
            Width = 39
            Height = 13
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel8: TRxLabel
            Left = 476
            Top = 85
            Width = 34
            Height = 13
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel7: TRxLabel
            Left = 476
            Top = 58
            Width = 51
            Height = 13
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel5: TRxLabel
            Left = 3
            Top = 58
            Width = 25
            Height = 13
            Caption = 'CPF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel4: TRxLabel
            Left = 3
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel32: TRxLabel
            Left = 3
            Top = 109
            Width = 62
            Height = 13
            Caption = 'Org. Emisor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel46: TRxLabel
            Left = 476
            Top = 186
            Width = 41
            Height = 13
            Caption = 'Natural:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel48: TRxLabel
            Left = 760
            Top = 186
            Width = 19
            Height = 13
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel49: TRxLabel
            Left = 275
            Top = 114
            Width = 58
            Height = 13
            Caption = 'Dt Emiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel51: TRxLabel
            Left = 3
            Top = 186
            Width = 62
            Height = 13
            Caption = 'Rota Venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel57: TRxLabel
            Left = 3
            Top = 210
            Width = 54
            Height = 13
            Caption = 'Ponto Ref:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel68: TRxLabel
            Left = 657
            Top = 136
            Width = 51
            Height = 13
            Caption = 'Cx Postal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel75: TRxLabel
            Left = 769
            Top = 58
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
          object RxLabel82: TRxLabel
            Left = 692
            Top = 33
            Width = 50
            Height = 13
            Caption = 'Cod Ibge:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object RxLabel18: TRxLabel
            Left = 298
            Top = 234
            Width = 51
            Height = 13
            Caption = 'Conv'#234'nio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object ADvReflectionImage1: TAdvReflectionImage
            Left = 853
            Top = 8
            Width = 128
            Height = 228
            AutoSize = True
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61
              CB000000097048597300000B1300000B1301009A9C18000000206348524D0000
              7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
              C54600003F5B4944415478DAECBD79BC2555752FFE5D7B57D599EEB9B76FCF73
              33743374378D20088860840643C41114654A889AA7622451DF27CF24CFF0F2F2
              5EE290F888B6D1C4188D49FC8998382462A435EA93194599679A86A6E7E14E67
              A8AABDD6EF8FBDAB6AD739E7763748E3E585C2F2DE5BF7DCD3756A7DD7DA6BF8
              AEB54944F0E2F1DC1C6F39E3842522B24244E68BF04266992522BBC498A745E4
              2916D9F4AF3F7D687C26DD33BD0880E98F4BD69F4A00D611D1E10096035802A0
              0AE029117912C0661181309F0791D789C83A0060668888FBCA60160833843965
              919B84F973CCFC4FD7DFF59879110033F0B8F49CD38888DE41441F0270384000
              792F90FCFF2022B9B021023626BF5E00C081C0187BDD82E66E66FEADEBEF7AEC
              96170130838ECBCE7DF91944F431109D42A48A07450502FC672662055F08BC10
              F47420700000DBE32F99E5BF7DF7DE4DDD1701F04B3E2E7FF5E9EF02D15F12A9
              301338917206C00300041027FCDC0A380B90997F63ACD977D7FC538C81006063
              3260DCCECC6FBEE1BE279E781100BF34E1BFE21DA4D45F933D9CE009E4CEDE25
              20D37038E1673F8BAFF17D207002376C2D4006141118C3BB45E4D21BEE7BE23B
              2F02E0F917FEC5A4D497884891522052504A8194133E08F0960088583B2002E1
              C2CC67C22E81204D7BAC80292D059E15704B82BCFF7B0F6CBEE645003C7FC27F
              0329F555220A94D220A5A0B472164039EDA7014B4066019CB033AD66938320D7
              F8340500985CD88575F041600C038018C3977FFFC127FFE145001CFA35FF4C52
              FABB4454514A8374A6F91A441604A4F6E303649A2F0C71C216E383C0C06482F6
              853F8D1530265F2E1263E4B53F78F8A97F7F110087CEDB6F92527729A50F23A5
              A094B69AAF34486928A5EDFAAFEC12E047010040104F6006E24ECE00C0C55763
              4C1E19582B50F802CC99E5B000F09683296639ED878F6CB9FB503E07F59F55FB
              89E8E344EAB0CCE1EB13BE2228ADA05400AD0304418057BCE4702C9C3B6CC1A2
              024495103A50EEF5EE6FDDF291BD2F11412995FB10B953E92C0AD98BF0BE645F
              1B003E75E6918BE945003CF7DABF18446FCF85AF546EF273E13B211311B422BC
              F6CC6370CAF1CBF1C6B38FC3AC66D5E58214C2304214850882108A54CFFB5111
              4928E5E5130844807538697FE799002E7A1100CFBDF65F4AA474A66EA4C8397C
              85C62AF7EB402BBCFEAC353862D95C102934EA155C70CEF168D422BB7E33A0B4
              421485882A15E82080D2BEC64F2FE4833C3E7AFAE18B1A2F02E0B93D2E18289C
              3CF4B3C28F428D379CB5062B168D7A5181C2ACE1062E3CF704D42AA15DD7531B
              E629AD51892AA8542A08C3105A0765417BCB4066057AED7ECF8F00B08C808BFF
              D33A816F39E3845922B29099178A485384B78BE069886CFBFA6DF7A5CFF4FD2E
              3DE734A5941E27A51A4A6B681D40690D725F95B2D7EAD5106F3C7B0D16CE1B05
              290D615338830E30BBF7B5F0D5EFFC0413531D189302102802146C1898A629D2
              24814953A46902932630A9C91D4163BC7070B02308668161FECE8F1FDB7ADE0B
              1E0097AE3F7521112D0530ECACCFD3009EFAD20D378F03C025679F42029C2022
              E78BC8F910592BCCB53CCBE6B26E36F1020391EDC2FC6316F916335FF76F773E
              DC3908001CA1B47E5439674F051A4A0750CA01406BCC1E69E04D67AFC5E8AC26
              C2A1D9485B6310E67CCDB671A10D0F27263BB8F6DBB763D7DEF15C9844160860
              7BBF860DD881214D120B8C344192A4070B80985916DCB469DBBE171C002E3BE7
              B45783E80A223A0BC03C0C5AFB44C6614BABA310599257CCB2640BF3C0E28A4D
              C8499650D9C2CC7FCCCC9FBBFEE78FF27E00709AD2FAA64100A854229CB26E05
              4E5EBB1C51A582B061B53F9ED88D2C43982587B2F01020B43B316EF8F1DDB8FB
              81275C4C9F02C250CECC8BB3086C52B0B161619AC488E304491CC3A4E9810000
              66B9F4A64DDBFEF1B9964F7008057F0429F517A4D4EB51727AA83FAB4A320C60
              2D5C6E9D0050964317811001CC00339452D6F152AEEEEECC32014B88E8B34474
              F979EB8E7CE7F5773D7AFF34B7561F747156B38A37AD3F1EF3E734416115617D
              04A434906BBE13BE72750238478F08B57A0DAF3BF7653869DD91F8EE0FEFC413
              4F6D0333234D0D8800A5DC0796C207D04180C83D8B382B27EFFF381DC0CC07C0
              A5E79C1610D14748EBAB0068DFD19A16003DB575110669FBF055A6E12E8C1A08
              02A5A098E19EF6E92C7CE7AF1E77C407BF73F7639F1A708BD5BC98E3327AB54A
              804B5E7322861A35A84A034175C86503C9DE0B91277CEDCC7FBF37BF64D15CFC
              C645EB71DF834FE0BBFF713B76EDD907931A0B6A02546F328908810E80A8C806
              EEE7587D281435788EB5BEA694FA0688CEF1132179752D0BBB7CEB5FA0C0ABAA
              D9070FA54022F635D380C03E5386506E09408A2A24F4C95F3DEEF09733CB6F7D
              F7DE4D9305E08433C0654038E3C423D0A857105487A0AB43284A7F644102EF33
              38E12BDF1FC8056A01BCFAE81538FAC825B8F9F67BF0FDFF7B27DAED36520704
              ED220D61C981AFB4421085889324BF668B4D8E7B60FFB766468781979D735A44
              4A5D474A9D93C5D1C5D7ACC8A29DC75D9CF935EFB5FEDF933B95525079A8D61F
              5BA337CEB66BF4DB8870DB39AB57F8DA931460B0803B62D91C900AA0A3FA806C
              9DE4DA9F997D952F091A209B01CCBF7789201D0478C529EBF0C12B2FC4A927AD
              8652043606711CA3DBE9224D13304B0E7EAD3494A2EC47F8AE99FB76EEA92B16
              2C989100B8EC9CD30252EA9F48A95FB35AAF0B61F6089C542174E57EEE03449E
              8BD77941A60F044E482AFFDE5A17D59F70399608B7AE3F76F979CE02A43981C3
              3DE9E1460D2AA878C137959F3EB96B25C0F9593FED8142954059AFD5F0DA579F
              86DFF9AD0B70CCAA651011A4698A388E9124496EF6ED67D1077AD4AB671C002E
              3DE734454A7D9E94BA80FC87A2945DC75D754D7927F9B9F39EEB707F9709DCAF
              CAF9DA0F555E5EB207EE6B709170A12100D79D7DCCB2D3843929881C1608DD38
              751A9E09BA10B808BB4A600180CCFBB7FFA606E9D0697FEFEFDCF720CC9F3B0B
              575C7C1E7EEBB2D7E0F0E50B600C23EE761D08ECBD28A5500E79FB22B4A3661C
              0088E85320BAAC94572F996E5D945873ED0FBCD30783CA970B5FEB7BF3EACACF
              DC95B4BDEC6364840E77D689E85B5313934B73EE9E5B023A71024C979A9D264C
              260712FB99020BDE1E0777D0B1F28825B8F2EDAFC73B2EFD5534EA15C4894D10
              8948EE5096CC7F19104FCC28005C76CE69579052EF9E4EF885E65AC1DB3C7900
              AD757E2A1DB8EB1910FA35DE07812FF4B2C6AB3E5FC0B7E6EEE739939393D764
              71776E055850764D3D412BB51F5C882B01A72E532838D8B4CAEAA356E0AA77BE
              01D54A886E37EE89008AF791B2C3FC931903804BD79FBA8C94FA445F4EBD47F8
              4A59C16B5D38787EE54DE7E95707904120E8892428F305FA8A2A9E15C8A3022A
              6926010BF6ECDA9367DF841961184072004841FB1601A9C045021E0B0805250C
              622026B15FFB7EE7BE87EFD915EF3F6FCE082EB9E055363194267D46C76A7D0E
              82CDB76DDEB173C60080883E0360A454FB56597CEC997F5DB06B00A0518B70D1
              B9C7E1AC938FB0660F40185800D8BABC2E8100B9D6AB3208A6F1FED1EBC65139
              EE2622A4698AC9F1897C19A8578332E9D3D33B52BA0408E9A5823143C4E4194A
              7804D15E810F7AFFB5C7ACC0D2457310C789CB74CA747EC06D33260CBCE4EC53
              8E02D17918188A15822A846F9F6EB35EC15BCE390E8BE78FE0F8A317E3B4E357
              4000A48611688D28B21534EDFD5D2F3B3737FDD95A3FC8F13B88F2EBC4F82492
              384618B82506D4B7EEDA1090AC505900F8D46F06C458CD67537CEF406185EFFE
              CE670D0F70EE4E38EEC83C059C6BBD489111B019D1AFCE180010D1AF17F4E942
              48F0432455CE000E372A78CBB9C761D6702D5F2A4E7BC9E138EEA84536384F52
              4060EBEA5184200CF36C1CFAC0F5AC6BEB25214F8E4D200A542E90426B3D4DF5
              19C04EC3E1B17C734EA014051D7816220792B73C64763EFBF746861B10112449
              5A028867FEF742F0CD9994097CEB005094CE3C2E06303A5CC30567AFC5F050D5
              0953E5B679FDA947A3D34DF1F0133B91A42902D1D081464559264E9A10D21460
              B14591BE7F17B0B582F295FE65205366295ED16AB5A032A1103C4FDC997B4F50
              0486B002940141005110A2F2BF9D0328238AF66B3FA4DF9F6836AAB91264F8E3
              B2C5F8F06D4FEEE8CC080B70F1D9A78C10D1E1F0625E78316F41A0B40F66E19C
              215CF4EA75181EAA01AAC896E51EBED678EDABD661CDAA45767D36C695496D5C
              1C8621A2A882300A0B27D15B16FA970014448B1E47B00809E0040E8C4F4C15AA
              96696C2E2C40C4E4ECDF6C29106600CEECB3778A01E05ECF9E15602E0BDDF323
              B283B9E82A0A020D1160D1C2D9B8EC82577E4D804F1FAAA2DDB3B100ABE17119
              FDA69902035610872D1EC5F9671E836AB50E21B85A7961CEE1E5EFCF3B731D6A
              950A6EBFFB716B4AC13942952250104293820934D254D9044AE66333E1D916B5
              77ED1E73A1600AD2A12BFE6867F6199C262EDC639B094656AB989E2E6E055B74
              0A65EF25E20381F374B4C97B09AD153A6AD50A1CB5EA70BCF1FC3321F164EBCA
              BFB896671200561DD0AC28C24B8F5D82334E3C02615481AE3561BA532E954E45
              C305A844857AD569C7A05E8BF0C3DB1E84886DA48030B4F2933B0A4110D86290
              D650A9464A098CF3EE999F59C775ABD541BB1D236A70A9284556DAE03476A050
              5698B9032A800C025E8F9667C2CFAC406E4D8A7EC223572CC2B2C573B1E9C91D
              F895D38F03530597FFC6C588A7F6A2134F6A1CC2E3D900A0B9BF5F1EB67836CE
              7DF931181D69D8244FADE98A25CE149317DE11FA2A6AA79EB0128B178CE23B3F
              FA3976EE1ECFF9F394AD5754ACF044CAF1EE804067390658D6CD41024144F0E0
              A35B70D2EC39D02EF19F098E0088499CE03D13273490BC07DF9944B977B010BE
              941C431141250AF0EB6FF9157CEF4777E1920BCF463B0D114FED85493A00B065
              A601A0DEEBF364F59293D62EC7D9A71C9D7BEB41B5091554AC792582A010BECA
              1935AAEF412E5F3C0F6F7FF359B8F18EFB71E3EDF7234EB2C60B76A960B8F793
              52DE5E0781A3042800B6D87230C7534FEFC48969EA34DF2E3C02B61A9EC6A59A
              80F4FA13D257DCEE137059F8EC45088ED504C69205B371F9856742498A917A84
              CED8760040DA6DDD33B30020521511900840C5073DE1D8254EF804D201C25A13
              2AAA3A5285940A242A2FADAA9E024BF120B55238F3D4B578C99AC3F0A35BEEC1
              4FEF7A04295B7E9D255F525FCFBE8D9D6D55AD1285805862669EC9F378005E90
              8DA7B6ED01271D888C002840C06C97940CB49269BFEFF00C181C51C4F9926B49
              1E128ADF48DAEB78B231715B4B61BD76711A7F75460140803EDB5AAF46F89597
              1DEDC80D2174B50915564A9A62B97165E1DB3C7BD99B2FA54C4930DC1CC2F9EB
              5F8697BFF468DCF0C33B71F7FD8F59EE9C8BB74929E82CBEF3281C20421086D0
              89E5E19552AC3DF7BF65EB6E08A736A5ABC31C0462622B289272C53107F5600B
              E09B477F7680EF0F14C2CFF8290C8027D2B83D8BD2387BB3DF5BF3B68FB46716
              00F27A7AF101572C1945A512DA824FA5011D565CAC8FFE3C3DA82C7CA5FA1339
              4EA019135718983D3A8CB7BCFE0C9CF6D26370FDF76FC5E34F6CB534AA340509
              A0030DE50BC685865114228993FD011A4F6FDF23266532490781CAEA020C4EE2
              DC211431903E7ADB601FA0944DF4BCFDC212F4083FAB23304FA69DC959A4B401
              F0DBC75FB1E1F338C4877A164B40223D089F3B6AFD42D22154582D0900546461
              EC8353459DBC87669DF3EDE0B75365EF615FBB74C93CBCF3D25FC365179E8579
              73465CF3658AB8DB45B7DBCD0B3C7902C701717FECE7D4303DBD75C7A3A6DBF6
              04051B5188CDF55B73EE1A40B968F014BF3134EFFCF5D2C310FBF7FE9A5F12BE
              B73430B744CC3FB189D71C7FC586BFC2F3703C1B1F20B70094C5B16C4020281D
              F65760FC6C5A4F2127276CA8824C4179FC6CBCCE19F2727BF6BB6356ADC0AAC3
              97E0D69FDC87EFFEE027189F980233436B65899685DD81D6BA68D99EE6FCF1ED
              0FFDFBDB96CC7B8F9814D081FD3C61156C12BB349094081ED9BBF7E36AB02398
              51D86D9650CA9A9F2D1144B79DF08EBFB90CCFE3A19EC512907893AE0000ED4E
              5C163C79E9B6DE68A977E2865F3FD0416928C3A0D717CB8825539E7AD26A7CE8
              7D6FC16BCF3D05C343352489B506F9502648996B3778C5C62D773EFC2833A71C
              B70AC02A8DA0D2704E7C36EAADD0789101A7FFFBEC1EF2ACA0B1DFB3F4095F84
              C1C277E1793E9E4D3128F5CBA2C28C6E3719ACF999F6EFAFB084C20A28E5316B
              70F0059E300C70E6A96BF15FDF732156AF5A8A344DD1ED76F352AC058094FCCB
              D2BD09B077AC751F847F9476A79CC9967C5983D6CEFCB31B0923FEECBFD259FC
              CE29480E0EDFE49B5261C9091F3804848F43610158FCA60D8FCA34900F45FB17
              6516A2D935D463D63C8BE46EBD56C16FBEED5CAC3C7CB1255E7633D2250D2CC3
              F658837B20F24531499EFDCB04A47464059AF903D99A3E000090B2D0ADF6C336
              B66482F7C24376C2272006F36D2F04009852BB1633C24095F55FBC605BFC2201
              4AD5B072599421262DC5C5835E9F3792482FC3264B432B5CFE96B330D2AC238E
              E382FD9BDDD1401F008FDCBA79FB532CE62B6CCC76D31A2B256BE09C412B44E4
              DA2D32E0E45EA11782CF4195598B1C100029FDF335177F7472C6038099BBBEF9
              6711DB269D67E5FA236DCAE9CEBD1D40BEF69BD2D7A206DF9358994E7F737B22
              18AA5771E6A96BC0CCA56CA094CAF1A57BFC0100ACBEE84FBB2CE6AFD2A403D3
              6DE702E4B4EB99EDC20264ED6AA5D3278AF49AFB5CF099F01DB099614CB219BF
              84E3D958805DA59978CCA8D7A2813E40A1C99477E164AC9AACC25678CB9C874B
              BD95B4B2F7BC5FDA740E84534E5805402CD58AFBFF463C4325C075DE1F7F82D9
              6C4F3AFB8A90904D0FC9A3106CFFD9A3ED99B574821770A92721BB1E541A77BE
              4000C03789708BBD25A012059EB32703983500483CF35D54C7F2F5B3C7B1F47F
              5F8002E5E503836AF8F6EB50BD8A5A35CAB3865E27560FD9024F8BC8C6ECEDD6
              BCF5CFC621F26193C448BB536031A030CABDFA7E6DEF39BDDF6751038BC9CDBD
              AFF5596D83820861B5F1F40B0200FF72CBBD2D66FE46418814446160AB6783D2
              B928B36138E7D671CF9835EFF48914C2362BC78353ABE85B1E0A708C34EB8E6A
              95F450ADC4D7FECFDEF6E48E527A5B983F07E61F26AD319B8F50616EB68BB327
              24CC96B041AF93C2E983F719014137EEA031320F00755E100070B2FD5D82ECCE
              401005BA27DC1BC07C11F6E6E9662030F681989E07694CEE359785EF874ED2E7
              308AE75D0340A5621353496A066A3F043F01F091DECFB7F6928FB108FF3AA7C9
              5832B1C7DD4BEFF2C3B907EF9FD2CB0A764287941D4708234962CC5A707896FB
              E8BE6000F0F55BEFDD7EFC314BFE382B6E44812E0BA4C70AF452A991D39F1DB5
              0ABE73E57E86C967EDA35446951EA2A5EF6F9401C12C6E9093A35A698D7AAD82
              797347F181F7BC055FF8D4075E7FEBE6ED031FFCDA4B3EFE84085F95C62D24ED
              B162592A2D01D27FF62D01FD51028411A70986171C061564D953E85F06009E75
              7BF89B7FED94EFAC3D6607BEF42F3F4692A68593E4EC6A4EC0649B0B17635C4E
              80B3866B4BAD22B8E563404DA544ACE0B263C85C1ED6DCA3FD7678932979FE0B
              16CCC6AB5FFD4A9CB0EE288C362B30716BFEFE0817C75DFAE75FBCFB4BBFFBDA
              B433754129BB99DF284D535E424F3AB8B08A4496CE36B2E8480495AA7D2EF6A8
              BCA000A074B87BDD9A95B85485B9B0980DB4B0AD9A81F22A98E4BC3A870C9282
              0B90BF6E1A6285B7E697C9155C0AFD062D07AF3C6D35365DFB4368ADF0B297AE
              C6DEF136CE7FED7948BB9388A7F60140741051CFBB00391582253D39ED8189CF
              DECD24CA393185244D30BAF41868E7587AF58217180082686F50A94D9E72CA49
              43EDBD5BB3244181764FAB6DADDD004A79B46C2E2789F647AC984EF8BD0E5689
              DFCF38F5C4A3F0C8E3DBB063F718DEF6E673F1F4CE71A4DD49701AE75480037D
              CE7597FF9F5D777DF1AAB701F83E888232D9E3E01C269B52D64892047356AC75
              DD46A6D789ADFE3200F00B0D897A62E3861B2ACDB9EBBBE3BB11B7C610D69A08
              6A4D8FE9A32C2BA7631F7A41A8501E51E440DCBA2274841FFB4B0FC5CA6FF6F4
              FC05E77724D591F9A1F64AD526E9C492C68DC3CF7BFF418D9AFBF9177EFBF788
              E8CF7A2B19FB5B02F2888314A002CC5E7A8CE337987C59CCC2CB9F77F67EF19A
              AD7BBE1288BE7FE395D76C9AD14EA01F159AA46BCD190462D292466653B4C1A9
              D789CB1E875EF61B0666357870B1F1027C7FA024E87224E0472104B4248D61E2
              567E4A1A5F77B0C2B76F6C3E2A6CBEE057FA0657038BF010A49024316AB31662
              EE8AB556F89E23EC17834603B56257B0EF7386F8CFD76FB8EAB8170400D26EFB
              4B696762A7493A20308C49BCA44816F7A7306CBC0FDD0304F642BEECF47E5716
              7C117E9584EFCAD2EC879B80BFBEB6D3A48B346E1767D2FDCB67F2598FBFE2D3
              F2E9AE7AA721DA65B9906660228894D5F83889A1AB4DCC3FF244D467CD2F4D14
              479643F0A2A325543B623C9C5A1453F2BA94CCE7D76FB8EA95EB375C15CC6800
              1CF99A0F4E24EDC9DF4C3A53EE73A416049989CE056C89998556735F4CDD6F01
              A4A4F1B9B5809757C8422E5FF8ECFB07F9B5AE893BF0CE3F58F5BA0FDDFA4C3E
              EBFA0D57357F12ECF9F83F1A6DC652DBC7978DB06300A931E8C65D24AC1135E7
              62DE9127A0397FB9F57BD8E415C25CF8F9677553C44496CF09686BA3590D9456
              2725947E55201F5CBFE1AA0533D607C88E07AEFBF01B89D49749E94AD898055D
              19CAF979266E21ED4E95D67FEA5DFFF7B3964AC9B473C9BCE7F17E9FF07B1B39
              CD2322BC924819001F5EFDD63FFDDFCFE4F3BDE2B3EF589904DD6B97448B4F18
              89DBDBDF3767D182BA2448D304620C541022082B082A35CB879CCEA9652E85B3
              65FFC5E07BF1D61F7FA1D379C5B195C3B0BB35817DED89048C9B4309AE0670F3
              C62BAFE9CC480000C0FD5FF9FD352AACDE1D54EA143666D9A9592230DD49986E
              ABA77BB887E5330000FD4315FA055FCCFA9B5EF87607AFF80193C63F23527F7C
              DC659FB8FF19687D305EDDF9C63AD53EB7ACBE649840A8B6F66D7DEFEC798BEA
              3AF4E621E8525B3A06D0DC7BFD924CF333E15B0653BAFBC2A93B478FAF1FAF2A
              A8223609B64FEE43A7DBDDA384BE164AF049000F6CBCF29A64C60100001EFCDA
              FFB8418595F5617D96E50712C07107A63B5978EF3D0D9D078AA7FD50B09F75CB
              A53EBB41C2B7E126FFE1EAB77EE47F3D03C1EB76387E14B4F9C89C68F4FCB9D5
              510A94C664B785D14EEBE9778DCE5D5CD3BA180C45E571F3FB8B6AFAD3D9C623
              B232BE9C3E71CB8F4D78EAF2CAF27C6AC954D2C5DEF638DA9DEE0E2DEA6BA104
              1B003CF45C00E139753244F86B6292F5C229446B90D8A64E7005883B7D8294FD
              3189060DCCEBD1FA41616159F879E9F7A70729F8CA4465D779612DF8C3D9C1AC
              1366D7465445873062B0AF338EB1CE0416504588194C04A560BB9DA090B78453
              FF1633329004E3B8069EF0451817A9C52BFF2DFE79E7FEBDDDEA703082465443
              35AC61F1C81CC48D74FEDEF6C4BB27DAAD0B4970C3FA0D577D16C0ED1BAFBCA6
              3D230000E1AF0BA79FE6B44B4A4710D7CC178455C4713B1716650F681A210FC8
              C6794B42AFE08B868B529401EF3AF31DFB7BFF33FFEA5D23AD68ECFDCD46E337
              97840B978E541AD04AA19376B16D720FA6DCBD138028A88ACA482C222072336B
              3D3A7B09DC7D790DF12AA13D56CCDEEBDC4BC279377EA6BBF7741D6B4CC69360
              21444184A14A03A38D26461BC3F3C63A93174F745AAF4B93F49E5FF9F47B3F17
              88FE26805D1BAFBC467E694B00003C70ED1FFE4047B557068D51281DE46B61D2
              DA0B4EBA28CF13C0817D8092D51824783F524061F65D1A1ACCDBD65CFCB14503
              B45DEDAAEC3E2AD2F89351DD3C6FB43252AF0715249C622A9EC264770AA9DB03
              202B03B425C1D9C1BC272F690E2F2B3A9ACA03B2FA69D0A5E24689FB00E921C4
              B8D0B02DC9FDE78DDF75EC116A010209217979CC9EF5B08A914A03CDA88EAE49
              30DE6EA5AD4E7B3389FA4A8D2B5F00F0D8C62BAF499F7F0B6005F0694EBAAF14
              1343BC2921A4428874F214AA1F01C833C9A97BD59DE9B4DE133E88D4377BD7F7
              CDD5AD2F1F69543FB1249C73C2AC4A434104ADB8853DEDDD484C524C2C27E4ED
              A01312A32DA9ED2076491E81B2790BB2D342C8F373A69F872C3D7E0B97C6C988
              304824881461423A98ED762FC9DA68450893491B93491B44844650C570A511CC
              1E1A3E62A2DBFAD078ABF50E49F9DBEB375CF57F00DC7320203CF70080FC33B3
              79CA7426972A1D415C434541F7A2DE9AD98173EABE06F9EB696F3490093F2792
              00A4F4DF3AC1D393D56DCBA246F0D747440BCF9D1535283109764CED4237ED80
              DC446F026CF77156FB230B808E49108B410C3631332295F52F2AF7D9A8542812
              DA1F98A547F85E3E441877C8DE9DED545655550AA5ECA88CAC6CE660874CAAE3
              C914C693291008C39506E60D8FCC4B38FDF57D5393E74A8C6BD76FB8EA93001E
              DF78E5357C2852C17DC7EA8BFE772AE04FA571DB165D32164CD2F59A297A3368
              03EAEADEEF73AE5D2973E8423CC7B383D751E42F075163D6BD6BFFE6D2FA13F5
              AD9F9A5B99F5D0AAA125AFAE684D5B27B763DBC43674D21608D92E1F0C450C72
              A7520C45022201C3A08B145D24D2F1DAC2E03687C04076703F1FA0A08EA55E3B
              19E769E4AE98C7AE939D278F1B83A60ADC7DB97B83BD2FED4E068389C1243060
              ECED4EE0D1B12DD8DD1DC7DCE19145D5E1CA5593BAF5CF0CB970FD86AB2ACF8B
              05700FFE9300BF37E94E2C8DF4A8D5889C58D913011C445975DA48A0A76CEC0B
              9E00A4698A37EDBAE3680E82AF2FAF2E58D60CABD8D3DA8B4ED2B2A367C8D37A
              A7ED0ABEF617DFD794C6B6B48D16C5AAC3060DB2E6D8AEFFD213D64E17D5F4D0
              D27A1C586119FF8BE091FA03E3262400234100259905C8EED335AF0BA0C95A02
              118F912DC044DCC244DCC268AD89F9B367AFDB3EBEE753511CBE74FD86AB3E0A
              608FEF281E925DC3D6BCF5CF5A22FCFB26EE80D32E5CFB6ECE8F935E4D9F965E
              5DA661E5B42B5FE37DADF2C0909A148DD98BC4A072E392FABC65A156D83AB90D
              AD64D269B8711AEE4EA7EDF9F7DEEF48190C0784DD26C61635B6787B2A6DBF18
              C45CDE16762057B0F7355EF1082CE84ABAE9A3C1C3EDBB5BB2F0C9B88D63AB4D
              8484BE7B2432D63AB91354580186D8AFCE3AEC6E8F61F3C476CC1B9E352FA999
              777729F94300A3877409C80FE67F04A73F4EBB5310669722B51EBAA09747D7DF
              AC51FA3D0AA19728E3C2A5E52037B91004D521A43AA005F5D1AA81C1F6C91D30
              1C17E69D0404CFEC2313B6E4CB41F6A03531EA0A981784B8B73315DEA0B6EF79
              2A356DF8ED615E3710973A885DAF83704FC5D00A3EE574D746B5FD8E3F518F2D
              BD71225D70776B12CBA21A164595D27DD9EFC559ADE2DE023747817320644B83
              0543DB74F1D8D8D318A9379AA621EF48287DFFFA0D57D50F5918E81FF7FED37F
              3D9C94FE79D8186D920ED01DDFD1CF0338B825A59452EDE702FA933D1552668C
              2E3C021326C67BC71FC59ED66E84220808D01068B2043C05403BB39F3B7EB9D9
              77CB01D9A50200F6A6297E383E8E758D3A8EAF34C6CE4A16EC3E4E854744046F
              4794FDD436DC6D4F4AF2F05D7A62EC6E1A9BBF15E9F2C7DB060FB4DB68316365
              B58655D54611FD0256A02AB561A009C0A261043020A402C400627101EBC01E1A
              EB421E396B09F64C8E3FDC6CD77E1FC03F6FBCF21A3EA4E5C635177FECF17BFE
              F183EF4BDBE37F17549B79E5CE460538781FA0C70F18C414CABA799324C6E8D2
              A36D1108C08ED62E4460B79F9F1574B6B75F71AD10762EFC3C2228A602CD8B14
              5ED2A8E267532DEC4DE3917D43ED919B50DDB13619DD713455EBF3482F0F85FC
              67DA4948F6EE46BC73936A279BF554638B6A2D6931ADDA9B0A9EECA678A21BA3
              6518435AE1E5CD21CC0D43DB43000274028A2620410BA9635D1B211813C22475
              48520771E8C04CC886E1149B5CC0452716499BC6B762F9F0C25563E9E45B8792
              EA9D001E7D5EF60DBCE71F3EF0CF3AACBED1A4DD67ACFD8384EE875379765129
              74BB1DCC5DB6DAED2665306EBAB878DBCD0801040404705620B70002AD0A412B
              089432D6DC8AB633027AF201445670774C74D165C1BC486359C59ECD402104C5
              5A9030996A0AD21D06DA46D06660CC3076C6063B13832963EF7B245038B65EC1
              922874BD8B040643455350E12458192B74011226244288012442E83060D21A54
              DC04738436E01A60A86C05C4299A00CDA88E85B5D9DB78177F00C0970F39E1C0
              2565FE4B1AB74E0368E1C0DCFFFE6A018396819E789A94461CC798BB622D94D2
              F9ACC010E4C227ABF5BAA4F1CE0228860EDA08A32944410C4D6CC14202888649
              6B3049156C2297C2161C5153585EAD6073C7E0B1B6C14F2762FC74C202A9A228
              AA28444680360BCC00FD1AD28455F5004B2B0116441A704207044A77A12B1310
              15C30821CD661112C064359CDDB548019DA08DB6EE82933A2819824017032B7B
              67E502188B2731BB36B230ACAB33A425FFFEBCED1C7AD7DF5F751E40FF660D40
              AFC00F8E5B57BA2E85F01316CC5D7E2C08CA1BCFC2309CE2826D3F4440404885
              0F60AD0023085B082B930894812641E05E13904093B50E0A0C4D02488034A921
              49AA30264236CD84089832822D5D83DD89606F22E8B25D9343026A0AA869424D
              119A9AB0B8A2D1D4F6F3722E4C81D231A2CA144877C102A462D7F754C8590067
              05C46A7FECCEAE001D267404483882C4C3501C80065901B156A011D6B0B2B1F4
              A6F6CECEFB9F170B0000EB2EBFE6FABBBEF8BE8F00F86F82670E808116412988
              0A316FF9D159E451FAC44A00AD041A0CA59CD30781D22982CA38C220B64E2009
              34DCD2E0095F3BE1DBF748500B62506D0C221A695A416A22A469845069CC0A69
              9A9A86F7FC1D792573EE42952208BA08A23640095808060A269B25E146D00849
              FEB376663E00C0646B0321095210121563B2B207613C8C8AA9145640323FCBDE
              CD783A8516BA87453A98FFBC01C009EDBF03389D8033F62BEC034402A414D224
              41D49C83D98B57BAEE212E355F66E1E4B0AAA28D29B7CE3354D846104D225085
              13A8E180E2846FAF17C20FF2A4918D20145930648E22B3869110C684484D0016
              E5E6095BD39B856D9690C450DA40A9D4750A135808296005EFFA2A7496EA52C8
              67218BF35D6CCC0F680134C85A2D078A0A047BA37134E3262A6ED982BF2438CB
              F0747BD7E2E3878E58F1BC02E0F8DFF864FAF3BFBBF26D02BA03C0C2676E0104
              5001BADD0E662D391AF5E69CBE512B3E83E8E156158DD66B3015DD0C156D0205
              2DA8B005ED3C7B852CCDEA84DF67050AE12B078CEC771650363E501A08910281
              E91F1E0D290DAA64DF9B97AC4F0A088400252E9F958DACB5DACF941582EC0443
              4D80110B86C05981800421082104910063E10486D14464C262B2B7DDA6171060
              5F3C011EC10285E7F938FE8A0D5B20E61504192FF2FD66C0D9F33B2274BB5D50
              D4C0C2952F436D687669245C3605CC07425D1B8C4FD631B9EB12C4F1F1A0B05D
              68B81362267455123417914206100504C45EDE4081A041D05008DCA9F36BF67A
              F1BBFC1AA93CFF10105B3FA3671952C4C5BDA0885AF268C50131736673E0BA25
              2272F01B0B269150E225878A049181C1EE64BCF9BC03E0B0AB37D2EB9FB8E089
              B684B765F5F6C183162CBB264D199D6E175419C2FC952762F6925580A25ED267
              5EFECD06508830E6875D2C0CDBE8B4628CED781D5A7B2E7282F01F666101B2FC
              80F61E70B615BCF507009D71003D21936305EDEF2C8183343491131ABBD9C79E
              25F2F214DABB473F27A11C28B2849602A085108946CDCD5316628C075348C938
              1048090CBB92B1E1E07916BE26A225B3879B1FBA56CE9E7745E346B426F64038
              B59A4104C3458771541F4663EE22D49A73F22E5A61EED96BD8EF0DE0723A188C
              35D52EEE5484E18031B1FB54249DA3317BFE97D0AC3E5A3CE43C41540604794B
              82CA377F56B9D0FD226DCE74EE5B023293CECE8DB31905763E89B8C02D33F9DA
              ADEF191805042DD6E15302473EF3925A2E63A95D88AA45A1CA0A75329880C010
              A3A53BA899AABD37299683093345C1F3A5F500A25AA572BA56F4779D6EBC7C77
              527DA83A6F166A43A3484D024E538818E820820EABD051B53440D21BA0DC378E
              BDD8A029133EE73D846BEB6DCCAD8E8331174B8743EC981CC5F6277F079DD15B
              B178EEB550D42AB27E1E207C0B9199FD7EE1671A9EA58C06C736B69661C7CF0A
              D859844C90C64E4F710265719E3E014ADCAB3D8B90552E199680A29CD9CF968A
              D4C1715802C430E890A04B0902D208242CA5055263B6AAE741F80AC0E870BDF6
              41227C3B4ECDF2F9CD089132C6B69303411021AA0FA1DA1845546B4287917D78
              FE9815BFB0E28F6B112E15580AE1DBC860656D12AB6BBB30D935D04A61C94805
              A391C2D4DE97E1B1CDFF13BBC7CE8448E0997BC9CBC4D983B719C0C29C9785AF
              3CE153CFB5CC2AA8BEEBF9CFA44AE023CF12516EF62517BC5FAEF6892B89296F
              8C13086158349C0B8896EAC2E44B81FD2F10BD2938C45A5F0983E0F07AB5F289
              38495F1D2A60C9680DB528408D8C6166C7ACD520664B2265DB439F3189F28F35
              60246B5F1F62696E802DBFD648707ABD8D9FB5DA18EF4418AD0798550BD08834
              C6BB0ADBB65D82DDFBCEC7E239DFC2C2593F86429C717A72874B110D149ECA67
              3AD89FFC11B228262681DDF47182067B56C1BE9FFD7704D6A163C9DE2FB30876
              F48EF23BEB3D8A98421121244CDED20044A2D0003046B64A10AB0421872E34A5
              C9F93CEBA7C121D2F8C6ACA1C6BA3008AE4AD3F47586D3CA683DC0DC46844011
              DAA9A01218936DBF96D3ABD9124504E23259FD04523F2C147F674E913EBA75D6
              78715C631F4E98DA8C5BA78E75CC5E85501366554318114CC523D8FCF465D8BA
              FBB55836F77A2C19F911C2B0956B7FBE1956FE5FA1F556F4BE3FD0CB051368D8
              546F21742FD443312359B97D1058FAB59DBC4216E57F4939652DD482BD2DC250
              A5A83A6A000D2874A0D00123A134076A84F09B435CDB1A3C87820F886874EEC8
              F0EB00BCDBB079A9496334228D915A0D15AD90B2A015335AA9A01A26261B07CF
              6C2959D9E008CAB663CBAA863280648972C388C8806490730C9BCAE0ACC638EE
              EFECC6D68951848A500915AAA146452B5402855A04749259D8BCF5626CDAF926
              2C18B90947CEF92E46AB5B9C25521E27A710B6F2AD82A87E009015BC8282F100
              254EFBC9ED4E5232E99EB79F17A2A83735E24313081430192B342B5C024D0442
              030AB183604206017467D40C7F16C0AEE03930F3D57AB5BA7CDEAC91778AC865
              22667E4040B3AA31144550444898B1AF9DA2151BB46283C82E016C1D37140257
              8E2849CADB580AD3F2EC0B3E40D111ECCF09C8670B32E3D8DA3E9C547B0AD775
              E660088C4E62D04E0C14112A5AA11A2A54428D4600A452C1EEBDAFC2D37BCEC2
              70FD111C3EE77B387CF44E04C42587AF5FF80538241B92918F49B42060186741
              A46459B2993A9966A347FB0F74822D00E016199F743F048D71183004860CAA1C
              FE8F2393C53FDB78E535DDE01730F3CD59CDA15303ADDF43C2E72998B01210EA
              51884013848176CAE8248C566C90180691F56EA752A0A6320BE0B8752876E512
              B1B4A7528FDD743C7BE96F1FCBBA90C5DBC2B502C64BA216BEA118FB52853961
              36EE1EE8A48C76CA08BA065160811029C29012A49D95B8E7C955B8EBE97D5836
              7A23D6CCFB1186A3C9F292E0845FF8010504D825DF72248006A4BE8BBFE9BFDA
              FFF3A0BC69CA84AE21A40CF46C9C8E100A755218130300D7AEEBACFA042C8FE4
              9991429DE047469A43E7475AFF9E22591312A31669046E2277C282C9AE41D708
              E2947382A6725BBFB51C833AC86705A2D854428AFD04C5B55EE7FC01D93F3FA0
              24F89EB6F26C8BD748C50894463B29661A92C79F302268C506EDC46E55176A72
              FE828296116CD9FD6B7870E7B95832F2139CB2F83B18ADEC1DE01FE8DCAC5BCE
              8EBFD154010D2AADFF85E873B3EF5DC8B72A90E2864BD3F705489C77998AAD0D
              F402690401C660AE0370C94DEFFE4CFA8C58C1CED4D71AF5DACBAB61F8278192
              536A81A016D81446D7582D8F5346628A362E0240AAEC1AA56CADC098D474BE4B
              97146B7E068469DBAC7AACC0C02DDBFDFD79BC0D9BEE4C22749910B3B8A44EE1
              8A89A7830220650BE656C2081439CBA030AA02EC9B38155FBDEF441C39FB569C
              BAF8063483B6A7F9CA99FACCD3F7F59A0E59B89DB0EBC032D61F28D133214821
              3703B8582EBF317D46B4F0C3AEDE18562AD131F56AF58F4285373643A5A28090
              B2602236880D2349ED28D6CC622B6FA3A8DE22A9812015C11E19AA671180D570
              EA018267F4643F6D287DDDC30518988B81148FA5016E8D4FC258220815390088
              FD6785D0A3604509471C189C6508B4422D52981B86786ACFE9F8FCCE1371E68A
              6FE184B93F73153CCE85DF3FF65E0E39006243A885DED2004E18F8AB5908FE74
              CB653F480EBA2FC069FD68A3D1787B14A83F1A0AD118AE84480C63BC6DD0310C
              E30DE055F976EE655E7D09FB44A8686022168C6368289B02EAEF0A9E91166C77
              CDC1760FF7FB04FE5CFE31A3F1F9A953B0AD53C5446AB0A46AD3CE6581BB4299
              B77E728955632B79DDD4A09B32A25061B8AA51D535FCE0F137E3A17DC7E00D87
              7D03F5A053127EEF967552FA2A7D201194760D2F4FC6F7831FEF31488F052884
              2FB729A83F6842DF7CEF251BA70EBA31E4B0AB372A526A45A35EFFF348E18D73
              6A012AA1C2783BC56437B5414BDE3FE76B3BBCE91F3E23A9B002750D8C2706DB
              796499B06C239285E2F6E3EDDD53C8E7B24D6701CA4D16E8DB9061CCE8F8B3DD
              756A4B6749B0692A415513E6D79CC60B95C81AE2BC42CA03B4423C2C54DAF2A0
              9D18740D63A41A60715D61DBBEB5F8EC7D0B70C5B17F8B9170D2133E435CCE5F
              4A1B16A22F5F2003AFF6FF2C032D40610904F89900D73425FC0680F17B2FD938
              ED36AAC140E1935A55AFD7BE5809E89485431144043B27127433AA0A6579692A
              343EFF5A36F94465500C858480088FECEBD2F7179CF2C4597CF3C26CC882E445
              91727FFD2012A9C880899C9EE08D00DB92C6239F4FCE197A68AAB2F0BEB10429
              0B8E1A091050F961529EB1F37C71816B09A3BC818233E9BB658E19D8D34E312C
              0116D4026CEFCCC3DFDEFF4E5C71CC5F63241A774B4CD1D3906D886D6B033DFF
              E5A370A88F457430A7618A6755F99146840F6B137D5703ED7B2FD978C00EE112
              27F0B0AB3712888EACD7EBFF500BF5298B9A1112C3D83919DB94A42748E5BE51
              9E85569E674D1E2191727EBDBDF2C494C19696C1D9CB467041ED67379DCA3F39
              9188AAFD9B451DC871EA8F045246BAD50C3FB0914FC2DDE9D2B58F8F75F0E884
              1D5FB7AA196076C55A19F67620C904CBFE5BB9F1F4E2BD26DB7184F36B0237EE
              118D8A46B31A62473B85AA3C8D77AFFD4B682A762DCD32819237C71877D54060
              A78A1B01525148D9B2841221244CF9B51494338353B1A49298F1402CF4E91DDD
              E8CB6C6A7B01F0BD976C3C6867A3D702CCAF55ABFFAB16A853163623C4A960E7
              546289382E59A13C4DF7C190697EC90FF09D402A02A1657585AD6D831F3C3506
              5AFA9297DFDF58B5F982E45F770FD3E40944031A470EC01A9E32C1D38FC9E2A7
              EE9295B5C7D5B29513066B378F77F1E8F8145A29235484A347428C442A5F5395
              33594456935904C6F1F5580A7F40F2AA9DDB4B90F279202E0760C132D135504A
              61764D63EBD4226C7C723DCE5DFEED925B58683FF7F907E22A7CF96E33F04097
              F3090137FFFA3611FA8608BE79FD1BEEB8EF17711E730B70D8D51BAB51A5F29E
              5A25FAF882A18888801D13713EF8B9D0E2C22466BB7FAB5E739F375590670DCA
              4098481877ECEA42001C3D5AC5BA794358A4C79F7A99B9FD89C3F8A9A1216AAF
              04D0E801433B9160DF5E69EC78120BDA9BB1B8BA85162DDC238D85716AB0AB9D
              60CB54826D2DEBA402C082AAC691C3616EF60120500A51A011680D908DFF8D01
              1236480D234E0D0C679B62F97E402688C20A18D8E52613DAE8500406B0B5DDC5
              DBD77D14F36ADB0A8B82729BDB20ED3762419069BFB1DABF2711BA3165FA6622
              F4ADFFEFFC9F6E7FAEA2071291CCE37FC9D0D0D0376737C2A543A1C68EC91886
              5D59D46DFB5AD2EA526162D0EF2937F934606920102613C63D7BBB188B0D3411
              16D4432C6D4658D6ACA2162A84309D50BA9302A82E55875351018BC0188376CA
              18EFA6D8D54EB1B76BB0B75B089D002CAC0738BC19A1E60A762C169051A8510D
              038481B6EBB858336E1C873F3106496AC3DB3831488CC9797CC5D74CE0E228DC
              C5F7500A739B21F674522C9E753BDE74E4977A4C3F7B3542D75CEA1238CEF427
              46E8EE44E8B694E9D654D42D46E8C1BFF9D59F1D9218325B021A51A572593D0A
              96362B01764FC5F903CBD77A2A84ABFC410A442E5112402B82560A8143833023
              6181610397E5F5B2DCC07045E3B485756C6FA5D83295606B2BC1D353316EDF36
              895AA0106955AD68AA068A60B88B54048911B452FBBEBD473D5098570BB06228
              444DFB891E200A342A618028D02065CD013B4205448A810E5A432B8590058136
              8893D459042E855FEC2A96E47A0DACE32A30CCD8D73118A9067864F73AB40EAB
              A0A2A7DC5F64E69E0DC3EC067833030F18A18759E821167A4080073F76F6BD87
              74C3E8920558F147371080E39BCDE6BF2C1AAE1CD6490C26BBA664BEC973F032
              206822845AA31A6A44813D03A5DCE9FC6AB13CF8D4D833368CC470EE80F5AEF1
              B1116C6925D8D94A31E6924CD3DE380891268C5634E6D502CCAD06A807D41725
              848146CD093ED4DAADF5D9461285469BEC3ADBEFB36CA06141921A743320B87E
              7DDF0A18CF0A18015210E60F87D8D54E317BE89ECF5C72CC27BF064857206302
              DE21E09D7F70C67D0633E00800681D042FAF84FA30AD085389E4C2576ED1CE9A
              2A32472FD00AF5284425D0A8040A81B6899C8CE8A85CB7ACB5140A14D9B26E62
              1809DB94716C0C525390A500A0A6082B6755B072961D66D14E051DC3485990B2
              2050AE72E7F2F47959A5A791D4D6C703541D30EDBE86D4176A29657715B1DCBF
              8C7B2FF9D260899564B7C42182520A9D34B5A493EC9D9C15B0640E579F17C178
              D7A019693CBE77CDB2CF7CEFE3DFDB74F57AC10C3C0200B3A3283A7DB81260AC
              63DCAC1CCAE3FC7CAD77CB411458E157C300814BA966BFD3197B86FC65C2C5F4
              0AD05AA38200866D3A38B70E6C2D83310C5FE71B11D018B4938A94336719652B
              705629D4EEAB5239AB26F3B2559E31B41E7D566F87236148B6D349E6EDBB2A5E
              A88B3D8DDB89DD8A8E5DAE4089058ACFD2998C05CDAA82024EC60C3E02008BA2
              303C21D084B82B2E0B8752ECAEC80ABA1A06A845012A8186EE4900296F47F082
              C1928D52F30C3711828010125CA356E180B1B035C16CF3F89917CEDEB62BF040
              99DD9722402BE5BE57EEDE8A9CA9720E1C795949456E940C1595DAAC4ACF2439
              F54AB9268CECF384818610D0891397772AEA7A4A24AFFF2911C44610689ABFB3
              D6580160D34C05C0DC5AA40E9B8AB3091494877B59195713508B425443A7555E
              868E9C10B4A2325991A82783977B9179F898BD8752C8C98BE2E5DD450665FDFC
              BF955C53294F09A3BC2BA4B774659C3B02A095E52CE42C692973EEB37F5211E5
              5680DC5CD0406B4421D04D5C7B97AB2328453052103827134645133A066B662C
              0082305C1C2855EBA4ECC2BDB2F9D68A5073EBBDCE4DBE67214A5426CA854BE5
              2AD040E1FB848F1289C175CF0CE081F5B081FC8A4956E3F78AD15E2B54A1FD2E
              A399ADF152CC50C853BC392D8B7260F8740E05406B85403438B5D622B7289985
              B2490BD4230501AF9AB14B4018864BAD89F3433D2B24ADACD90FB5CE99A6E8D1
              FECC02F4519872D34F6503D057EECD70E0BF6ED02EE4FDC53FCA771325FF9F29
              402005A382FC02168A6C207B60CE2C8D72BC7C7F1948594AB5034D8420D02E1A
              4873E1ABBCB2685F9DB83CDB8C0580D67A8161C9BDFC9C064D4014060883003E
              D53115DB8B96317CFC640F0D34FDF645D42758F2704065C1EF67824886291129
              D1A8B24EDC22F12410EB019641EB316AC559011E40B92E01D94507160462FB02
              C575E4686D434376644C29EE410B101B86A2F264AE190500A5A822E23B714572
              27D43AD70E86FD3020415D0725678F06F1D53CD34FBDE5415FF88A0E4AF0BD39
              830208592F810301156B03B930AE772918787A1141CEF925F1AC8D23B4882011
              83206BE82020D0DAAEFD766481FB77ECCFC68699FB662E0040538342B728D4F9
              CF8930E2D46E741C29CA57D992E73F9DF6FBE9E0DE8D14A611FEFE660895F61D
              70EB7ED65052AC218553D8CBC1ECB50299107B9353BDCB40B92E2FE8B241E01A
              57ACAFA4DC9C5FAF1F88F27CFBE33315004A205BF28A9EF76174969D63C6549A
              E6DEAD716E74EF24CD81769A0699FE62CDDF9FF0A9042EC2FEAA84C56E1DBDC6
              823CFFA27F1A59DF44509ADEA219117452F6FAFD043173DEDF4F6E30B6721B47
              284545220D7878E60240644B76C3A400A51482C0263D12114CA69648911D13B1
              2999D2DE873948FBFB4CBF9F1B9846E018700E0244297CC8414003F868D3DF2B
              ED87759001385484B1D8945E69ABFAEC6A2504A5A9076704056C69B6DB3F9CB1
              0068B73B7713A1953DE02C9E3722984A53A422A5106E3CE601C278E6A3DF6840
              CB5759F00317EAB2E5F02967CFE2DFF7972D3A88E56C32367D7414230CE3D8CD
              594444DE6720C8970336533316004992EC81E03B79D79BB2C15E97191DB7B1B1
              FF1826E2B43C81AC4F8003CC7FEFDA3FD054539F36F79F65814FE76FF871E7A0
              656010580838E0B5A9C4F4FDDE1692D871FD6D81C1C3ECBEC098CFCCD43A40E6
              EB4C31F3578850D2FEF1A47F3F2223C054C278B6F4E6D2DA4FD38C8CA5C1CB82
              1F2EF6810EE5F7A56749BF3F10083A892D43F7BECEA0A8702A78E015F960BD35
              35631DC0EC7E5BDB76EDBE9E403F225711EBB08119303F705FC76E9678B0FB26
              3FE3E580A6F709FA40F02CCCFE2F820A723990B16E3A10202677076D8E04C057
              82F1B1BFDF74F57A9ED1007037D866E6F7929D6F8829930E7C0E7B3BA9EB05D8
              4FFCBF3F75DADFF5814B429167A68315F841FEBB83DC0B0C8804FC34B461413B
              192C4FCEE613D8E3EB92A6976FBA7A7D82197E2800D874F5FAF447EF5E773780
              0F74D920E5C11FB29530D29EC68443AB7D64D93BCF87A61FE0C82861B199FE93
              BB62F637005CB4E9FD2F8BF102384A5D6437BC63CDA7C692F8B1E95EDC49D90B
              099F0708D85D340EB8ADDCA117BEE496AFBB1F969288DC09E04D0FBEF7252F08
              E1F701C0E6FAF9DB0C4C0DD2804ECA484DB65F6F7F7342DF1F4CA74A07947BD6
              E859FC43A536F003A9EA415CEF6BAEF05B0C077CA6AEFBDCDD7420006202FDBD
              80AFB8FBCAE3192FA063506BD80744E4AE14FC7B9AF461B093467200B0EBBA79
              2E95322BB916BDCFD4276CE993D04102E217374200ECAC8301168001DC21229F
              10C87F00D88917D8D107807BAF3C395EB3E1F62FB2C80331F36F2B52AF0C81F9
              89913CD46925060DD71AFE4C1F6656C2CDEAF3225276EE8ABEAC7E018BEC774E
              403129F4D9AFF303D77E4FF0290B527B1BF718914F2562AE07B0F3DE2B4F6EE3
              05780C6C0EBDF7CA936300FF77CD86DBEF9D4AF9D5025C244CE700A867DA20D3
              6A72B143453E2C39F7C2BD11E6D42FC4D24CDB41FF82470A19B82448CF0FF9EB
              E0CD10C640CB2107004427B54323E6D6C3CD5D63FE670AF36FB055BECEBD579E
              2C78811E07DC2F60CD86DB158025C274C678877F77572B3DF1B8790D75D4681D
              D5C0168D548947E06503557F36D0AF050C4A08D141B4844BCF57F83E436E017A
              00C06500B0886BB5B2DFA79CD1C28BEBA95BEE6296A79F9AE8DC68207F0B656E
              01D00690BC90057FD000F08040004659E8F0D951E5CDCB9A9557D6037D6A4054
              E211AADE74B0EAA780E51941B5FF6AE0200B5312BC0F0A963EE1E70E25972D40
              267411E47D022917BD020E00BB52917F4D19D76D69B7FFA36DD21800DF7BE5C9
              8CFF878E67B563C89A0DB70700C293E7CD5E142ABA5411BD5E115EA288942A93
              FB065A815CE6BF081FA0D722B0F4710407693F500020D3F49CA6CEF2008B7C93
              05DF62919BAFBDF46883FFC78FE76CCB98777DEDF1398A70B6227A15119D05C2
              51BE1528A57C7F1146D034C22F2E492942E8D5FE1EF3BF8B456E49597EC4C0B7
              FEFEA2950FE03FD971C8F60CFAEDAF3FB10284F500BD0C8A5613613511CDEE5B
              0A8067C4092CEFC2EDFF3CC0F497B53F01F07316B985456E65C12D2CF2E8DF5C
              7884E03FF1F1BC6D1A0500EFFBD7271712D16A10AD06702C404701584884F920
              9A033BF5FCC04B40291AE8F1D945C645E421113C009607013C04C843103CF8C9
              37AC68E3C5E3970780FD1DBF73FDD31AC03C000B41B410C02C10AAB01B604410
              5401542192ED9E1E8BA0056007203B20B203C0B66B5EB374DF8B623DF8E3FF1F
              00AB7690F79BC459B10000000049454E44AE426082}
            ReflectionOpacityStart = 50
            Version = '1.5.0.2'
          end
          object RxLabel27: TRxLabel
            Left = 330
            Top = 60
            Width = 56
            Height = 13
            Cursor = crHandPoint
            Caption = 'Consultar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16551493
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
            OnClick = RxLabel27Click
          end
          object lblIEFisica: TRxLabel
            Left = 3
            Top = 233
            Width = 24
            Height = 13
            Caption = 'I.E.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ShadowColor = clWhite
            ShadowSize = 0
          end
          object DBDateEdit1: TDBDateEdit
            Left = 87
            Top = 158
            Width = 119
            Height = 21
            DataField = 'NASCIMENTO_IA'
            DataSource = DM.DTS_CLI
            Color = 15263976
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnEnter = DBDateEdit1Enter
            OnExit = DBDateEdit1Exit
          end
          object db_nome: TDBEdit
            Left = 87
            Top = 8
            Width = 375
            Height = 21
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'NOME_RS'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnEnter = db_nomeEnter
            OnExit = db_nomeExit
            OnKeyDown = db_nomeKeyDown
          end
          object suiDBEdit1: TDBEdit
            Left = 87
            Top = 33
            Width = 375
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            Ctl3D = True
            DataField = 'APELIDO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnEnter = suiDBEdit1Enter
            OnExit = suiDBEdit1Exit
          end
          object suiDBEdit3: TDBEdit
            Left = 87
            Top = 83
            Width = 374
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'RG_IE'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object suiDBEdit2: TDBEdit
            Left = 87
            Top = 58
            Width = 234
            Height = 21
            HelpType = htKeyword
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'CPF_CNPJ'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnEnter = suiDBEdit2Enter
            OnExit = suiDBEdit2Exit
            OnKeyDown = suiDBEdit2KeyDown
            OnKeyPress = suiDBEdit2KeyPress
          end
          object suiDBEdit4: TDBEdit
            Left = 536
            Top = 58
            Width = 229
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'ENDERECO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnEnter = suiDBEdit4Enter
            OnExit = suiDBEdit4Exit
          end
          object suiDBEdit12: TDBEdit
            Left = 536
            Top = 158
            Width = 286
            Height = 21
            CharCase = ecLowerCase
            Color = 15263976
            DataField = 'EMAIL'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            OnEnter = suiDBEdit12Enter
            OnExit = suiDBEdit12Exit
          end
          object suiDBEdit8: TDBEdit
            Left = 566
            Top = 8
            Width = 257
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'CIDADE'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = suiDBEdit8Enter
            OnExit = suiDBEdit8Exit
          end
          object suiDBEdit7: TDBEdit
            Left = 536
            Top = 33
            Width = 77
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'CEP'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            TabOrder = 12
            OnEnter = suiDBEdit7Enter
            OnExit = suiDBEdit7Exit
          end
          object suiDBEdit9: TDBEdit
            Left = 530
            Top = 110
            Width = 92
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'TELEFONE'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 14
            ParentFont = False
            TabOrder = 18
            OnEnter = suiDBEdit9Enter
            OnExit = suiDBEdit9Exit
          end
          object suiDBEdit11: TDBEdit
            Left = 536
            Top = 133
            Width = 118
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'CELULAR'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 14
            ParentFont = False
            TabOrder = 20
            OnEnter = suiDBEdit11Enter
            OnExit = suiDBEdit11Exit
          end
          object suiDBEdit10: TDBEdit
            Left = 716
            Top = 108
            Width = 106
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'FAX'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 14
            ParentFont = False
            TabOrder = 19
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
          end
          object suiDBComboBox2: TDBComboBox
            Left = 87
            Top = 133
            Width = 373
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'ESTADOCIVIL'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'CASADO(A)'
              'DIVORCIADO(A)'
              'SOLTEIRO(A)'
              'VIUVO(A)'
              'AMAZIADO(A)'
              'OUTROS')
            ParentFont = False
            TabOrder = 6
            OnEnter = suiDBComboBox2Enter
            OnExit = suiDBComboBox2Exit
          end
          object suiDBComboBox1: TDBComboBox
            Left = 336
            Top = 157
            Width = 124
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'SEXO'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'MASCULINO'
              'FEMININO')
            ParentFont = False
            TabOrder = 8
            OnEnter = suiDBComboBox1Enter
            OnExit = suiDBComboBox1Exit
          end
          object DBEdit1: TDBEdit
            Left = 87
            Top = 108
            Width = 182
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'ORGAO_EMISSOR'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object DBEdit2: TDBEdit
            Left = 536
            Top = 184
            Width = 221
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            Ctl3D = True
            DataField = 'NATURALIDADE'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 22
            OnEnter = DBEdit2Enter
            OnExit = DBEdit2Exit
          end
          object DBDateEdit5: TDBDateEdit
            Left = 339
            Top = 110
            Width = 122
            Height = 21
            DataField = 'DATA_EMISSAO_RG'
            DataSource = DM.DTS_CLI
            Color = 15263976
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            OnEnter = DBDateEdit1Enter
            OnExit = DBDateEdit1Exit
          end
          object DBEdit3: TDBEdit
            Left = 644
            Top = 33
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'UF'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 13
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
          end
          object DBEdit4: TDBEdit
            Left = 783
            Top = 184
            Width = 39
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'NATURALIDADE_UF'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 23
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
          end
          object DBEdit5: TRxDBComboEdit
            Left = 536
            Top = 83
            Width = 287
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = DM.DTS_CLI
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            ParentColor = True
            TabOrder = 17
            OnButtonClick = DBEdit5ButtonClick
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 87
            Top = 184
            Width = 373
            Height = 21
            DataField = 'COD_ZONA'
            DataSource = DM.DTS_CLI
            KeyField = 'COD_ZONA'
            ListField = 'DESCRICAO'
            ListSource = DM.DTS_ZONAS
            ParentColor = True
            TabOrder = 9
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
          end
          object DBEdit9: TDBEdit
            Left = 87
            Top = 207
            Width = 735
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'PONTO_REFERENCIA'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
          object DBEdit19: TDBEdit
            Left = 716
            Top = 133
            Width = 106
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'CX_POSTAL'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 25
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
          end
          object DBEdit30: TDBEdit
            Left = 788
            Top = 58
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'NUMERO'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 16
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
            OnKeyPress = DBEdit30KeyPress
          end
          object DBEdit37: TDBEdit
            Left = 764
            Top = 33
            Width = 59
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'COD_IBGE'
            DataSource = DM.DTS_CLI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
            OnEnter = suiDBEdit10Enter
            OnExit = suiDBEdit10Exit
          end
          object FDvGlowButton1: TAdvGlowButton
            Left = 529
            Top = 8
            Width = 31
            Height = 23
            Hint = 'Pesquisa o Municipio,IBGE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
              11000000097048597300000B1300000B1301009A9C180000000467414D410000
              B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
              75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
              3FC3400080006262182000104003663140000D98C500013460160304D080590C
              10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
              323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
              A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
              FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
              5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
              2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
              ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
              7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
              4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
              4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
              11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
              CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
              FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
              CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
              0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
              F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
              CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
              AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
              BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
              1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
              7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
              907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
              07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
              7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
              9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
              495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
              065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
              039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
              62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
              06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
              B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
              2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
              2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
              B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
              196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
              B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
              F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
              67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
              20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
              3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
              A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
              C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
              880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
              C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
              6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
              FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
              FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
              E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
              F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
              5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
              86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
              089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
              B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
              6D06AD16470000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 26
            Appearance.BorderColor = 12631218
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 14671574
            Appearance.ColorTo = 15000283
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 14144974
            Appearance.ColorMirrorTo = 15197664
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
          object EdtCodConvenio: TRzDBButtonEdit
            Left = 357
            Top = 231
            Width = 61
            Height = 21
            DataSource = DM.DTS_CLI
            DataField = 'COD_CONV'
            Color = 15263976
            FocusColor = 10550008
            TabOrder = 24
            OnExit = EdtCodConvenioExit
            OnKeyDown = EdtCodConvenioKeyDown
            OnKeyPress = EdtCodConvenioKeyPress
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = EdtCodConvenioButtonClick
          end
          object EdtNomeConvenio: TEdit
            Left = 422
            Top = 231
            Width = 322
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            Enabled = False
            MaxLength = 50
            TabOrder = 27
          end
          object AlignEdit1: TAlignEdit
            Left = 853
            Top = 210
            Width = 49
            Height = 21
            Hint = 'Pressione F2 para Consultar ou F3 para cadastrar'
            Alignment = taRightJustify
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
            Visible = False
            OnExit = EdtCodConvenioExit
            OnKeyDown = EdtCodConvenioKeyDown
          end
          object DBCheckBox1: TDBCheckBox
            Left = 750
            Top = 234
            Width = 97
            Height = 17
            Caption = 'Funcion'#225'rio'
            DataField = 'FUNCIONARIO'
            DataSource = DM.DTS_CLI
            TabOrder = 29
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBCheckBox1Click
          end
          object edtIEFisica: TDBEdit
            Left = 87
            Top = 231
            Width = 202
            Height = 21
            CharCase = ecUpperCase
            Color = 15263976
            DataField = 'IE'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 30
            OnEnter = suiDBEdit3Enter
            OnExit = suiDBEdit3Exit
          end
        end
      end
      object pg_rodape: TPageView
        Left = 0
        Top = 260
        Width = 990
        Height = 178
        ActivePage = PageSheet11
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alBottom
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 1
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet11: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Foto/Dados'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha1: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label56: TLabel
              Left = 17
              Top = 58
              Width = 101
              Height = 18
              Caption = 'Sem Imagem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 171
              Top = 39
              Width = 101
              Height = 13
              Caption = 'Inserir  de um arquivo'
            end
            object Label54: TLabel
              Left = 170
              Top = 87
              Width = 104
              Height = 13
              Caption = 'Capturar p/ Web Cam'
            end
            object Label55: TLabel
              Left = 200
              Top = 135
              Width = 31
              Height = 13
              Caption = 'Excluir'
            end
            object Image2: TImage
              Left = 13
              Top = 6
              Width = 132
              Height = 131
              Center = True
              Stretch = True
              Transparent = True
            end
            object SpeedButton2: TAdvGlowButton
              Left = 203
              Top = 9
              Width = 30
              Height = 24
              Hint = 'Inserir imagem de um arquivo'
              ImageIndex = 39
              Images = FormPrincipal.sAlphaImageList3
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = SpeedButton2Click
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
            object SpeedButton3: TAdvGlowButton
              Left = 203
              Top = 60
              Width = 30
              Height = 24
              Hint = 'Inserir imagem de uma webcan'
              ImageIndex = 36
              Images = FormPrincipal.sAlphaImageList3
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = SpeedButton3Click
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
            object SpeedButton4: TAdvGlowButton
              Left = 203
              Top = 108
              Width = 30
              Height = 24
              Hint = 'Excluir Imagem'
              ImageIndex = 3
              Images = FormPrincipal.sAlphaImageList3
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = SpeedButton4Click
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
            object Panel11: TPanel
              Left = 473
              Top = 89
              Width = 272
              Height = 47
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object RxLabel72: TRxLabel
                Left = 5
                Top = 25
                Width = 89
                Height = 13
                Caption = 'IE do Produtor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit22: TDBEdit
                Left = 96
                Top = 21
                Width = 169
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                Color = 15263976
                DataField = 'INSC_PRODUTOR_RURAL'
                DataSource = DM.DTS_CLI
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 9
                ParentFont = False
                TabOrder = 0
                OnEnter = suiDBEdit7Enter
                OnExit = suiDBEdit7Exit
              end
              object suiDBCheckBox1: TDBCheckBox
                Left = 4
                Top = 3
                Width = 95
                Height = 19
                Caption = 'Produtor Rural?'
                DataField = 'PRODUTOR_RURAL'
                DataSource = DM.DTS_CLI
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object pcad: TGroupBox
              Left = 283
              Top = 3
              Width = 187
              Height = 98
              Caption = '         Informa'#231#245'es Cadastrais'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label28: TLabel
                Left = 48
                Top = 52
                Width = 31
                Height = 13
                Caption = 'Limite:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 7
                Top = 75
                Width = 73
                Height = 13
                Caption = #218'ltima Compra:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object RLIMITE: TRxDBCalcEdit
                Left = 88
                Top = 46
                Width = 89
                Height = 21
                DataField = 'LIMITE_DE_CREDITO'
                DataSource = DM.DTS_CLI
                Color = 15263976
                DecimalPlaces = 15
                DisplayFormat = '###,###,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 1
              end
              object DBDateEdit3: TDBDateEdit
                Left = 88
                Top = 71
                Width = 89
                Height = 21
                DataField = 'DATACAD'
                DataSource = DM.DTS_CLI
                Color = 15263976
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 2
              end
              object wwDBComboBox1: TwwDBComboBox
                Left = 8
                Top = 20
                Width = 170
                Height = 21
                ShowButton = True
                Style = csDropDownList
                MapList = False
                AllowClearKey = False
                Color = 15263976
                DropDownCount = 8
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 0
                Items.Strings = (
                  'CADASTRO APROVADO'
                  'CADASTRO EM OBSERVA'#199#195'O'
                  'CADASTRO BLOQUEADO'
                  'INATIVO'
                  'SPC')
                ItemIndex = 0
                ParentFont = False
                Sorted = False
                TabOrder = 0
                UnboundDataType = wwDefault
              end
            end
            object suiDBRadioGroup4: TDBRadioGroup
              Left = 751
              Top = 14
              Width = 217
              Height = 50
              Hint = 'Selecione Ativo ou Inativo'
              BiDiMode = bdRightToLeft
              Caption = 'Testa Saldo Devedor:'
              Columns = 2
              DataField = 'TESTA_CREDITO'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
              TabStop = True
              Values.Strings = (
                'S'
                'N')
            end
            object suiDBRadioGroup3: TDBRadioGroup
              Left = 750
              Top = 88
              Width = 218
              Height = 48
              Hint = 'Selecione Ativo ou Inativo'
              BiDiMode = bdRightToLeft
              Caption = 'Testa L'#237'mite de Cr'#233'dito:'
              Columns = 2
              DataField = 'TESTA_LIMITE'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 3
              TabStop = True
              Values.Strings = (
                'S'
                'N')
            end
            object suiDBRadioGroup2: TDBRadioGroup
              Left = 474
              Top = 9
              Width = 271
              Height = 41
              Hint = 'Selecione Ativo ou Inativo'
              BiDiMode = bdRightToLeft
              Caption = 'Tipo de Pessoa'
              Columns = 2
              DataField = 'TIPO'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'F'#237'sica'
                'Jur'#237'dica')
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 4
              TabStop = True
              Values.Strings = (
                'F'
                'J')
              OnClick = suiDBRadioGroup2Click
              OnExit = suiDBRadioGroup2Exit
            end
            object Panel4: TPanel
              Left = 476
              Top = 54
              Width = 272
              Height = 32
              BevelInner = bvSpace
              BevelOuter = bvLowered
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 5
              object RxLabel22: TRxLabel
                Left = 5
                Top = 8
                Width = 93
                Height = 13
                Caption = 'Insc. Municipal:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit40: TDBEdit
                Left = 96
                Top = 4
                Width = 169
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                Color = 15263976
                DataField = 'INSC_MUNICIPAL'
                DataSource = DM.DTS_CLI
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 9
                ParentFont = False
                TabOrder = 0
                OnEnter = suiDBEdit7Enter
                OnExit = suiDBEdit7Exit
              end
            end
            object Panel6: TPanel
              Left = -3
              Top = -2
              Width = 172
              Height = 160
              Align = alCustom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 15263976
              TabOrder = 6
              object Bevel1: TBevel
                Left = 3
                Top = 4
                Width = 167
                Height = 128
              end
              object DBImage1: TDBImage
                Left = 5
                Top = 6
                Width = 163
                Height = 125
                Hint = 'Foto do Produto'
                Color = 15263976
                DataField = 'FOTO_LOGOMARCA'
                DataSource = DM.DTS_CLI
                Stretch = True
                TabOrder = 2
                TabStop = False
              end
              object suiButton1: TAdvGlowButton
                Left = 4
                Top = 134
                Width = 73
                Height = 23
                Hint = 'Inserir Foto'
                Caption = 'Inserir'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Spacing = 4
                ParentShowHint = False
                ShowHint = True
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
              object suiButton2: TAdvGlowButton
                Left = 91
                Top = 134
                Width = 73
                Height = 23
                Hint = 'Apagar Foto'
                Caption = 'Apagar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Spacing = 4
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
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
            end
            object DBCheckBox2: TDBCheckBox
              Left = 286
              Top = 122
              Width = 181
              Height = 17
              Caption = 'Consumo Interno (Estadual)'
              DataField = 'CONSUMO_INTERNO'
              DataSource = DM.DTS_Clientes
              TabOrder = 10
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
          end
        end
        object PageSheet7: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = '  Informa'#231#245'es Pessoais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha2: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object RxLabel23: TRxLabel
              Left = 7
              Top = 10
              Width = 20
              Height = 13
              Caption = 'Pai:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ShadowColor = clWhite
              ShadowSize = 0
            end
            object RxLabel24: TRxLabel
              Left = 4
              Top = 41
              Width = 22
              Height = 13
              Caption = 'M'#227'e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ShadowColor = clWhite
              ShadowSize = 0
            end
            object RxLabel55: TRxLabel
              Left = 437
              Top = 10
              Width = 129
              Height = 13
              Caption = 'Nome da Propriedade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel74: TRxLabel
              Left = 437
              Top = 36
              Width = 122
              Height = 13
              Caption = 'Nome do Veterin'#225'rio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel45: TRxLabel
              Left = 5
              Top = 63
              Width = 43
              Height = 13
              Caption = 'Banco:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel36: TRxLabel
              Left = 437
              Top = 62
              Width = 175
              Height = 13
              Caption = 'Outras Informa'#231#245'es do Banco:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel35: TRxLabel
              Left = 221
              Top = 85
              Width = 58
              Height = 13
              Caption = 'N'#176' Conta:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel34: TRxLabel
              Left = 220
              Top = 63
              Width = 67
              Height = 13
              Caption = 'N'#176' Agencia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel33: TRxLabel
              Left = 5
              Top = 93
              Width = 107
              Height = 13
              Caption = 'Nome da Agencia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object suiDBEdit14: TDBEdit
              Left = 55
              Top = 9
              Width = 369
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'PAI'
              DataSource = DM.DTS_CLI
              TabOrder = 0
              OnEnter = suiDBEdit14Enter
              OnExit = suiDBEdit14Exit
            end
            object suiDBEdit15: TDBEdit
              Left = 55
              Top = 33
              Width = 369
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'MAE'
              DataSource = DM.DTS_CLI
              TabOrder = 1
              OnEnter = suiDBEdit15Enter
              OnExit = suiDBEdit15Exit
            end
            object DBEdit28: TDBEdit
              Left = 573
              Top = 9
              Width = 398
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME_PROPRIEDADE'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object DBEdit29: TDBEdit
              Left = 573
              Top = 33
              Width = 398
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME_VETERINARIO'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object suiDBEdit22: TDBEdit
              Left = 290
              Top = 83
              Width = 134
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CONTA_BANCARIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = suiDBEdit22Enter
              OnExit = suiDBEdit22Exit
            end
            object DBMemo3: TDBMemo
              Left = 437
              Top = 74
              Width = 535
              Height = 64
              Color = 15263976
              Ctl3D = True
              DataField = 'OBSERVACOES_BANCO'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 5
              OnEnter = DBMemo1Enter
              OnExit = DBMemo1Exit
            end
            object DBEdit27: TDBEdit
              Left = 290
              Top = 59
              Width = 134
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NUMERO_AGENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = suiDBEdit22Enter
              OnExit = suiDBEdit22Exit
            end
            object DBEDIT26: TDBEdit
              Left = 54
              Top = 107
              Width = 370
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME_AGENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = suiDBEdit22Enter
              OnExit = suiDBEdit22Exit
            end
            object DBEdit25: TDBEdit
              Left = 55
              Top = 58
              Width = 158
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'BANCO_REFERENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = suiDBEdit22Enter
              OnExit = suiDBEdit22Exit
            end
          end
        end
        object PageSheet10: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Cobran'#231'a'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PFICHA4: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            TabOrder = 0
            object RxLabel11: TRxLabel
              Left = 5
              Top = 107
              Width = 68
              Height = 13
              Caption = 'Tipo Resid:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel73: TRxLabel
              Left = 451
              Top = 103
              Width = 112
              Height = 13
              Caption = 'Tempo Resid'#234'ncia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel71: TRxLabel
              Left = 451
              Top = 72
              Width = 117
              Height = 13
              Caption = 'Inscri'#231#227'o Municipal:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel70: TRxLabel
              Left = 2
              Top = 74
              Width = 104
              Height = 13
              Caption = 'Cidade Cobranca:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel69: TRxLabel
              Left = 516
              Top = 1
              Width = 60
              Height = 13
              Caption = 'Cx Postal:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel67: TRxLabel
              Left = 452
              Top = 1
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
            object RxLabel66: TRxLabel
              Left = 450
              Top = 38
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
            object RxLabel65: TRxLabel
              Left = 2
              Top = 39
              Width = 98
              Height = 13
              Caption = 'Bairro Cobranca:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel64: TRxLabel
              Left = 5
              Top = 2
              Width = 119
              Height = 13
              Caption = 'Endere'#231'o Cobran'#231'a:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxDBComboEdit1: TRxDBComboEdit
              Left = 2
              Top = 52
              Width = 442
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO_COBRANCA'
              DataSource = DM.DTS_CLI
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentColor = True
              TabOrder = 0
              OnButtonClick = DBEdit5ButtonClick
              OnEnter = DBEdit5Enter
              OnExit = DBEdit5Exit
            end
            object suiDBComboBox3: TDBComboBox
              Left = 2
              Top = 120
              Width = 442
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'RESIDENCIA_SEDE'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'ALUGADA'
                'PROPRIA'
                'FINANCIADA'
                'OUTRAS')
              ParentFont = False
              TabOrder = 1
              OnEnter = suiDBComboBox3Enter
              OnExit = suiDBComboBox3Exit
            end
            object DBEdit24: TDBEdit
              Left = 452
              Top = 119
              Width = 270
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'INSC_MUNICIPAL'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 2
              OnEnter = suiDBEdit7Enter
              OnExit = suiDBEdit7Exit
            end
            object DBEdit16: TDBEdit
              Left = 2
              Top = 18
              Width = 442
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'ENDERECO_COBRANCA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = suiDBEdit4Enter
              OnExit = suiDBEdit4Exit
            end
            object DBEdit17: TDBEdit
              Left = 452
              Top = 53
              Width = 270
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CEP_COBRANCA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 4
              OnEnter = suiDBEdit7Enter
              OnExit = suiDBEdit7Exit
            end
            object DBEdit18: TDBEdit
              Left = 453
              Top = 16
              Width = 59
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'UF_COBRANCA'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 5
              OnEnter = suiDBEdit10Enter
              OnExit = suiDBEdit10Exit
            end
            object DBEdit20: TDBEdit
              Left = 518
              Top = 16
              Width = 203
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CX_POSTAL_COBRANCA'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 6
              OnEnter = suiDBEdit10Enter
              OnExit = suiDBEdit10Exit
            end
            object DBEdit21: TDBEdit
              Left = 2
              Top = 87
              Width = 442
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CIDADE_COBRANCA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = suiDBEdit8Enter
              OnExit = suiDBEdit8Exit
            end
            object DBEdit23: TDBEdit
              Left = 452
              Top = 85
              Width = 270
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'INSC_MUNICIPAL'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 8
              OnEnter = suiDBEdit7Enter
              OnExit = suiDBEdit7Exit
            end
          end
        end
        object PageSheet8: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Observa'#231#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha3: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object FDvReflectionImage8: TAdvReflectionImage
              Left = 799
              Top = 8
              Width = 64
              Height = 114
              AutoSize = True
              Picture.Data = {
                89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
                DE0000000473424954080808087C086488000000097048597300000A8C00000A
                8C01BDC6CFD800000016744558744372656174696F6E2054696D650030342F30
                382F303821FD63AE0000001874455874536F6674776172650041646F62652046
                697265776F726B734FB31F4E0000124249444154789CED5B79701CD599FFBDD7
                C7DC33D268349275DBC60663CB10631B634EDB5866C118422A84CAC695AACDB5
                D91C9BA42A54A86493546A2B7F2C6CB25452C906B2500957C00BD8DC1803263E
                622E438C05D896842DD93A66A419CDD5D3D3DDEFBDFDA3E79446B26C245C95EC
                57D5D5FD7A7AFAFB7EBFEF784777132104FE5EE4A945ADFF2901639B23F8B948
                0C0000C8DF0B010F35D6FC3AECF37DC3054017F8DF1704BE7457EF40F26F9E80
                BB08A1F23DF7FFA1E6A96D5FC8BDBE874BFE00ED200013D8B103B88D9E6B03E7
                52D61282F49D776F5BD4B9E20B57FFFE01EEBDFA5AC34CC4D9470210C04D5702
                DFFD9B25801082ADF7FEFE317FD3C25B46E369082AD19577DFA386366DD65962
                DC1A06C080A63949819DBBF72F3C351A6B1F8B276B5C4E750521A483711E322D
                E6618C498C712A002892C424893249A2A62C497142C8F14C56FFABAAC8A32DE1
                D0D855AB961F0E8542DAD9D8F0CB5FDCF9D0C2D51B3FDF795E1B5EEFEE81DFED
                C479F35B118D27D9911F7D4FB20EEC7E5677B9FF715608D8FEE2EEF307862317
                534A6F4C6BD90B19E7E7712E7C8661820B0142080020BFAB143B1C0108144C51
                1519AAA24008D1E75095A843550E08819D8BDA9B3EDC74F5DABED3D9D37BF7AD
                F71AEEC62F1F69BD0917747E0A92303130328E9496854124A4878F0FD1C77FB5
                E28B8FEC1C3E6B029E7D794FEBC050E4A6AC61DEA6E78C4FE54CD3CD18874429
                DC2E07FC1E377C5E37025E375C4E27DC2E071C8A0259922049144208581683C5
                380CD34426AB23ADE9C864B34865B248A433C8EA0638E7101070AA2A14594E2A
                B274D8E9501E0DD50476DFBA79E3A189767D70F7D6FF0EBAE5AF797C01246A16
                A0B7FE6A04EB9B118F8FE3838161F0C4C878909F5A7FEBD66FBF039C4537F8C0
                93CF5D944865BEA3E9B92D9A9E0B32CEE1713AD1180AA2391C446328881ABF17
                6E97034E5505080041EC7D5E48A1410A47227F4C200447366740CBEA4865B218
                198BE154640CD15802E3A93418E39065094E55B514453EE0773BEFBBFCD69BFF
                B48422FBFE7F6DFD6DC82BFFB3ECAD03824D70865BA0A7351C34DB11A12168C3
                BD49C7E0C18D5BBFFBB3378AB6CC9480479EDEB968349EB843CBE6B666B2BAAC
                C8129A1B4258DCDE8C9686106AFD3E4832051702820B7051024B082AE3BF705C
                D03DA14D0901A114147631E38223AD65311A4BA0EFE4104E0C45301A4F807301
                87C301A8AEA35DC6DE93F3E5D87AEA0B03C12648E176884C1252A40F99F118F6
                E0C2B896CDDCF0C57FB9FD2FE5B86644C03D8F6CFF6E32A3FD2CADE95E5992B0
                A8BD099D8B3AD0180A42962570CEC138B7E112024A691E17B1C195D581E2F929
                A4608F10A2F8DF022994D8646ABA8E93C3A3E8EE1B40DFF0383AB3EFE20AF729
                507F08A86D8614EE00B40478A41F247612D9646C4C1F8F5C37FFA77BDE9AA86F
                5A021E7FE1D5A6A1C8D87D89746693615A58D0D288559D8BD15C5F072100C659
                D17B84D0A2E7CA8156164032A110161A251B4AE6D845B18290E20502B2A2C224
                32065EF81D9A46F683D63643049BF2E093E0917E48B17EA4938948BF2E5DBFE6
                078FBE5D0DE394043CBCE3C52B47C6C61F4C65B436A7D381359D8BB16C513B28
                A5302D66873625F9BD0D1E79C0E5A0EDE36AE7AA8B10E5C02793208400A11218
                5190D8FF207C7DBB406A9AECB0AFEF00B229B0683F94B1E388670C768AD45E75
                D9377FB57F2A7D550978E0C9E76F8AC6128F25354D9D170A62DDAA4E34D4D5C2
                B0182004282D80A5A0941643DD4E75520449082D6B03B6C72746C1640226EE85
                10E0BC0CBCA4627CEF83707EF81C94BA16A0AEB9089E470720477B114966F082
                733DCF063A9E591CF67C69CBC6AB466744C0034F3E7F73349E782299D1C8A2D6
                26AC5BD50997D301937110A0089EE6C1977BDD064AF3758094853D8110648A34
                28070F94D24114DB85A8000898A422B6F74138DE7F064AB01908B540AA6F07B2
                69F0E80048E4182C0EECF26DC47B710ABFCCE17639BBC3B5816B3F7763D7F0B4
                043CF2F4CE95C3A3F1DDC974C6737E4733D6ADBA08B24461716117A102782A95
                3C8F52AE534AF3C0CBC37E7A8F4F272542044028B8AC60F4B587A01CDE0E25D8
                02D4B5406AE800B41478B41F24D20B2D678074DD0E51B710AFEEDD8F9E814138
                55156EA7A3BB391CBCE696EB36544442B162EDDAB3CF3F1A4FFC29AD653DF39B
                1BB06EE572481299127C91414AF3C04BE9509E1A670B1E28D50B2AC910B282B1
                3D7F825C0E3EDC0E6805CFF7229B3341BA6E87DAB4046E6A62D3DA4BB0A8AD19
                A66942CF194B47C612DBCD745AADD0518880DF3DF2E43DF164FA2B1EB70B5BAE
                5A0D8FDB09C6791E8CED5DC10562F13838E715215F2A80767B3685100221BB60
                1E7E0EFE9EE7A1D43695C06733E0A3FD20233DC8685924567F15E1A597436259
                70CE211102C3B4F0F49F5FC770340E87AAC0EFF5DCF9D5DB6EBABD8280479FD9
                B97C301A7F379B33C8C63517E1BC9626E42CCBF62AC957FBBC57196365395E0A
                F942EECF2A784A21640746F73D0AF5BDC7A1D635DBE0EB3B8AE031D2035DCF41
                FA871F4069BA10C4C80020608C41080E4592313A9EC053BB5F47CE30E1742868
                ACABBDECB61BBB0E00800C00E3A9CCB7F49C41E6378531BFA9018665D9A08062
                5757086955558BB95E1EF273029E5244FFB21D8EC34FDA052F3801FC700F72B9
                1C9C9B7F0467FB32302D0D4E250821402905E70226B3501FACC1CAA58BB0F7E0
                615816433C99BE13C09500405FD9F7C602C3B0BA0821B8A0A305945080A094F7
                28075A9ED3A4625FE8AE66BA5593E26F04E094227A6007C85B0F43A99D677775
                E17640CF808F0E00233DC8E574B8B6FC1BBCF39741E8F6ACB9E008DB66DB6ED3
                B4B0647E2B1AEA6A61318E9C615EF1F0532F5E050072DFC9E14B0D66B505035E
                84EB6A60E5F3BED0B7978FEE082190651992244DEAE731D580724264CC245238
                80E81BCF80BCF510D4E03CDBF3E17640CF82470780480F2CD384FF969FC1DD7C
                3E986541551530C66159268420C528604C40804355145CB8B01D91F821702190
                CA64FF09C09F654AE90DA6C55017F0C3E5506132060A0250144779054685E018
                1E1E81E01CA41015D3613F2DD42A64A91E889ED7E03CF498EDF950AB1DF67A06
                3C7A1224D28B742A09EDB2AF232787113D71A2386AE45C2018AC85AC28E08CDB
                7613020E02C619DA1AEB11F0B891D274989675C5BEB7DE6D952589765242E0F7
                B8F23614809112C8BC9729911008F8F3DDF2E9F3FE74049413470985509D88BD
                F93494830F4309350375ADF62027A7D99E1FE985AE67E0BBF92708CC5B0AAEA7
                01670D0080730E40409695FC0CB41405820970CEE17139D118AA45F2F82084C0
                8263270657C879A89065390FC8CE4182CA810E4020C912BC0EEF8C8ADE9914C5
                42BAC5FEFA325CEF6D8312CA77750D85B0EFB7C16B29786EFA313C1DCB01C600
                C557225300427070CE6059AC785F51DCDB6B12A1DA007AFA87C018279CB1CB65
                01F10108965B8CE5737EE278BE50544AAC1686A7D3019AEAF74A52CBC01F7A05
                C6DE7BA106C2B6E7C31D404EB70B5EA417D94C12AECD3F84A76339B86956BD77
                41A79DAEA5B904A11460028400019FA7302581A2C86B6466F167252A7D2EADE9
                A0848015272C250F96FA7A6287D834DE3D9BEE30F6DEAB30F6DC0335500F52D7
                628337F4BCE7FB60EA19F86EFE317C1D17D9F6C8F294F7324D1384B0A2132612
                EE90655022D9AB52023572474BF88DEEDEFEC15832D594334CC88A6C2767F9A2
                46BE2B648C21128982E70743E5223035F842B19C74BDA4808FF642DE732F1CFE
                1050D766877D1E3C89F4219D18456AF557E077B7607CC07E9C2584A87A3F00A8
                ABAB83A2C8F92EB51489793479EF8BFC9E44E4F56B571FE91B18DE9D48653E1F
                1D4FA2755E3D98C5274D6D01BB5079BD5E08CEAB82AC16F4E5F3868AEB2905E3
                04E9916ED0F00208B7174A431B846114733E9B1E87EB863BE09FBF1A4C4B028A
                B70063CA149324A9443A294BC77C041BA665AF5001608C1D940120E0F3FE369D
                D53F7FF4C429B4CD0B5778B262818352F87CBEC95A51DDFBE5FFAD26D9F83008
                B290E65F0C5DF181A78721C60680913EE8A938DC9BEF4060D16ABBC207FC15FF
                9D8A00CE79BE47006CBFB3FCA15DB8C7D31A04081459E6AAAAECA500F0D9EBD7
                EFF57BDCCF0F0C4531181983AA2A15A0CA0B6241C14C367B21A3DA6F0202809C
                E887E2AB050DB6C0EDF5C3CAE520867B904BC5E0BEE10745F0D5EE33D5BDCB89
                2F2CC41487F520188D2540082049B4EF828E96378BF1D9DA18FE1695A4F49B87
                8FC1B45831944A435DBB2549D2A4AD303A9C78AE7C9A5CB91164B52CEE7F781B
                68A8032A159062BD70320D564D1BBC37FE1081C597E61D47ABEA9C6AAB8CDE92
                FD924491C86888C493506419AAAAEE5CB1FCC2A16239DD78E5EADE782AFDAF43
                A3B1FF79FDD087B866D5727BEDAF6CB183738E78613A5C19EB934271AADC0700
                97DB8DBDAFBC84AFFDF02EBC75E803FCFC7B5BA1E7141835CBE15ABA04BACB8B
                6C345AF19FAA73882A69E00F0420CB0A005151071459C6F153234865B2F0B99D
                F07B5CBF07CA164400E0D6EBD7DF17F4FBFEE3C38F0670F0835E3854B57A6E17
                4017D701266F5309A5141002BB5E7E09375EB70157746D81D5B406EEE5D7A366
                F1A550540760EA93754EA567E286C9FE902509C97406EFF7F5435564B89C8E6D
                B76CBA66EA2743F73FF1DC6FD25AF6EB975DB404972C5D0CCB6210F9B1412935
                2A8D9BAE3D5138E7181B8DA03EDC38ED7513A59AAD13CF95D7077B64C8214B12
                5E7EFD1D7CD0DB0FBFD713EF680E2FBB76EDEA41609A65F13F6E7FE197A98CF6
                9D8B2F588835172F052504169BDCFD01D509986E4C50BE9F09A8727067762D87
                222B78BBFB28F61E3C0C8FCB8950ADFF33B7745DF344D19EE986B48F3DF7CAD7
                A2B1C4AFDAE6D52BEB2FBB041EB70B96694EEAEFCF8680E964360800041459C6
                E1A31FE1D537DE852ACB08067CDFFFECF5EBEFAAB0E7748FC6B6BFB4E7D291B1
                D81FBD6ECFE2CB2F598A8EE679109CC362AC74935924603A7B664A802C492004
                78BBFB18F6BFD30D87AAA0AEC6F7ADCF6CBAE6D793EC99C9B3C123C707827F79
                A7FBA786617D737E4B2359DD7901027E2F3867608C5705355D2F70BA2743539D
                9FF8DBC476A1CB4C6734EC3B7818474F9C84DBE91CAC0FD67C63CBFAB5DBABDA
                72268FC777ECDAB766642CF6EF2E8763C3F90B5AB164411B7C5E0F200458BEF8
                941B339D5423613A5BA62340A2145492601A263E3C3E8083DDC790D174047CEE
                6DE7B5347DEFD2154B4F4E69C7D9BC20F1C8332FDF9CD1B2DF76BB9CEBDA9B1A
                70C18236D4D5066CA3F24F8A4FD71D9EA994873F21954B75192D8BBE8141BCDF
                7302F1640A2EA763575D8DFFCECDEBD6EE3CDD7D3FD62B32DB5ED87D6D2AA37D
                5D91956BC3C11A7F7343081DCD0D70BB9CE09C578D827252A65F53000AD37221
                B83D7D2DEB39B4AC8E91D1188E0F8E60283A868CA6A79D0EF5D9BA40E0FE1BD6
                FD7971A61866E51DA1570E1C6CFEE8E4D00D12953EA728F2D55D97AF9442B501
                30C626915058699E8908216098260CC384615A88259288C412184FA690CA6848
                6BFA28A5F490D3A13CBEA0B5E9B935175D78FC4C6D9FF5B7C4FEB0FDC55DCBCE
                EBD870C9B2F361591680FC1235ECD9E47B47FB7072380AB7D3511C6217D24570
                0E2E44F12D13C334A11B06325A2E9B338C314992725CF0DE6C36F75243A8F644
                736368D7EACE25F18F63EFD44B2B6729BA9EDB174BA43600F6EC4B4014D38100
                188A8C612832F607AFDBF5B8615A2EC6996C322673C625CB6212A5942B8AC415
                49B65455B15C4E355957E3ED8B65D2C76EDBB49E9D46FD19CBAC13501BF01D4B
                A535E47239288A02C14B6B7385616AC0E77DED339BAE7A7AB6759F8DCCFA9BA2
                2D0DF5AFA4B5AC36369ECCE77B492C8B21679890252936DB7ACF56669D80B52B
                960D12420E9C188C6062B1138223679842409C9A6DBD672B73F2AEB0C7EDFCCD
                A9C828B2BA0EA96C71D5B02C588C999AAE577D5DE55CC89C10F0E9AEB53BB27A
                EEE8918F06CA9E2B0286C9C005370706231FAB72CFA6CC090104B215F07AEE38
                FAD149249269489204C105280128A83ABF655ECD5CE83D1B99B3D7E5B76CB8FC
                0921C4D36FBEF7A1FD309510A8AA0255959580D7DD36577ACF54E6F47B81C50B
                5ABF1C898D9F78ABFB2808A570AA2ABC1E37B49CD139977ACF44E694804F2D59
                14A90BD67CB6E7C4A9CC3BEF1F85244908D506904C6BCBE652EF99C827F2CDD0
                CEBD6F6E188D27772C59D8E66969ACC7FE83DDC32E876341D7952BB373AEFC34
                F2897C32D375C5AA971B42B5D71DE91B1839D2D70FAFDBD99833729FFE24749F
                4E3EB16F86365CB6626F7B5378E5683CF1623C910263ECFB9F94EEE9E45C7C36
                479E7FEDC01D8669FDC4E5747CA7EB8A55BFFDA40DA830E65C7D37B8EFEDC38B
                4DD3DCE074AAF7ADB97869EE9C1881734840410EBCDB8D35172F3D67FACF3901
                E75AFE663F9C9CA9FC3F01E7DA80732DFF07929902C0451F4522000000004945
                4E44AE426082}
              ReflectionOpacityStart = 100
              ReflectionSize = 50
              Version = '1.5.0.2'
            end
            object DBMemo1: TDBMemo
              Left = 9
              Top = 5
              Width = 735
              Height = 132
              Color = clBtnFace
              Ctl3D = True
              DataField = 'OBSERVACOES'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              OnEnter = DBMemo1Enter
              OnExit = DBMemo1Exit
            end
          end
        end
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Conjugu'#234
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 4
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Pficha5: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            TabOrder = 0
            object RxLabel25: TRxLabel
              Left = 2
              Top = 8
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
            object RxLabel61: TRxLabel
              Left = 2
              Top = 104
              Width = 35
              Height = 13
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel60: TRxLabel
              Left = 487
              Top = 120
              Width = 92
              Height = 13
              Caption = 'Data FDmiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel59: TRxLabel
              Left = 511
              Top = 96
              Width = 44
              Height = 13
              Caption = 'Renda:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel58: TRxLabel
              Left = 511
              Top = 64
              Width = 23
              Height = 13
              Caption = 'Rg:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel39: TRxLabel
              Left = 511
              Top = 32
              Width = 73
              Height = 13
              Caption = 'Nascimento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel38: TRxLabel
              Left = 2
              Top = 72
              Width = 59
              Height = 13
              Caption = 'Profiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel37: TRxLabel
              Left = 2
              Top = 32
              Width = 110
              Height = 13
              Caption = 'Local de Trabalho:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel26: TRxLabel
              Left = 511
              Top = 8
              Width = 30
              Height = 13
              Caption = 'CPF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit13: TDBEdit
              Left = 77
              Top = 96
              Width = 420
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'FONE_CONJUGUE'
              DataSource = DM.DTS_CLI
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 0
              OnEnter = suiDBEdit9Enter
              OnExit = suiDBEdit9Exit
            end
            object DBEdit12: TDBEdit
              Left = 590
              Top = 88
              Width = 268
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'RENDA_CONJUGUE'
              DataSource = DM.DTS_CLI
              MaxLength = 14
              TabOrder = 1
            end
            object DBEdit11: TDBEdit
              Left = 590
              Top = 56
              Width = 268
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'RG_CONJUGUE'
              DataSource = DM.DTS_CLI
              MaxLength = 14
              TabOrder = 2
            end
            object DBDateEdit4: TDBDateEdit
              Left = 589
              Top = 115
              Width = 269
              Height = 21
              DataField = 'DATA_ADMINSSAO_CONJUGUE'
              DataSource = DM.DTS_Clientes
              Color = 15263976
              Ctl3D = True
              GlyphKind = gkCustom
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
                8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
                F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
                D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
                BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
                F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
                8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
                CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
                F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
                95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
                E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
                F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
                A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
                FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
                FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
                B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
                FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
                FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
                F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
                7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonWidth = 19
              NumGlyphs = 1
              ParentCtl3D = False
              TabOrder = 3
              OnEnter = DBDateEdit2Enter
              OnExit = DBDateEdit2Exit
            end
            object DBDateEdit2: TDBDateEdit
              Left = 591
              Top = 29
              Width = 269
              Height = 21
              DataField = 'NASCIMENTO_CONJUGE'
              DataSource = DM.DTS_CLI
              Color = 15263976
              Ctl3D = True
              GlyphKind = gkCustom
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
                8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
                F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
                D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
                BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
                F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
                8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
                CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
                F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
                95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
                E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
                F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
                A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
                FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
                FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
                B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
                FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
                FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
                F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
                F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
                7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ButtonWidth = 19
              NumGlyphs = 1
              ParentCtl3D = False
              TabOrder = 4
              OnEnter = DBDateEdit2Enter
              OnExit = DBDateEdit2Exit
            end
            object suiDBEdit26: TDBEdit
              Left = 80
              Top = 64
              Width = 417
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'PROFISSAO_CONJUGE'
              DataSource = DM.DTS_CLI
              TabOrder = 5
              OnEnter = suiDBEdit26Enter
              OnExit = suiDBEdit26Exit
            end
            object suiDBEdit25: TDBEdit
              Left = 120
              Top = 32
              Width = 377
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'TRABALHO_CONJUGE'
              DataSource = DM.DTS_CLI
              TabOrder = 6
              OnEnter = suiDBEdit25Enter
              OnExit = suiDBEdit25Exit
            end
            object suiDBEdit16: TDBEdit
              Left = 591
              Top = 5
              Width = 268
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CPF_CONJUGE'
              DataSource = DM.DTS_CLI
              MaxLength = 14
              TabOrder = 7
            end
            object suiDBEdit13: TDBEdit
              Left = 85
              Top = 7
              Width = 412
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME_CONJUGE'
              DataSource = DM.DTS_CLI
              TabOrder = 8
              OnEnter = suiDBEdit13Enter
              OnExit = suiDBEdit13Exit
            end
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Autoriza'#231#227'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 5
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 721
            Height = 158
            Align = alLeft
            Caption = 'Panel2'
            TabOrder = 0
            object RxLabel76: TRxLabel
              Left = 9
              Top = 7
              Width = 139
              Height = 13
              Caption = 'Autorizado a Comprar 1:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel81: TRxLabel
              Left = 421
              Top = 84
              Width = 101
              Height = 13
              Caption = 'Cpf Autorizado 3:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel80: TRxLabel
              Left = 421
              Top = 47
              Width = 101
              Height = 13
              Caption = 'Cpf Autorizado 2:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel79: TRxLabel
              Left = 421
              Top = 7
              Width = 101
              Height = 13
              Caption = 'Cpf Autorizado 1:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel78: TRxLabel
              Left = 9
              Top = 82
              Width = 139
              Height = 13
              Caption = 'Autorizado a Comprar 3:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel77: TRxLabel
              Left = 9
              Top = 47
              Width = 139
              Height = 13
              Caption = 'Autorizado a Comprar 2:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit35: TDBEdit
              Left = 421
              Top = 62
              Width = 251
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CPF_AUT2'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 14
              ParentFont = False
              TabOrder = 0
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object DBEdit31: TDBEdit
              Left = 8
              Top = 22
              Width = 397
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'AUTORIZADO1'
              DataSource = DM.DTS_CLI
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
            object DBEdit32: TDBEdit
              Left = 8
              Top = 62
              Width = 397
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'AUTORIZADO2'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object DBEdit33: TDBEdit
              Left = 8
              Top = 96
              Width = 397
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'AUTORIZADO3'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object DBEdit34: TDBEdit
              Left = 421
              Top = 21
              Width = 251
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CPF_AUT1'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 14
              ParentFont = False
              TabOrder = 4
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
            object DBEdit36: TDBEdit
              Left = 421
              Top = 96
              Width = 251
              Height = 21
              HelpType = htKeyword
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CPF_AUT3'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 14
              ParentFont = False
              TabOrder = 5
              OnEnter = db_nomeEnter
              OnExit = db_nomeExit
            end
          end
          object suiButton5: TAdvGlowButton
            Left = 741
            Top = 49
            Width = 164
            Height = 33
            Hint = 
              'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
              ' de cr'#233'dito'
            Caption = '&Imprimir Autoriza'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
              F8000000097048597300000B1300000B1301009A9C1800000A4D694343505068
              6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
              F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
              561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
              7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
              1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
              01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
              C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
              00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
              00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
              CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
              4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
              48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
              223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
              560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
              2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
              FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
              F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
              4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
              79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
              812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
              0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
              170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
              48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
              90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
              5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
              5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
              8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
              272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
              48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
              6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
              A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
              2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
              1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
              192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
              3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
              09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
              46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
              EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
              4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
              EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
              79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
              3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
              67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
              6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
              A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
              5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
              D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
              743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
              4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
              D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
              C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
              3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
              FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
              0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
              15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
              476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
              BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
              F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
              A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
              6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
              68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
              949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
              F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
              DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
              772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
              A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
              955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
              EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
              CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
              26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
              8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
              B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
              7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
              EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
              E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
              5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
              EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
              EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
              FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
              CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
              ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
              CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
              F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
              0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
              003A980000176F925FC546000003E14944415478DA9C95CB6B5D551487BF7DCE
              BEC97D24B979104CF001295A8C2212B08A6D2045456B05C5418D5810FA273828
              4227CE0D384941F031D081084A87B5D652EC408AD854DB34606D828DB4370F1B
              F3BA8F9CBDD7DEDBC1C94D937AD3A62E3883B3F739BF6FAFB5F65A4B8510B8D3
              4E9F3A1B00CF7DDACB075E88EF5CD38D3E744E78E5D597A246F046A694E2FBEF
              CE34DC6B081011AC159C931D01E25823223B07582B38118C311B27DCEC8D526A
              EB0F1910713B07186BB0D69224668B601D1245D19677A514CEBB7514F6DE3910
              871521491294522940010152D63A900001621DE3520FEA7A1B90E8C8B7CBFFF1
              CA8AE0ACC3240663D2C71A8B588B35165B5F4B2C263188159CDBF0406F3EB87A
              F7EB7F5A800F8137819E3856440A62ADD03168AD88228823C5E6D0072078F03E
              200E4402CE059C0342F8433CA35F0C771CD7E2FC672FF6E7869FEDCFD2948DA8
              A7AAFBC42E22BB80D2A0B44245EB9151B709C1030E3C456EBD3E4D583FFACA8A
              DBFDF3D5B5D1C35F2D38DD966578DF409E8A83950A780711D06A9AE979ED4108
              69E0D516F57A060204C5DCD9261657C02B8834645B639E7AAC991F7FAF1CD5F9
              2C2C0A94CB9018F0029182EE1543587C1896D37C05A5D20C6FF20080B626D696
              4B2C55D3D25731642DB41435565C9F4E9C67B90AAB35A8AD818807029D0BED3C
              64BBC91805B24D456722929A65763EA1B4EA502A22A315390F12A7B5A113EB58
              355036B066405CDA824A3D6F20A31F139BD5BB56B164BB98DD73948A0D8023E3
              352E82A8292D589D58A19240394943542FC8C981634C0E1CDB79A73370283F84
              FFE5017E78EE045102260578CA162AB6EE41E0FFDAFB23ED28E3D83300CA8015
              8736D651B5503550B33077EE1B962F9DB92FE17AAF2A3E7D98DEFDEF50B5A065
              3D44561C264012C004284F4FB03A3B8D5DEF8EFD8F3F7117E9C0E4D424622D5A
              6BE2F609920031A996B5822E570D3E8210838FA1363B452E9743DBF47A767474
              72F0E08186F2274F9E42C77FA2E3984C26436D762AD589A06A042BEE6F7D6BBE
              72FEEAC4CCF38FECEE4507106BE9EDECC24A0A28168B74757535046CDECBE80C
              334B657433E86698F8B58488FB5C8B736F5F383FFDE5A5B11B432D6D599A5CC4
              8D9B37F0DEE3BD677070884221BF2DA0542A11C51AAF6242731B3F9D1E6769A1
              4A08E113E003ED9CFF0BD8EF6ABEB856B38FF2E47B00EC9BFFF4C2F4F5EBB4B6
              1529140A0D01AD6D45148A5D7D7D9CEB3CF20C0073AB00BF5D1BD99BF66FEF36
              66FB3230767B2E3BF2B93C854281D2CC5C4340A150209FCB932409D746F68E35
              9C68531F0D36FCF9AD43C7C9E6725C19BFCC95F1CBDBDEA36C2EB731F9763C32
              818D797CF1E2D83DEBC099ED01FF0E00862F0C039E13738C0000000049454E44
              AE426082}
            Spacing = 4
            TabOrder = 1
            OnClick = suiButton5Click
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
        object PageSheet3: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Refer'#234'ncias Comerciais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 6
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 990
            Height = 158
            Align = alClient
            TabOrder = 0
            object RxLabel13: TRxLabel
              Left = 753
              Top = 2
              Width = 181
              Height = 13
              Caption = 'Outras Refer'#234'ncias Comerciais:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel63: TRxLabel
              Left = 313
              Top = 83
              Width = 110
              Height = 13
              Caption = 'Contato Empresa2:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel62: TRxLabel
              Left = 305
              Top = 28
              Width = 110
              Height = 13
              Caption = 'Contato Empresa1:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel56: TRxLabel
              Left = 554
              Top = 58
              Width = 55
              Height = 13
              Caption = 'FDmis'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel54: TRxLabel
              Left = 1
              Top = 82
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
            object RxLabel53: TRxLabel
              Left = 586
              Top = 10
              Width = 55
              Height = 13
              Caption = 'FDmis'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel52: TRxLabel
              Left = 1
              Top = 34
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
            object RxLabel44: TRxLabel
              Left = 298
              Top = 56
              Width = 35
              Height = 13
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel43: TRxLabel
              Left = 1
              Top = 58
              Width = 62
              Height = 13
              Caption = 'Empresa2:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel42: TRxLabel
              Left = 298
              Top = 7
              Width = 35
              Height = 13
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxLabel41: TRxLabel
              Left = 1
              Top = 7
              Width = 62
              Height = 13
              Caption = 'Empresa1:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBMemo2: TDBMemo
              Left = 751
              Top = 17
              Width = 227
              Height = 84
              Color = 15263976
              Ctl3D = True
              DataField = 'OBSERVACOES_COMERCIAIS'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              OnEnter = DBMemo1Enter
              OnExit = DBMemo1Exit
            end
            object DBEdit8: TDBEdit
              Left = 61
              Top = 79
              Width = 235
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'ENDERECO_REFERENCIA2'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = suiDBEdit23Enter
              OnExit = suiDBEdit23Exit
            end
            object DBEdit7: TDBEdit
              Left = 664
              Top = 6
              Width = 76
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'DATA_ADMISSAO_REFERENCIA1'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 2
              OnEnter = suiDBEdit24Enter
              OnExit = suiDBEdit24Exit
            end
            object DBEdit6: TDBEdit
              Left = 61
              Top = 31
              Width = 236
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'ENDERECO_REFERENCIA1'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = suiDBEdit23Enter
              OnExit = suiDBEdit23Exit
            end
            object DBEdit15: TDBEdit
              Left = 526
              Top = 80
              Width = 213
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CONTATO2'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = suiDBEdit23Enter
              OnExit = suiDBEdit23Exit
            end
            object DBEdit14: TDBEdit
              Left = 432
              Top = 30
              Width = 308
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'CONTATO1'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = suiDBEdit23Enter
              OnExit = suiDBEdit23Exit
            end
            object DBEdit10: TDBEdit
              Left = 663
              Top = 54
              Width = 76
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'DATA_ADMISSAO_REFERENCIA2'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 6
              OnEnter = suiDBEdit24Enter
              OnExit = suiDBEdit24Exit
            end
            object suiDBEdit28: TDBEdit
              Left = 338
              Top = 53
              Width = 91
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'TELEFONE2_REFERENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 7
              OnEnter = suiDBEdit28Enter
              OnExit = suiDBEdit28Exit
            end
            object suiDBEdit27: TDBEdit
              Left = 61
              Top = 55
              Width = 236
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME2_REFERENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = suiDBEdit27Enter
              OnExit = suiDBEdit27Exit
            end
            object suiDBEdit24: TDBEdit
              Left = 336
              Top = 6
              Width = 92
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'TELEFONE1_REFERENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 9
              OnEnter = suiDBEdit24Enter
              OnExit = suiDBEdit24Exit
            end
            object suiDBEdit23: TDBEdit
              Left = 61
              Top = 6
              Width = 236
              Height = 21
              CharCase = ecUpperCase
              Color = 15263976
              DataField = 'NOME1_REFERENCIA'
              DataSource = DM.DTS_CLI
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = suiDBEdit23Enter
              OnExit = suiDBEdit23Exit
            end
          end
        end
        object PageSheet6: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Funcion'#225'rio'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 7
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Label18: TLabel
            Left = 4
            Top = 39
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sal'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 274
            Top = 16
            Width = 90
            Height = 13
            Caption = 'Data de Admiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 4
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Situa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 102
            Top = 10
            Width = 41
            Height = 13
            Caption = '1 - Ativo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 102
            Top = 22
            Width = 57
            Height = 13
            Caption = '2 - Demitido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 4
            Top = 63
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cargo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 274
            Top = 40
            Width = 90
            Height = 13
            Caption = 'Data de Demiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 3
            Top = 87
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'CTPS/S'#233'rie:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit38: TDBEdit
            Left = 70
            Top = 37
            Width = 192
            Height = 21
            DataField = 'FUNC_SALARIO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edata_cadastro: TDBDateEdit
            Left = 386
            Top = 12
            Width = 129
            Height = 21
            DataField = 'FUNC_DATA_ADMISSAO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ButtonWidth = 18
            NumGlyphs = 1
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit39: TDBEdit
            Left = 70
            Top = 12
            Width = 25
            Height = 21
            DataField = 'FUNC_SITUACAO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBComboBox1: TDBComboBox
            Left = 70
            Top = 61
            Width = 194
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUNC_CARGO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'AUXILIAR SERVI'#199'OS'
              'AUXILIAR T'#201'CNICO'
              'BALCONISTA'
              'CAIXA'
              'DIRETOR'
              'ESTAGI'#193'RIO'
              'GERENTE'
              'SECRET'#193'RIO'
              'T'#201'CNICO'
              'VENDEDOR')
            ParentFont = False
            TabOrder = 3
          end
          object DBDateEdit6: TDBDateEdit
            Left = 386
            Top = 36
            Width = 129
            Height = 21
            DataField = 'FUNC_DEMISSAO'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ButtonWidth = 18
            NumGlyphs = 1
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit41: TDBEdit
            Left = 71
            Top = 85
            Width = 190
            Height = 21
            DataField = 'CTPS'
            DataSource = DM.DTS_CLI
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
        end
        object pgcProfissao: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Profiss'#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 8
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object gridProfissao: TDBGrid
            Left = 121
            Top = 0
            Width = 869
            Height = 158
            Align = alClient
            DataSource = dsProfissao
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ID_CLIENTES'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'PROFISSAO_OCUPACAO'
                Title.Caption = 'PROFISSAO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NATUREZA_OCUPACAO'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NIVEL_CARGO'
                Title.Caption = 'NIVEL/CARGO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_CARGO'
                Title.Caption = 'DESCRICAO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESA_EMPREGADOR'
                Title.Caption = 'EMPRESA/EMPREGADOR'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPF_CNPJ'
                Title.Caption = 'CPF/CNPJ'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INICIO'
                Title.Caption = 'DATA DE INICIO'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RENDA_BRUTA'
                Title.Caption = 'RENDA BRUTA'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GASTOS_VEICULO'
                Title.Caption = 'GASTOS COM VEICULO'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OUTROS_GASTOS'
                Title.Caption = 'OUTROS GASTOS'
                Width = 150
                Visible = True
              end>
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 158
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object btnIncluiProfissao: TAdvGlowButton
              Left = 14
              Top = 14
              Width = 100
              Height = 32
              Caption = ' Incluir'
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
              TabOrder = 0
              OnClick = btnIncluiProfissaoClick
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
            object btnAlterarProfissao: TAdvGlowButton
              Left = 13
              Top = 61
              Width = 100
              Height = 32
              Caption = 'Alterar'
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
              TabOrder = 1
              OnClick = btnAlterarProfissaoClick
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
            object btnExcluirProfissao: TAdvGlowButton
              Left = 13
              Top = 109
              Width = 100
              Height = 32
              Caption = 'Excluir'
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
              TabOrder = 2
              OnClick = btnExcluirProfissaoClick
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
        end
        object pgReferencia: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Refer'#234'ncias'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 9
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object gridReferencia: TDBGrid
            Left = 121
            Top = 0
            Width = 869
            Height = 158
            Align = alClient
            DataSource = dsReferencia
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ID_CLIENTES'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONE'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 200
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 158
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object btnIncluirReferencia: TAdvGlowButton
              Left = 14
              Top = 14
              Width = 100
              Height = 32
              Caption = ' Incluir'
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
              TabOrder = 0
              OnClick = btnIncluirReferenciaClick
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
            object btnAlterarReferencia: TAdvGlowButton
              Left = 15
              Top = 64
              Width = 100
              Height = 32
              Caption = 'Alterar'
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
              TabOrder = 1
              OnClick = btnAlterarReferenciaClick
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
            object btnExcluirReferencia: TAdvGlowButton
              Left = 13
              Top = 109
              Width = 100
              Height = 32
              Caption = 'Excluir'
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
              TabOrder = 2
              OnClick = btnExcluirReferenciaClick
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
        end
        object pgContato: TPageSheet
          Left = 0
          Top = 20
          Width = 990
          Height = 158
          Caption = 'Contato'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 10
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object GridContato: TDBGrid
            Left = 121
            Top = 0
            Width = 869
            Height = 158
            Align = alClient
            DataSource = dsContato
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ID_CLIENTES'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'PRODUTO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTATO_FINALIZADO'
                Title.Caption = 'FINALIZADO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTATO_PREJUDICADO'
                Title.Caption = 'PREJUDICADO'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONE_UTILIZADO'
                Title.Caption = 'TELEFONE/UTILIZADO'
                Visible = True
              end>
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 158
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object btnIncluirContato: TAdvGlowButton
              Left = 15
              Top = 14
              Width = 100
              Height = 32
              Caption = ' Incluir'
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
              TabOrder = 0
              OnClick = btnIncluirContatoClick
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
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Color = 16119543
      ImageIndex = 287
      Caption = 'Movimento'
      object ViewSplit1: TViewSplit
        Left = 273
        Top = 0
        Height = 364
        ExplicitHeight = 360
      end
      object GroupBox4: TGroupBox
        Left = 276
        Top = 175
        Width = 691
        Height = 194
        Caption = 'PRESTA'#199#213'ES/CREDIARIO'
        TabOrder = 2
        object PageView2: TPageView
          Left = 2
          Top = 15
          Width = 687
          Height = 177
          ActivePage = PageSheet4
          ActivePageIndex = 0
          AdaptiveColors = True
          Align = alClient
          BackgroundColor = clBtnFace
          BackgroundKind = bkInveseVertGradient
          Indent = 2
          Margin = 0
          Options = [pgBoldActiveTab]
          ShowTabs = True
          Spacing = 0
          TabHeight = 14
          TabOrder = 0
          TabStyle = tsWhidbey
          TopIndent = 0
          object PageSheet4: TPageSheet
            Left = 0
            Top = 15
            Width = 687
            Height = 162
            Caption = 'A RECEBER'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 0
            TabColor = 16240558
            TabWidth = 0
            TransparentColor = clNone
            object Label6: TLabel
              Left = 4
              Top = 143
              Width = 92
              Height = 13
              Caption = 'TOTAL ORIGINAL:'
            end
            object Label13: TLabel
              Left = 208
              Top = 143
              Width = 39
              Height = 13
              Caption = 'JUROS:'
            end
            object Label15: TLabel
              Left = 345
              Top = 143
              Width = 38
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 687
              Height = 137
              Align = alTop
              DataSource = dsreceber
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDblClick = wwDBGrid4DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SITUACAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_VENCIMENTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PARCELA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_JUROS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_ACRESCIMO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_DESCONTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PAGO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_TOTAL'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO_CLIENTE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HISTORICO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO_VENDA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PAGAR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMBOLETO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BANCO_PORTADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMESSA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATACREDITO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_PORTADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ENVIADO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COD_EMPRESA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMBOLETO1'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGOCEDENTE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CHEK_BOX'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUM_NOTA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERIE_NOTA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_SACADO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ANO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MES'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TP_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_CONTRATO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_ARQ'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COBRADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMISSAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DT_PREVISAO_PGTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAS_VENCIDO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'N_OS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_GRAFICA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_COMISAO'
                  Visible = True
                end>
            end
            object rvalor: TRxCalcEdit
              Left = 112
              Top = 140
              Width = 89
              Height = 19
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 1
            end
            object rjuro: TRxCalcEdit
              Left = 252
              Top = 140
              Width = 85
              Height = 19
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 2
            end
            object rtotal: TRxCalcEdit
              Left = 392
              Top = 141
              Width = 96
              Height = 19
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 3
            end
          end
          object PageSheet5: TPageSheet
            Left = 0
            Top = 15
            Width = 687
            Height = 162
            Caption = 'RECEBIDAS'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 1
            TabColor = 11184895
            TabWidth = 0
            TransparentColor = clNone
            object Label9: TLabel
              Left = 132
              Top = 143
              Width = 38
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 687
              Height = 137
              Align = alTop
              DataSource = dsreceberpg
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnDblClick = wwDBGrid4DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SITUACAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PARCELA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_JUROS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_ACRESCIMO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_DESCONTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PAGO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGO_CLIENTE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_COMPRA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA_VENCIMENTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HISTORICO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO_VENDA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'USUARIO_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_PAGAR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_TOTAL'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMBOLETO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BANCO_PORTADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMESSA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATACREDITO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_PORTADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ENVIADO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COD_EMPRESA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMBOLETO1'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODIGOCEDENTE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CHEK_BOX'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUM_NOTA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERIE_NOTA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_SACADO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ANO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MES'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TP_BAIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ID_CONTRATO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_ARQ'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COBRADOR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMISSAO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DT_PREVISAO_PGTO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAS_VENCIDO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'N_OS'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLR_GRAFICA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR_COMISAO'
                  Visible = True
                end>
            end
            object rtotal_pago: TRxCalcEdit
              Left = 176
              Top = 141
              Width = 96
              Height = 19
              AutoSize = False
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object FlatPanel2: TFlatPanel
          Left = 216
          Top = 9
          Width = 291
          Height = 17
          Caption = 'DUPLO CLIQUE - Verificar pagamentos'
          ParentColor = True
          TabOrder = 1
        end
      end
      object PPGTO: TFlatPanel
        Left = 726
        Top = 191
        Width = 201
        Height = 121
        Caption = 'PPGTO'
        ParentColor = True
        Visible = False
        TabOrder = 0
        object HeaderView4: THeaderView
          Left = 1
          Top = 1
          Width = 199
          Height = 24
          AdaptiveColors = True
          Align = alTop
          BorderStyle = bsNone
          Caption = 'PAGAMENTOS '
          HeaderColor = clHighlight
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindow
          HeaderFont.Height = -9
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          HeaderSize = 24
          ParentColor = False
          object SpeedButton1: TAdvGlowButton
            Left = 176
            Top = 1
            Width = 20
            Height = 20
            Caption = 'X'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = SpeedButton1Click
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
        object FlatPanel1: TFlatPanel
          Left = 1
          Top = 25
          Width = 199
          Height = 95
          ParentColor = True
          Enabled = False
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          Align = alClient
          TabOrder = 1
          object Memo1: TMemo
            Left = 9
            Top = 7
            Width = 183
            Height = 89
            BorderStyle = bsNone
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            Lines.Strings = (
              'DATA           VALOR - R$'
              '--------------------------'
              '01/01/2007 -->    1.000,00')
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object HeaderView2: THeaderView
        Left = 0
        Top = 364
        Width = 990
        Height = 74
        AdaptiveColors = True
        Align = alBottom
        BorderStyle = bsNone
        Caption = 'Movimento de Mensal de compras ('#218'ltimos 12 Meses)'
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -11
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        HeaderSize = 16
        ParentColor = False
        object wwDBGrid3: TDBGrid
          Left = 0
          Top = 16
          Width = 990
          Height = 58
          Align = alClient
          DataSource = dsvenda_mes
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'SUM_1'
              Title.Caption = 'Fev.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Title.Caption = 'Jan.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_0'
              Title.Caption = 'Mar'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_2'
              Title.Caption = 'Abril'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_3'
              Title.Caption = 'Maio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_4'
              Title.Caption = 'Junho'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_5'
              Title.Caption = 'Julho'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_6'
              Title.Caption = 'Agosto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_7'
              Title.Caption = 'Setembro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_8'
              Title.Caption = 'Outubro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_9'
              Title.Caption = 'Nov.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM_10'
              Title.Caption = 'Dez.'
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 278
        Top = 5
        Width = 689
        Height = 168
        Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
        TabOrder = 3
        object wwDBGrid2: TDBGrid
          Left = 8
          Top = 14
          Width = 673
          Height = 148
          DataSource = dsproduto
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_CLIENTE'
              Title.Caption = 'Cod. Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_PROD'
              Title.Caption = 'Cod. Prod.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_PRODUTO'
              Title.Caption = 'Cod Barra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRODUTO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'Und.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Qtde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_UNITARIO'
              Title.Caption = 'Val. Unit'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Vlr. Desc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_TOTAL'
              Title.Caption = 'Vlr Total'
              Visible = True
            end>
        end
      end
      object FlipView1: TFlipView
        Left = 0
        Top = 0
        Width = 273
        Height = 364
        Margins.Bottom = 4
        Margins.Left = 4
        Margins.Right = 4
        Margins.Top = 4
        AdaptiveColors = True
        Align = alLeft
        Caption = 'HIST'#211'RICO DE COMPRAS'
        CollapseGlyph.Data = {
          7A010000424D7A01000000000000360000002800000009000000090000000100
          2000000000004401000000000000000000000000000000000000604830406048
          30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
          90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
          30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
          A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
          C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
          30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
          F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
          A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
        ExpandGlyph.Data = {
          7A010000424D7A01000000000000360000002800000009000000090000000100
          2000000000004401000000000000000000000000000000000000604830406048
          30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
          90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
          30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
          A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
          C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
          30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
          30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
          FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
          A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
        FlipKind = fkHeaderAndButton
        HeaderColor = clBtnFace
        HeaderHeight = 18
        HeaderStyle = hsSolid
        HideGlyphs = False
        ParentColor = False
        TransparentButtons = False
        object ViewSplit2: TViewSplit
          Left = 4
          Top = 329
          Width = 265
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Label4: TLabel
          Left = 8
          Top = 344
          Width = 96
          Height = 13
          Caption = 'TOTAL/COMPRAS:'
        end
        object LTOTAL: TLabel
          Left = 143
          Top = 338
          Width = 113
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '1.000,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object wwDBGrid1: TDBGrid
          Left = 4
          Top = 22
          Width = 265
          Height = 307
          Align = alTop
          BorderStyle = bsNone
          DataSource = dsvenda
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = wwDBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'Venda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_PEDIDO'
              Title.Caption = 'Data do Ped.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Title.Caption = 'Valor Vda'
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = 16119543
      Caption = 'Documentos/Assinatura'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = -3
        Top = -2
        Width = 980
        Height = 443
        Align = alCustom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 0
        object gridDocumento: TDBGrid
          Left = 2
          Top = 2
          Width = 976
          Height = 439
          Align = alClient
          DataSource = dsDocumento
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnCellClick = gridDocumentoCellClick
          OnDrawColumnCell = gridDocumentoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_CLIENTES'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITUACAO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EXP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DELL'
              Visible = True
            end>
        end
        object FDvGlowButton2: TAdvGlowButton
          Left = 12
          Top = 415
          Width = 73
          Height = 23
          Hint = 'Inserir Foto'
          Caption = 'Inserir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = FDvGlowButton2Click
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
        object FDvGlowButton3: TAdvGlowButton
          Left = 99
          Top = 415
          Width = 73
          Height = 23
          Hint = 'Apagar Foto'
          Caption = 'Apagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Spacing = 4
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = FDvGlowButton3Click
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
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 37
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 2
    object DBText1: TDBText
      Left = 404
      Top = 10
      Width = 89
      Height = 15
      Color = 15263976
      DataField = 'DATA_ALTERACAO'
      DataSource = DM.DTS_CLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 222
      Top = 10
      Width = 87
      Height = 17
      Color = 15263976
      DataField = 'DATACAD'
      DataSource = DM.DTS_CLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel50: TRxLabel
      Left = 312
      Top = 10
      Width = 92
      Height = 13
      Caption = 'Data Altera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 135
      Top = 11
      Width = 84
      Height = 13
      Caption = 'Cliente desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 3
      Top = 10
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
    object dbt_codigo: TDBEdit
      Left = 50
      Top = 7
      Width = 77
      Height = 21
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DM.DTS_CLI
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = dbt_codigoChange
    end
    object suiButton3: TAdvGlowButton
      Left = 854
      Top = 2
      Width = 121
      Height = 31
      Hint = 
        'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
        ' de cr'#233'dito'
      Caption = '&Desbloquear '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 15
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 1
      OnClick = suiButton3Click
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
    object suiButton4: TAdvGlowButton
      Left = 718
      Top = 3
      Width = 123
      Height = 30
      Hint = 
        'Desbloquear o Cliente p/ compra a prazo e ou libera'#231#227'o de limite' +
        ' de cr'#233'dito'
      Caption = '&Ficha Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 25
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 2
      OnClick = suiButton4Click
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
  object OpenDialog1: TOpenPictureDialog
    Ctl3D = False
    Filter = 
      'All (*.png;*.gif;*.gif;*.tee;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.em' +
      'f;*.wmf)|*.bmp|Portable Network Graphics (*.png)|*.png|CompuServ' +
      'e GIF Image (*.gif)|*.gif|GIF Image (*.gif)|*.gif|TeeChart (*.te' +
      'e)|*.tee|Portable network graphics (AlphaControls) (*.png)|*.png' +
      '|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|B' +
      'itmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.e' +
      'mf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Options = [ofHideReadOnly]
    Left = 554
    Top = 19
  end
  object Qry_cliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from clientes')
    SQLConnection = DM.SQLC
    Left = 368
    Top = 8
    object Qry_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_clienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object Qry_clienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object Qry_clienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_clienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_clienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_clienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Qry_clienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object Qry_clienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Qry_clienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object Qry_clienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object Qry_clienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Qry_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_clienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object Qry_clienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_clienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Qry_clienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Qry_clienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object Qry_clienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object Qry_clienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object Qry_clienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object Qry_clienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object Qry_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object Qry_clienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object Qry_clienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object Qry_clienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object Qry_clienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object Qry_clienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object Qry_clientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object Qry_clienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object Qry_clientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object Qry_clienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object Qry_clienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object Qry_clienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object Qry_clienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object Qry_clienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object Qry_clienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object Qry_clienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object Qry_clienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object Qry_clienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object Qry_clienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object Qry_clienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object Qry_clienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object Qry_clienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object Qry_clienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_clienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object Qry_clienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object Qry_clientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object Qry_clientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object Qry_clienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Qry_clienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_clienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object Qry_clienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object Qry_clienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object Qry_clienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object Qry_clienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object Qry_clienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object Qry_clienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object Qry_clienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object Qry_clientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object Qry_clienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Qry_clienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object Qry_clienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object Qry_clienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object Qry_clienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object Qry_clienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object Qry_clienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object Qry_clienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object Qry_clienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object Qry_clienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object Qry_clienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object Qry_clienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object Qry_clienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object Qry_clienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object Qry_clienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object Qry_clienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object Qry_clienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object Qry_clienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object Qry_clienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object Qry_clienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object Qry_clientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Qry_clienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object Qry_clienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object Qry_clienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object Qry_clienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object Qry_clienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object Qry_clienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object Qry_clienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object Qry_clienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object Qry_clienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object Qry_clienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object Qry_clienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object Qry_clienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object Qry_clienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object Qry_clienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object Qry_clienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object Qry_clienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object Qry_clienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object Qry_clienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object Qry_clienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object Qry_clienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object Qry_clienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object Qry_clienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object Qry_clienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object Qry_clienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object Qry_clienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object Qry_clienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object Qry_clienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object Qry_clienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object Qry_clienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object Qry_clienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object Qry_clienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object Qry_clienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object Qry_clienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object Qry_clienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object Qry_clienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object Qry_clienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object Qry_clienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object Qry_clienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
    object Qry_clienteRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
    end
    object Qry_clienteCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
    end
    object Qry_clienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object Qry_clienteDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object Qry_clienteFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Precision = 15
      Size = 2
    end
    object Qry_clienteFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
    end
    object Qry_clienteFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Size = 1
    end
    object Qry_clienteFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
    end
    object Qry_clienteFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Size = 30
    end
  end
  object dsp_clientes: TDataSetProvider
    DataSet = Qry_cliente
    Left = 392
    Top = 8
  end
  object cds_cliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_clientes'
    Left = 424
    Top = 8
    object cds_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_clienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object cds_clienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 44
    end
    object cds_clienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_clienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cds_clienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cds_clienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cds_clienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cds_clienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds_clienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object cds_clienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object cds_clienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object cds_clienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_clienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_clienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cds_clienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object cds_clienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cds_clienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object cds_clienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cds_clienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object cds_clienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object cds_clienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object cds_clientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object cds_clienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object cds_clienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object cds_clienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object cds_clienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object cds_clienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object cds_clientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object cds_clienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object cds_clientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object cds_clienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object cds_clienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object cds_clienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object cds_clienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object cds_clienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object cds_clienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object cds_clienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object cds_clienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object cds_clienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object cds_clienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object cds_clienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object cds_clienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object cds_clienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cds_clienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_clienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object cds_clienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object cds_clientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object cds_clientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cds_clientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object cds_clienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object cds_clienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cds_clienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_clienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_clienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object cds_clienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object cds_clienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object cds_clienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object cds_clienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cds_clienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object cds_clienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object cds_clienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object cds_clientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object cds_clienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cds_clienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object cds_clienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object cds_clienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object cds_clienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object cds_clienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object cds_clienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object cds_clienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object cds_clienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object cds_clienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object cds_clienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object cds_clienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object cds_clienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object cds_clienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object cds_clienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object cds_clienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object cds_clienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object cds_clienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object cds_clienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object cds_clienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object cds_clienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cds_clientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object cds_clienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object cds_clienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object cds_clienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object cds_clienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object cds_clienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object cds_clienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object cds_clienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object cds_clienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object cds_clienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object cds_clienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object cds_clienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object cds_clienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object cds_clienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object cds_clienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object cds_clienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object cds_clienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object cds_clienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object cds_clienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object cds_clienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object cds_clienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object cds_clienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object cds_clienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object cds_clienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object cds_clienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object cds_clienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object cds_clienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object cds_clienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object cds_clienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object cds_clienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object cds_clienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object cds_clienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object cds_clienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object cds_clienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object cds_clienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object cds_clienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object cds_clienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object cds_clienteCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
    object cds_clienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Size = 1
    end
    object cds_clienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Size = 1
    end
  end
  object QUERY: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select SUM(VALOR_TOTAL) TOTAL_GERAL from pedidos')
    Left = 673
    Top = 409
    object QUERYTOTAL_GERAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object qrvenda: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from pedidos')
    Left = 937
    Top = 385
    object qrvendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrvendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object qrvendaDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object qrvendaDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object qrvendaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object qrvendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 70
    end
    object qrvendaPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 35
    end
    object qrvendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qrvendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qrvendaUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
      Origin = 'USUARIO_ENTREGA'
    end
    object qrvendaTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      FixedChar = True
      Size = 1
    end
    object qrvendaOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 250
    end
    object qrvendaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object qrvendaCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
      Origin = 'COD_PAGTO'
    end
    object qrvendaN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Origin = 'N_CUPOM'
      Size = 18
    end
    object qrvendaN_ECF: TStringField
      FieldName = 'N_ECF'
      Origin = 'N_ECF'
      Size = 5
    end
    object qrvendaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object qrvendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qrvendaCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'COD_ORCAMENTO'
    end
    object qrvendaCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object qrvendaCOD_OS: TSmallintField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object qrvendaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object qrvendaSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object qrvendaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qrvendaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      FixedChar = True
      Size = 18
    end
    object qrvendaRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object qrvendaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 16
    end
    object qrvendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qrvendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qrvendaN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Origin = 'N_PARTIDA'
      Size = 15
    end
    object qrvendaPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      Size = 70
    end
    object qrvendaQUANT_VENDIDA: TBCDField
      FieldName = 'QUANT_VENDIDA'
      Origin = 'QUANT_VENDIDA'
      Precision = 18
    end
    object qrvendaSALDO_VENDIDO: TBCDField
      FieldName = 'SALDO_VENDIDO'
      Origin = 'SALDO_VENDIDO'
      currency = True
      Precision = 18
    end
    object qrvendaMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Origin = 'MED_VETERINARIO'
      Size = 70
    end
    object qrvendaDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
      Origin = 'DATA_VACINA'
    end
    object qrvendaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrvendaCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      FixedChar = True
      Size = 10
    end
    object qrvendaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrvendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object qrvendaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qrvendaENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Origin = 'ENTREGADOR'
      Size = 44
    end
    object qrvendaTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object qrvendaFECHADO: TStringField
      FieldName = 'FECHADO'
      Origin = 'FECHADO'
      Size = 5
    end
    object qrvendaMESA: TStringField
      FieldName = 'MESA'
      Origin = 'MESA'
      Size = 3
    end
    object qrvendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 70
    end
    object qrvendaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qrvendaPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Origin = 'PROD_RURAL'
      Size = 1
    end
    object qrvendaIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Origin = 'IE_PRODUTOR'
      FixedChar = True
    end
    object qrvendaKM: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object qrvendaCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Origin = 'CHAVE_FP'
      Size = 100
    end
    object qrvendaCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Origin = 'CHAVE_FP_CANCEL'
      Size = 30
    end
    object qrvendaCUPON_CANCELADO: TStringField
      FieldName = 'CUPON_CANCELADO'
      Origin = 'CUPON_CANCELADO'
      Size = 1
    end
    object qrvendaCRZ: TIntegerField
      FieldName = 'CRZ'
      Origin = 'CRZ'
    end
    object qrvendaCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrvendaANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'ANO'
    end
    object qrvendaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Origin = 'MODELO_NF'
      Size = 2
    end
    object qrvendaCFOP_NF: TStringField
      FieldName = 'CFOP_NF'
      Origin = 'CFOP_NF'
      Size = 4
    end
    object qrvendaCOD_OS_AUTO: TIntegerField
      FieldName = 'COD_OS_AUTO'
      Origin = 'COD_OS_AUTO'
    end
    object qrvendaVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Origin = 'VALOR_ITENS'
      Precision = 18
      Size = 2
    end
    object qrvendaENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Origin = 'VALOR_ACRESCIMOS'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qrvendaVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Origin = 'VALOR_TROCO'
      Precision = 18
      Size = 2
    end
    object qrvendaVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Origin = 'VLR_PIS'
      Precision = 18
      Size = 2
    end
    object qrvendaVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Origin = 'VLR_COFINS'
      Precision = 18
      Size = 2
    end
  end
  object qrproduto: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT P.CODIGO_CLIENTE, I.* FROM PEDIDOS_ITENS I INNER JOIN PED' +
        'IDOS P ON (I.CODIGO_ID = P.CODIGO)')
    Left = 585
    Top = 113
    object qrprodutoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object qrprodutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrprodutoCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object qrprodutoITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object qrprodutoCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object qrprodutoCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object qrprodutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object qrprodutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qrprodutoSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qrprodutoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object qrprodutoFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrprodutoCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object qrprodutoPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object qrprodutoPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object qrprodutoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrprodutoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qrprodutoPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrprodutoCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrprodutoDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object qrprodutoQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object qrprodutoVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object qrprodutoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrprodutoPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object qrprodutoBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qrprodutoVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object qrprodutoIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object qrprodutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object qrprodutoID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object qrprodutoID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object qrprodutoID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object qrprodutoBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
  end
  object qrcontasreceber: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from CREDIARIO')
    Left = 753
    Top = 121
    object qrcontasreceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrcontasreceberCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object qrcontasreceberDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      Required = True
    end
    object qrcontasreceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = 'DATA_BAIXA'
    end
    object qrcontasreceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 70
    end
    object qrcontasreceberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Origin = 'USUARIO_VENDA'
    end
    object qrcontasreceberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
      Origin = 'USUARIO_BAIXA'
    end
    object qrcontasreceberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrcontasreceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object qrcontasreceberNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
      Origin = 'NUMBOLETO'
    end
    object qrcontasreceberBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
      Origin = 'BANCO_PORTADOR'
    end
    object qrcontasreceberREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 10
    end
    object qrcontasreceberDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
      Origin = 'DATACREDITO'
    end
    object qrcontasreceberID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
      Origin = 'ID_PORTADOR'
    end
    object qrcontasreceberENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
      Size = 1
    end
    object qrcontasreceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrcontasreceberNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
      Origin = 'NUMBOLETO1'
    end
    object qrcontasreceberCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Origin = 'CODIGOCEDENTE'
      Size = 12
    end
    object qrcontasreceberTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qrcontasreceberCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrcontasreceberNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object qrcontasreceberSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object qrcontasreceberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Origin = 'NOME_SACADO'
      Size = 70
    end
    object qrcontasreceberANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrcontasreceberMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrcontasreceberTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Origin = 'TP_BAIXA'
      Size = 1
    end
    object qrcontasreceberID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrcontasreceberNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Origin = 'NOME_ARQ'
    end
    object qrcontasreceberCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
    end
    object qrcontasreceberDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
      Origin = 'DT_PREVISAO_PGTO'
    end
    object qrcontasreceberDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
      Origin = 'DIAS_VENCIDO'
    end
    object qrcontasreceberN_OS: TStringField
      FieldName = 'N_OS'
      Origin = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qrcontasreceberCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      Origin = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object qrcontasreceberCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
      Origin = 'COD_AVALISTA'
    end
    object qrcontasreceberCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
      Origin = 'COD_FRETE'
    end
    object qrcontasreceberCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object qrcontasreceberCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
      Origin = 'COM_REGISTRO'
    end
    object qrcontasreceberRECEBIVEL: TIntegerField
      FieldName = 'RECEBIVEL'
      Origin = 'RECEBIVEL'
    end
    object qrcontasreceberID_CT_PARCELA: TIntegerField
      FieldName = 'ID_CT_PARCELA'
      Origin = 'ID_CT_PARCELA'
    end
    object qrcontasreceberVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
      Origin = 'CODIGO_COMPRA'
    end
    object qrcontasreceberCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Origin = 'VALOR_COMISAO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberJUROS_POSTERGADOS: TFMTBCDField
      FieldName = 'JUROS_POSTERGADOS'
      Origin = 'JUROS_POSTERGADOS'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Origin = 'VLR_GRAFICA'
      Precision = 18
      Size = 2
    end
  end
  object qrcontasreceberpg: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from CREDIARIO')
    Left = 657
    Top = 105
    object qrcontasreceberpgCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrcontasreceberpgCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
    end
    object qrcontasreceberpgDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = 'DATA_COMPRA'
    end
    object qrcontasreceberpgDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
      Required = True
    end
    object qrcontasreceberpgDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = 'DATA_BAIXA'
    end
    object qrcontasreceberpgHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 70
    end
    object qrcontasreceberpgUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Origin = 'USUARIO_VENDA'
    end
    object qrcontasreceberpgUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
      Origin = 'USUARIO_BAIXA'
    end
    object qrcontasreceberpgSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrcontasreceberpgVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Origin = 'VALOR_PAGAR'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
      Origin = 'CODIGO_COMPRA'
    end
    object qrcontasreceberpgPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object qrcontasreceberpgNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
      Origin = 'NUMBOLETO'
    end
    object qrcontasreceberpgBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
      Origin = 'BANCO_PORTADOR'
    end
    object qrcontasreceberpgREMESSA: TStringField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 10
    end
    object qrcontasreceberpgDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
      Origin = 'DATACREDITO'
    end
    object qrcontasreceberpgID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
      Origin = 'ID_PORTADOR'
    end
    object qrcontasreceberpgENVIADO: TStringField
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
      Size = 1
    end
    object qrcontasreceberpgCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrcontasreceberpgNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
      Origin = 'NUMBOLETO1'
    end
    object qrcontasreceberpgCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Origin = 'CODIGOCEDENTE'
      Size = 12
    end
    object qrcontasreceberpgTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qrcontasreceberpgCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrcontasreceberpgNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object qrcontasreceberpgSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Origin = 'SERIE_NOTA'
      Size = 3
    end
    object qrcontasreceberpgNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Origin = 'NOME_SACADO'
      Size = 70
    end
    object qrcontasreceberpgANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrcontasreceberpgMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrcontasreceberpgTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Origin = 'TP_BAIXA'
      Size = 1
    end
    object qrcontasreceberpgID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object qrcontasreceberpgNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Origin = 'NOME_ARQ'
    end
    object qrcontasreceberpgCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
    end
    object qrcontasreceberpgCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
      Origin = 'DT_PREVISAO_PGTO'
    end
    object qrcontasreceberpgDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
      Origin = 'DIAS_VENCIDO'
    end
    object qrcontasreceberpgN_OS: TStringField
      FieldName = 'N_OS'
      Origin = 'N_OS'
      FixedChar = True
      Size = 10
    end
    object qrcontasreceberpgVLR_GRAFICA: TFMTBCDField
      FieldName = 'VLR_GRAFICA'
      Origin = 'VLR_GRAFICA'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgVALOR_COMISAO: TFMTBCDField
      FieldName = 'VALOR_COMISAO'
      Origin = 'VALOR_COMISAO'
      Precision = 18
      Size = 2
    end
    object qrcontasreceberpgCOD_ENTRADA: TStringField
      FieldName = 'COD_ENTRADA'
      Origin = 'COD_ENTRADA'
      FixedChar = True
      Size = 6
    end
    object qrcontasreceberpgFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
    end
    object qrcontasreceberpgCOD_AVALISTA: TIntegerField
      FieldName = 'COD_AVALISTA'
      Origin = 'COD_AVALISTA'
    end
    object qrcontasreceberpgCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
      Origin = 'COD_FRETE'
    end
    object qrcontasreceberpgCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object qrcontasreceberpgCOM_REGISTRO: TIntegerField
      FieldName = 'COM_REGISTRO'
      Origin = 'COM_REGISTRO'
    end
    object qrcontasreceberpgRECEBIVEL: TIntegerField
      FieldName = 'RECEBIVEL'
      Origin = 'RECEBIVEL'
    end
    object qrcontasreceberpgID_CT_PARCELA: TIntegerField
      FieldName = 'ID_CT_PARCELA'
      Origin = 'ID_CT_PARCELA'
    end
    object qrcontasreceberpgJUROS_POSTERGADOS: TFMTBCDField
      FieldName = 'JUROS_POSTERGADOS'
      Origin = 'JUROS_POSTERGADOS'
      Precision = 18
      Size = 2
    end
  end
  object qrvenda_mes: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select sum(valor_total) sum_0,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos) ,'
      '(select sum(valor_total)  from pedidos)'
      ' from pedidos')
    Left = 625
    Top = 201
    object qrvenda_mesSUM_0: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_0'
      Origin = 'SUM_0'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_1'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_2'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_3: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_3'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_4: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_4'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_5: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_5'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_6: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_6'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_7: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_7'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_8: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_8'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_9: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_9'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qrvenda_mesSUM_10: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM_10'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 720
    Top = 448
  end
  object dsvenda_mes: TDataSource
    DataSet = qrvenda_mes
    Left = 560
    Top = 168
  end
  object dsreceberpg: TDataSource
    DataSet = qrcontasreceberpg
    Left = 816
    Top = 392
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 600
    Top = 144
  end
  object dsreceber: TDataSource
    DataSet = qrcontasreceber
    Left = 745
    Top = 168
  end
  object qrpgto: TFDQuery
    Connection = DM.Coneccao
    Left = 527
    Top = 110
  end
  object DTS_cliente: TDataSource
    DataSet = cds_cliente
    Left = 456
    Top = 8
  end
  object qrClientes_Profissao: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = DM.DTS_CLI
    MasterFields = 'CODIGO'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_PROFISSAO WHERE ID_CLIENTES = :CODIGO')
    Left = 809
    Top = 129
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrClientes_ProfissaoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrClientes_ProfissaoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrClientes_ProfissaoPROFISSAO_OCUPACAO: TStringField
      FieldName = 'PROFISSAO_OCUPACAO'
      Origin = 'PROFISSAO_OCUPACAO'
      Size = 100
    end
    object qrClientes_ProfissaoNATUREZA_OCUPACAO: TStringField
      FieldName = 'NATUREZA_OCUPACAO'
      Origin = 'NATUREZA_OCUPACAO'
      Size = 100
    end
    object qrClientes_ProfissaoNIVEL_CARGO: TStringField
      FieldName = 'NIVEL_CARGO'
      Origin = 'NIVEL_CARGO'
      Size = 100
    end
    object qrClientes_ProfissaoDESCRICAO_CARGO: TStringField
      FieldName = 'DESCRICAO_CARGO'
      Origin = 'DESCRICAO_CARGO'
      Size = 100
    end
    object qrClientes_ProfissaoEMPRESA_EMPREGADOR: TStringField
      FieldName = 'EMPRESA_EMPREGADOR'
      Origin = 'EMPRESA_EMPREGADOR'
      Size = 100
    end
    object qrClientes_ProfissaoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qrClientes_ProfissaoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 19
    end
    object qrClientes_ProfissaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qrClientes_ProfissaoDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object qrClientes_ProfissaoRENDA_BRUTA: TFMTBCDField
      FieldName = 'RENDA_BRUTA'
      Origin = 'RENDA_BRUTA'
      Precision = 18
      Size = 2
    end
    object qrClientes_ProfissaoGASTOS_VEICULO: TFMTBCDField
      FieldName = 'GASTOS_VEICULO'
      Origin = 'GASTOS_VEICULO'
      Precision = 18
      Size = 2
    end
    object qrClientes_ProfissaoOUTROS_GASTOS: TFMTBCDField
      FieldName = 'OUTROS_GASTOS'
      Origin = 'OUTROS_GASTOS'
      Precision = 18
      Size = 2
    end
  end
  object dsProfissao: TDataSource
    DataSet = qrClientes_Profissao
    Left = 104
    Top = 392
  end
  object dsReferencia: TDataSource
    DataSet = qrClientes_Referencia
    Left = 880
    Top = 104
  end
  object qrClientes_Referencia: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = DM.DTS_CLI
    MasterFields = 'CODIGO'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_REFERENCIA WHERE ID_CLIENTES = :CODIGO')
    Left = 73
    Top = 441
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrClientes_ReferenciaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrClientes_ReferenciaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrClientes_ReferenciaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qrClientes_ReferenciaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(##) #####-####'
      Size = 15
    end
    object qrClientes_ReferenciaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
  end
  object dsContato: TDataSource
    DataSet = qrClientes_Contato
    Left = 472
    Top = 344
  end
  object qrClientes_Contato: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = DM.DTS_CLI
    MasterFields = 'CODIGO'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_CONTATO WHERE ID_CLIENTES = :CODIGO')
    Left = 745
    Top = 401
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrClientes_ContatoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrClientes_ContatoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrClientes_ContatoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object qrClientes_ContatoCONTATO_FINALIZADO: TStringField
      FieldName = 'CONTATO_FINALIZADO'
      Origin = 'CONTATO_FINALIZADO'
      FixedChar = True
      Size = 3
    end
    object qrClientes_ContatoCONTATO_PREJUDICADO: TStringField
      FieldName = 'CONTATO_PREJUDICADO'
      Origin = 'CONTATO_PREJUDICADO'
      Size = 100
    end
    object qrClientes_ContatoTELEFONE_UTILIZADO: TStringField
      FieldName = 'TELEFONE_UTILIZADO'
      Origin = 'TELEFONE_UTILIZADO'
      EditMask = '(##) #####-####'
      Size = 15
    end
  end
  object dsDocumento: TDataSource
    DataSet = qrClientes_Document
    Left = 792
    Top = 400
  end
  object qrClientes_Document: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = DM.DTS_CLI
    MasterFields = 'CODIGO'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_DOCUMENT WHERE ID_CLIENTES = :CODIGO')
    Left = 649
    Top = 473
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrClientes_DocumentID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrClientes_DocumentID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrClientes_DocumentDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qrClientes_DocumentSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 3
    end
    object qrClientes_DocumentDOCUMENTO: TBlobField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
  end
  object img25: TImageList
    Height = 22
    Width = 22
    Left = 670
    Top = 200
    Bitmap = {
      494C010105000900040016001600FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000580000002C0000000100200000000000803C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADB3FB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFB4FB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B6FB003743F200A7ADFB00000000000000000000000000000000000000
      0000000000000000000000000000D5D8FD003743F200858DF900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D4
      FC003946F2003844F1003744F200AAB0FB000000000000000000000000000000
      00000000000000000000D3D7FD003743F2003744F2003743F200ABB0FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004854F3003743F2003744F200ABB0FB0000000000000000000000
      000000000000D5D8FD003743F2003743F2003744F200D3D7FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A55F3003743F2003743F200ABB0FB00000000000000
      0000D4D7FD003743F3003743F2003743F200D5D8FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004854F3003743F2003743F100C4C8FC000000
      00003743F2003743F2003743F300D4D8FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A55F3003743F2003643F4003542
      F2003743F2003743F300D4D7FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005965F5003743F3003743
      F300404CF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFE1FD00515DF3003743F3003743
      F3003F4BF200BDC3FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D7FD003743F3003743F2004450F3005661
      F6003743F2003743F200ABB0FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D7FD003743F3003743F2003743F200000000000000
      00004854F3003743F2003743F200ABB0FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D7FD003743F2003743F2003743F300D5D8FD00000000000000
      0000000000004A55F3003743F2003744F200ABB0FB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CACEFC003743F3003743F2003743F200D4D8FD0000000000000000000000
      000000000000000000004854F3003743F2003743F200A6ADFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFD3
      FC003643F4003844F1003743F200D3D7FD000000000000000000000000000000
      00000000000000000000000000004A55F3003844F1003744F200A9AEFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEE1FD00515DF200CFD3FD00000000000000000000000000000000000000
      000000000000000000000000000000000000525DF300B1B6FC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFD3FC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D4FD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080BC7E0049A04600288F2300419C3D0082BE
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E78F5003A47F1003E49F2003744F1006F7AF600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006AB16700419D3C0055A7510082BE7F005BAA58003F9C
      3B005DA957000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B66F5002735F1002735F3002A38F3002331F3002C39F3004B56F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009AC89600369A3500037C00006AB26600FFFFFF008AC38700007B
      00003F9C3B0080BB7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C92
      F3001526F900C1C6FC00C9CDFC000003F000B5BAFB00C5C8FC001B29F2006E79
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0E8D800D8C3
      9900D9C29800DAC49B00DAC49B00DAC49B00DAC49B00DAC49B00DAC49B00DEC5
      9D00E0C59F00539F46004CA74F007ABA7700ABD3A900FFFFFF00BDDDBC0077B9
      740057A854004FA34C000000000000000000F0E8D800D8C39900D9C29800DAC4
      9B00DAC49B00DAC49B00DAC49B00DAC49B00DAC49B00DEC79900E1C997004C53
      E4001023FD00AEB3FB00FFFFFF00C4C8FC00FFFFFF00A7ACFA001C2BF3004754
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077B873008DC38D000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EADEC800D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00E3BF
      9300C4B88300259023007CBD7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0081BE7E0031932B0000000000EADEC800D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00E5C78300C2AD9800303F
      F8002D3CF8000002F000AFB4FB00FFFFFF00D4D6FD000F1DF2002E3BF4003C49
      F200000000000000000000000000000000000000000000000000000000000000
      0000F6F5F300ECE9E500E9E6E100E9E6E100EBE9E400F4F3F100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089C0870047A0440049A04400A2CE
      A100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5D6BA00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00DBBC
      8E00D7BB8C00409A380054AB57009FCC9C00BEDDBD00FFFFFF00CDE5CC009BCB
      99005EAC5B004DA1480000000000E5D6BA00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00DCC08600D7BC89003B46
      ED001023FD00A8AEFA00FFFFFF00B8BCFB00FFFFFF00ACB1FB001A29F3004854
      F200000000000000000000000000000000000000000000000000F6F5F300E0DD
      D600E1DEDA00F4F5FF00FCFFFF00FDFFFF00F7F9FF00E3E0DF00DEDBD200F2F1
      EE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008EC38B0047A0440064AE60005FAB5B0049A0
      4400A9D2A7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6D7BB00D6BC8C00D6BC
      8C00D6BC8C00D5BA8A00D5BA8A00D5BA8A00D5BA8A00D5BA8A00D6BB8B00D3BA
      8A00EFBD960089AB6400118F2000007B000067B06300FFFFFF0088C185000078
      00003D9B390085BF830000000000E6D7BB00D6BC8C00D6BC8C00D6BC8C00D5BA
      8A00D5BA8A00D5BA8A00D5BA8A00D5BA8A00D6BB8B00D3B98A00F2CF73007974
      BF000008FF00B7BBFB00AEB4FA000000F000A0A6FA00ADB3FD001C2AF200777F
      F6000000000000000000000000000000000000000000EAE7E300DCD8CF00F0EF
      ED00FDFDFD00EEE7AF00D9CB6000D7C95A00E9E09E00FDFDFD00F5F4F700DFDB
      D300E7E4DE000000000000000000000000000000000000000000000000000000
      0000000000000000000071B46C0047A044005CAA590000000000000000004FA3
      4C0048A04400B6D8B60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D4BB
      8A00DCC19200E1C79800DFC59600DFC59600DFC59600DEC49500E0C59600ECD3
      A700F6D8AF00FAD9B10065AB57000E8A1A0048A44A008AC48A0053AA55002C97
      31004FA954000000000000000000E6D7BC00D6BC8C00D4BB8A00DCC19200E1C7
      9800DFC59600DFC59600DFC59600DEC49500E0C59600ECD3A800F7DDA500FBE2
      A200585FEA000003FF000E20FA002E3CF8001021FB001123FE004051FB000000
      000000000000000000000000000000000000E2DFD800E2DFD800FEFEFE00FFFF
      FF00D3C44A00B1960000C4A90000C6AC0000B2970000CBBA3500FFFFFF00FDFD
      FD00E5E2DC00DCD8D00000000000000000000000000000000000000000000000
      00000000000077B8740047A0430055A651000000000000000000000000000000
      0000479F430048A04400C0DEC000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D5BB
      8B00D7BD8D00E5CB9C00E7CD9E00E5CB9C00E5CB9C00E5CB9C00E2C89800EDD4
      A700FFE8BF00FFE9C500F7E0B90096BD770046A04100168915003899350094B1
      6D00E8E9D9000000000000000000E6D7BC00D6BC8C00D5BB8B00D7BD8D00E5CB
      9C00E7CD9E00E5CB9C00E5CB9C00E5CB9C00E2C89800EDD4A700FFE6C300FFF4
      B100F7E7AD008681DD003B47F6002B3AF900313EF600847DBF00E7E2E6000000
      0000000000000000000000000000DFDCD400E7E4DF00FDFDFD00FFFFFF00E3D9
      8B00B59A0000C7B10000A59500009F900000C5AF0000B69C0000D7C95800FFFF
      FF00FDFDFD00ECEAE500DDDAD200000000000000000000000000000000000000
      000095C7910047A0430064AE6000000000000000000000000000000000000000
      0000E2EFE20047A0440048A04300B4D8B3000000000000000000000000000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D4BA8A00D8BE8E00E5CB9C00E4CA9B00E3C99A00E3C99A00E2C89900E1C7
      9700EDD5A800F8E0B600FCE5BF00FFECCC00DBC39300B8B37A00CDBA8800EAC0
      9600F9EDE3000000000000000000E6D7BC00D6BC8C00D6BC8C00D4BA8A00D8BE
      8E00E5CB9C00E4CA9B00E3C99A00E3C99A00E2C89900E1C79700EDD5A800F8DE
      BA00FCECB200FFFEAA00DBC09900B5A29A00CCB59200ECCD7E00FAF1DA000000
      00000000000000000000F1EFEB00F0EEEB00FDFDFD00FFFFFF00FEFDFA00C2AD
      0400C9B0000090850000494900004749000080770000CBB30000BBA40000F7F4
      DE00FFFFFF00FDFDFD00F4F4F000ECE7E3000000000000000000000000000000
      0000DAEBDA0072B56E0000000000000000000000000000000000000000000000
      000000000000D9EAD80047A0430049A04400AFD5AD0000000000000000000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D6BC8C00D2B88800DCC29300E6CC9E00E3C99A00E3C99A00E4CA9C00E2C8
      9800D1B78500EDD5AA00FFE9C100E0C69800DAB78900E9C09600E1BE9200D7BC
      8C00F2EBDF000000000000000000E6D7BC00D6BC8C00D6BC8C00D6BC8C00D2B8
      8800DCC29300E6CC9E00E3C99A00E3C99A00E4CA9C00E2C89800D1B78500EDD5
      AA00FFE9C200E0C69800DBBE7D00EACB7F00E3C68400D7BD8C00F2EBDF000000
      0000EAE8E300C3BBAD00C5BEB000FDFDFD00FFFFFF00FFFFFF00FBF9ED00C1AB
      0000CAB200006C660000545200005D5A00005D5A0000BFAA0000BEA50000EFEA
      BE00FFFFFF00FFFFFF00FDFDFD00C8C2B400BFB8A900E4E1DB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0E6CF0047A0430048A04400B7DAB700000000000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D6BC8C00D5BB8B00D5BB8B00E2C89900E5CB9C00E3C99A00E6CC9D00DCC2
      9200D0B68500D8BE8E00E3C99B00D2B78700D5BB8B00D6BC8C00D6BC8C00D6BC
      8C00F2EBDF000000000000000000E6D7BC00D6BC8C00D6BC8C00D6BC8C00D5BB
      8B00D5BB8B00E2C89900E5CB9C00E3C99A00E6CC9D00DCC29200D0B68500D8BE
      8E00E3C99B00D2B78700D5BB8B00D6BC8C00D6BC8C00D6BC8C00F2EBDF000000
      000000000000B4AA98009A8E7500C4BEB000FDFDFD00FFFFFF00FFFFFD00C5B2
      1200C8AD00009E9000004E4E0000494A00008E830000CAB30000BDA70000F9F8
      E900FFFFFF00FDFDFD00D0CABF00998C7300A79C8700F1EFED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3F0E300489F440049A04400A0CD9F000000
      00000000000000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D4BA8A00D8BE8E00E5CB9C00E7CD9E00E0C69600D3B9
      8900D6BD8D00D4BA8A00D0B58400D1B78600D2B88700D4BA8A00D7BD8D00D6BC
      8C00F2EBDF000000000000000000E6D7BC00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D4BA8A00D8BE8E00E5CB9C00E7CD9E00E0C69600D3B98900D6BD8D00D4BA
      8A00D0B58400D1B78600D2B88700D4BA8A00D7BD8D00D6BC8C00F2EBDF000000
      00000000000000000000BBB4A3009D917900C4BDAD00FDFDFD00FFFFFF00E4DA
      8E00B0950000CBB30000AE9D0000A6960000CAB40000B2970000D8CB5D00FFFF
      FF00FDFDFD00CFC9BE009E927A00B1A995000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFEEDF0047A0430049A04400A5D0
      A4000000000000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D3B98900DCC29300E4CA9B00D6BC8C00D5BB
      8B00D6BC8C00D5BB8A00D7BC8C00EBD1A600EFD6AB00D9BF9000D4BA8900D6BC
      8C00F2EBDF000000000000000000E6D7BC00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D3B98900DCC29300E4CA9B00D6BC8C00D5BB8B00D6BC8C00D5BB
      8A00D7BC8C00EBD1A600EFD6AB00D9BF9000D4BA8900D6BC8C00F2EBDF000000
      0000000000000000000000000000BDB5A5009E927A00B2A99600ECE9E500FDFD
      FD00E2D77700B59D0000BFA40000C2A60000B49A0000DBCE6500FDFDFD00F4F3
      F100B8AF9D009E927A00B5AD9B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCEBDA00479F430048A0
      4400A5D0A40000000000000000000000000000000000E6D7BC00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D7BD8D00D5BB8A00D6BC
      8C00D6BC8C00D1B78500DFC69800FFEBC400FFEEC700E5CC9F00CFB58400D6BC
      8C00F2EBDF000000000000000000E6D7BC00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D7BD8D00D5BB8A00D6BC8C00D6BC8C00D1B7
      8500DFC69800FFEBC400FFEEC700E5CC9F00CFB58400D6BC8C00F2EBDF000000
      000000000000000000000000000000000000CBC4B700A3988200A3988100C9C3
      B800F9FBFD00FBF8DD00EBE29B00EAE19500F8F4CE00FCFDFD00D1CCC600A89D
      8800A2978000C1B8AA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004FA3
      4B0049A0440082BE8000CCE4CC000000000000000000E6D7BB00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D5BB8B00D6BC8C00D6BC
      8C00D6BC8C00D5BA8A00D6BC8C00ECD4A800F1D9AF00D9BF9000D4BA8900D6BC
      8C00F2EBDE000000000000000000E6D7BB00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D5BB8B00D6BC8C00D6BC8C00D6BC8C00D5BA
      8A00D6BC8C00ECD4A800F1D9AF00D9BF9000D4BA8900D6BC8C00F2EBDE000000
      00000000000000000000000000000000000000000000DCD8D000ADA38E009F94
      7B00AA9F8C00C4BEC000D9D7E600DBD9E800C9C4CA00ADA391009E927A00ABA0
      8C00D6D1C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000048A043006BB26900BEDDBD000000000000000000E6D6BB00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D7BD8D00D4BA8A00D3B98800D4B98900D4BA8900D7BD8D00D6BC
      8C00F2EADD000000000000000000E6D6BB00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D7BD
      8D00D4BA8A00D3B98800D4B98900D4BA8900D7BD8D00D6BC8C00F2EADD000000
      000000000000000000000000000000000000000000000000000000000000D2CC
      C100AEA59100A5998300A1957E00A0957E00A4988200ABA18D00CCC6B900EFED
      EA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAE3CA00E3EFE300000000000000000000000000EEE5D400D6BE9200D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D5BB8B00D5BB8A00D6BC8C00D6BC8C00D4BB
      8C00000000000000000000000000EEE5D400D6BE9200D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC8C00D6BC
      8C00D6BC8C00D5BB8B00D5BB8A00D6BC8C00D6BC8C00D4BB8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECEAE600D8D4CB00CBC5B800CBC5B800D6D1C800E9E7E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4EDE200DDC9
      A400DCC7A100DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9
      A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC8A200D9C59C00EFE6
      D60000000000000000000000000000000000F4EDE200DDC9A400DCC7A100DDC9
      A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9A400DDC9
      A400DDC9A400DDC9A400DDC9A400DDC8A200D9C59C00EFE6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000580000002C0000000100010000000000100200000000000000000000
      000000000000000000000000FFFFFF00FFFFFC000000000000000000FFFFFC00
      0000000000000000FFFFFC000000000000000000FBFF7C000000000000000000
      F1FE3C000000000000000000E0FC1C000000000000000000F8783C0000000000
      00000000FC307C000000000000000000FE10FC000000000000000000FF01FC00
      0000000000000000FF87FC000000000000000000FF03FC000000000000000000
      FE01FC000000000000000000FC30FC000000000000000000F8387C0000000000
      00000000F07C3C000000000000000000E0FE1C000000000000000000F1FF3C00
      0000000000000000FBFF7C000000000000000000FFFFFC000000000000000000
      FFFFFC000000000000000000FFFFFC000000000000000000FFFE0FFFF83FFFFF
      FFFFFF00FFFC07FFF01FFFFFFFFFFF00FFF803FFE00FFFFFFFFFFF00C0000300
      000FFFFFFF9FFF0080000200000FF03FFF0FFF0080000200000FC00FFE07FF00
      80000200000F8007FC63FF0080000600001F0003F8F1FF0080000600001E0001
      F1F0FF0080000600001C0000F3F87F0080000600001000003FFC3F0080000600
      001800003FFE1F0080000600001C0000FFFF0F0080000600001E0001FFFF8700
      80000600001F0003FFFFE10080000600001F8007FFFFF10080000600001FE00F
      FFFFF30080000E00003FF03FFFFFFF00C0000F00003FFFFFFFFFFF00FFFFFFFF
      FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000}
  end
  object FDQuery1: TFDQuery
    Left = 846
    Top = 383
  end
  object frxReport: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42500.977985636600000000
    ReportOptions.LastChange = 42712.618439803200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 528
    Top = 209
    Datasets = <
      item
        DataSet = qrRel
        DataSetName = 'qrRel'
      end
      item
        DataSet = qrRelContato
        DataSetName = 'qrRelContato'
      end
      item
        DataSet = qrRelDetalheProf
        DataSetName = 'qrRelDetalheProf'
      end
      item
        DataSet = qrRelReferencia
        DataSetName = 'qrRelReferencia'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 827.717070000000000000
        Width = 718.110700000000000000
        DataSet = qrRelReferencia
        DataSetName = 'qrRelReferencia'
        RowCount = 0
        object Gradient75: TfrxGradientView
          AllowVectorExport = True
          Left = 367.953000000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 18.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelReferencia."TIPO"]')
          ParentFont = False
        end
        object Gradient73: TfrxGradientView
          AllowVectorExport = True
          Left = 0.133858270000000000
          Top = 18.488169450000000000
          Width = 186.330713540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient74: TfrxGradientView
          AllowVectorExport = True
          Left = 179.756030000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient76: TfrxGradientView
          AllowVectorExport = True
          Top = 0.456710000000000000
          Width = 190.865802440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient77: TfrxGradientView
          AllowVectorExport = True
          Left = 180.110390000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient78: TfrxGradientView
          AllowVectorExport = True
          Left = 368.307360000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient79: TfrxGradientView
          AllowVectorExport = True
          Left = 556.370440000000000000
          Top = 0.677180000000000000
          Width = 159.874015748031000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient80: TfrxGradientView
          AllowVectorExport = True
          Left = 556.149970000000000000
          Top = 18.488169450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 18.354360000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelReferencia."NOME"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 562.149970000000000000
          Top = 19.133890000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelReferencia."TELEFONE"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Refer'#234'ncia')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 374.307360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 562.370440000000000000
          Top = 0.220470000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Width = 716.220472440000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 91.338590000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Gradient1: TfrxGradientView
          AllowVectorExport = True
          Left = 10.118120000000000000
          Top = 45.456710000000000000
          Width = 517.795610000000000000
          Height = 3.779530000000000000
          BeginColor = -4144960
          EndColor = -4144960
          Style = gsHorizontal
          Frame.Typ = []
          Color = clSilver
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 21.118120000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Clientes - Ficha T'#233'cnica')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 51.574830000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 6.000000000000000000
          Width = 80.000000000000000000
          Height = 80.000000000000000000
          AutoSize = True
          Center = True
          DataField = 'LOGO'
          DataSet = qrRel
          DataSetName = 'qrRel'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = -1
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 1062.047930000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 550.252320000000000000
          Top = 0.559060000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
        DataSet = qrRelDetalheProf
        DataSetName = 'qrRelDetalheProf'
        RowCount = 0
        object Gradient57: TfrxGradientView
          AllowVectorExport = True
          Left = 0.133858270000000000
          Top = 18.488169450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient58: TfrxGradientView
          AllowVectorExport = True
          Left = 179.756030000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient59: TfrxGradientView
          AllowVectorExport = True
          Left = 367.953000000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient60: TfrxGradientView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 0.456710000000000000
          Width = 179.527212440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient61: TfrxGradientView
          AllowVectorExport = True
          Left = 180.110390000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient62: TfrxGradientView
          AllowVectorExport = True
          Left = 368.307360000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient63: TfrxGradientView
          AllowVectorExport = True
          Left = 556.370440000000000000
          Top = 0.677180000000000000
          Width = 159.874015748031000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient64: TfrxGradientView
          AllowVectorExport = True
          Left = 556.149970000000000000
          Top = 18.488169450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 18.354360000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."PROFISSAO"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 185.976500000000000000
          Top = 18.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."NATUREZA"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 18.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."NIVEL"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 562.149970000000000000
          Top = 19.133890000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."EMPREGADOR"]')
          ParentFont = False
        end
        object Gradient65: TfrxGradientView
          AllowVectorExport = True
          Left = -0.086611730000000000
          Top = 55.842529450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient66: TfrxGradientView
          AllowVectorExport = True
          Left = 179.535560000000000000
          Top = 55.842529450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient67: TfrxGradientView
          AllowVectorExport = True
          Left = 367.732530000000000000
          Top = 55.842529450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient68: TfrxGradientView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 37.811070000000000000
          Width = 178.015748030000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 36.811070000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FDmiss'#227'o')
          ParentFont = False
        end
        object Gradient69: TfrxGradientView
          AllowVectorExport = True
          Left = 179.889920000000000000
          Top = 37.811070000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 185.889920000000000000
          Top = 36.811070000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Profiss'#227'o')
          ParentFont = False
        end
        object Gradient70: TfrxGradientView
          AllowVectorExport = True
          Left = 368.086890000000000000
          Top = 37.811070000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 374.086890000000000000
          Top = 36.811070000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Renda')
          ParentFont = False
        end
        object Gradient71: TfrxGradientView
          AllowVectorExport = True
          Left = 556.149970000000000000
          Top = 38.031540000000000000
          Width = 159.874015748031000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 562.149970000000000000
          Top = 37.031540000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Gradient72: TfrxGradientView
          AllowVectorExport = True
          Left = 555.929500000000000000
          Top = 55.842529450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 4.338590000000000000
          Top = 55.708720000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."CNPJ"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 185.756030000000000000
          Top = 55.708720000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."CIDADE"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 373.953000000000000000
          Top = 55.708720000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."DATA_INICIO"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 561.929500000000000000
          Top = 56.488250000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelDetalheProf."RENDA_BRUTA"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do C'#244'njuge')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 186.110390000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 374.307360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RG')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 562.370440000000000000
          Top = 0.220470000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Trabalho')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Width = 716.220472440000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 472.441250000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = qrRel
        DataSetName = 'qrRel'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Gradient51: TfrxGradientView
          AllowVectorExport = True
          Top = 368.189240000000000000
          Width = 369.259842520000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient52: TfrxGradientView
          AllowVectorExport = True
          Left = 369.866420000000000000
          Top = 368.189240000000000000
          Width = 346.960629920000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient13: TfrxGradientView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 74.724409450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient14: TfrxGradientView
          AllowVectorExport = True
          Left = 180.756030000000000000
          Top = 74.724409450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient15: TfrxGradientView
          AllowVectorExport = True
          Left = 368.953000000000000000
          Top = 74.724409450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient2: TfrxGradientView
          AllowVectorExport = True
          Left = 1.456710000000000000
          Top = 0.118120000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          BeginColor = -5658199
          EndColor = -4144960
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 11842740
        end
        object Gradient3: TfrxGradientView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 18.897650000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Gradient9: TfrxGradientView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 56.692950000000000000
          Width = 179.527212440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 55.692950000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Gradient10: TfrxGradientView
          AllowVectorExport = True
          Left = 181.110390000000000000
          Top = 56.692950000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 187.110390000000000000
          Top = 55.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rg/IE')
          ParentFont = False
        end
        object Gradient11: TfrxGradientView
          AllowVectorExport = True
          Left = 369.307360000000000000
          Top = 56.692950000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 375.307360000000000000
          Top = 55.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Emiss'#227'o')
          ParentFont = False
        end
        object Gradient12: TfrxGradientView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 56.913420000000000000
          Width = 159.118110240000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 563.370440000000000000
          Top = 55.913420000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Org'#227'o Emissor')
          ParentFont = False
        end
        object Gradient16: TfrxGradientView
          AllowVectorExport = True
          Left = 557.149970000000000000
          Top = 74.724409450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 74.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_CPF_CNPJ"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 186.976500000000000000
          Top = 74.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_RG_IE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 375.173470000000000000
          Top = 74.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_DATA_RG"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 75.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_ORGAO"]')
          ParentFont = False
        end
        object Gradient4: TfrxGradientView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 37.929133860000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 37.795275590000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_ENDERECO"]')
          ParentFont = False
        end
        object Gradient5: TfrxGradientView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 111.724409450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient6: TfrxGradientView
          AllowVectorExport = True
          Left = 180.756030000000000000
          Top = 111.724409450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient7: TfrxGradientView
          AllowVectorExport = True
          Left = 368.953000000000000000
          Top = 111.724409450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient8: TfrxGradientView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 93.692950000000000000
          Width = 179.527212440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 92.692950000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Nascimento')
          ParentFont = False
        end
        object Gradient17: TfrxGradientView
          AllowVectorExport = True
          Left = 181.110390000000000000
          Top = 93.692950000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 187.110390000000000000
          Top = 92.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Gradient18: TfrxGradientView
          AllowVectorExport = True
          Left = 369.307360000000000000
          Top = 93.692950000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 375.307360000000000000
          Top = 92.692950000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Gradient19: TfrxGradientView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 93.913420000000000000
          Width = 159.118110240000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 563.370440000000000000
          Top = 92.913420000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fax')
          ParentFont = False
        end
        object Gradient20: TfrxGradientView
          AllowVectorExport = True
          Left = 557.149970000000000000
          Top = 111.724409450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 111.590600000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_NASC"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 186.976500000000000000
          Top = 111.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_TELEFONE"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 375.173470000000000000
          Top = 111.590600000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_CELULAR"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 112.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_FAX"]')
          ParentFont = False
        end
        object Gradient21: TfrxGradientView
          AllowVectorExport = True
          Left = 0.913388270000000000
          Top = 149.078769450000000000
          Width = 179.149606300000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient22: TfrxGradientView
          AllowVectorExport = True
          Left = 181.039370080000000000
          Top = 149.078769450000000000
          Width = 187.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient23: TfrxGradientView
          AllowVectorExport = True
          Left = 368.732530000000000000
          Top = 149.078769450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient24: TfrxGradientView
          AllowVectorExport = True
          Left = 0.755905510000000000
          Top = 131.047310000000000000
          Width = 179.149606300000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 130.047310000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
        object Gradient25: TfrxGradientView
          AllowVectorExport = True
          Left = 180.889920000000000000
          Top = 131.047310000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 186.889920000000000000
          Top = 130.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
        object Gradient26: TfrxGradientView
          AllowVectorExport = True
          Left = 369.086890000000000000
          Top = 131.047310000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 375.086890000000000000
          Top = 130.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ponto Refer'#234'ncia')
          ParentFont = False
        end
        object Gradient27: TfrxGradientView
          AllowVectorExport = True
          Left = 557.149970000000000000
          Top = 131.267780000000000000
          Width = 159.118110240000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 130.267780000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Naruralidade')
          ParentFont = False
        end
        object Gradient28: TfrxGradientView
          AllowVectorExport = True
          Left = 556.929500000000000000
          Top = 149.078769450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 148.944960000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_SEXO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 186.756030000000000000
          Top = 148.944960000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_EMAIL"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 374.953000000000000000
          Top = 148.944960000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_PONTO_REF"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 562.929500000000000000
          Top = 149.724490000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_NATURALIDADE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 173.976500000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados Familiares')
          ParentFont = False
          VAlign = vaCenter
        end
        object Gradient29: TfrxGradientView
          AllowVectorExport = True
          Left = 0.133858270000000000
          Top = 214.685139450000000000
          Width = 368.503937010000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient30: TfrxGradientView
          AllowVectorExport = True
          Left = 369.512060000000000000
          Top = 214.685139450000000000
          Width = 346.204826930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient32: TfrxGradientView
          AllowVectorExport = True
          Top = 196.653680000000000000
          Width = 368.503712440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 195.653680000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Pai')
          ParentFont = False
        end
        object Gradient33: TfrxGradientView
          AllowVectorExport = True
          Left = 369.637795280000000000
          Top = 196.653680000000000000
          Width = 346.204724410000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 378.866420000000000000
          Top = 195.653680000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome da M'#227'e')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 214.551330000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_PAI"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 378.732530000000000000
          Top = 214.551330000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CLIENTE_MAE"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 240.346630000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados C'#244'njuge')
          ParentFont = False
          VAlign = vaCenter
        end
        object Gradient31: TfrxGradientView
          AllowVectorExport = True
          Left = 1.133858270000000000
          Top = 281.763989450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient34: TfrxGradientView
          AllowVectorExport = True
          Left = 180.756030000000000000
          Top = 281.763989450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient35: TfrxGradientView
          AllowVectorExport = True
          Left = 368.953000000000000000
          Top = 281.763989450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient36: TfrxGradientView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 263.732530000000000000
          Width = 179.527212440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Top = 262.732530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do C'#244'njuge')
          ParentFont = False
        end
        object Gradient37: TfrxGradientView
          AllowVectorExport = True
          Left = 181.110390000000000000
          Top = 263.732530000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 187.110390000000000000
          Top = 262.732530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Gradient38: TfrxGradientView
          AllowVectorExport = True
          Left = 369.307360000000000000
          Top = 263.732530000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 375.307360000000000000
          Top = 262.732530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RG')
          ParentFont = False
        end
        object Gradient39: TfrxGradientView
          AllowVectorExport = True
          Left = 557.370440000000000000
          Top = 263.953000000000000000
          Width = 159.118110240000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 563.370440000000000000
          Top = 262.953000000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Trabalho')
          ParentFont = False
        end
        object Gradient40: TfrxGradientView
          AllowVectorExport = True
          Left = 557.149970000000000000
          Top = 281.763989450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 281.630180000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_NOME"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 186.976500000000000000
          Top = 281.630180000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_CPF"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 375.173470000000000000
          Top = 281.630180000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_RG"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 282.409710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_TRABALHO"]')
          ParentFont = False
        end
        object Gradient41: TfrxGradientView
          AllowVectorExport = True
          Left = 0.913388270000000000
          Top = 319.118349450000000000
          Width = 178.771653540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient42: TfrxGradientView
          AllowVectorExport = True
          Left = 180.535560000000000000
          Top = 319.118349450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient43: TfrxGradientView
          AllowVectorExport = True
          Left = 368.732530000000000000
          Top = 319.118349450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient44: TfrxGradientView
          AllowVectorExport = True
          Left = 0.559060000000000000
          Top = 301.086890000000000000
          Width = 179.527212440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 300.086890000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FDmiss'#227'o')
          ParentFont = False
        end
        object Gradient45: TfrxGradientView
          AllowVectorExport = True
          Left = 180.889920000000000000
          Top = 301.086890000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 186.889920000000000000
          Top = 300.086890000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Profiss'#227'o')
          ParentFont = False
        end
        object Gradient46: TfrxGradientView
          AllowVectorExport = True
          Left = 369.086890000000000000
          Top = 301.086890000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 375.086890000000000000
          Top = 300.086890000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Renda')
          ParentFont = False
        end
        object Gradient47: TfrxGradientView
          AllowVectorExport = True
          Left = 557.149970000000000000
          Top = 301.307360000000000000
          Width = 159.118110240000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 300.307360000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Gradient48: TfrxGradientView
          AllowVectorExport = True
          Left = 556.929500000000000000
          Top = 319.118349450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 5.338590000000000000
          Top = 318.984540000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_ADMISSAO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 186.756030000000000000
          Top = 318.984540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_PROFISSAO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 374.953000000000000000
          Top = 318.984540000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_RENDA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 562.929500000000000000
          Top = 319.764070000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."CONJUGE_FONE"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 344.512060000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Autorizados a Comprar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Gradient49: TfrxGradientView
          AllowVectorExport = True
          Left = 0.133858270000000000
          Top = 386.220699450000000000
          Width = 368.503937010000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient50: TfrxGradientView
          AllowVectorExport = True
          Left = 369.512060000000000000
          Top = 386.220699450000000000
          Width = 346.204826930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 367.189240000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pessoa')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 376.866420000000000000
          Top = 367.189240000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 386.086890000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUTORIZADO01"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 378.732530000000000000
          Top = 386.086890000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUT01"]')
          ParentFont = False
        end
        object Gradient53: TfrxGradientView
          AllowVectorExport = True
          Left = 0.692918270000000000
          Top = 405.134119450000000000
          Width = 368.503937010000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient54: TfrxGradientView
          AllowVectorExport = True
          Left = 370.071120000000000000
          Top = 405.134119450000000000
          Width = 346.204826930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 5.118120000000000000
          Top = 405.000310000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUTORIZADO02"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 379.291590000000000000
          Top = 405.000310000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUT02"]')
          ParentFont = False
        end
        object Gradient55: TfrxGradientView
          AllowVectorExport = True
          Left = 0.559060000000000000
          Top = 423.575059450000000000
          Width = 368.503937010000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient56: TfrxGradientView
          AllowVectorExport = True
          Left = 369.937261730000000000
          Top = 423.575059450000000000
          Width = 346.204826930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 4.984261730000000000
          Top = 423.441250000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUTORIZADO03"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 379.157731730000000000
          Top = 423.441250000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."AUT03"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 449.764070000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Profiss'#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 716.220472440000000000
          Height = 170.078850000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Top = 196.535560000000000000
          Width = 716.220472440945000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 263.567100000000000000
          Width = 716.220472440945000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Top = 366.614410000000000000
          Width = 716.220472440000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 774.803650000000000000
        Width = 718.110700000000000000
        object Memo86: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Refer'#234'ncias')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 952.441560000000000000
        Width = 718.110700000000000000
        DataSet = qrRelContato
        DataSetName = 'qrRelContato'
        RowCount = 0
        object Gradient81: TfrxGradientView
          AllowVectorExport = True
          Left = 367.953000000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 18.354360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelContato."CONTATO_PREJUDICADO"]')
          ParentFont = False
        end
        object Gradient82: TfrxGradientView
          AllowVectorExport = True
          Left = 0.133858270000000000
          Top = 18.488169450000000000
          Width = 186.330713540000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient83: TfrxGradientView
          AllowVectorExport = True
          Left = 179.756030000000000000
          Top = 18.488169450000000000
          Width = 187.464566930000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Gradient84: TfrxGradientView
          AllowVectorExport = True
          Top = 0.456710000000000000
          Width = 190.865802440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient85: TfrxGradientView
          AllowVectorExport = True
          Left = 180.110390000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient86: TfrxGradientView
          AllowVectorExport = True
          Left = 368.307360000000000000
          Top = 0.456710000000000000
          Width = 187.086272440000000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient87: TfrxGradientView
          AllowVectorExport = True
          Left = 556.370440000000000000
          Top = 0.677180000000000000
          Width = 159.874015748031000000
          Height = 18.141732280000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Gradient88: TfrxGradientView
          AllowVectorExport = True
          Left = 556.149970000000000000
          Top = 18.488169450000000000
          Width = 159.118110240000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 18.354360000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelContato."PRODUTO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 562.149970000000000000
          Top = 19.133890000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRelContato."TELEFONE_UTILIZADO"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 374.307360000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato prejudicado')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 562.370440000000000000
          Top = 0.220470000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Width = 716.220472440000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 899.528140000000000000
        Width = 718.110700000000000000
        object Memo95: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qrRel: TfrxDBDataset
    UserName = 'qrRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTE=CLIENTE'
      'CLIENTE_ENDERECO=CLIENTE_ENDERECO'
      'CLIENTE_CPF_CNPJ=CLIENTE_CPF_CNPJ'
      'CLIENTE_RG_IE=CLIENTE_RG_IE'
      'CLIENTE_DATA_RG=CLIENTE_DATA_RG'
      'CLIENTE_ORGAO=CLIENTE_ORGAO'
      'CLIENTE_NASC=CLIENTE_NASC'
      'CLIENTE_TELEFONE=CLIENTE_TELEFONE'
      'CLIENTE_CELULAR=CLIENTE_CELULAR'
      'CLIENTE_FAX=CLIENTE_FAX'
      'CLIENTE_SEXO=CLIENTE_SEXO'
      'CLIENTE_EMAIL=CLIENTE_EMAIL'
      'CLIENTE_PONTO_REF=CLIENTE_PONTO_REF'
      'CLIENTE_NATURALIDADE=CLIENTE_NATURALIDADE'
      'CLIENTE_PAI=CLIENTE_PAI'
      'CLIENTE_MAE=CLIENTE_MAE'
      'CONJUGE_NOME=CONJUGE_NOME'
      'CONJUGE_CPF=CONJUGE_CPF'
      'CONJUGE_RG=CONJUGE_RG'
      'CONJUGE_TRABALHO=CONJUGE_TRABALHO'
      'CONJUGE_ADMISSAO=CONJUGE_ADMISSAO'
      'CONJUGE_PROFISSAO=CONJUGE_PROFISSAO'
      'CONJUGE_RENDA=CONJUGE_RENDA'
      'CONJUGE_FONE=CONJUGE_FONE'
      'AUTORIZADO01=AUTORIZADO01'
      'AUTORIZADO02=AUTORIZADO02'
      'AUTORIZADO03=AUTORIZADO03'
      'AUT01=AUT01'
      'AUT02=AUT02'
      'AUT03=AUT03'
      'CODIGO=CODIGO'
      'LOGO=LOGO')
    DataSet = qrFichaCli
    BCDToCurrency = False
    Left = 648
    Top = 413
  end
  object qrFichaCli: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CL.CODIGO AS CODIGO,'
      '    CL.NOME_RS AS CLIENTE,'
      
        '    coalesce(CL.ENDERECO,'#39#39') ||'#39' - '#39'|| coalesce(CL.BAIRRO,'#39#39') ||' +
        #39','#39'||'
      
        '    coalesce(CL.CIDADE,'#39#39') ||'#39' CEP: '#39'|| coalesce(CL.CEP,'#39#39') AS C' +
        'LIENTE_ENDERECO,'
      '    CL.CPF_CNPJ AS CLIENTE_CPF_CNPJ,'
      '    CL.RG_IE AS CLIENTE_RG_IE,'
      '    CL.DATA_EMISSAO_RG AS CLIENTE_DATA_RG,'
      '    CL.ORGAO_EMISSOR AS CLIENTE_ORGAO,'
      '    CL.NASCIMENTO_IA AS CLIENTE_NASC,'
      '    CL.TELEFONE AS CLIENTE_TELEFONE,'
      '    CL.CELULAR AS CLIENTE_CELULAR,'
      '    CL.FAX AS CLIENTE_FAX,'
      '    CL.SEXO AS CLIENTE_SEXO,'
      '    CL.EMAIL AS CLIENTE_EMAIL,'
      '    CL.PONTO_REFERENCIA AS CLIENTE_PONTO_REF,'
      
        '    coalesce(CL.NATURALIDADE,'#39#39')||'#39#39'||coalesce(CL.NATURALIDADE_U' +
        'F,'#39#39') AS CLIENTE_NATURALIDADE,'
      '    CL.PAI AS CLIENTE_PAI,'
      '    CL.MAE AS CLIENTE_MAE,'
      '    CL.NOME_CONJUGE AS CONJUGE_NOME,'
      '    CL.CPF_CONJUGE AS CONJUGE_CPF,'
      '    CL.RG_CONJUGUE AS CONJUGE_RG,'
      '    CL.TRABALHO_CONJUGE AS CONJUGE_TRABALHO,'
      '    CL.DATA_ADMINSSAO_CONJUGUE AS CONJUGE_ADMISSAO,'
      '    CL.PROFISSAO_CONJUGE AS CONJUGE_PROFISSAO,'
      '    CL.RENDA_CONJUGUE AS CONJUGE_RENDA,'
      '    CL.FONE_CONJUGUE AS CONJUGE_FONE,'
      '    CL.AUTORIZADO1 AS AUTORIZADO01,'
      '    CL.AUTORIZADO2 AS AUTORIZADO02,'
      '    CL.AUTORIZADO3 AS AUTORIZADO03,'
      '    CL.CPF_AUT1 AS AUT01,'
      '    CL.CPF_AUT2 AS AUT02,'
      '    CL.CPF_AUT3 AS AUT03,'
      '    EP.LOGOMARCA AS LOGO'
      'FROM CLIENTES CL'
      '    INNER JOIN EMPRESA EP ON (EP.CODIGO = 1)')
    Left = 192
    Top = 344
    object qrFichaCliCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object qrFichaCliCLIENTE_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_ENDERECO'
      Origin = 'CLIENTE_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 134
    end
    object qrFichaCliCLIENTE_CPF_CNPJ: TStringField
      FieldName = 'CLIENTE_CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qrFichaCliCLIENTE_RG_IE: TStringField
      FieldName = 'CLIENTE_RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object qrFichaCliCLIENTE_DATA_RG: TDateField
      FieldName = 'CLIENTE_DATA_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object qrFichaCliCLIENTE_ORGAO: TStringField
      FieldName = 'CLIENTE_ORGAO'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object qrFichaCliCLIENTE_NASC: TDateField
      FieldName = 'CLIENTE_NASC'
      Origin = 'NASCIMENTO_IA'
    end
    object qrFichaCliCLIENTE_TELEFONE: TStringField
      FieldName = 'CLIENTE_TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object qrFichaCliCLIENTE_CELULAR: TStringField
      FieldName = 'CLIENTE_CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qrFichaCliCLIENTE_FAX: TStringField
      FieldName = 'CLIENTE_FAX'
      Origin = 'FAX'
      Size = 15
    end
    object qrFichaCliCLIENTE_SEXO: TStringField
      FieldName = 'CLIENTE_SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object qrFichaCliCLIENTE_EMAIL: TStringField
      FieldName = 'CLIENTE_EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object qrFichaCliCLIENTE_PONTO_REF: TStringField
      FieldName = 'CLIENTE_PONTO_REF'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object qrFichaCliCLIENTE_NATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_NATURALIDADE'
      Origin = 'CLIENTE_NATURALIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 42
    end
    object qrFichaCliCLIENTE_PAI: TStringField
      FieldName = 'CLIENTE_PAI'
      Origin = 'PAI'
      Size = 70
    end
    object qrFichaCliCLIENTE_MAE: TStringField
      FieldName = 'CLIENTE_MAE'
      Origin = 'MAE'
      Size = 70
    end
    object qrFichaCliCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object qrFichaCliCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object qrFichaCliCONJUGE_RG: TStringField
      FieldName = 'CONJUGE_RG'
      Origin = 'RG_CONJUGUE'
    end
    object qrFichaCliCONJUGE_TRABALHO: TStringField
      FieldName = 'CONJUGE_TRABALHO'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object qrFichaCliCONJUGE_ADMISSAO: TDateField
      FieldName = 'CONJUGE_ADMISSAO'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object qrFichaCliCONJUGE_PROFISSAO: TStringField
      FieldName = 'CONJUGE_PROFISSAO'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object qrFichaCliCONJUGE_FONE: TStringField
      FieldName = 'CONJUGE_FONE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object qrFichaCliAUTORIZADO01: TStringField
      FieldName = 'AUTORIZADO01'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object qrFichaCliAUTORIZADO02: TStringField
      FieldName = 'AUTORIZADO02'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object qrFichaCliAUTORIZADO03: TStringField
      FieldName = 'AUTORIZADO03'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object qrFichaCliAUT01: TStringField
      FieldName = 'AUT01'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object qrFichaCliAUT02: TStringField
      FieldName = 'AUT02'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object qrFichaCliAUT03: TStringField
      FieldName = 'AUT03'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object qrFichaCliCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFichaCliLOGO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'LOGO'
      Origin = 'LOGOMARCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrFichaCliCONJUGE_RENDA: TFMTBCDField
      FieldName = 'CONJUGE_RENDA'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
  end
  object qrFichaProfissao: TFDQuery
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = dsFichaCliente
    MasterFields = 'CODIGO'
    DetailFields = 'ID_CLIENTES'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CLP.ID_CLIENTES AS ID_CLIENTES,'
      '    CLP.PROFISSAO_OCUPACAO AS PROFISSAO,'
      '    CLP.NATUREZA_OCUPACAO AS NATUREZA,'
      '    CLP.NIVEL_CARGO AS NIVEL,'
      '    CLP.EMPRESA_EMPREGADOR AS EMPREGADOR,'
      '    CLP.CPF_CNPJ AS CNPJ,'
      '    CLP.CIDADE AS CIDADE,'
      '    CLP.DATA_INICIO AS DATA_INICIO,'
      '    CLP.RENDA_BRUTA AS RENDA_BRUTA'
      'FROM CLIENTES_PROFISSAO CLP'
      '    WHERE CLP.ID_CLIENTES = :CODIGO')
    Left = 152
    Top = 392
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object qrFichaProfissaoPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO_OCUPACAO'
      Size = 100
    end
    object qrFichaProfissaoNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Origin = 'NATUREZA_OCUPACAO'
      Size = 100
    end
    object qrFichaProfissaoNIVEL: TStringField
      FieldName = 'NIVEL'
      Origin = 'NIVEL_CARGO'
      Size = 100
    end
    object qrFichaProfissaoEMPREGADOR: TStringField
      FieldName = 'EMPREGADOR'
      Origin = 'EMPRESA_EMPREGADOR'
      Size = 100
    end
    object qrFichaProfissaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 19
    end
    object qrFichaProfissaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qrFichaProfissaoDATA_INICIO: TDateField
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object qrFichaProfissaoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrFichaProfissaoRENDA_BRUTA: TFMTBCDField
      FieldName = 'RENDA_BRUTA'
      Origin = 'RENDA_BRUTA'
      Precision = 18
      Size = 2
    end
  end
  object dsFichaCliente: TDataSource
    DataSet = qrFichaCli
    Left = 160
    Top = 352
  end
  object qrRelDetalheProf: TfrxDBDataset
    UserName = 'qrRelDetalheProf'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PROFISSAO=PROFISSAO'
      'NATUREZA=NATUREZA'
      'NIVEL=NIVEL'
      'EMPREGADOR=EMPREGADOR'
      'CNPJ=CNPJ'
      'CIDADE=CIDADE'
      'DATA_INICIO=DATA_INICIO'
      'RENDA_BRUTA=RENDA_BRUTA'
      'ID=ID')
    DataSet = qrFichaProfissao
    BCDToCurrency = False
    Left = 824
    Top = 352
  end
  object qrFichaReferencia: TFDQuery
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = dsFichaCliente
    MasterFields = 'CODIGO'
    DetailFields = 'ID_CLIENTES'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CLR.ID_CLIENTES AS ID_CLIENTES,'
      '    CLR.NOME AS NOME,'
      '    CLR.TELEFONE AS TELEFONE,'
      '    CLR.TIPO AS TIPO'
      'FROM CLIENTES_REFERENCIA CLR'
      '    WHERE CLR.ID_CLIENTES = :CODIGO')
    Left = 864
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object qrFichaReferenciaID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrFichaReferenciaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qrFichaReferenciaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrFichaReferenciaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
  end
  object qrRelReferencia: TfrxDBDataset
    UserName = 'qrRelReferencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_CLIENTES=ID_CLIENTES'
      'NOME=NOME'
      'TELEFONE=TELEFONE'
      'TIPO=TIPO')
    DataSet = qrFichaReferencia
    BCDToCurrency = False
    Left = 344
    Top = 368
  end
  object qrFichaContato: TFDQuery
    IndexFieldNames = 'ID_CLIENTES'
    MasterSource = dsFichaCliente
    MasterFields = 'CODIGO'
    DetailFields = 'ID_CLIENTES'
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES_CONTATO WHERE ID_CLIENTES =:CODIGO')
    Left = 816
    Top = 432
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object qrFichaContatoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFichaContatoID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
    end
    object qrFichaContatoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 100
    end
    object qrFichaContatoCONTATO_FINALIZADO: TStringField
      FieldName = 'CONTATO_FINALIZADO'
      Origin = 'CONTATO_FINALIZADO'
      FixedChar = True
      Size = 3
    end
    object qrFichaContatoCONTATO_PREJUDICADO: TStringField
      FieldName = 'CONTATO_PREJUDICADO'
      Origin = 'CONTATO_PREJUDICADO'
      Size = 100
    end
    object qrFichaContatoTELEFONE_UTILIZADO: TStringField
      FieldName = 'TELEFONE_UTILIZADO'
      Origin = 'TELEFONE_UTILIZADO'
      Size = 15
    end
  end
  object qrRelContato: TfrxDBDataset
    UserName = 'qrRelContato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTES=ID_CLIENTES'
      'PRODUTO=PRODUTO'
      'CONTATO_FINALIZADO=CONTATO_FINALIZADO'
      'CONTATO_PREJUDICADO=CONTATO_PREJUDICADO'
      'TELEFONE_UTILIZADO=TELEFONE_UTILIZADO')
    DataSet = qrFichaContato
    BCDToCurrency = False
    Left = 912
    Top = 424
  end
  object clientes_foto: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from clientes_fotos')
    Left = 913
    Top = 225
    object clientes_fotoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object clientes_fotoCAMINHO_FOTO: TStringField
      FieldName = 'CAMINHO_FOTO'
      Origin = 'CAMINHO_FOTO'
      Size = 200
    end
  end
end
