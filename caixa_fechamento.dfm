object frmcaixa_fechamento: Tfrmcaixa_fechamento
  Left = 472
  Top = 242
  BorderStyle = bsToolWindow
  Caption = 'CAIXA GERAL | Fechamento'
  ClientHeight = 324
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 269
    Width = 625
    Height = 3
    Align = alBottom
    ExplicitTop = 273
  end
  object Panel4: TPanel
    Left = 0
    Top = 272
    Width = 625
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bgravar: TAdvGlowButton
      Left = 192
      Top = 3
      Width = 107
      Height = 39
      Caption = 'F2 | Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 11
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bgravarClick
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
    object bcancelar: TAdvGlowButton
      Left = 305
      Top = 2
      Width = 105
      Height = 39
      Caption = 'ESC | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 1
      OnClick = bcancelarClick
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 269
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel1: TBevel
      Left = 305
      Top = 0
      Width = 3
      Height = 269
      Align = alLeft
      ExplicitHeight = 273
    end
    object ldata: TLabel
      Left = 424
      Top = 11
      Width = 114
      Height = 23
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 333
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Data do Caixa:'
    end
    object Bevel3: TBevel
      Left = 413
      Top = 7
      Width = 133
      Height = 31
    end
    object Bevel4: TBevel
      Left = 306
      Top = 56
      Width = 297
      Height = 2
    end
    object Label2: TLabel
      Left = 389
      Top = 64
      Width = 130
      Height = 13
      Caption = 'Resumo do Movimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 305
      Top = 176
      Width = 297
      Height = 2
    end
    object Label7: TLabel
      Left = 336
      Top = 207
      Width = 118
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Retirada (Sangria):'
    end
    object Label8: TLabel
      Left = 344
      Top = 231
      Width = 110
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Saldo Atual:'
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 305
      Height = 269
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 17
        Align = alTop
        BevelInner = bvLowered
        Caption = 'Situa'#231#227'o dos Caixas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 17
        Width = 305
        Height = 203
        Selected.Strings = (
          'USUARIO'#9'20'#9'Usuario'#9'F'#9
          'sit'#9'10'#9'Situa'#231#227'o'#9'F'#9
          'CODIGO'#9'10'#9'CODIGO'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dscaixa_operador
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDrawDataCell = wwDBGrid1DrawDataCell
      end
      object bincluir: TAdvGlowButton
        Left = 11
        Top = 224
        Width = 286
        Height = 40
        Caption = 'Fechar Caixa Individual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 27
        Images = FormPrincipal.sAlphaImageList2
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bincluirClick
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
    object Panel3: TPanel
      Left = 312
      Top = 83
      Width = 290
      Height = 93
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label3: TLabel
        Left = 87
        Top = 12
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Entradas:'
      end
      object Label4: TLabel
        Left = 87
        Top = 36
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sa'#237'das:'
      end
      object Label5: TLabel
        Left = 32
        Top = 60
        Width = 110
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Saldo:'
      end
      object RENTRADA: TRxCalcEdit
        Left = 149
        Top = 8
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 0
      end
      object RSAIDA: TRxCalcEdit
        Left = 149
        Top = 32
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 1
      end
      object RSUBSALDO: TRxCalcEdit
        Left = 149
        Top = 56
        Width = 121
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 2
      end
      object Button1: TButton
        Left = 16
        Top = 40
        Width = 9
        Height = 25
        Caption = 'z'
        TabOrder = 3
        Visible = False
        OnClick = Button1Click
      end
    end
    object rsangria: TRxCalcEdit
      Left = 461
      Top = 199
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = rsangriaEnter
      OnExit = rsangriaExit
      OnKeyPress = rsangriaKeyPress
    end
    object RSALDO: TRxCalcEdit
      Left = 461
      Top = 223
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
  end
  object dscaixa_operador: TDataSource
    DataSet = qrcaixa_operador
    Left = 144
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 64
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = Gravar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrcaixa_operador: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from USUARIOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = qrcaixa_operadorCalcFields
    Left = 184
    Top = 104
    object qrcaixa_operadorUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object qrcaixa_operadorsit: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'sit'
      Size = 10
      Calculated = True
    end
    object qrcaixa_operadorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Visible = False
      Size = 1
    end
    object qrcaixa_operadorCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
  end
end
