object FormConsultaContasPagarPLC: TFormConsultaContasPagarPLC
  Left = 375
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta - Contas a Pagar (Plano de Conta)'
  ClientHeight = 391
  ClientWidth = 787
  Color = 15263976
  Constraints.MinWidth = 270
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
    Height = 391
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
      TabSheet2)
    object TabSheet2: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 366
      PageIndex = 2
      Caption = 'Contas a Pagar (Pagas)'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 3
      PageControl = pc
      object DBGrid3: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 127
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        FixedColor = 15717318
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'N_DOCUMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#176' Documento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Plano de Conta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 365
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Valor Parcela '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 1
        object Label6: TLabel
          Left = 189
          Top = 13
          Width = 79
          Height = 13
          Caption = 'Pagamento F:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 6
          Top = 13
          Width = 76
          Height = 13
          Caption = 'Pagamento I:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel5: TBevel
          Left = 2
          Top = 3
          Width = 416
          Height = 37
        end
        object Bevel6: TBevel
          Left = 419
          Top = 3
          Width = 357
          Height = 37
        end
        object Label8: TLabel
          Left = 426
          Top = 13
          Width = 92
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit5: TDateEdit
          Left = 85
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit6: TDateEdit
          Left = 271
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton8: TsuiButton
          Left = 374
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
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
          OnClick = suiButton8Click
          ResHandle = 0
        end
        object suiButton9: TsuiButton
          Left = 733
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton9Click
          ResHandle = 0
        end
        object Edit3: TEdit
          Left = 520
          Top = 11
          Width = 205
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 324
        Width = 781
        Height = 42
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 2
        object Navigator3: TsuiDBNavigator
          Left = 6
          Top = 5
          Width = 300
          Height = 27
          Cursor = crDefault
          UIStyle = WinXP
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 170
        Width = 781
        Height = 154
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 3
        DesignSize = (
          781
          154)
        object RxLabel17: TRxLabel
          Left = 5
          Top = 5
          Width = 149
          Height = 13
          Caption = 'Usuario / Data (Cadastro)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel18: TRxLabel
          Left = 5
          Top = 30
          Width = 158
          Height = 13
          Caption = 'Usuario: (Autoriz.) / (Baixa)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel19: TRxLabel
          Left = 5
          Top = 55
          Width = 152
          Height = 13
          Caption = 'N'#186' Doc. / S'#233'rie / Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 5
          Top = 80
          Width = 118
          Height = 13
          Caption = 'Tipo de Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel22: TRxLabel
          Left = 5
          Top = 130
          Width = 174
          Height = 13
          Caption = 'Emiss'#227'o / Vencimento / Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel23: TRxLabel
          Left = 517
          Top = 130
          Width = 69
          Height = 13
          Caption = 'Valor Pago:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel24: TRxLabel
          Left = 517
          Top = 105
          Width = 112
          Height = 13
          Caption = 'Valor do Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel29: TRxLabel
          Left = 517
          Top = 80
          Width = 101
          Height = 13
          Caption = 'Valor das Multas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel30: TRxLabel
          Left = 517
          Top = 55
          Width = 94
          Height = 13
          Caption = 'Valor dos Juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel31: TRxLabel
          Left = 517
          Top = 30
          Width = 101
          Height = 13
          Caption = 'Valor da Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel32: TRxLabel
          Left = 517
          Top = 5
          Width = 94
          Height = 13
          Caption = 'Valor da Fatura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel21: TRxLabel
          Left = 5
          Top = 106
          Width = 94
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiButton10: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            0E030000424D0E030000000000003600000028000000110000000E0000000100
            180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBF0000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
            BF00BFBFBF000000000000000000000000000000000000000000000000000000
            000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
            000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
            BF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
            BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
            00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
            BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
            000000000000000000000000000000FFFFFF000000000000000000000000BFBF
            BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
            BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000BFBFBFBFBFBF00}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object suiDBEdit21: TsuiDBEdit
          Left = 181
          Top = 130
          Width = 100
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit22: TsuiDBEdit
          Left = 181
          Top = 105
          Width = 307
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'FORNECEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit23: TsuiDBEdit
          Left = 181
          Top = 55
          Width = 122
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit24: TsuiDBEdit
          Left = 181
          Top = 30
          Width = 146
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_AUTORIZACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit25: TsuiDBEdit
          Left = 181
          Top = 5
          Width = 202
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit26: TsuiDBEdit
          Left = 387
          Top = 5
          Width = 100
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit27: TsuiDBEdit
          Left = 336
          Top = 30
          Width = 152
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit28: TsuiDBEdit
          Left = 307
          Top = 55
          Width = 88
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'SERIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit29: TsuiDBEdit
          Left = 181
          Top = 80
          Width = 307
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit30: TsuiDBEdit
          Left = 284
          Top = 130
          Width = 100
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit37: TsuiDBEdit
          Left = 635
          Top = 5
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit38: TsuiDBEdit
          Left = 635
          Top = 30
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit39: TsuiDBEdit
          Left = 635
          Top = 55
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'JUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit40: TsuiDBEdit
          Left = 635
          Top = 80
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'MULTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit41: TsuiDBEdit
          Left = 635
          Top = 105
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit42: TsuiDBEdit
          Left = 635
          Top = 130
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit43: TsuiDBEdit
          Left = 388
          Top = 130
          Width = 100
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit44: TsuiDBEdit
          Left = 400
          Top = 55
          Width = 88
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
    end
    object TabSheet1: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 366
      PageIndex = 1
      Caption = 'Contas a Pagar (Autorizadas)'
      TabVisible = True
      ImageIndex = -1
      Color = clWhite
      Enabled = False
      TabOrder = 2
      PageControl = pc
      object Panel1: TPanel
        Left = 0
        Top = 324
        Width = 781
        Height = 42
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 0
        DesignSize = (
          781
          42)
        object suiButton4: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            0E030000424D0E030000000000003600000028000000110000000E0000000100
            180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBF0000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
            BF00BFBFBF000000000000000000000000000000000000000000000000000000
            000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
            000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
            BF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
            BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
            00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
            BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
            000000000000000000000000000000FFFFFF000000000000000000000000BFBF
            BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
            BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000BFBFBFBFBFBF00}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object Navigator2: TsuiDBNavigator
          Left = 6
          Top = 5
          Width = 300
          Height = 27
          Cursor = crDefault
          UIStyle = WinXP
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 170
        Width = 781
        Height = 154
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 1
        object RxLabel9: TRxLabel
          Left = 5
          Top = 5
          Width = 149
          Height = 13
          Caption = 'Usuario / Data (Cadastro)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 5
          Top = 30
          Width = 158
          Height = 13
          Caption = 'Usuario (Autoriz.) / Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 5
          Top = 55
          Width = 95
          Height = 13
          Caption = 'N'#186' Doc. / S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 5
          Top = 80
          Width = 118
          Height = 13
          Caption = 'Tipo de Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 5
          Top = 130
          Width = 129
          Height = 13
          Caption = 'Emiss'#227'o / Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 486
          Top = 130
          Width = 148
          Height = 13
          Caption = 'Valor Autorizado a Pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 486
          Top = 105
          Width = 112
          Height = 13
          Caption = 'Valor do Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel25: TRxLabel
          Left = 486
          Top = 80
          Width = 101
          Height = 13
          Caption = 'Valor das Multas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel26: TRxLabel
          Left = 486
          Top = 55
          Width = 94
          Height = 13
          Caption = 'Valor dos Juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel27: TRxLabel
          Left = 486
          Top = 30
          Width = 101
          Height = 13
          Caption = 'Valor da Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel28: TRxLabel
          Left = 486
          Top = 5
          Width = 94
          Height = 13
          Caption = 'Valor da Fatura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel13: TRxLabel
          Left = 5
          Top = 104
          Width = 94
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit11: TsuiDBEdit
          Left = 172
          Top = 5
          Width = 149
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit12: TsuiDBEdit
          Left = 327
          Top = 5
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit16: TsuiDBEdit
          Left = 327
          Top = 30
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit15: TsuiDBEdit
          Left = 172
          Top = 30
          Width = 149
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_AUTORIZACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit13: TsuiDBEdit
          Left = 172
          Top = 55
          Width = 149
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit14: TsuiDBEdit
          Left = 327
          Top = 55
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'SERIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit17: TsuiDBEdit
          Left = 172
          Top = 80
          Width = 289
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit18: TsuiDBEdit
          Left = 172
          Top = 105
          Width = 289
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'FORNECEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit19: TsuiDBEdit
          Left = 172
          Top = 130
          Width = 114
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit20: TsuiDBEdit
          Left = 297
          Top = 130
          Width = 163
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit31: TsuiDBEdit
          Left = 635
          Top = 5
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit32: TsuiDBEdit
          Left = 635
          Top = 30
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit33: TsuiDBEdit
          Left = 635
          Top = 55
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'JUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit34: TsuiDBEdit
          Left = 635
          Top = 80
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'MULTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit35: TsuiDBEdit
          Left = 635
          Top = 105
          Width = 134
          Height = 18
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit36: TsuiDBEdit
          Left = 635
          Top = 130
          Width = 134
          Height = 18
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 781
        Height = 43
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15198177
        TabOrder = 2
        object Label1: TLabel
          Left = 189
          Top = 13
          Width = 82
          Height = 13
          Caption = 'Vencimento F:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 6
          Top = 13
          Width = 79
          Height = 13
          Caption = 'Vencimento I:'
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
          Width = 416
          Height = 37
        end
        object Bevel4: TBevel
          Left = 419
          Top = 3
          Width = 357
          Height = 37
        end
        object Label5: TLabel
          Left = 426
          Top = 13
          Width = 92
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit3: TDateEdit
          Left = 85
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit4: TDateEdit
          Left = 271
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object Button6: TsuiButton
          Left = 374
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
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
          OnClick = Button6Click
          ResHandle = 0
        end
        object suiButton7: TsuiButton
          Left = 733
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton7Click
          ResHandle = 0
        end
        object Edit2: TEdit
          Left = 520
          Top = 11
          Width = 205
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
      end
      object DBGrid1: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 127
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        FixedColor = 15717318
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'N_DOCUMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#176' Documento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDOR'
            Title.Caption = 'Plano de Conta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 365
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Title.Caption = 'Valor Parcela '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end>
      end
    end
    object TBCPP: TsuiTabSheet
      Left = 3
      Top = 22
      Width = 781
      Height = 366
      PageIndex = 0
      Caption = 'Contas a Pagar (N'#227'o Autorizadas)'
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
        object Label4: TLabel
          Left = 189
          Top = 13
          Width = 82
          Height = 13
          Caption = 'Vencimento F:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 6
          Top = 13
          Width = 79
          Height = 13
          Caption = 'Vencimento I:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 2
          Top = 3
          Width = 416
          Height = 37
        end
        object Bevel2: TBevel
          Left = 419
          Top = 3
          Width = 357
          Height = 37
        end
        object Label35: TLabel
          Left = 426
          Top = 13
          Width = 92
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DateEdit1: TDateEdit
          Left = 85
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = DateEdit1Enter
          OnExit = DateEdit1Exit
        end
        object DateEdit2: TDateEdit
          Left = 271
          Top = 11
          Width = 100
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
          OnEnter = DateEdit2Enter
          OnExit = DateEdit2Exit
        end
        object suiButton1: TsuiButton
          Left = 374
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
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
        object suiButton3: TsuiButton
          Left = 733
          Top = 7
          Width = 40
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Caption = ''
          AutoSize = False
          ParentFont = False
          UIStyle = WinXP
          TabOrder = 3
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
          OnClick = suiButton3Click
          ResHandle = 0
        end
        object Edit1: TEdit
          Left = 520
          Top = 11
          Width = 205
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
        end
      end
      object DBGrid2: TsuiDBGrid
        Left = 0
        Top = 43
        Width = 781
        Height = 161
        Align = alClient
        BorderStyle = bsNone
        Color = 14609391
        FixedColor = 15717318
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'N_DOCUMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#176' Documento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Parcela'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Plano de Conta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 365
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Valor Parcela '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 204
        Width = 781
        Height = 120
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 15263976
        Enabled = False
        TabOrder = 2
        object RxLabel6: TRxLabel
          Left = 5
          Top = 86
          Width = 94
          Height = 13
          Caption = 'Plano de Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 5
          Top = 61
          Width = 118
          Height = 13
          Caption = 'Tipo de Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 5
          Top = 36
          Width = 95
          Height = 13
          Caption = 'N'#186' Doc. / S'#233'rie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel2: TRxLabel
          Left = 5
          Top = 11
          Width = 149
          Height = 13
          Caption = 'Usuario / Data (Cadastro)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel8: TRxLabel
          Left = 517
          Top = 86
          Width = 101
          Height = 13
          Caption = 'Valor da Parcela:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel1: TRxLabel
          Left = 517
          Top = 61
          Width = 94
          Height = 13
          Caption = 'Valor da Fatura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel3: TRxLabel
          Left = 517
          Top = 11
          Width = 49
          Height = 13
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 517
          Top = 36
          Width = 69
          Height = 13
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object suiDBEdit1: TsuiDBEdit
          Left = 154
          Top = 11
          Width = 184
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'USUARIO_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit5: TsuiDBEdit
          Left = 341
          Top = 11
          Width = 133
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_CADASTRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit6: TsuiDBEdit
          Left = 341
          Top = 36
          Width = 133
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'SERIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit4: TsuiDBEdit
          Left = 154
          Top = 36
          Width = 184
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'N_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit7: TsuiDBEdit
          Left = 154
          Top = 61
          Width = 320
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit8: TsuiDBEdit
          Left = 154
          Top = 86
          Width = 320
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'FORNECEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit3: TsuiDBEdit
          Left = 627
          Top = 61
          Width = 144
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit10: TsuiDBEdit
          Left = 627
          Top = 86
          Width = 144
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'VALOR_PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit2: TsuiDBEdit
          Left = 627
          Top = 36
          Width = 144
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          UIStyle = WinXP
          BorderColor = 6842472
        end
        object suiDBEdit9: TsuiDBEdit
          Left = 627
          Top = 11
          Width = 144
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15198177
          DataField = 'DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          UIStyle = WinXP
          BorderColor = 6842472
        end
      end
      object Panel: TPanel
        Left = 0
        Top = 324
        Width = 781
        Height = 42
        Align = alBottom
        BevelInner = bvRaised
        Color = 15263976
        TabOrder = 3
        DesignSize = (
          781
          42)
        object BitBtn3: TsuiButton
          Left = 859
          Top = 0
          Width = 22
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ShowHint = True
          Caption = 'BitBtn3'
          AutoSize = False
          ParentShowHint = False
          ParentFont = False
          TabStop = False
          UIStyle = WinXP
          TabOrder = 0
          Transparent = False
          ModalResult = 0
          FocusedRectMargin = 2
          Glyph.Data = {
            0E030000424D0E030000000000003600000028000000110000000E0000000100
            180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBF0000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
            BF00BFBFBF000000000000000000000000000000000000000000000000000000
            000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
            000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
            BF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
            BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
            00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
            BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
            000000000000000000000000000000FFFFFF000000000000000000000000BFBF
            BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
            BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000BFBFBFBFBFBF00}
          Layout = blGlyphLeft
          Spacing = 4
          MouseContinuouslyDownInterval = 100
          ResHandle = 0
        end
        object Navigator: TsuiDBNavigator
          Left = 6
          Top = 5
          Width = 300
          Height = 27
          Cursor = crDefault
          UIStyle = WinXP
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
    end
  end
end
