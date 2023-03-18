object FormCRCrediarioConv: TFormCRCrediarioConv
  Left = 300
  Top = 63
  BorderStyle = bsDialog
  Caption = 
    'Contas a Receber - Baixa das Vendas no Credi'#225'rio Por Conv'#234'nio (C' +
    'onta do Cliente)'
  ClientHeight = 510
  ClientWidth = 783
  Color = clBtnFace
  Constraints.MinHeight = 33
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 40
    Width = 783
    Height = 36
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object Panel6: TPanel
      Left = 2
      Top = 5
      Width = 71
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object RxLabel5: TRxLabel
        Left = 3
        Top = 4
        Width = 63
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object Panel7: TPanel
      Left = 76
      Top = 5
      Width = 581
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 1
      object RxLabel6: TRxLabel
        Left = 4
        Top = 4
        Width = 373
        Height = 15
        AutoSize = False
        Caption = 'CONV'#202'NIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object suiButton3: TsBitBtn
      Left = 672
      Top = 5
      Width = 107
      Height = 27
      Caption = 'Itens da &Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C6752648C67526B7C67526B4C6752636FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CA7A2B5ACA7A2BFCEFBF6CFFEBBA68FFCA7A2BF6CA7A2B36FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CF80
        325ACF8032FCF4C473FFFFE3AAFFFFE19AFFEDC070FFCF8032AEFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5883B5BD588
        3BFCF5CA7CFFFFE9BEFFFFDD99FFFFDE91FFF1C97DFFD48739B4FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D98E4124DD9953FDF9E6
        C3FFFEF3D5FFFFE099FFFFDF95FFF6D388FFD98E41FCD98E41420A5CBA000A5C
        BA000A5CBA000A5CBA000A5CBA000A5CBA390A5CBA7D0A5CBAB70A5CBAE30A5C
        BAFC0A5CBAE30A5CBAB70A5CBA7D0A5CBA390A5CBA0072676880D09152FFF0C5
        81FFF7DCB9FFFFF1C6FFF7D992FFDF9549FCDF95495AFFFFFF000A5FBD000A5F
        BD000A5FBD000A5FBD230A5FBD870A5FBDE811A5DCFF14C6EAFF16DEF5FF18EC
        FBFF16DEF5FF14C6EAFF11A5DCFF0A5FBDE82961A3C2737988FFB5A89BFFE29D
        53FFF4D49AFFFAEAD1FFE49D52FCE49C505AFFFFFF00FFFFFF000A62BF000A62
        BF000A62BF350A62BFAF1BADE0FF28DFF6FF20C2E9FF1799D7FF0F78C9FF0B65
        C0FF0F78C9FF1799D7FF20C2E9FF28DFF6FF1BADE0FF3D79B9FF8DA0B5FFE8D5
        C4FFE4A25FFFEAAC68FEE9A3595BFFFFFF00FFFFFF00FFFFFF000A66C2000A66
        C2230A66C2AF2BBBE7FF38D8F5FF21A0DBFF4D8BCAFF87ACCFFFB8C6D4FFDFDF
        DCFFCEDAE0FF9EBFDBFF5693CFFC21A0DBFF38D8F5FF2BBBE7FF4F8ECFFF7B82
        91FF796B6890EDA75C2DFFFFFF00FFFFFF00FFFFFF00FFFFFF000B69C5000B69
        C58732B0E3FF49DAF6FF1E74C8FD82ADD7FFDDDEE0FFDADBDCFFD8D8D8FFD8D8
        D7FFE2E0DCFFF1EEE5FFF9F5EBFF8CB4D8FF1E73C6FF49DAF6FF32B0E3FF2C68
        A7C8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B6EC8390C6F
        C8E958E2F9FF2FA5DFFF8BB8E1FFEDEDEEFFE5E6E7FFDFE0E1FFDA944BFFDA94
        4BFFDA944BFFE1E0DBFFF0EDE4FFFCF7EBFF8CB6D9FF2FA5DFFF58E2F9FF0B6E
        C8E80B6EC839FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B72CB7D37B1
        E4FF47C9EEFF599FDCFFF9FAFBFFF7F7F7FFEEEEEEFFE6E6E7FFDA944BFFFFFF
        EBFFDA944BFFD7D7D7FFE0DFDBFFEFECE4FFF8F4EBFF5399D3F847C9EEFF37B1
        E4FF0B72CB7DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B76CEB748D0
        F0FF2CA7E1FFA0CAECFFFFFFFFFFFDFDFDFFF7F7F8FFEEEEEFFFDA944BFFFFFA
        DEFFDA944BFFD8D8D9FFD7D7D7FFDFDEDAFFEEEBE3FF9BC3DFFB2CA7E1FF48D0
        F0FF0B76CEB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B7BD2E351E7
        F9FF178ED9FFD9EAF8FFFFFFFFFFDA944BFFDA944BFFDA944BFFDA944BFFFDF3
        D3FFDA944BFFDA944BFFDA944BFFDA944BFFDFDDDAFFCAD9DFFF178ED9FF51E7
        F9FF0B7BD2E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B7FD5FC4FF4
        FEFF0C81D6FFFAFCFEFFFFFFFFFFDA944BFFFFFFFFFFFFFFF8FFFFFEEEFFFCF2
        DAFFFFFFF0FFFFFFF8FFFFFFFFFFDA944BFFD7D7D7FFDADAD9FF0C81D6FF4FF4
        FEFF0B7FD5FCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B84D9E340EA
        FAFF1496DFFFD9ECF9FFFFFFFFFFDA944BFFDA944BFFDA944BFFDA944BFFFFFF
        FFFFDA944BFFDA944BFFDA944BFFDA944BFFD9D9D9FFB7CAD7FF1496DFFF40EA
        FAFF0B84D9E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B88DCB72FD8
        F4FF1EB3E9FFA0D1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA944BFFFFFF
        FFFFDA944BFFF1F1F1FFE8E8E9FFE2E2E3FFDDDDDEFF88B9DBFD1EB3E9FF2FD8
        F4FF0B88DCB7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C8CDF7D20C1
        EEFF28D6F4FF5AB1E9FFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA944BFFFFFF
        FFFFDA944BFFFAFAFAFFF2F2F3FFE9E9EAFFDFE2E4FF4AA4DFF728D6F4FF20C1
        EEFF0C8CDF7DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C90E2390E91
        E2EA29EFFBFF1ABDEEFF90CDF2FFFFFFFFFFFFFFFFFFFFFFFFFFDA944BFFDA94
        4BFFDA944BFFFFFFFFFFF9F9FAFFF2F2F2FF84C0E6FC1ABDEEFF29EFFBFF0C90
        E2E80C90E239FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C94E5000C94
        E5871ACAF2FF23ECFAFF219DE7FE90CEF3FFFCFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFEFFFF8ECCF0FE1A9AE6F823ECFAFF1ACAF2FF0C94
        E587FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C98E8000C98
        E8230C98E8AF19D5F6FF1DEDFAFF15C2F1FF5AB9EFFFA1D7F6FFD9EFFBFFFAFD
        FFFFD9EFFBFFA1D7F6FF59B9EFFE15C2F1FF1DEDFAFF19D5F6FF0C98E8AF0C98
        E823FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C9BEA000C9B
        EA000C9BEA350C9BEAAF16CEF5FF1BF1FCFF18DCF8FF13C0F2FF0FAAEDFF0C9D
        EAFF0FAAEDFF13C0F2FF18DCF8FF1BF1FCFF16CEF5FF0C9BEAAF0C9BEA35FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C9EED000C9E
        ED000C9EED000C9EED230C9EED870C9EEDE815CCF5FF19E1F9FF1CF1FCFF1EFA
        FEFF1CF1FCFF19E1F9FF15CCF5FF0C9EEDE80C9EED870C9EED23FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000CA0EE000CA0
        EE000CA0EE000CA0EE000CA0EE000CA0EE390CA0EE7D0CA0EEB70CA0EEE30CA0
        EEFC0CA0EEE30CA0EEB70CA0EE7D0CA0EE390CA0EE000CA0EE00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentFont = False
      TabOrder = 2
      OnClick = suiButton3Click
    end
    object Edit2: TEdit
      Left = 328
      Top = 7
      Width = 97
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 76
    Width = 783
    Height = 384
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Panel10: TPanel
      Left = 2
      Top = 304
      Width = 779
      Height = 78
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 0
      object RxLabel4: TRxLabel
        Left = 416
        Top = 48
        Width = 147
        Height = 24
        Align = alCustom
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Total :'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel8: TRxLabel
        Left = 568
        Top = 48
        Width = 206
        Height = 24
        Align = alCustom
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 581
        Top = 5
        Width = 33
        Height = 13
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 154
        Top = 7
        Width = 50
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel9: TRxLabel
        Left = 259
        Top = 7
        Width = 36
        Height = 13
        Caption = 'Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel10: TRxLabel
        Left = 363
        Top = 6
        Width = 37
        Height = 13
        Caption = 'Multa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 678
        Top = 4
        Width = 34
        Height = 13
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel12: TRxLabel
        Left = 2
        Top = 5
        Width = 147
        Height = 18
        Align = alCustom
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Selecionado:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel20: TRxLabel
        Left = 150
        Top = 55
        Width = 87
        Height = 13
        Caption = 'Qtde de T'#237'tulos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel21: TRxLabel
        Left = 475
        Top = 6
        Width = 64
        Height = 13
        Caption = 'Descontos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 155
        Top = 20
        Width = 94
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = CurrencyEdit1Change
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 367
        Top = 20
        Width = 98
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 257
        Top = 20
        Width = 104
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 577
        Top = 19
        Width = 96
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 680
        Top = 19
        Width = 93
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object RadioButton2: TRadioButton
        Left = 7
        Top = 52
        Width = 111
        Height = 17
        Caption = 'Desmarca Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = RadioButton2Click
      end
      object RadioButton3: TRadioButton
        Left = 6
        Top = 27
        Width = 99
        Height = 17
        Caption = 'Marcar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = RadioButton3Click
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 248
        Top = 52
        Width = 80
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        DisplayFormat = '0; 0'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 471
        Top = 20
        Width = 103
        Height = 21
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
    end
    object DBGrid1: TXDBGrid
      Left = 2
      Top = 2
      Width = 779
      Height = 238
      Align = alClient
      DataSource = DMB.DTS_Crediario_Baixa
      FixedStyle = fsMild
      FocusRect = frMild
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16638653
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      MarkerStyle = msMild
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgMarkerAscendOnly, dgForceSequence, dgThumbTracking]
      OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgDelaySelectedRows, dgSelectedAutoHidden]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Totals.Color = 10930928
      OnCellClick = DBGrid1CellClick
      OnDblClick = DBGrid1DblClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnEnter = DBGrid1Enter
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Alignment = taCenter
          CheckBoxValues = 'T;F'
          Expanded = False
          FieldName = 'CHEK_BOX'
          ReadOnly = False
          Title.Caption = '.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBtnFace
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
          Width = 20
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COMPRA'
          Title.Caption = 'N'#186' Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 58
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Caption = 'Parc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 34
        end
        item
          Expanded = False
          FieldName = 'DATA_VENCIMENTO'
          Title.Caption = 'Vecto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 2
          Visible = True
          Width = 66
        end
        item
          Expanded = False
          FieldName = 'DIAS_VENCIDO'
          Title.Caption = 'Vcdo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 34
        end
        item
          Expanded = False
          FieldName = 'DATA_BAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Baixa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 68
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'N'#186' Boleto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 68
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 42
        end
        item
          Expanded = False
          FieldName = 'VALOR_COMPRA'
          Title.Caption = 'Valor Titulo'
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
          FieldName = 'VALOR_JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 64
        end
        item
          Expanded = False
          FieldName = 'VALOR_ACRESCIMO'
          Title.Alignment = taCenter
          Title.Caption = 'Multa'
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
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 65
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 71
        end>
      OrderFields = 'DATA_VENCIMENTO'
    end
    object Panel1: TPanel
      Left = 2
      Top = 240
      Width = 779
      Height = 64
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      object Bevel1: TBevel
        Left = 3
        Top = 20
        Width = 774
        Height = 40
      end
      object RxLabel13: TRxLabel
        Left = 6
        Top = 24
        Width = 69
        Height = 13
        Caption = 'N'#186' do Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel14: TRxLabel
        Left = 465
        Top = 24
        Width = 97
        Height = 13
        Caption = 'Valor Total a Pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel15: TRxLabel
        Left = 110
        Top = 24
        Width = 95
        Height = 13
        Caption = 'Valor Total Parcela:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel16: TRxLabel
        Left = 230
        Top = 22
        Width = 93
        Height = 13
        Caption = 'Valor do Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel17: TRxLabel
        Left = 578
        Top = 23
        Width = 47
        Height = 13
        Caption = 'Hist'#243'rico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel19: TRxLabel
        Left = 9
        Top = 3
        Width = 194
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'Detalhes/parcela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BatmanForeverAlternate'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel18: TRxLabel
        Left = 350
        Top = 22
        Width = 86
        Height = 13
        Caption = 'Valor Acrescimos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel22: TRxLabel
        Left = 359
        Top = 3
        Width = 70
        Height = 13
        Caption = 'Valor Vencido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel23: TRxLabel
        Left = 591
        Top = 3
        Width = 75
        Height = 13
        Caption = 'Valor a Vencer:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object suiDBEdit1: TsDBEdit
        Left = 229
        Top = 39
        Width = 108
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_DESCONTO'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit2: TsDBEdit
        Left = 109
        Top = 39
        Width = 110
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_COMPRA'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit3: TsDBEdit
        Left = 5
        Top = 40
        Width = 94
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'CODIGO_CLIENTE'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit4: TsDBEdit
        Left = 464
        Top = 38
        Width = 102
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_TOTAL'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit5: TsDBEdit
        Left = 578
        Top = 38
        Width = 198
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'HISTORICO'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object sDBEdit1: TsDBEdit
        Left = 349
        Top = 39
        Width = 108
        Height = 20
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'VALOR_ACRESCIMO'
        DataSource = DMB.DTS_Crediario_Baixa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object CurrencyEdit8: TCurrencyEdit
        Left = 677
        Top = 2
        Width = 94
        Height = 18
        AutoSize = False
        BorderStyle = bsNone
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnChange = CurrencyEdit1Change
      end
      object CurrencyEdit9: TCurrencyEdit
        Left = 436
        Top = 1
        Width = 94
        Height = 18
        AutoSize = False
        BorderStyle = bsNone
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnChange = CurrencyEdit1Change
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 2
    object RxLabel1: TsLabel
      Left = 4
      Top = 0
      Width = 113
      Height = 13
      Caption = 'C'#243'digo do Conv'#234'nio:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label1: TsLabelFX
      Left = 272
      Top = 10
      Width = 195
      Height = 32
      Caption = 'Baixa de Conv'#234'nios'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object Cliente: TComboEdit
      Left = 3
      Top = 14
      Width = 123
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnEnter = ClienteEnter
      OnExit = ClienteExit
      OnKeyPress = ClienteKeyPress
    end
    object RadioButton1: TRadioButton
      Left = 144
      Top = 15
      Width = 81
      Height = 17
      Caption = 'Recebido'
      TabOrder = 1
      Visible = False
      OnClick = RadioButton1Click
    end
    object suiButton4: TsBitBtn
      Left = 672
      Top = 5
      Width = 107
      Height = 27
      Caption = 'buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6752500C675
        2500C6752500C6752500C6752500C6752500C6752500C6752500C6752500C675
        2500C6752500C6752500C6752500C6752500C6752500C6752500C675259DC675
        2561C675251BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7772700C777
        2700C7772700C7772700C7772700C7772700C7772700C77727FAC7772700C777
        2700C7772700C7772700C7772700C7772700C7772700C7772700C77727FADDA0
        4EFAC77727C1C7772763C7772701FFFFFF00FFFFFF00FFFFFF00C9792A00C979
        2A00C9792A00C9792A00C9792A00C9792A00C9792AFADFA554FAC9792AFAC979
        2A00C9792A00C9792A00C9792A00C9792A00C9792A00C9792A00C9792AFAFFDF
        8BFAF3C573FADEA150FAC9792A86C9792A12FFFFFF00FFFFFF00CB7C2D00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00CB7C2DFAE7B779FBFFD683FAE2A75CFACB7D
        2FFAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CB7C2DFAFFD9
        85FAFFD37FFAFCD07CFAE4AA59FACB7C2D86CB7C2D01FFFFFF00CD7E3000FFFF
        FF00FFFFFF00FFFFFF00CD7E30FAF1D1AAFDFFD897FBFFCB77FAFFCE7DFAE2A2
        53FACD7E30FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CD7E30FAFFD7
        85FAFFCF7CFAFFCE7BFAFCCF7DFAE1A455FACD7E3063FFFFFF00D0813300FFFF
        FF00FFFFFF00D08133FAF5DFC3FDFFE6BDFDFFD391FBFFC370FAFFC672FAFFCC
        7AFAE3A455FAD08133FAFFFFFF00FFFFFF00FFFFFF00FFFFFF00D08133FAF9D0
        7FFAFFD17FFAFFCC7AFAFFCF7DFAF4C575FAD08133C1D081331BD2843600FFFF
        FF00D28436FAF8E5CEFEFFEFD2FDFFE3BCFDFFD091FBFFC16EFAFFC270FAFFC8
        76FAFFD180FAE5A95AFAD28436FAFFFFFF00FFFFFF00FFFFFF00D2843681D284
        36DBF4C375FAFFD07FFAFFCF7EFAFFD687FAE3A95BFAD2843661D4883A00D488
        3AFAF6E3C7FDFFEECDFDFFEDD0FDFFE5C0FDFFD092FBFDC170FAFFC372FAFFC8
        77FAFFD080FAFFDB8CFAE6AF61FAD4883AFAFFFFFF00FFFFFF00FFFFFF00D488
        3A58D4883ADBFACC7DFAFFD282FAFFD687FAEFC072FAD4883A9DD78B3DFAF3DB
        B4FCFFF2C6FCFFE8B7FCFFEBCAFDFFE9C9FDFFD498FBFFC577FAFFC778FAFFCC
        7EFAFFD486FAFFDE92FAFFEA9FFAE7B669FAD78B3DFAFFFFFF00FFFFFF00FFFF
        FF00D78B3D81ECB568FAFFD789FAFFD88BFAF8D185FAD78B3DCDD98E41FAD98E
        41FAD98E41FAD98E41FAF1CA9AFCFFECCCFDFFDAA3FBFFCA7EFAFFCD80FAEAAC
        60FADA9043FAD98E41FAD98E41FAD98E41FAD98E41FAFFFFFF00FFFFFF00FFFF
        FF00D98E4138E1A155FAFFDB90FAFFDB90FAFDDE95FADA9044EEDC914400FFFF
        FF00FFFFFF00FFFFFF00E6B078F3FEF0D4FDFFE1B1FCFFD085FAFFD389FADD93
        46FADC914407FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DC914407DD9346FAFFDF96FAFFDE96FAFDE39FFADE9850EFDF944800FFFF
        FF00FFFFFF00FFFFFF00E5A86AD5FDF2DBFEFFE9C1FCFFD68EFAFFD88FFAE6A5
        5AFADF944838FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DF944838E6A75CFAFFE29AFAFFE39EFAFADE9FFBE3A15ED2E1984B00FFFF
        FF00FFFFFF00FFFFFF00E1984B9DFBECCEFDFFF4DDFDFFDD99FAFFDC94FAF1BF
        75FAE1984B81FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E1984B81F1C279FAFFE59EFAFFE9A8FAF6D9A0FBE5A664A6E39B4F00FFFF
        FF00FFFFFF00FFFFFF00E39B4F61F4D2A2FCFFFBF0FEFFE4A5FBFFDF99FAFBDB
        94FAE39B4FDBE39B4F58FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E39B
        4F58E39B4FDBFBDF99FAFFE8A4FAFFF2C1FBF2CE96FBE4A05864E69E5200FFFF
        FF00FFFFFF00FFFFFF00E69E521BE69E52C1FCEEC9FCFFF0C6FCFFE4A2FAFFE4
        A0FAF9D893FAE69E52DBE69E5281E69E5238E69E5207E69E5238E69E5281E69E
        52DBF9DA95FAFFE9A6FAFFF0BDFBFCEEC7FCE69E52C1E69E521BE8A05500FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E8A05563F4D197FBFFF9E1FDFFF6D6FDFFE8
        A7FAFFE8A5FAFCE29EFAF4C983FAEDB36AFAE9A258FAEDB36AFAF4CA84FAFCE4
        A1FAFFECAAFAFFF2C0FBFFF8D9FDF1C67FFAE8A05563FFFFFF00EAA35800FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EAA35801EAA35886F8DFB3FCFFFBE8FEFFF8
        E0FDFFEEB7FBFFEBABFAFFEDACFAFFEEAEFAFFEFAFFAFFEFAFFAFFEFAEFAFFF0
        B2FAFFF6CDFCFFFBE3FDF4CF8CFAEAA35886EAA35801FFFFFF00ECA55A00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECA55A12ECA55A86F4C985FAFEF7
        E2FDFFFCEDFEFFF9E0FDFFF6CFFCFFF4C5FBFFF3C2FBFFF5C9FBFFF8D6FCFFFC
        E7FDFEF8E5FEF4C985FAECA55A86ECA55A12FFFFFF00FFFFFF00EDA75C00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDA75C01EDA75C63EDA7
        5CC1F8DEB4FCFCF3DAFDFEFAEAFEFFFDF3FEFFFEF6FEFEFBEFFEFDF4DFFDFAE5
        C5FDEDA75CC1EDA75C63EDA75C01FFFFFF00FFFFFF00FFFFFF00EFA95E00EFA9
        5E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA95E00EFA9
        5E1BEFA95E61EFA95E9DEFA95ECDEFA95EEEEFA95EEEEFA95ECDEFA95E9DEFA9
        5E61EFA95E1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = suiButton4Click
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 460
    Width = 783
    Height = 50
    Align = alBottom
    BevelWidth = 2
    Color = 15263976
    TabOrder = 3
    object Navigator: TsDBNavigator
      Left = 5
      Top = 5
      Width = 92
      Height = 30
      SkinData.SkinSection = 'TOOLBAR'
      FullRepaint = False
      TabOrder = 5
      DataSource = DMB.DTS_Crediario_Baixa
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object BTBaixaParcela: TsBitBtn
      Left = 102
      Top = 5
      Width = 110
      Height = 40
      Hint = 'Estorno de Recebemento'
      Caption = '&Est. Receb.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000002AF51
        0057AB4A00B4B95809E5BB5909EDAD4A01D1A03C008AAF44001FFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C65A0023B95A00C9DF82
        27FFFFA43FFFFFA33BFFFFA036FFFFA030FFF48B21FFBD5708F6B644006FFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D3660030C3660AEAFEA74DFFFFAA
        4CFFFFA344FFFFA13FFFFFA33BFFFF9D33FFFD9429FFFF9F29FFDC7213FEB645
        0085FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CB63
        004FC96200A8D96C004BFF00FF00DB66001CC36909E7FFB05BFFFFAD56FFFFA9
        4EFFFFA94CFFF39839FFC5660EF4B54F00ADB4490092B14900B2C55F09F5BF58
        07FEB947004EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C871
        14EFFFCA8DFFCE7718F2C7650027C06300C1FBB468FFFFB366FFFFAD5AFFFFAF
        5AFFE48E33FFAE5900ABC0500015FF00FF00FF00FF00FF00FF00C5430015B047
        00A4B14600D700000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C975
        15DFFFCF9AFFFDC285FFBC6000ECE8A053FFFFC487FFFFBA74FFFFB567FFEE9B
        43FFB15D009EFF000001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C14B0088CB470016FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C165
        00B7FFD4A4FFFFCD9BFFF6BB7EFFFFCB95FFFFC58BFFFFC283FFFFBA73FFC264
        00CEBF600006FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C164
        008FFCCC9BFFFFD1A2FFFFD0A0FFFFCC99FFFFC991FFFFC990FFDA8D32FDCE6A
        0037FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C56B
        0067F2BF87FFFFD7AEFFFFD2A5FFFFD0A0FFFFCA98FFFDC488FFBD6100DEC466
        0039DB410004FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C972
        003FE7AD65FFFFE4C8FFFFD5ACFFFFD1A3FFFFCD9AFFFFC993FFF4B26CFFE293
        39FFC9720BE0D8720017FF00FF00FF00FF00FF00FF00C545000CB1490028B13F
        0047AA3C0065A9370082A736008FBA3E0020FF00FF00FF00FF00FF00FF00D87A
        0018E39C3FFEFFF3E4FFFFDCBAFFFFD3A6FFFFCF9FFFFFCC97FFFFC990FFFFC5
        83FFEA9841FFBE66004EB55B000CBE5400B4C96918EBC6712EFDCF8447FFDB98
        62FFE6AE7FFFF3C599FFFACC9FFFAE4505C8FF00FF00FF00FF00FF00FF00FF00
        FF00E58B09CFFEDBB6FFFAD6ADFFF3C388FFEDAE62FFE39D46FFDC8D2DFEE285
        17EED57401B7D059000CB04C0052E89F5BFFFFD397FFFFD19BFFFFD4A3FFFFD7
        ABFFFFD9B0FFFFD8B1FFFFDFB6FFC06D34FEAC350013FF00FF00FF00FF00FF00
        FF00FA8B0024E3840095E5830087E4830068DF7E004ADB7B002CED72000FFF00
        FF00FF00FF00FF00FF00CE61001BBF610BE4DB9350FFF2B67DFFFFCE9BFFFFD0
        A0FFFFD3A6FFFFD4A9FFFFDAAEFFD08850FF9A33003AFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C2610006B24A003FA74200E2FDC791FFFFCC
        9AFFFFCF9EFFFFD0A0FFFFD4A3FFE3A36AFF9D330062FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BB570039D38237FDFFCB92FFFFC7
        8FFFFFCA95FFFFCC97FFFFCC96FFF5B981FF9A32008AFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D0500007B85A00D0FFBB77FFFFC383FFFFC5
        88FFFFC98FFFF4B578FFFFCA8FFFFFCC8EFF9C3700B2FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00EC7D001AEA7F0080FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF000001B35E009EEC9A44FFFFB567FFFFBA72FFFFC3
        81FFDF914BFFA44000EEFEC58DFFFFC987FFAE4E0ED9FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0088970002D27400DDD97A009DE5830012FF00FF00FF00
        FF00FF00FF00D5690013B66500AAE79033FFFFAF59FFFFAC57FFFFB362FFFBAF
        63FFAF4F00C0B447002BBE641BF5FFCF8AFFB2530FEBFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EC830055DD7E09FEDC7D08F2D57700ABD374
        008AD06F00A8D1760CF2F69838FFFFA84BFFFFA64BFFFFAA50FFFFAC54FFBC5D
        08E6C54F001CFF00FF00C44D0051B14500AFAF410050FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EC89008DEF8B15FFFF982BFFFB94
        27FFFF9A31FFFF9F38FFFFA03BFFFFA13FFFFFA84CFFFDAA55FFC26309EACE60
        0030FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E9860076DD7F0CF8FB98
        32FFFFA94AFFFFA94EFFFFAF58FFFFB15EFFE5903AFFBC5C00CBD1630023FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D57A0024C56D
        0091CC7100D8D2780EF6CE710AECBC5F00BABA5C005BB55A0003FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BTBaixaParcelaClick
    end
    object BTBaixaTotal: TsBitBtn
      Left = 328
      Top = 5
      Width = 110
      Height = 40
      Caption = '&Bx Selec'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76040000424D7604000000000000360000002800000016000000100000000100
        18000000000040040000120B0000120B00000000000000000000D7D6D59A9795
        9E9C9A9796949997959694929896949795949796949694929795949997959593
        929896949795939896949594929896949593929C9998918E8DDADADA0000F5EC
        E793898399908BE3D7D0D1C6BFF4E9E0DED3CCE7DCD4E1D6CFEADFD7E4D8D1D4
        C9C2F1E5DDDCD1CAE9DDD5DFD4CCEEE2DBDCD1CAF2E5DDADA39CDDCEC4C2C2C2
        0000FFFAF4211D1C2A2826CCC4BE393836A69F9B5C59575F5B58575452DDD4CE
        8E8986000000FFFFF847444374706D605D5BFFF7F04D4A48FFFFF90D0D0DD8CC
        C4C5C5C50000FFFCF72C2927353231D7D0CB323130A59F9C5451506C69675F5C
        5AE2DBD69893900E0E0EFFFFFF4A4846807C7A444240E9E2DD4B4847FFFFFF1B
        1B1ADCD0CBC5C5C40000FFFDF92D2A28343231E0D8D4FFFEFAFFFFFFFFFAF6FF
        FFFBFFFFFFD7D1CE9896930F0F0EFFFFFFFFFFFFFFFFFCFFFBF7FFFFFCFFFFFA
        FFFFFF1C1B1ADFD4CDC5C5C50000FFFEFB2D2B293E3C3A7B7775928F8C555352
        B6B1AF84817F101010CDC8C69C9A98181817B5B1AE0D0D0C7A7776B4B1AF403E
        3E6966654F4C4C302F2DE1D7D0C6C4C50000FFFFFD2C2B29403F3D6A68667E7C
        7A373535AAA8A6706E6C000000CECAC79D9C9A1C1A1BA8A5A3000000656462A8
        A8A51E1D1C4E4C4C2C2B29353433E2D8D3C5C5C50000FFFFFE2E2B2A413F3E6E
        6B6A82817E3B3B3AAFACA9737271000000D1CCCA9E9C9C1C1B1AACA8A7000000
        6A6867ABAAAA23222253525131302F363534E3DAD5C5C5C40000FFFFFF2D2C2B
        41403F6E6C6B8281813B3B3BAFADAC737372000000D1CECD9E9D9C1C1B1BACAA
        A8000000696967ABABAA222222545251313030363534E4DCD8C5C5C40000FFFF
        FF2E2D2B4240406F6D6C8282813C3C3BB0AEAD747373000000D2D0CF9D9D9D1C
        1C1BADABAA0000006A6A69ACABAB242322545352313030363535E6E0DAC5C5C5
        0000FFFFFF2E2C2C4241406F6E6D8382823C3C3BB0B0AE747373000000D2D2D0
        9E9E9D1C1C1CADACAB0000006B696AACABAB242323545453303130373635E8E1
        DCC5C6C50000FFFFFF302D2D4241406F6E6F8383823C3C3CB1B0B07474730000
        00D2D2D29F9E9E1C1C1CADADAC0000006B6A69ACACAB24242354545431313137
        3635EAE2DEC5C5C50000FFFFFF2F2E2D424141706E6E8383823C3C3DB2B0B074
        7474000000D3D2D29F9E9E1C1C1CADADAD0000006B6B69ACACAC242424555454
        313131373635EAE3DFC6C5C50000FFFFFF2F2E2D4241416F6E6E8383823C3C3C
        B1B0AF747473000000D2D2D19F9E9E1C1C1CADADAC0000006B6A6AACACAB2424
        23545454313131373635EAE3DFC5C5C50000FFFFFF2321213635346564627B79
        7930302FAAA8A76A696A000000CDCCCA9797960E0E0FA6A4A3000000605F5FA5
        A4A41615154848472323232A2A29E7E1DCC4C4C30000FFFCFAA7A4A1B0ADABC3
        C0BECBC8C7AEACABDDDAD8C5C3C18A8A8AECE7E5D6D4D1A1A09EDDDAD8898988
        C1BFBEDCDAD8A4A2A2B9B6B5AAA8A7ABA8A6EDE5E1D7D6D70000}
      ParentFont = False
      TabOrder = 2
      OnClick = BTBaixaTotalClick
    end
    object BTPrint: TsBitBtn
      Left = 553
      Top = 5
      Width = 110
      Height = 40
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000F30E0000F30E00000001000000010000421821004221
        21004A2121004A29290031313100523131005A31310039393100313939003939
        390042D642004A4A4A007B4A5200844A52004A525200525252005A525200524A
        5A008C4A5A0052525A0063636300736363007B6363006B6B6300736B63007B6B
        63006B5A6B00845A6B007B636B0084636B006B6B6B00846B6B008C6B6B008C63
        7300846B73008C6B73009C6B7300737373007B737300847373007B947300A56B
        7B00A5737B00737B7B007B7B7B00847B7B009C7B7B00A57B7B00AD7B7B007B84
        7B00A5847B0084CE7B008CFF7B00847B84008C7B8400947B8400BD7B84007384
        840084848400A5848400AD848400B58484009C848C00848C8C008C8C8C00948C
        8C009C8C8C00BD8C8C00C68C8C0084948C00BD8C9400C68C9400849494008C94
        9400949494009C9494008C9C940094DE9400AD7B9C008C849C008C949C009494
        9C00AD949C008C9C9C00949C9C009C9C9C00A59C9C00B5A59C009CEF9C00A57B
        A500A5A5A500ADA5A500B5A5A500AD9CAD009CA5AD00BDA5AD00A5ADAD00ADAD
        FD00B5ADAD00ADB5B500B5B5B500B5B5BD00BDB5BD00B5BDBD00BDBDBD00BDD6
        BD00C6C6C600CEC6C600C6C6CE00C6CECE00CECECE00D6CECE00CED6CE00D6CE
        D600CED6D600D6D6D600DED6D600D6DEDE00DEDEDE00DEE7DE00E7D6E700DEE7
        E700E7E7E700EFE7E700E7EFE700E7EFEF00EFEFEF00F7EFEF00EFF7F700F7F7
        F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00828282828282
        82828282828282828282828282828282828282828282828282825A5555555555
        55555A828282828282828282828282825564737A7D7E7E7E7C76686256828282
        82828282828282820B2B7E816D676A6470846A260B658282828282828282820F
        0B1E7E81736B6F6A73846C170B0F648282828282821E140B0B3A81807671746F
        768472310B0B0B1E828282821E0B0B0B0B3F7972543F40645E7E6D3A0B0B0B0B
        1782822C0B102D0F0B1E556163636464605A51170B13390E0B1E820F142D3A14
        140B0B0B0B0B0B0B0B0B0B0B14116411110B820F355448534C49544A54403145
        4C4954504F6434531A09820F55686661412D221F1F1D1B1C1920213759536464
        5D0B821461755B23243B2F434447464643442A3C29162869640B82256472360D
        383C2F2F30302E2E302F323C3D124E7861148240646E370C0D060B0B0B0B0B0B
        0B0B0B060D0C3E6C613A8268646E52000B03151616151516161618050902566E
        64618282646F5F010B578484848484848484845C0B025C6E648282826863644B
        2741848484848484848483411C42676368828282827D7A7E7B737A8383838484
        848075737A7F7B7C82828282828282828277768184846E646464647282828282
        8282828282828282826F7683847E64646B6A6E73828282828282828282828282
        826A6E818176646484847E6E828282828282828282828282826A6E81816E6476
        847A6E82828282828282828282828282826864737364647E7A6E828282828282
        8282828282828282826A61646464686E6E828282828282828282}
      ParentFont = False
      TabOrder = 3
      OnClick = BTPrintClick
    end
    object BTJuros: TsBitBtn
      Left = 665
      Top = 5
      Width = 110
      Height = 40
      Caption = '&Rem. &Juros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FFFF00FF93655EEFD3B4F6DAB6F3D5ADF2D1A5F0CE9EEFCB97
        EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
        7F9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED4B8F4DABBF2D5B1F0
        D1AAA5BB70E0C793DEC48CEDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF93655FEED7
        C0F6E0C1F2D9B8F2D4B1C0C588008201E0C79352A035259217259116519D2EB2
        B262DABB77E9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF93655FEFDAC5F7E2C7F3DCBFF2D8B7E3D0A50082010686050082010082
        010082010082010082017AA643DABB77E9BD7FEABF7FE7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF936560F0DECCF8E6CFF6E0C6F3DCBDE3D4AC008201
        008201008201008201008201008201008201008201AFB15FE9BD7FEABF7FE7BC
        7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D3FAEAD7F6E3CEF4
        DEC5E5D8B200820100820100820126931BB2BC76B1BA72529F33008201249015
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
        DAFAEEDEF7E7D4F6E2CBE5DAB80082010082010082011C9014E1CA99E0C793DE
        C48C90AF57068604E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64F4EAE1FBF2E6F8EADCF7E6D3E6DDC00082010082010082010082
        01008201E1CA9AEDCB9CEDC796EBC58F5FC065EABF82E7BB7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3F7EADAE7E1C6E6DDC0
        E5D9B8E5D8B2E3D4ABE2D1A5E2CE9FEFCEA3EECA9CEDC7955FC065EBC288E7BC
        809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB5F
        C065F8EBDCF7E7D3F6E2CCE5DAB8E5D8B2E3D4ACE3D0A6E2CE9EE1CA99DEC792
        EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
        F4FFFFFEFEF8F35FC065F8EEE3F8EBDAF7E6D3E7DDC000820100820100820100
        8201008201E1CA99EECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFAF6F4FFFFFFFFFEFBFEF7F006880698CB8BE9E5CCE7E2C6E6DD
        BF1C9217008201008201008201E2CE9EEFCEA1EECB9CEBC592A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFFFFCFB289D27008201
        56B04FBAD5A5BAD19E279821008201008201008201E3D0A4F0D1A9F0CFA3EDC9
        999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFFF
        FFFFBFE3BC008201008201008201008201008201008201008201008201E3D4AB
        F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
        F4FFFFFFFFFFFFFFFFFFEFF8EF87CC8400820100820100820100820100820106
        8706008201E5D8B2E5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFEFF8EFC4E5C157B554289C
        25279A2456AF4CE9E2C7008201B2C495B8AB9AA79C8BA49786846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5DACFB7956856696C4095655B96655B9665
        5B986859FF00FFFF00FFFF00FFFF00FFFF00FFCF9674FBF7F6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFCF7F0FFFAEFDAC0B69F675BDAA16B
        DD984FE2903AEA8923A5686BFF00FFFF00FFFF00FFFF00FFFF00FFD49875FCF8
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFEF7DD
        C4BC9F675BEAB474EFA952F6A036A5686BFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD49875FCF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDDC7C29F675BEAB273EFA751A5686BFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFD49875FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2D0CE9F675BEDB572A5686BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCF8E68CF8E68CF8E68CF8E68CF
        8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E68CF8E689F675BA5686B
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 4
      OnClick = BTJurosClick
    end
    object BTBaixaParcial: TsBitBtn
      Left = 215
      Top = 5
      Width = 110
      Height = 40
      Caption = 'Bx &Parcial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D8D8B1AEAAB2AFABC1C1C0D3
        D4D5E2E3E4EAEBECF1F1F2F8F9F9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEABEFE7
        E1EFEBE5E5E0DBD4CEC8C6C0B8C2BCB3C0BCB8B9B5AFB0ACA4B2B0ACC5C5C6D4
        D5D6E2E3E4E9EAEAF2F2F3F8F9FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7F7F8B2ADA3E0DBD8EDEAE8F2F0EFF4F2F1EDECEAEFEDEBF0EDEAEFECEAF2EE
        ECEEEAE4DED9D1D1CBC4C8C2BBC7C2BDBEB9B3B7B1A8B0ADA7B6B5B4C8CACCFE
        FFFFFFFFFFFFFFFFE9EAEAC6C1BBB0AEAD89888AA4A3A3999899D8D7D5B6B4B5
        C9C7C7D2D1D0DEDDDCEFECEBEFEDEAF3F0ECF1EEEBECE9E6EDE8E4F0ECEAF4F0
        EDE9E4DEAD8F72C3B9AAFFFFFFFFFFFFDADBDCC8C0B6BCBAB9B3B1B2A9A7A8B2
        B1B1C0BDBEADABAC959395A8A5A6878688D4D1D1A2A0A1A6A4A5A3A2A3C8C6C5
        CCCBC9D4D0CFE7E5E5CBB8A3CDB199DED9D3FFFFFFFFFFFFBFC0C0D9CEC5F3EC
        E7F9F4F0F8F3F0F7F2EFF1ECE9E2DEDCDCD8D5CAC7C6C5C1C0D6D3D1989697AE
        ACAC929091D2CECCA8A5A5AAA8A885828087796EAD9781F0F2F3FFFFFFFDFDFE
        AFABA4E6DBD4A09A99B2ADACD3CDCAC8C3C1E1DAD6DFDAD5E8E1DEF2EBE6EDE8
        E3ECE6E1F3EDE8F0EAE6EAE4E1EEE8E4D5D0CDC6C3C3A59688AA9E92C3AF96FF
        FFFFFFFFFFF1F2F2B8B1ABE9DDD6A39F9FA9A4A29390908A8787C9C1BE8A8687
        9C98968E8988F1E7E1E7DED9E7DED9E8DED9E8DFD9E8DED9EDE4E0D9CBBCE0C9
        B0E7D0B7C6B7A3FFFFFFFFFFFFE3E4E5B9AEA4DFD1C9ECE0D9F1E6E0F4E9E4F6
        EBE8DAD2D0DFD6D4D3CAC9C8C0BEEBDFDAE6DBD5E6DAD5E6DAD5E6DAD5E7DCD7
        E1D7D1D6C1A6E2CFB8E6D1B9D5CDC1FFFFFFFFFFFFD1D3D5C1B2A5E1D4CCE7DC
        D5D2C4B6BCA893B8A18CBBA38DBEA791C0AC97D1C1B3DACCBDEDDFCDEEE1D2E7
        DBD4E6DAD4DACCC3D3C0A7E7D3BCE5D2BCE2CDB3DEDBD7FFFFFFFFFFFFB1B1AF
        E0CCC0C6B4A2B29880BDA48DC7AD98CAB29CCFB7A1D2BBA5D6C0A9E7CFA4D5C1
        AA7E72B1988BAFE5CD97E3C2A1FAD4AEFFDBB8EFD4B8E6D3BCD0BCA0F6F7FAFF
        FFFFFAFBFCADA9A3BDA48BC2A891C8B29BCCB59FCFB9A3D2BDA5D6C0AAD9C3AD
        F1DAAB7F76D00000EC0000EE0000EC2F31E36BC0D21796E41F99E29CC0CDFBD9
        B8C8B9A5FFFFFFFFFFFFF0F1F3AEA08FCCB39CCDB7A1D1BBA4D4BEA8D7C2ABDB
        C5AEDDC8B1E6D1B3B4A8C60000E90000F30000F90000F51353E8217FE80F96E9
        1195EB0085E5A5C2C7D8C5B2FFFFFFFFFFFFE2E5E7B7A490D4BEA6D5C0A9D8C3
        ADDBC6B0DECAB4E0CDB5E2CFB8F8E3B64340D80000EE0000FA0000FF0E26FB15
        4FE7237DE8149EF4169CF50F95EC3499D5E5CEB8FFFFFFFFFFFFC9CBCDD0B89D
        DCC7B0DDC9B2DFCBB5E1CDB7E4D0B9E5D1BAE5D2BBFAE5B63D3AD90000EC0000
        F80000FD1455E627A4E6209BEF159DF6169DF61095ED2E91C8FAEBDFFFFFFFFF
        FFFFE4E4E4CBB79DCFBAA1DBC5AAE5CFB5E7D3BBE7D2BAE5D1B9E6D3BBEFDBBA
        ACA0CB0000E60000EE0000F10E45EE1150E1249FEC149AF11699EF0090ED6A8E
        96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F6F7E0DED9DDD6CBDDD5CBDD
        D3C3CDBEA9CEBCA4EAD3A39889BD0504DC0000E05747C81EA2D3008AE30990E8
        0090F04B98BEBC936BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4E8FCF8D7FDF5D0E3D5B3D7
        B99A88A6AD699AAE928467A2692CB9AC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAECECFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      OnClick = BTBaixaParcialClick
    end
    object suiButton1: TsBitBtn
      Left = 441
      Top = 5
      Width = 110
      Height = 40
      Caption = 'Gera &Boleto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76040000424D7604000000000000360000002800000016000000100000000100
        18000000000040040000120B0000120B00000000000000000000D7D6D59A9795
        9E9C9A9796949997959694929896949795949796949694929795949997959593
        929896949795939896949594929896949593929C9998918E8DDADADA0000F5EC
        E793898399908BE3D7D0D1C6BFF4E9E0DED3CCE7DCD4E1D6CFEADFD7E4D8D1D4
        C9C2F1E5DDDCD1CAE9DDD5DFD4CCEEE2DBDCD1CAF2E5DDADA39CDDCEC4C2C2C2
        0000FFFAF4211D1C2A2826CCC4BE393836A69F9B5C59575F5B58575452DDD4CE
        8E8986000000FFFFF847444374706D605D5BFFF7F04D4A48FFFFF90D0D0DD8CC
        C4C5C5C50000FFFCF72C2927353231D7D0CB323130A59F9C5451506C69675F5C
        5AE2DBD69893900E0E0EFFFFFF4A4846807C7A444240E9E2DD4B4847FFFFFF1B
        1B1ADCD0CBC5C5C40000FFFDF92D2A28343231E0D8D4FFFEFAFFFFFFFFFAF6FF
        FFFBFFFFFFD7D1CE9896930F0F0EFFFFFFFFFFFFFFFFFCFFFBF7FFFFFCFFFFFA
        FFFFFF1C1B1ADFD4CDC5C5C50000FFFEFB2D2B293E3C3A7B7775928F8C555352
        B6B1AF84817F101010CDC8C69C9A98181817B5B1AE0D0D0C7A7776B4B1AF403E
        3E6966654F4C4C302F2DE1D7D0C6C4C50000FFFFFD2C2B29403F3D6A68667E7C
        7A373535AAA8A6706E6C000000CECAC79D9C9A1C1A1BA8A5A3000000656462A8
        A8A51E1D1C4E4C4C2C2B29353433E2D8D3C5C5C50000FFFFFE2E2B2A413F3E6E
        6B6A82817E3B3B3AAFACA9737271000000D1CCCA9E9C9C1C1B1AACA8A7000000
        6A6867ABAAAA23222253525131302F363534E3DAD5C5C5C40000FFFFFF2D2C2B
        41403F6E6C6B8281813B3B3BAFADAC737372000000D1CECD9E9D9C1C1B1BACAA
        A8000000696967ABABAA222222545251313030363534E4DCD8C5C5C40000FFFF
        FF2E2D2B4240406F6D6C8282813C3C3BB0AEAD747373000000D2D0CF9D9D9D1C
        1C1BADABAA0000006A6A69ACABAB242322545352313030363535E6E0DAC5C5C5
        0000FFFFFF2E2C2C4241406F6E6D8382823C3C3BB0B0AE747373000000D2D2D0
        9E9E9D1C1C1CADACAB0000006B696AACABAB242323545453303130373635E8E1
        DCC5C6C50000FFFFFF302D2D4241406F6E6F8383823C3C3CB1B0B07474730000
        00D2D2D29F9E9E1C1C1CADADAC0000006B6A69ACACAB24242354545431313137
        3635EAE2DEC5C5C50000FFFFFF2F2E2D424141706E6E8383823C3C3DB2B0B074
        7474000000D3D2D29F9E9E1C1C1CADADAD0000006B6B69ACACAC242424555454
        313131373635EAE3DFC6C5C50000FFFFFF2F2E2D4241416F6E6E8383823C3C3C
        B1B0AF747473000000D2D2D19F9E9E1C1C1CADADAC0000006B6A6AACACAB2424
        23545454313131373635EAE3DFC5C5C50000FFFFFF2321213635346564627B79
        7930302FAAA8A76A696A000000CDCCCA9797960E0E0FA6A4A3000000605F5FA5
        A4A41615154848472323232A2A29E7E1DCC4C4C30000FFFCFAA7A4A1B0ADABC3
        C0BECBC8C7AEACABDDDAD8C5C3C18A8A8AECE7E5D6D4D1A1A09EDDDAD8898988
        C1BFBEDCDAD8A4A2A2B9B6B5AAA8A7ABA8A6EDE5E1D7D6D70000}
      ParentFont = False
      TabOrder = 6
      OnClick = suiButton1Click
    end
    object suiButton2: TsBitBtn
      Left = 442
      Top = 5
      Width = 110
      Height = 40
      Caption = '&Receber'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        660F0000424D660F000000000000360000002800000024000000240000000100
        180000000000300F0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFEAE6E9E9E6E8F0EEF0C9C9C9B2
        B2B2AEADADB2B0B0BBBBBBC5C5C5D3D3D3E6E6E6F7F7F7FEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4DFE2AAAAAB87968D6C857365
        836D63816A6070652826283534335B63678992978D8683968E8CACA4A1C2C0BF
        E3E3E3F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFD0CCCF969A98718A7A68
        8D7175A18179A58377A27F7AA3837AA38163896B8984883B3838485C61AFFFFF
        96E3FF8CD1E775C0D98C919BC4C1BEE4E4E4F9F9F9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFCDCBCE90999369
        8172699474749D7D7BA4857BA4827DA7867DA7857CA68579A2807AA1816F9B79
        989A997A6E6C94BEC7B8F4FFB4EFFFB7F1FFABEFFF46ACF39E9895C6C3C2E9E9
        E9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
        CBC95F766664896F6B9273749A7E779E7E79A0807BA38179A28278A08079A183
        7CA4857CA4857BA38572997A667F77A6D2DEC9FFFFBEEFFFBEF0FFC0F1FFB6ED
        FF84D8FF4CABF0A29A97CBC9C8E9E9E9FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA8B7B05E85666B8E726F9477719777709576799F85
        79A1807CA4847DA7857EA7857CA58379A37F79A17F79A17E699A8AB7F8FFCFF5
        FFCCF4FFCCF5FFD0F6FFB7EBFF87D8FB8EDEFF50A9E6998E87D2D1D0EDEDEDFB
        FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D6D467897166886C
        6E9077789D81759C7A79A07E7CA5857DA7857EA8857DA8837BA5837DA6877BA4
        837AA481698C64A2DEF4DCFBFFDAF9FFDCF9FFD7FAFF76CAFB66C4F28CDDF991
        E2FF4997CF625751CBC9CAF7F6F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAEB8B363896E6B8E716E92757097787AA28479A38079A3807BA3847DA7
        867CA5837AA281779F7E769D7D79A28071967389C0CBE5FFFFE8FEFFDFFDFF78
        C6FF43A6FE60BDF96AC7F38ADBF994E7FF4E9BC23939258E8C8DF1EEEEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C9C762856A6D90756E9475739A7A7298
        797AA2847BA48378A07E79A08379A083759C7B73997C719678759A7F73987875
        A18D81DAFF7CCBFA3DA8F92796FD41A2FF50ADFF5EBBFA69C6F48ADAF995E8FF
        5292AF3E52355D757BB1A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D6D66A8B
        746D90746D92736F9576769C80749A7B769C80779E82769D7E7EA68A80AB8982
        FD8681AC887EA58873987C759475518A7B0090F01997F12A9BF7349DFD3FA3FF
        4FACFF5DB9FA67C5F484D7F799ECFF5289A36AACA76BACB1636864E8E6E7FFFF
        FFFFFFFFFFFFFFB5C1BB5E816468896F71957C6B8F72779C83779D7F7EA88983
        B08A87B58C87B78B89B98F89B88F89B98F89B88D89B88D83AE8D7E9F7C709175
        0C97EA199AF42A9CF7359CFD3EA1FF4DADFF5CB9FA67C4F483D6F798E9FF5E9E
        B56EB3B550715EC8C9C9FFFFFFFFFFFFFFFFFFABB8B15D8165698B73769B7F74
        9C7B7CA78280AD8584B38988B78D8BBA918EBF948FC1948FC2968FC2968FC194
        8EBF938CBC918ABB8F87B1897F9D751493DD1799F5299BF6349DFD3EA1FF4EAC
        FF5CB9FB67C5F483D7F992DFFF415F60476655DEDDDDFFFFFFFFFFFFFFFFFFA7
        B8B0598260678D6B628D6681A7858BB29078A87D82B2888ABA8F8DBE9390C196
        93C59894C79994C69994C79993C69991C39790C1958CBD928BBB8D90AF7A1F97
        D71197F8299BF6349CFD3EA2FF4DABFF5CB8FA65D0FF597D8C221615475A4AD8
        D7D5FFFFFFFFFFFFFFFFFFFFFFFFD9E0DC9AB3A1AFC7B1AAC2AB8DB191B1CBB5
        A3C6A781B38789BB8F8FC09593C59894C89995C89B92C8998FC6958FC6968FC5
        958BC2928CC0938DBE9398BA7C3C9FBD0B95FB289BF4329CFD3CA0FF39A4FF84
        BFED74655F24241F3D3A6AC5C5D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B3B5B6729C7EE7EEE7DFE9E0CBDBCC9DC1A19DC3A18CBC918EBF9491C2978DC3
        93A7D1A9C2DEC0C4DEC1C4DCBEC2DAC1B0D1AD92C6968EC1959BBF834EA5B108
        94F82099F61D9AFF87C8FFFFF9F36363656D705E5E56D2B3B2CFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC3C3C36E977878A0816F9C7A6A9574D8E3DAC4D7C5D9E5
        DA97BD9B84B58A87B98DC4DDC2BBD8BCB2CEB9B2CFBBB3D5CABEF8FFBCF2FFC8
        DDD099CA9C92C49994BD7F70B4BB48A5EF768C9996877D7C7C7FE7EAE3B5AFD5
        715CE9C2C0D0FFFFFFFFFFFFFFFFFFFFFFFFE7E5E86E9A7B78A0807CA5827AA2
        827AA3846F9C796F9B7C6B986F78A37B7EAB838BB68ECBE3C7B2DADEBEFAFFBF
        FBFFC0FCFFC0FCFFB2D2CCB9D5BEB6D8B596C89DC5E0C9BFD9B5BDC8A3DCCCCD
        70726AAAAFA2E1D8F78F72D87256C2DBDDD6FFFFFFFFFFFFFFFFFFFFFFFF94A8
        9A76A27F7BA5837AA1837BA2837BA3827DA7857DA6837EA6897BA28678A07F73
        9E769FC3A0C8E0C3C1DCCBBCE1DDBEEAE9BDDBD0C6DDC1BBD9B98DC29190C18F
        89B8837FAD84C6E4E590CAC67B66998D63B88E66C07F57B55E7376E8E7E4FFFF
        FFFFFFFFFFFFFFF0EBEF6E9C7A7CA4847BA4817AA4837AA3807BA5827DA4857A
        A2827AA182779E8080A78C7FA9886F9777739C7794B993A0C29CA1C49B9FC59B
        8FB98980AF7C83AE8F87C2B78ED9DA94ECF797FAFF9CFFFF91E9F27895A47489
        8365916C91B095FAF9FAFFFFFFFFFFFFFFFFFFB9C2BD78A4827CA6847DA5887C
        A5847CA6857CA5857AA18279A080779E837FA88884B2878ABB8F90C29785B391
        729A796E996E759E787BAA9184C4C594E6ED98F4FE9EFDFF9BF8FF93E9EF7EBC
        B972A07E6A9469779D77B1C6B7EEECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83
        9D8B7AA4827DA7837BA3827DA6847CA6837CA5837AA282799F847FA98584B188
        89BA9090C09591C4979FCFA2CDE3C893BFC28FDEEB95F8FF9DFEFF9BF9FF8EDA
        DF81BEB5709C7E6E936B8CA488B5C7BBEDEAEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE6E3E673A0807CA5837CA5847EA6867CA7847DA6857CA584
        7BA2857CA58382B08689B98F90C19594C6998EC695BFDCBEB3CFB2C1F4F8C4FA
        FFACC9BF85C0B3759C8A7FAE9570A588BFC3BFFFFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3BFB675A07E7BA5827CA487
        7CA6847EA7857DA6857DA58679A1827EAB8288B78C8DBE9493C59994C89A9ECC
        A1C4DCBFB5DCD9C1FFFFBADCD7B5D3AD7AA37092EAF390F6FFB4C2C0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E9B8879A2837AA3817CA4857CA4827DA6847CA5827CA3847DA68783B1888BBA
        9190C29694C79992C698A8D1A9BBD5BDBAEFFFB6D7CBC5DDBB79A97C77B0968E
        DAE5E3DEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE8E4E7689572769D7C789F8079A2807EA6867AA4827DA4
        867BA3857DA98287B58B8CBD9291C39693C59890C4979EC9A0CBE2CAC2DBC2BF
        D9B972A376709D75A7BDBEFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCC5BF709A7C779D7F7AA1
        8578A18079A17F7CA4857BA3847DA48580AC8487B68D8DBD9290C19589BD8F8E
        BE9484B68B96BE998BB58D669B6E8FAB97F7F4F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF859B8B6D9476719676739979779F80779F7D79A08179A0817AA58481AE8688
        B68D88B98E82B688BED9C081B28781AE8672A3767BA083DEDFE0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDF9FB668C716B8F726F947774997C729877779D7F75
        9C7D7BA2877AA57F81AE867CAD8191BC96B6D2B9DBE8DC6B9E7075A07CBAC7C0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D3D2678F7464896B6E
        92786E927573987B749B7D779D81759C7E75A07A72A178A7C6ABDEEAE0E0EBE1
        80AD869AB3A2F9F5F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0D3D29AADA3658D70678C6E6A8E706F947573987C769D7E81A685
        A4C1A7DDE8DD96BA9B96B29EDEE0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F8B1BBB672937D6E9176
        6C907571957B628C66B9CCBB78A07BAEC4B4C4CEC9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8E8E9849E8F688E7270957A6A8E6CB5C9B8A5B8ACFFFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F1F38FA69959816294AC
        9CF2F2F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF5F4F5D7DDDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 7
      OnClick = suiButton2Click
    end
  end
  object SPC_BAIXA_PARCELA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_BAIXA_PARCELA_CREDIARIO'
    Left = 304
    Top = 128
  end
  object SPC_Baixa_Parcial: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_BAIXA_PARCIAL_CREDIARIO'
    Left = 186
    Top = 128
  end
  object SPC_ATUALIZA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_REMOVE_JUROS'
    Left = 330
  end
  object SPC_BAIXA_PARCELA_T: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_BAIXA_PARCELA_CREDIARIO_T'
    Left = 444
    Top = 111
  end
  object Spc_crediario_Recebido: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CREDIAIRIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'SALDO_PAGAR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DOC_REC_ADM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_RECEBIDO'
    Left = 292
    Top = 65535
  end
  object Totais: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select SUM(VALOR_PAGAR)as total, SUM(VALOR_COMPRA)as COMPRA, SUM' +
        '(VALOR_JUROS)as JUROS, SUM(VALOR_ACRESCIMO)as MULTA, SUM(VALOR_P' +
        'AGO)as PAGO,'
      'SUM(VALOR_DESCONTO)as DESC from CREDIARIO')
    Left = 336
    Top = 224
  end
  object Total_v: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select SUM(VALOR_COMPRA) AS COMPRA from CREDIARIO where DATA_VEN' +
        'CIMENTO <=:DATA and DATA_BAIXA is null and'
      
        '   CODIGO_CLIENTE =:VENDA AND SITUACAO = '#39'A'#39' and COD_EMPRESA=:CO' +
        'DEMP')
    Left = 464
    Top = 220
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Total_vCOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMPRA'
      Origin = 'COMPRA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
end
