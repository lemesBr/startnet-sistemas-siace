object FormConsultaChequesRetornados: TFormConsultaChequesRetornados
  Left = 383
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta - Cheques Retornados'
  ClientHeight = 405
  ClientWidth = 787
  Color = 15263976
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pc: TsuiPageControl
    Left = 0
    Top = 0
    Width = 787
    Height = 405
    Align = alClient
    UIStyle = WinXP
    LeftMargin = 10
    BorderColor = 6842472
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabPosition = suiTop
    PageDrawFocused = True
    ParentFont = False
    TabOrder = 0
    TabStop = True
    ActivePage = TBCPP
    Pages = (
      TBCPP
      TabSheet1
      TabSheetRetPagos)
    object TabSheet1: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 380
      PageIndex = 1
      Caption = 'Cheques Retornados a Baixar'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 2
      OnShow = TabSheet1Show
      PageControl = pc
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 0
        object Label1: TLabel
          Left = 5
          Top = 10
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 185
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel3: TBevel
          Left = 2
          Top = 3
          Width = 451
          Height = 37
        end
        object Button6: TsuiButton
          Left = 362
          Top = 7
          Width = 84
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
            E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
            E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
            0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
            4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
            6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
            8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
            2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
            6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = Button6Click
          ResHandle = 0
        end
        object suiDBNavigator1: TsuiDBNavigator
          Left = 471
          Top = 6
          Width = 300
          Height = 25
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
        object DateEdit3: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit4: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 218
        Width = 781
        Height = 162
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 1
        object RxLabel9: TRxLabel
          Left = 5
          Top = 85
          Width = 134
          Height = 13
          Caption = 'Cliente / N'#186' da Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 5
          Top = 60
          Width = 182
          Height = 13
          Caption = 'Tipo de Cheque / Conta desde '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 5
          Top = 35
          Width = 110
          Height = 13
          Caption = 'Titular:  N'#186' Conta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 5
          Top = 10
          Width = 107
          Height = 13
          Caption = 'Banco / Ag'#234'ncia :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel13: TRxLabel
          Left = 525
          Top = 85
          Width = 83
          Height = 13
          Caption = 'Data da Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 525
          Top = 60
          Width = 117
          Height = 13
          Caption = 'Data para Deposito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 5
          Top = 110
          Width = 206
          Height = 13
          Caption = 'N'#186' Cheque / Qnt / Valor do Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 525
          Top = 10
          Width = 127
          Height = 13
          Caption = 'Usuario (Lan'#231'amento)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel21: TRxLabel
          Left = 525
          Top = 110
          Width = 101
          Height = 13
          Caption = 'Data do Retorno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel22: TRxLabel
          Left = 525
          Top = 135
          Width = 135
          Height = 13
          Caption = 'N'#186' da Conta Receptora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel23: TRxLabel
          Left = 5
          Top = 135
          Width = 112
          Height = 13
          Caption = 'Motivo do Retorno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel24: TRxLabel
          Left = 525
          Top = 35
          Width = 89
          Height = 13
          Caption = 'Usuario (Baixa)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit11: TsuiDBEdit
          Left = 127
          Top = 10
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'BANCO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit12: TsuiDBEdit
          Left = 384
          Top = 10
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'AGENCIA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit13: TsuiDBEdit
          Left = 384
          Top = 35
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_CORRENTE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit14: TsuiDBEdit
          Left = 127
          Top = 35
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TITULAR'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit15: TsuiDBEdit
          Left = 188
          Top = 60
          Width = 189
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit16: TsuiDBEdit
          Left = 154
          Top = 85
          Width = 258
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CLIENTE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit17: TsuiDBEdit
          Left = 216
          Top = 110
          Width = 92
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit18: TsuiDBEdit
          Left = 315
          Top = 110
          Width = 61
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'QNT'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit19: TsuiDBEdit
          Left = 419
          Top = 85
          Width = 95
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CODIGO_COMPRA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit20: TsuiDBEdit
          Left = 384
          Top = 60
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_DESDE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit30: TsuiDBEdit
          Left = 384
          Top = 110
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit31: TsuiDBEdit
          Left = 662
          Top = 10
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit32: TsuiDBEdit
          Left = 662
          Top = 60
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_DEPOSITO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit33: TsuiDBEdit
          Left = 662
          Top = 85
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit34: TsuiDBEdit
          Left = 662
          Top = 110
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit35: TsuiDBEdit
          Left = 662
          Top = 135
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'NUMERO_CC'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit36: TsuiDBEdit
          Left = 127
          Top = 135
          Width = 387
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'MOTIVO_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit37: TsuiDBEdit
          Left = 662
          Top = 35
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object suiDBGrid1: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 175
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        DataSource = DMC2.DTS_ChequesRetornadosBaixar
        FixedColor = 15717318
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = WinXP
        BorderColor = 6842472
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clBlack
        FixedBGColor = 15717318
        BGColor = 14609391
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_RETORNO'
            Title.Alignment = taCenter
            Title.Caption = 'Data do Retorno'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Titular da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 237
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
    end
    object TabSheetRetPagos: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 380
      PageIndex = 2
      Caption = 'Cheques Retornados Baixados'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 3
      OnShow = TabSheetRetPagosShow
      PageControl = pc
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 0
        object Bevel2: TBevel
          Left = 2
          Top = 3
          Width = 451
          Height = 37
        end
        object Label5: TLabel
          Left = 185
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 5
          Top = 10
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object suiDBNavigator2: TsuiDBNavigator
          Left = 471
          Top = 6
          Width = 300
          Height = 25
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object ButtonConsRetBai: TsuiButton
          Left = 361
          Top = 7
          Width = 86
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 1
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
            E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
            E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
            0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
            4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
            6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
            8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
            2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
            6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = ButtonConsRetBaiClick
          ResHandle = 0
        end
        object DateEdit5: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 2
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object DateEdit6: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 218
        Width = 781
        Height = 162
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 1
        object RxLabel25: TRxLabel
          Left = 5
          Top = 85
          Width = 134
          Height = 13
          Caption = 'Cliente / N'#186' da Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel26: TRxLabel
          Left = 5
          Top = 60
          Width = 182
          Height = 13
          Caption = 'Tipo de Cheque / Conta desde '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel27: TRxLabel
          Left = 5
          Top = 35
          Width = 110
          Height = 13
          Caption = 'Titular:  N'#186' Conta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel28: TRxLabel
          Left = 5
          Top = 10
          Width = 107
          Height = 13
          Caption = 'Banco / Ag'#234'ncia :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel29: TRxLabel
          Left = 525
          Top = 85
          Width = 83
          Height = 13
          Caption = 'Data da Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel30: TRxLabel
          Left = 525
          Top = 60
          Width = 117
          Height = 13
          Caption = 'Data para Deposito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel31: TRxLabel
          Left = 5
          Top = 110
          Width = 206
          Height = 13
          Caption = 'N'#186' Cheque / Qnt / Valor do Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel32: TRxLabel
          Left = 525
          Top = 10
          Width = 127
          Height = 13
          Caption = 'Usuario (Lan'#231'amento)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel33: TRxLabel
          Left = 525
          Top = 110
          Width = 101
          Height = 13
          Caption = 'Data do Retorno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel34: TRxLabel
          Left = 525
          Top = 135
          Width = 135
          Height = 13
          Caption = 'N'#186' da Conta Receptora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel35: TRxLabel
          Left = 5
          Top = 135
          Width = 112
          Height = 13
          Caption = 'Motivo do Retorno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel36: TRxLabel
          Left = 525
          Top = 35
          Width = 89
          Height = 13
          Caption = 'Usuario (Baixa)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit39: TsuiDBEdit
          Left = 127
          Top = 10
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'BANCO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit40: TsuiDBEdit
          Left = 384
          Top = 10
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'AGENCIA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit41: TsuiDBEdit
          Left = 384
          Top = 35
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_CORRENTE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit42: TsuiDBEdit
          Left = 127
          Top = 35
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TITULAR'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit43: TsuiDBEdit
          Left = 188
          Top = 60
          Width = 189
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit44: TsuiDBEdit
          Left = 154
          Top = 85
          Width = 258
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CLIENTE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit45: TsuiDBEdit
          Left = 216
          Top = 110
          Width = 92
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit46: TsuiDBEdit
          Left = 315
          Top = 110
          Width = 61
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'QNT'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit47: TsuiDBEdit
          Left = 419
          Top = 85
          Width = 95
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CODIGO_COMPRA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit48: TsuiDBEdit
          Left = 384
          Top = 60
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_DESDE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit49: TsuiDBEdit
          Left = 384
          Top = 110
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit50: TsuiDBEdit
          Left = 662
          Top = 10
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit51: TsuiDBEdit
          Left = 662
          Top = 60
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_DEPOSITO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit52: TsuiDBEdit
          Left = 662
          Top = 85
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit53: TsuiDBEdit
          Left = 662
          Top = 110
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit54: TsuiDBEdit
          Left = 662
          Top = 135
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'NUMERO_CC'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit55: TsuiDBEdit
          Left = 127
          Top = 135
          Width = 387
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'MOTIVO_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit56: TsuiDBEdit
          Left = 662
          Top = 35
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosBaixados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object suiDBGrid2: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 175
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        DataSource = DMC2.DTS_ChequesRetornadosBaixados
        FixedColor = 15717318
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = WinXP
        BorderColor = 6842472
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clBlack
        FixedBGColor = 15717318
        BGColor = 14609391
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_RETORNO'
            Title.Alignment = taCenter
            Title.Caption = 'Data do Retorno'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Titular da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 237
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
    end
    object TBCPP: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 380
      PageIndex = 0
      Caption = 'Cheques Retornados Geral'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      PageControl = pc
      object pnpesq: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 3
          Width = 451
          Height = 37
        end
        object Label4: TLabel
          Left = 185
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 5
          Top = 10
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit1: TDateEdit
          Left = 77
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit2: TDateEdit
          Left = 251
          Top = 10
          Width = 100
          Height = 20
          Ctl3D = True
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton1: TsuiButton
          Left = 361
          Top = 7
          Width = 86
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Caption = 'Consultar'
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 2
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
            E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
            E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
            0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
            4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
            6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
            8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
            B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
            B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
            2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
            6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
            836A1F7C1F7C}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          OnClick = suiButton1Click
          ResHandle = 0
        end
        object Navigator: TsuiDBNavigator
          Left = 470
          Top = 6
          Width = 300
          Height = 25
          Cursor = crDefault
          UIStyle = WinXP
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 3
        end
      end
      object DBGrid2: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 175
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        DataSource = DMC2.DTS_ChequesRetornadosPeriodo
        FixedColor = 15717318
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = WinXP
        BorderColor = 6842472
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clBlack
        FixedBGColor = 15717318
        BGColor = 14609391
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_RETORNO'
            Title.Alignment = taCenter
            Title.Caption = 'Data do Retorno'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Titular da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 237
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 218
        Width = 781
        Height = 162
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 2
        object RxLabel6: TRxLabel
          Left = 5
          Top = 85
          Width = 134
          Height = 13
          Caption = 'Cliente / N'#186' da Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 5
          Top = 60
          Width = 182
          Height = 13
          Caption = 'Tipo de Cheque / Conta desde '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 5
          Top = 35
          Width = 110
          Height = 13
          Caption = 'Titular:  N'#186' Conta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel2: TRxLabel
          Left = 5
          Top = 10
          Width = 107
          Height = 13
          Caption = 'Banco / Ag'#234'ncia :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel8: TRxLabel
          Left = 525
          Top = 85
          Width = 83
          Height = 13
          Caption = 'Data da Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel1: TRxLabel
          Left = 525
          Top = 60
          Width = 117
          Height = 13
          Caption = 'Data para Deposito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel3: TRxLabel
          Left = 5
          Top = 110
          Width = 206
          Height = 13
          Caption = 'N'#186' Cheque / Qnt / Valor do Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 525
          Top = 10
          Width = 127
          Height = 13
          Caption = 'Usuario (Lan'#231'amento)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel17: TRxLabel
          Left = 525
          Top = 110
          Width = 101
          Height = 13
          Caption = 'Data do Retorno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel18: TRxLabel
          Left = 525
          Top = 135
          Width = 135
          Height = 13
          Caption = 'N'#186' da Conta Receptora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel19: TRxLabel
          Left = 5
          Top = 135
          Width = 174
          Height = 13
          Caption = 'Motivo do Ret. / Ret.Baixado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 525
          Top = 35
          Width = 89
          Height = 13
          Caption = 'Usuario (Baixa)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit1: TsuiDBEdit
          Left = 127
          Top = 10
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'BANCO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit5: TsuiDBEdit
          Left = 384
          Top = 10
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'AGENCIA'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit6: TsuiDBEdit
          Left = 384
          Top = 35
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_CORRENTE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit4: TsuiDBEdit
          Left = 127
          Top = 35
          Width = 250
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TITULAR'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit7: TsuiDBEdit
          Left = 188
          Top = 60
          Width = 189
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit8: TsuiDBEdit
          Left = 154
          Top = 85
          Width = 258
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CLIENTE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit3: TsuiDBEdit
          Left = 216
          Top = 110
          Width = 92
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit10: TsuiDBEdit
          Left = 315
          Top = 110
          Width = 61
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'QNT'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit2: TsuiDBEdit
          Left = 419
          Top = 85
          Width = 95
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CODIGO_COMPRA'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit9: TsuiDBEdit
          Left = 384
          Top = 60
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'CONTA_DESDE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit21: TsuiDBEdit
          Left = 384
          Top = 110
          Width = 130
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_CHEQUE'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit22: TsuiDBEdit
          Left = 662
          Top = 10
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit23: TsuiDBEdit
          Left = 662
          Top = 60
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_DEPOSITO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit24: TsuiDBEdit
          Left = 662
          Top = 85
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit25: TsuiDBEdit
          Left = 662
          Top = 110
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit26: TsuiDBEdit
          Left = 662
          Top = 135
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'NUMERO_CC'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit27: TsuiDBEdit
          Left = 178
          Top = 135
          Width = 234
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'MOTIVO_RETORNO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit28: TsuiDBEdit
          Left = 662
          Top = 35
          Width = 113
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_BAIXA'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit29: TsuiDBEdit
          Left = 419
          Top = 135
          Width = 95
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'RETORNADO_PAGO'
          DataSource = DMC2.DTS_ChequesRetornadosPeriodo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
    end
  end
  object MSG_ERRO: TsuiMessageDialog
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
    Text = 'Erro na Consulta'
    Left = 635
    Top = 28
  end
  object MSG_NR: TsuiMessageDialog
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
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 602
    Top = 28
  end
end
