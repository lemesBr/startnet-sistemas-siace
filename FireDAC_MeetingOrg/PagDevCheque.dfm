object FormPagDevcheque: TFormPagDevcheque
  Left = 246
  Top = 136
  BorderStyle = bsDialog
  Caption = 
    'Pagamento/Devolu'#231#227'o de Cheque - ( Devolu'#231#227'o / Cancelamento de Pe' +
    'didos)'
  ClientHeight = 428
  ClientWidth = 634
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  object Panel1: TPanel
    Left = 0
    Top = 360
    Width = 634
    Height = 68
    Align = alTop
    Color = 15263976
    Enabled = False
    TabOrder = 0
    object RxLabel2: TRxLabel
      Left = 6
      Top = 7
      Width = 175
      Height = 16
      Caption = 'Valor a Pagar em Dinheiro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 194
      Top = 8
      Width = 170
      Height = 16
      Caption = 'Valor a Pagar em Cheque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 5
      Top = 26
      Width = 180
      Height = 35
      TabStop = False
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 195
      Top = 26
      Width = 180
      Height = 35
      TabStop = False
      AutoSize = False
      Color = clBlack
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 392
      Top = 0
      Width = 242
      Height = 68
      Align = alCustom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263975
      TabOrder = 2
      object suiButton1: TsuiButton
        Left = 118
        Top = 5
        Width = 110
        Height = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Caption = 'Cancela'
        AutoSize = False
        ParentFont = False
        UIStyle = FromThemeFile
        TabOrder = 1
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
          00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
          1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
          1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
          1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton1Click
        ResHandle = 0
      end
      object suiButton2: TsuiButton
        Left = 5
        Top = 5
        Width = 110
        Height = 57
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Caption = 'Confirma'
        AutoSize = False
        ParentFont = False
        UIStyle = FromThemeFile
        TabOrder = 0
        Transparent = False
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          5A010000424D5A01000000000000760000002800000012000000130000000100
          040000000000E4000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333330000003333422433333333330000003334222243333333330000003342
          2222243333333300000034222A2222433333330000003222A2A2224333333300
          00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
          243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
          333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
          00003333333333A2224A3300000033333333333A222433000000333333333333
          A224330000003333333333333A223300000033333333333333A333000000}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        OnClick = suiButton2Click
        ResHandle = 0
      end
    end
  end
  object Panel11: TPanel
    Left = 0
    Top = 240
    Width = 634
    Height = 120
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel12: TPanel
      Left = 2
      Top = 2
      Width = 630
      Height = 24
      Align = alTop
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object RxLabel8: TRxLabel
        Left = 2
        Top = -2
        Width = 609
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cheques Extornados (Fornecedores)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel13: TPanel
      Left = 2
      Top = 26
      Width = 630
      Height = 66
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object suiDBGrid3: TsuiDBGrid
        Left = 2
        Top = 2
        Width = 626
        Height = 62
        Align = alClient
        BorderStyle = bsNone
        Color = 15198183
        DataSource = DTS_CH_E
        FixedColor = 12874553
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = MacOS
        BorderColor = 8355711
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clWhite
        FixedBGColor = 12874553
        BGColor = 15198183
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_DEPOSITO'
            Title.Alignment = taCenter
            Title.Caption = 'Data p/ Deposito'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end>
      end
    end
    object Panel14: TPanel
      Left = 2
      Top = 91
      Width = 630
      Height = 27
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 2
      object RxLabel9: TRxLabel
        Left = 2
        Top = 2
        Width = 139
        Height = 23
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
      end
      object RxLabel10: TRxLabel
        Left = 621
        Top = 2
        Width = 7
        Height = 23
        Align = alClient
        Alignment = taRightJustify
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clSilver
        ExplicitLeft = 141
        ExplicitWidth = 487
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 120
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 630
      Height = 24
      Align = alTop
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object RxLabel1: TRxLabel
        Left = 2
        Top = -2
        Width = 609
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cheques a Baixar (Caixa)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 26
      Width = 630
      Height = 66
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object suiDBGrid1: TsuiDBGrid
        Left = 2
        Top = 2
        Width = 626
        Height = 62
        Align = alClient
        BorderStyle = bsNone
        Color = 15198183
        DataSource = DTS_CH_S
        FixedColor = 12874553
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = MacOS
        BorderColor = 8355711
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clWhite
        FixedBGColor = 12874553
        BGColor = 15198183
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_DEPOSITO'
            Title.Alignment = taCenter
            Title.Caption = 'Data p/ Deposito'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 91
      Width = 630
      Height = 27
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 2
      object RxLabel3: TRxLabel
        Left = 2
        Top = 2
        Width = 139
        Height = 23
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
      end
      object RxLabel4: TRxLabel
        Left = 621
        Top = 2
        Width = 7
        Height = 23
        Align = alClient
        Alignment = taRightJustify
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clSilver
        ExplicitLeft = 141
        ExplicitWidth = 487
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 120
    Width = 634
    Height = 120
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Panel8: TPanel
      Left = 2
      Top = 2
      Width = 630
      Height = 24
      Align = alTop
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object RxLabel5: TRxLabel
        Left = 2
        Top = -2
        Width = 609
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cheques Baixados (Banco)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel9: TPanel
      Left = 2
      Top = 26
      Width = 630
      Height = 66
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object suiDBGrid2: TsuiDBGrid
        Left = 2
        Top = 2
        Width = 626
        Height = 62
        Align = alClient
        BorderStyle = bsNone
        Color = 15198183
        DataSource = DTS_CH_B
        FixedColor = 12874553
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UIStyle = MacOS
        BorderColor = 8355711
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clWhite
        FixedBGColor = 12874553
        BGColor = 15198183
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA_CORRENTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_DEPOSITO'
            Title.Alignment = taCenter
            Title.Caption = 'Data p/ Deposito'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_CHEQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Valor do Cheque'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end>
      end
    end
    object Panel10: TPanel
      Left = 2
      Top = 91
      Width = 630
      Height = 27
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 2
      object RxLabel6: TRxLabel
        Left = 2
        Top = 2
        Width = 139
        Height = 23
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clBlack
      end
      object RxLabel7: TRxLabel
        Left = 621
        Top = 2
        Width = 7
        Height = 23
        Align = alClient
        Alignment = taRightJustify
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowColor = clSilver
        ExplicitLeft = 141
        ExplicitWidth = 487
      end
    end
  end
  object SDS_CH_S: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CHEQUES_BAIXAR ORDER BY DATA_DEPOSITO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO_P'
    MasterSource = FormPagDevolucaoPedidos.DTS_Pagamentos
    PacketRecords = 0
    Params = <>
    Left = 421
    Top = 1
    object SDS_CH_SCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_CH_SCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CH_SBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CH_SAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CH_SCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CH_SCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CH_STITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CH_STIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CH_SN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CH_SQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CH_SVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_CH_SCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CH_SRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_SRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_SMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CH_SDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CH_SDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CH_SDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CH_SDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CH_SUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CH_SUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CH_SCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CH_SCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CH_SNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_CH_S: TDataSource
    DataSet = SDS_CH_S
    Left = 453
    Top = 1
  end
  object SDS_CH_B: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CHEQUES_BAIXADOS ORDER BY DATA_BAIXA  ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO_P'
    MasterSource = FormPagDevolucaoPedidos.DTS_Pagamentos
    PacketRecords = 0
    Params = <>
    Left = 485
    Top = 1
    object SDS_CH_BCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_CH_BCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CH_BBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CH_BAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CH_BCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CH_BCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CH_BTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CH_BTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CH_BN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CH_BQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CH_BVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_CH_BCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CH_BRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_BRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_BMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CH_BDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CH_BDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CH_BDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CH_BDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CH_BUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CH_BUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CH_BCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CH_BCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CH_BNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_CH_B: TDataSource
    DataSet = SDS_CH_B
    Left = 517
    Top = 1
  end
  object DTS_CH_E: TDataSource
    DataSet = SDS_CH_E
    Left = 581
    Top = 1
  end
  object SDS_CH_E: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CHEQUES_PAGAMENTO  ORDER BY DATA_DEPOSITO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO_P'
    MasterSource = FormPagDevolucaoPedidos.DTS_Pagamentos
    PacketRecords = 0
    Params = <>
    Left = 552
    Top = 1
    object SDS_CH_ECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_CH_ECODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CH_EBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CH_EAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CH_ECONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CH_ECONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CH_ETITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CH_ETIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CH_EN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CH_EQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CH_EVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
    end
    object SDS_CH_ECLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CH_ERETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_ERETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CH_EMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CH_EDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CH_EDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CH_EDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CH_EDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CH_EUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CH_EUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CH_ECOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CH_ECODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CH_ENUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object SPC_MovimentoBancario: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO_CC'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTO_DIARIO'
    Left = 390
    Top = 1
  end
  object SPC_Dev_Cheque: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'COMPENSADO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_DEV_CHEQUE'
    Left = 354
  end
end
