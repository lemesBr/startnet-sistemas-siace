object SaidaNFConfigFrm: TSaidaNFConfigFrm
  Left = 160
  Top = 54
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configura'#231#227'o :: Campos da Nota Fiscal'
  ClientHeight = 574
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 800
    Height = 574
    VertScrollBar.Position = 538
    Align = alClient
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = -314
      Width = 769
      Height = 225
      Caption = ' Destinat'#225'rio / Remetente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object CheckBox7: TCheckBox
        Left = 8
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Nome / R. Social:'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CurrencyEdit30: TCurrencyEdit
        Left = 8
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1.000000000000000000
      end
      object CurrencyEdit31: TCurrencyEdit
        Left = 48
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 2
        Value = 16.000000000000000000
      end
      object CurrencyEdit32: TCurrencyEdit
        Left = 88
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 3
        Value = 80.000000000000000000
      end
      object CurrencyEdit33: TCurrencyEdit
        Left = 136
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 4
        Value = 87.000000000000000000
      end
      object CurrencyEdit34: TCurrencyEdit
        Left = 176
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 5
        Value = 16.000000000000000000
      end
      object CurrencyEdit35: TCurrencyEdit
        Left = 216
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 6
        Value = 19.000000000000000000
      end
      object CheckBox8: TCheckBox
        Left = 136
        Top = 24
        Width = 121
        Height = 17
        Caption = 'CNPJ / CPF:'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CurrencyEdit36: TCurrencyEdit
        Left = 8
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 8
        Value = 1.000000000000000000
      end
      object CurrencyEdit37: TCurrencyEdit
        Left = 48
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 9
        Value = 19.000000000000000000
      end
      object CurrencyEdit38: TCurrencyEdit
        Left = 88
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 10
        Value = 70.000000000000000000
      end
      object CurrencyEdit39: TCurrencyEdit
        Left = 136
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 11
        Value = 76.000000000000000000
      end
      object CurrencyEdit40: TCurrencyEdit
        Left = 176
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 12
        Value = 19.000000000000000000
      end
      object CurrencyEdit41: TCurrencyEdit
        Left = 216
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 13
        Value = 16.000000000000000000
      end
      object CurrencyEdit42: TCurrencyEdit
        Left = 264
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 14
        Value = 100.000000000000000000
      end
      object CurrencyEdit43: TCurrencyEdit
        Left = 304
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 15
        Value = 19.000000000000000000
      end
      object CurrencyEdit44: TCurrencyEdit
        Left = 344
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 16
        Value = 11.000000000000000000
      end
      object CheckBox9: TCheckBox
        Left = 8
        Top = 168
        Width = 169
        Height = 17
        Caption = 'Munic'#237'pio:'
        Checked = True
        State = cbChecked
        TabOrder = 17
      end
      object CurrencyEdit45: TCurrencyEdit
        Left = 88
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 18
        Value = 19.000000000000000000
      end
      object CurrencyEdit46: TCurrencyEdit
        Left = 48
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 19
        Value = 22.000000000000000000
      end
      object CurrencyEdit47: TCurrencyEdit
        Left = 8
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 20
        Value = 1.000000000000000000
      end
      object CurrencyEdit48: TCurrencyEdit
        Left = 216
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 21
        Value = 15.000000000000000000
      end
      object CurrencyEdit49: TCurrencyEdit
        Left = 176
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 22
        Value = 22.000000000000000000
      end
      object CurrencyEdit50: TCurrencyEdit
        Left = 136
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 23
        Value = 30.000000000000000000
      end
      object CheckBox10: TCheckBox
        Left = 136
        Top = 168
        Width = 105
        Height = 17
        Caption = 'Fone / Fax:'
        Checked = True
        State = cbChecked
        TabOrder = 24
      end
      object CurrencyEdit51: TCurrencyEdit
        Left = 472
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 25
        Value = 19.000000000000000000
      end
      object CurrencyEdit52: TCurrencyEdit
        Left = 432
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 26
        Value = 22.000000000000000000
      end
      object CurrencyEdit53: TCurrencyEdit
        Left = 392
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 27
        Value = 87.000000000000000000
      end
      object CheckBox11: TCheckBox
        Left = 136
        Top = 96
        Width = 169
        Height = 17
        Caption = 'Bairro / Distrito:'
        Checked = True
        State = cbChecked
        TabOrder = 28
      end
      object CheckBox12: TCheckBox
        Left = 8
        Top = 96
        Width = 89
        Height = 17
        Caption = 'Endere'#231'o:'
        Checked = True
        State = cbChecked
        TabOrder = 29
      end
      object CheckBox13: TCheckBox
        Left = 264
        Top = 96
        Width = 65
        Height = 17
        Caption = 'CEP:'
        Checked = True
        State = cbChecked
        TabOrder = 30
      end
      object CheckBox14: TCheckBox
        Left = 392
        Top = 168
        Width = 137
        Height = 17
        Caption = 'Insc. Estadual:'
        Checked = True
        State = cbChecked
        TabOrder = 31
      end
      object CheckBox15: TCheckBox
        Left = 264
        Top = 168
        Width = 65
        Height = 17
        Caption = 'U.F.:'
        Checked = True
        State = cbChecked
        TabOrder = 32
      end
      object CurrencyEdit54: TCurrencyEdit
        Left = 264
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 33
        Value = 80.000000000000000000
      end
      object CurrencyEdit55: TCurrencyEdit
        Left = 304
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 34
        Value = 22.000000000000000000
      end
      object CurrencyEdit161: TCurrencyEdit
        Left = 664
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 35
        Value = 22.000000000000000000
      end
      object CurrencyEdit164: TCurrencyEdit
        Left = 624
        Top = 192
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 36
        Value = 120.000000000000000000
      end
      object CheckBox63: TCheckBox
        Left = 624
        Top = 160
        Width = 113
        Height = 25
        Caption = 'Hora de Sa'#237'da'
        Checked = True
        State = cbChecked
        TabOrder = 37
      end
      object CurrencyEdit150: TCurrencyEdit
        Left = 664
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 38
        Value = 19.000000000000000000
      end
      object CurrencyEdit152: TCurrencyEdit
        Left = 624
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 39
        Value = 120.000000000000000000
      end
      object CheckBox52: TCheckBox
        Left = 624
        Top = 96
        Width = 129
        Height = 25
        Caption = 'Data de Sa'#237'da/Ent.'
        Checked = True
        State = cbChecked
        TabOrder = 40
      end
      object CurrencyEdit19: TCurrencyEdit
        Left = 664
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 41
        Value = 16.000000000000000000
      end
      object CurrencyEdit20: TCurrencyEdit
        Left = 624
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 42
        Value = 120.000000000000000000
      end
      object CheckBox2: TCheckBox
        Left = 624
        Top = 24
        Width = 125
        Height = 25
        Caption = 'Data da Emiss'#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 43
      end
      object CurrencyEdit176: TCurrencyEdit
        Left = 432
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 44
        Value = 22.000000000000000000
      end
      object CurrencyEdit177: TCurrencyEdit
        Left = 392
        Top = 120
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 45
        Value = 60.000000000000000000
      end
      object CheckBox67: TCheckBox
        Left = 392
        Top = 96
        Width = 113
        Height = 17
        Caption = 'Vencimento:'
        Checked = True
        State = cbChecked
        TabOrder = 46
      end
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = -47
      Width = 721
      Height = 78
      Caption = ' Fatura: '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      object CheckBox16: TCheckBox
        Left = 8
        Top = 24
        Width = 73
        Height = 17
        Caption = 'N'#250'mero:'
        TabOrder = 0
      end
      object CheckBox17: TCheckBox
        Left = 264
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Vencimento:'
        TabOrder = 1
      end
      object CheckBox18: TCheckBox
        Left = 624
        Top = 24
        Width = 73
        Height = 17
        Caption = 'Valor:'
        TabOrder = 2
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 88
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 3
      end
      object CurrencyEdit57: TCurrencyEdit
        Left = 48
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 4
      end
      object CurrencyEdit58: TCurrencyEdit
        Left = 8
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 5
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 344
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 6
      end
      object CurrencyEdit59: TCurrencyEdit
        Left = 304
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 7
      end
      object CurrencyEdit60: TCurrencyEdit
        Left = 264
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 8
      end
      object CurrencyEdit61: TCurrencyEdit
        Left = 704
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 9
      end
      object CurrencyEdit62: TCurrencyEdit
        Left = 664
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 10
      end
      object CurrencyEdit63: TCurrencyEdit
        Left = 624
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 11
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 704
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 12
      end
      object CurrencyEdit64: TCurrencyEdit
        Left = 664
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 13
      end
      object CurrencyEdit65: TCurrencyEdit
        Left = 624
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 14
      end
      object CheckBox19: TCheckBox
        Left = 624
        Top = 80
        Width = 73
        Height = 17
        Caption = 'Valor:'
        TabOrder = 15
      end
      object CurrencyEdit66: TCurrencyEdit
        Left = 344
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 16
      end
      object CurrencyEdit67: TCurrencyEdit
        Left = 304
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 17
      end
      object CurrencyEdit68: TCurrencyEdit
        Left = 264
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 18
      end
      object CheckBox20: TCheckBox
        Left = 264
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Vencimento:'
        TabOrder = 19
      end
      object CurrencyEdit69: TCurrencyEdit
        Left = 88
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 20
      end
      object CurrencyEdit70: TCurrencyEdit
        Left = 48
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 21
      end
      object CurrencyEdit71: TCurrencyEdit
        Left = 8
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 22
      end
      object CheckBox21: TCheckBox
        Left = 8
        Top = 80
        Width = 73
        Height = 17
        Caption = 'N'#250'mero:'
        TabOrder = 23
      end
      object CurrencyEdit72: TCurrencyEdit
        Left = 704
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 24
      end
      object CurrencyEdit73: TCurrencyEdit
        Left = 664
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 25
      end
      object CurrencyEdit74: TCurrencyEdit
        Left = 624
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 26
      end
      object CheckBox22: TCheckBox
        Left = 624
        Top = 136
        Width = 73
        Height = 17
        Caption = 'Valor:'
        TabOrder = 27
      end
      object CurrencyEdit75: TCurrencyEdit
        Left = 344
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 28
      end
      object CurrencyEdit76: TCurrencyEdit
        Left = 304
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 29
      end
      object CurrencyEdit77: TCurrencyEdit
        Left = 264
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 30
      end
      object CheckBox23: TCheckBox
        Left = 264
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Vencimento:'
        TabOrder = 31
      end
      object CurrencyEdit78: TCurrencyEdit
        Left = 88
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 32
      end
      object CurrencyEdit79: TCurrencyEdit
        Left = 48
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 33
      end
      object CurrencyEdit80: TCurrencyEdit
        Left = 8
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 34
      end
      object CheckBox24: TCheckBox
        Left = 8
        Top = 136
        Width = 73
        Height = 17
        Caption = 'N'#250'mero:'
        TabOrder = 35
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = -82
      Width = 769
      Height = 153
      Caption = ' Dados do Produto: '
      TabOrder = 4
      object CurrencyEdit160: TCurrencyEdit
        Left = 48
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 0
        Value = 7.000000000000000000
      end
      object CurrencyEdit162: TCurrencyEdit
        Left = 8
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1.000000000000000000
      end
      object CheckBox54: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Refer'#234'ncia:'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBox55: TCheckBox
        Left = 488
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Quant.:'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox56: TCheckBox
        Left = 104
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Produto:'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CheckBox57: TCheckBox
        Left = 584
        Top = 24
        Width = 73
        Height = 17
        Caption = 'Pre'#231'o:'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CheckBox58: TCheckBox
        Left = 8
        Top = 88
        Width = 81
        Height = 17
        Caption = 'Sub-Total:'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object CheckBox59: TCheckBox
        Left = 200
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Cl. Fisc.:'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CheckBox60: TCheckBox
        Left = 296
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Sit. Trib.:'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object CheckBox61: TCheckBox
        Left = 104
        Top = 88
        Width = 129
        Height = 17
        Caption = 'ICMS:'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object CurrencyEdit187: TCurrencyEdit
        Left = 528
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 10
        Value = 15.000000000000000000
      end
      object CurrencyEdit189: TCurrencyEdit
        Left = 488
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 11
        Value = 82.000000000000000000
      end
      object CurrencyEdit163: TCurrencyEdit
        Left = 144
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 12
        Value = 28.000000000000000000
      end
      object CurrencyEdit165: TCurrencyEdit
        Left = 104
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 13
        Value = 14.000000000000000000
      end
      object CurrencyEdit192: TCurrencyEdit
        Left = 624
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 14
        Value = 15.000000000000000000
      end
      object CurrencyEdit194: TCurrencyEdit
        Left = 584
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 15
        Value = 94.000000000000000000
      end
      object CurrencyEdit166: TCurrencyEdit
        Left = 48
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 16
        Value = 15.000000000000000000
      end
      object CurrencyEdit168: TCurrencyEdit
        Left = 8
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 17
        Value = 114.000000000000000000
      end
      object CurrencyEdit197: TCurrencyEdit
        Left = 240
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 18
        Value = 3.000000000000000000
      end
      object CurrencyEdit199: TCurrencyEdit
        Left = 200
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 19
        Value = 62.000000000000000000
      end
      object CurrencyEdit200: TCurrencyEdit
        Left = 624
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 10930928
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 20
        Value = 15.000000000000000000
      end
      object CurrencyEdit201: TCurrencyEdit
        Left = 336
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 21
        Value = 3.000000000000000000
      end
      object CurrencyEdit203: TCurrencyEdit
        Left = 296
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 22
        Value = 65.000000000000000000
      end
      object CurrencyEdit205: TCurrencyEdit
        Left = 144
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 23
        Value = 5.000000000000000000
      end
      object CurrencyEdit207: TCurrencyEdit
        Left = 104
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 24
        Value = 118.000000000000000000
      end
      object CurrencyEdit151: TCurrencyEdit
        Left = 584
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 25
        Value = 26.000000000000000000
      end
      object CurrencyEdit12: TCurrencyEdit
        Left = 240
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 26
        Value = 15.000000000000000000
      end
      object CurrencyEdit186: TCurrencyEdit
        Left = 200
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 27
        Value = 122.000000000000000000
      end
      object CheckBox62: TCheckBox
        Left = 200
        Top = 88
        Width = 89
        Height = 17
        Caption = 'Desconto:'
        TabOrder = 28
      end
      object CurrencyEdit154: TCurrencyEdit
        Left = 432
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 29
        Value = 4.000000000000000000
      end
      object CurrencyEdit155: TCurrencyEdit
        Left = 392
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 30
        Value = 70.000000000000000000
      end
      object CheckBox3: TCheckBox
        Left = 392
        Top = 24
        Width = 89
        Height = 17
        Caption = 'Unidade:'
        Checked = True
        State = cbChecked
        TabOrder = 31
      end
      object CheckBox64: TCheckBox
        Left = 296
        Top = 88
        Width = 73
        Height = 17
        Caption = 'IPI:'
        Checked = True
        State = cbChecked
        TabOrder = 32
      end
      object CurrencyEdit178: TCurrencyEdit
        Left = 336
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 33
        Value = 5.000000000000000000
      end
      object CurrencyEdit175: TCurrencyEdit
        Left = 296
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 34
        Value = 123.000000000000000000
      end
      object CheckBox66: TCheckBox
        Left = 392
        Top = 88
        Width = 81
        Height = 17
        Caption = 'Valor IPI:'
        Checked = True
        State = cbChecked
        TabOrder = 35
      end
      object CurrencyEdit170: TCurrencyEdit
        Left = 432
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 36
        Value = 15.000000000000000000
      end
      object CurrencyEdit171: TCurrencyEdit
        Left = 392
        Top = 112
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 37
        Value = 135.000000000000000000
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 441
      Width = 177
      Height = 89
      Caption = ' Dados Adicionais: '
      TabOrder = 3
      object CurrencyEdit156: TCurrencyEdit
        Left = 96
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 0
        Value = 52.000000000000000000
      end
      object CurrencyEdit157: TCurrencyEdit
        Left = 56
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 62.000000000000000000
      end
      object CurrencyEdit158: TCurrencyEdit
        Left = 16
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 2
        Value = 1.000000000000000000
      end
      object CheckBox53: TCheckBox
        Left = 16
        Top = 24
        Width = 153
        Height = 17
        Caption = ' Dados Adicionais: '
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CurrencyEdit159: TCurrencyEdit
        Left = 136
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 10930928
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 4
        Value = 13.000000000000000000
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 78
      Width = 769
      Height = 146
      Caption = ' C'#225'lculo do Imposto: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object CurrencyEdit85: TCurrencyEdit
        Left = 88
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 0
        Value = 25.000000000000000000
      end
      object CurrencyEdit86: TCurrencyEdit
        Left = 48
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 45.000000000000000000
      end
      object CurrencyEdit87: TCurrencyEdit
        Left = 8
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 2
        Value = 26.000000000000000000
      end
      object CheckBox27: TCheckBox
        Left = 8
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Base C'#225'lc. ICMS:'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox28: TCheckBox
        Left = 160
        Top = 24
        Width = 89
        Height = 17
        Caption = 'Valor ICMS:'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CurrencyEdit13: TCurrencyEdit
        Left = 240
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 5
        Value = 23.000000000000000000
      end
      object CurrencyEdit14: TCurrencyEdit
        Left = 200
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 6
        Value = 45.000000000000000000
      end
      object CurrencyEdit88: TCurrencyEdit
        Left = 160
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 7
        Value = 48.000000000000000000
      end
      object CurrencyEdit89: TCurrencyEdit
        Left = 392
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 8
        Value = 25.000000000000000000
      end
      object CurrencyEdit90: TCurrencyEdit
        Left = 352
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 9
        Value = 45.000000000000000000
      end
      object CurrencyEdit91: TCurrencyEdit
        Left = 312
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 10
        Value = 77.000000000000000000
      end
      object CurrencyEdit8: TCurrencyEdit
        Left = 544
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 11
        Value = 25.000000000000000000
      end
      object CurrencyEdit92: TCurrencyEdit
        Left = 504
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 12
        Value = 45.000000000000000000
      end
      object CurrencyEdit93: TCurrencyEdit
        Left = 464
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 13
        Value = 106.000000000000000000
      end
      object CheckBox29: TCheckBox
        Left = 312
        Top = 24
        Width = 137
        Height = 17
        Caption = 'Base ICMS Subst.:'
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
      object CheckBox30: TCheckBox
        Left = 464
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Valor ICMS Subst.:'
        Checked = True
        State = cbChecked
        TabOrder = 15
      end
      object CheckBox31: TCheckBox
        Left = 616
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Valor Total Prod.:'
        Checked = True
        State = cbChecked
        TabOrder = 16
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 696
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 17
        Value = 25.000000000000000000
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 656
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 18
        Value = 45.000000000000000000
      end
      object CurrencyEdit94: TCurrencyEdit
        Left = 616
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 19
        Value = 135.000000000000000000
      end
      object CurrencyEdit95: TCurrencyEdit
        Left = 88
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 20
        Value = 25.000000000000000000
      end
      object CurrencyEdit96: TCurrencyEdit
        Left = 48
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 21
        Value = 48.000000000000000000
      end
      object CurrencyEdit97: TCurrencyEdit
        Left = 8
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 22
        Value = 26.000000000000000000
      end
      object CurrencyEdit98: TCurrencyEdit
        Left = 240
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 23
        Value = 23.000000000000000000
      end
      object CurrencyEdit99: TCurrencyEdit
        Left = 200
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 24
        Value = 48.000000000000000000
      end
      object CurrencyEdit100: TCurrencyEdit
        Left = 160
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 25
        Value = 48.000000000000000000
      end
      object CurrencyEdit101: TCurrencyEdit
        Left = 392
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 26
        Value = 25.000000000000000000
      end
      object CurrencyEdit102: TCurrencyEdit
        Left = 352
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 27
        Value = 48.000000000000000000
      end
      object CurrencyEdit103: TCurrencyEdit
        Left = 312
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 28
        Value = 77.000000000000000000
      end
      object CheckBox32: TCheckBox
        Left = 8
        Top = 80
        Width = 153
        Height = 17
        Caption = 'Valor do Frete:'
        Checked = True
        State = cbChecked
        TabOrder = 29
      end
      object CheckBox33: TCheckBox
        Left = 160
        Top = 80
        Width = 153
        Height = 17
        Caption = 'Valor Seguro:'
        Checked = True
        State = cbChecked
        TabOrder = 30
      end
      object CheckBox34: TCheckBox
        Left = 312
        Top = 80
        Width = 121
        Height = 17
        Caption = 'Outras despesas:'
        Checked = True
        State = cbChecked
        TabOrder = 31
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 544
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 32
        Value = 25.000000000000000000
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 504
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 33
        Value = 48.000000000000000000
      end
      object CurrencyEdit11: TCurrencyEdit
        Left = 464
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 34
        Value = 106.000000000000000000
      end
      object CheckBox35: TCheckBox
        Left = 464
        Top = 80
        Width = 129
        Height = 17
        Caption = 'Valor Total do IPI:'
        Checked = True
        State = cbChecked
        TabOrder = 35
      end
      object CurrencyEdit104: TCurrencyEdit
        Left = 696
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 36
        Value = 25.000000000000000000
      end
      object CurrencyEdit105: TCurrencyEdit
        Left = 656
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 37
        Value = 48.000000000000000000
      end
      object CurrencyEdit106: TCurrencyEdit
        Left = 616
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 38
        Value = 135.000000000000000000
      end
      object CheckBox36: TCheckBox
        Left = 616
        Top = 80
        Width = 129
        Height = 17
        Caption = 'Valor Total Nota:'
        Checked = True
        State = cbChecked
        TabOrder = 39
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 231
      Width = 770
      Height = 200
      Caption = 'Transportador / Volumes Transportados: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object CheckBox40: TCheckBox
        Left = 392
        Top = 24
        Width = 49
        Height = 17
        Caption = 'U.F.:'
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 88
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 0
        Value = 60.000000000000000000
      end
      object CurrencyEdit9: TCurrencyEdit
        Left = 48
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 52.000000000000000000
      end
      object CurrencyEdit107: TCurrencyEdit
        Left = 8
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 2
        Value = 1.000000000000000000
      end
      object CheckBox37: TCheckBox
        Left = 8
        Top = 24
        Width = 121
        Height = 17
        Caption = 'Nome / R. Social:'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CurrencyEdit108: TCurrencyEdit
        Left = 216
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 4
        Value = 2.000000000000000000
      end
      object CurrencyEdit109: TCurrencyEdit
        Left = 176
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 5
        Value = 52.000000000000000000
      end
      object CurrencyEdit110: TCurrencyEdit
        Left = 136
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 6
        Value = 79.000000000000000000
      end
      object CheckBox38: TCheckBox
        Left = 136
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Frete Por Conta:'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CurrencyEdit111: TCurrencyEdit
        Left = 344
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 8
        Value = 10.000000000000000000
      end
      object CurrencyEdit112: TCurrencyEdit
        Left = 304
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 9
        Value = 52.000000000000000000
      end
      object CurrencyEdit113: TCurrencyEdit
        Left = 264
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 10
        Value = 86.000000000000000000
      end
      object CheckBox39: TCheckBox
        Left = 264
        Top = 24
        Width = 105
        Height = 17
        Caption = 'Placa Veiculo:'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object CurrencyEdit115: TCurrencyEdit
        Left = 432
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 12
        Value = 52.000000000000000000
      end
      object CurrencyEdit116: TCurrencyEdit
        Left = 392
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 13
        Value = 99.000000000000000000
      end
      object CurrencyEdit117: TCurrencyEdit
        Left = 600
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 15
        Value = 18.000000000000000000
      end
      object CurrencyEdit118: TCurrencyEdit
        Left = 560
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 16
        Value = 52.000000000000000000
      end
      object CurrencyEdit119: TCurrencyEdit
        Left = 520
        Top = 48
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 17
        Value = 109.000000000000000000
      end
      object CheckBox41: TCheckBox
        Left = 520
        Top = 24
        Width = 153
        Height = 17
        Caption = 'C.N.P.J / C.P.F.:'
        Checked = True
        State = cbChecked
        TabOrder = 18
      end
      object CurrencyEdit120: TCurrencyEdit
        Left = 88
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 57
        Value = 60.000000000000000000
      end
      object CurrencyEdit121: TCurrencyEdit
        Left = 48
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 19
        Value = 55.000000000000000000
      end
      object CurrencyEdit122: TCurrencyEdit
        Left = 8
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 20
        Value = 1.000000000000000000
      end
      object CheckBox42: TCheckBox
        Left = 8
        Top = 80
        Width = 153
        Height = 17
        Caption = 'Endere'#231'o:'
        Checked = True
        State = cbChecked
        TabOrder = 21
      end
      object CurrencyEdit123: TCurrencyEdit
        Left = 216
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 22
        Value = 19.000000000000000000
      end
      object CurrencyEdit124: TCurrencyEdit
        Left = 176
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 23
        Value = 55.000000000000000000
      end
      object CurrencyEdit125: TCurrencyEdit
        Left = 136
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 24
        Value = 68.000000000000000000
      end
      object CheckBox43: TCheckBox
        Left = 136
        Top = 80
        Width = 153
        Height = 17
        Caption = 'Munic'#237'pio:'
        Checked = True
        State = cbChecked
        TabOrder = 25
      end
      object CurrencyEdit127: TCurrencyEdit
        Left = 304
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 26
        Value = 55.000000000000000000
      end
      object CurrencyEdit128: TCurrencyEdit
        Left = 264
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 27
        Value = 99.000000000000000000
      end
      object CheckBox44: TCheckBox
        Left = 264
        Top = 80
        Width = 49
        Height = 17
        Caption = 'U.F.:'
        Checked = True
        State = cbChecked
        TabOrder = 28
      end
      object CurrencyEdit129: TCurrencyEdit
        Left = 472
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 29
        Value = 18.000000000000000000
      end
      object CurrencyEdit130: TCurrencyEdit
        Left = 432
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 30
        Value = 55.000000000000000000
      end
      object CurrencyEdit131: TCurrencyEdit
        Left = 392
        Top = 104
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 31
        Value = 109.000000000000000000
      end
      object CheckBox45: TCheckBox
        Left = 392
        Top = 80
        Width = 105
        Height = 17
        Caption = 'Insc. Estadual:'
        Checked = True
        State = cbChecked
        TabOrder = 32
      end
      object CurrencyEdit132: TCurrencyEdit
        Left = 88
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 33
        Value = 13.000000000000000000
      end
      object CurrencyEdit133: TCurrencyEdit
        Left = 48
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 34
        Value = 57.000000000000000000
      end
      object CurrencyEdit134: TCurrencyEdit
        Left = 8
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 35
        Value = 20.000000000000000000
      end
      object CheckBox46: TCheckBox
        Left = 8
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Quantidade:'
        Checked = True
        State = cbChecked
        TabOrder = 36
      end
      object CurrencyEdit135: TCurrencyEdit
        Left = 216
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 37
        Value = 14.000000000000000000
      end
      object CurrencyEdit136: TCurrencyEdit
        Left = 176
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 38
        Value = 57.000000000000000000
      end
      object CurrencyEdit137: TCurrencyEdit
        Left = 136
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 39
        Value = 24.000000000000000000
      end
      object CheckBox47: TCheckBox
        Left = 136
        Top = 136
        Width = 89
        Height = 17
        Caption = 'Esp'#233'cie:'
        Checked = True
        State = cbChecked
        TabOrder = 40
      end
      object CurrencyEdit138: TCurrencyEdit
        Left = 344
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 41
        Value = 14.000000000000000000
      end
      object CurrencyEdit139: TCurrencyEdit
        Left = 304
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 42
        Value = 57.000000000000000000
      end
      object CurrencyEdit140: TCurrencyEdit
        Left = 264
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 43
        Value = 47.000000000000000000
      end
      object CheckBox48: TCheckBox
        Left = 264
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Marca:'
        Checked = True
        State = cbChecked
        TabOrder = 44
      end
      object CurrencyEdit141: TCurrencyEdit
        Left = 472
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 45
        Value = 13.000000000000000000
      end
      object CurrencyEdit142: TCurrencyEdit
        Left = 432
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 46
        Value = 57.000000000000000000
      end
      object CurrencyEdit143: TCurrencyEdit
        Left = 392
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 47
        Value = 86.000000000000000000
      end
      object CheckBox49: TCheckBox
        Left = 392
        Top = 136
        Width = 73
        Height = 17
        Caption = 'N'#250'mero:'
        Checked = True
        State = cbChecked
        TabOrder = 48
      end
      object CurrencyEdit144: TCurrencyEdit
        Left = 600
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 49
        Value = 14.000000000000000000
      end
      object CurrencyEdit145: TCurrencyEdit
        Left = 560
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 50
        Value = 57.000000000000000000
      end
      object CurrencyEdit146: TCurrencyEdit
        Left = 520
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 51
        Value = 110.000000000000000000
      end
      object CheckBox50: TCheckBox
        Left = 520
        Top = 136
        Width = 89
        Height = 17
        Caption = 'Peso Bruto:'
        Checked = True
        State = cbChecked
        TabOrder = 52
      end
      object CurrencyEdit147: TCurrencyEdit
        Left = 728
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 53
        Value = 17.000000000000000000
      end
      object CurrencyEdit148: TCurrencyEdit
        Left = 688
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 54
        Value = 57.000000000000000000
      end
      object CurrencyEdit149: TCurrencyEdit
        Left = 648
        Top = 160
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 55
        Value = 130.000000000000000000
      end
      object CheckBox51: TCheckBox
        Left = 648
        Top = 136
        Width = 105
        Height = 17
        Caption = 'Peso L'#237'quido:'
        Checked = True
        State = cbChecked
        TabOrder = 56
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = -538
      Width = 769
      Height = 217
      TabOrder = 6
      object CheckBox4: TCheckBox
        Left = 8
        Top = 160
        Width = 169
        Height = 17
        Caption = 'Natureza da Op:'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CurrencyEdit21: TCurrencyEdit
        Left = 88
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 42.000000000000000000
      end
      object CurrencyEdit22: TCurrencyEdit
        Left = 48
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 2
        Value = 12.000000000000000000
      end
      object CurrencyEdit23: TCurrencyEdit
        Left = 8
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 3
        Value = 1.000000000000000000
      end
      object CheckBox5: TCheckBox
        Left = 136
        Top = 160
        Width = 97
        Height = 17
        Caption = 'CFOP:'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CurrencyEdit25: TCurrencyEdit
        Left = 176
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 5
        Value = 12.000000000000000000
      end
      object CurrencyEdit26: TCurrencyEdit
        Left = 136
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 6
        Value = 43.000000000000000000
      end
      object CheckBox6: TCheckBox
        Left = 264
        Top = 160
        Width = 209
        Height = 17
        Caption = 'Insc. Est. Substituto Tribut'#225'rio:'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CurrencyEdit27: TCurrencyEdit
        Left = 344
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 8
        Value = 23.000000000000000000
      end
      object CurrencyEdit28: TCurrencyEdit
        Left = 304
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 9
        Value = 12.000000000000000000
      end
      object CurrencyEdit29: TCurrencyEdit
        Left = 264
        Top = 184
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        MinValue = 1.000000000000000000
        TabOrder = 10
        Value = 52.000000000000000000
      end
      object CurrencyEdit15: TCurrencyEdit
        Left = 584
        Top = 40
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 11
        Value = 110.000000000000000000
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 624
        Top = 40
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 12
        Value = 2.000000000000000000
      end
      object CurrencyEdit17: TCurrencyEdit
        Left = 664
        Top = 40
        Width = 33
        Height = 21
        AutoSize = False
        Color = clMoneyGreen
        DisplayFormat = '000'
        TabOrder = 13
        Value = 13.000000000000000000
      end
      object CheckBox1: TCheckBox
        Left = 584
        Top = 16
        Width = 113
        Height = 17
        Caption = 'N'#186' Nota Fiscal:'
        Checked = True
        State = cbChecked
        TabOrder = 14
      end
      object CurrencyEdit81: TCurrencyEdit
        Left = 712
        Top = 96
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 15
        Value = 5.000000000000000000
      end
      object CurrencyEdit82: TCurrencyEdit
        Left = 672
        Top = 96
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 16
        Value = 84.000000000000000000
      end
      object CheckBox25: TCheckBox
        Left = 672
        Top = 72
        Width = 57
        Height = 17
        Caption = 'Sa'#237'da'
        Checked = True
        State = cbChecked
        TabOrder = 17
      end
      object CurrencyEdit83: TCurrencyEdit
        Left = 624
        Top = 96
        Width = 33
        Height = 21
        AutoSize = False
        Color = clInfoBk
        DisplayFormat = '000'
        TabOrder = 18
        Value = 4.000000000000000000
      end
      object CurrencyEdit84: TCurrencyEdit
        Left = 584
        Top = 96
        Width = 33
        Height = 21
        AutoSize = False
        Color = 16776176
        DisplayFormat = '000'
        TabOrder = 19
        Value = 5.000000000000000000
      end
      object CheckBox26: TCheckBox
        Left = 584
        Top = 72
        Width = 73
        Height = 17
        Caption = 'Entrada'
        TabOrder = 20
      end
      object BitBtn4: TBitBtn
        Left = 200
        Top = 24
        Width = 137
        Height = 41
        Caption = 'Preview'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        OnClick = BitBtn4Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
          00FFFF00FFFF00FF646365314B62AC7D7EF6DAB6F3D5ADF2D1A5F0CE9EEFCB97
          EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
          7F9F6F60FF00FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AF2D5B1F0
          D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
          E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF32A0FE37A1FF106F
          E2325F8BB67D79F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
          BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF37A4FE379FFF0E6DDE355F89BB7F79F2D4B0F0D1AAEFCEA3EECB9CEDC7
          95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FF93656037A4FE359EFF0F6FDE35608BA67B7FF2D5B1
          F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
          7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D338A5FE329DFF15
          6DCE444F5BDAB8A0925D5A986660935E5B9A6663B88A74D7AB82EBC189E9BD81
          E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
          DAFAEEDE3BABFFA1CAE78F6D6B96665FC2A38CE9DCB7FBF8CBE7DCB6BF9A899D
          6B66CB9E7BEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
          FF00FF9E6E64F4EAE1FBF2E6F8EADCB49291A06D66EDD4A4FFFCCAFFFFCFFFFF
          CFFFFFD5FFFFEAE3D3CC96635FD5AB82EBC188EABF82E7BB7E9F6F60FF00FFFF
          00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3A16C67C79F81F6D095
          FCF4C2FFFFCFFFFFD8FFFFEEFFFFFAFFFFFFB79387B88A73EBC48EEBC288E7BC
          809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB9D
          6A64E7C28EEEB87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6DCCEAD996560
          EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
          F4FFFFFEFEF8F3935F5BF7D495EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFFE3FF
          FFD7F6F2C9935E5BEECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
          FF00FFB17E6BFAF6F4FFFFFFFFFEFB9E6B65E9C793EAA96AEFBD80FAE9B4FFFF
          D0FFFFD3FFFFD1FFFFD1E1D1B0996660EFCEA1EECB9CEBC592A07264FF00FFFF
          00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFA4706BCBA989F8E2B5
          F0C690F0C286F7DCA5FEF3C1FEF8C6FFFFCFBB9984BB8F7EF0D1A9F0CFA3EDC9
          999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFE5
          D5D5A07068EDE3E2FFF4E2EFBD80EBAB6FF0C086FBDEA3EBD9A9986760DAB89F
          F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
          F4FFFFFFFFFFFFFFFFFFD7C0BF9E6F6BC6A999EAD19EFADA9CE9C793C59D829D
          6A64D0AC9CF3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
          FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFE5D5D5A4766A9A6862935F
          5B9E6A64BD988FE0C4B5FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
          00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
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
      end
      object BitBtn2: TBitBtn
        Left = 200
        Top = 72
        Width = 137
        Height = 41
        Caption = 'Sair e Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        OnClick = BitBtn3Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FF0732DE0732DE0732
          DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF
          0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF
          00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE07
          32DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335
          FB0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
          32DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FF0732
          DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
          0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF0732DE0732DE0335FB0732DE0335FB0732DE0732DEFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0335FB0732DEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB0732DE0732
          DE0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB
          0732DE0335FB0335FB0335FB0732DE0335FBFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0732DE0335FBFF00FFFF00FF0335FB0335FB0335FB0335FBFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0335FB0335FB0732DE0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB03
          35FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0335FBFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335
          FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
          0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 16
        Width = 177
        Height = 129
        Caption = ' Legenda: '
        TabOrder = 23
        object Label9: TLabel
          Left = 16
          Top = 25
          Width = 15
          Height = 16
          Caption = '     '
          Color = 16776176
          ParentColor = False
        end
        object Label1: TLabel
          Left = 16
          Top = 49
          Width = 15
          Height = 16
          Caption = '     '
          Color = clInfoBk
          ParentColor = False
        end
        object Label2: TLabel
          Left = 40
          Top = 25
          Width = 79
          Height = 16
          Caption = 'N'#186' da Coluna'
        end
        object Label12: TLabel
          Left = 40
          Top = 49
          Width = 69
          Height = 16
          Caption = 'N'#186' da Linha'
        end
        object Label3: TLabel
          Left = 16
          Top = 73
          Width = 15
          Height = 16
          Caption = '     '
          Color = clMoneyGreen
          ParentColor = False
        end
        object Label4: TLabel
          Left = 16
          Top = 97
          Width = 15
          Height = 16
          Caption = '     '
          Color = 10930928
          ParentColor = False
        end
        object Label5: TLabel
          Left = 40
          Top = 73
          Width = 116
          Height = 16
          Caption = 'M'#225'ximo Caracteres'
        end
        object Label16: TLabel
          Left = 40
          Top = 97
          Width = 108
          Height = 16
          Caption = 'M'#225'ximo de Linhas'
        end
      end
    end
    object CurrencyEdit169: TCurrencyEdit
      Left = 280
      Top = 518
      Width = 33
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 7
      Value = 13.000000000000000000
    end
    object CurrencyEdit181: TCurrencyEdit
      Left = 240
      Top = 518
      Width = 33
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 8
      Value = 83.000000000000000000
    end
    object CurrencyEdit180: TCurrencyEdit
      Left = 200
      Top = 518
      Width = 33
      Height = 21
      AutoSize = False
      Color = 16776176
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 9
      Value = 114.000000000000000000
    end
    object CheckBox68: TCheckBox
      Left = 200
      Top = 494
      Width = 97
      Height = 17
      Caption = 'N'#186' da Nota:'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CurrencyEdit172: TCurrencyEdit
      Left = 280
      Top = 470
      Width = 33
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 11
      Value = 6.000000000000000000
    end
    object CurrencyEdit173: TCurrencyEdit
      Left = 240
      Top = 470
      Width = 33
      Height = 21
      AutoSize = False
      Color = clInfoBk
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 12
      Value = 5.000000000000000000
    end
    object CurrencyEdit174: TCurrencyEdit
      Left = 200
      Top = 470
      Width = 33
      Height = 21
      AutoSize = False
      Color = 16776176
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 13
      Value = 5.000000000000000000
    end
    object CheckBox65: TCheckBox
      Left = 200
      Top = 446
      Width = 113
      Height = 17
      Caption = 'N'#186' de Controle:'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object BitBtn1: TBitBtn
      Left = 632
      Top = 496
      Width = 137
      Height = 41
      Caption = 'Sair e Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FF0732DE0732DE0732
        DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF
        0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF
        00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE07
        32DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
        0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335
        FB0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
        32DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FF0732
        DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE
        0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0732DE0732DE0335FB0732DE0335FB0732DE0732DEFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0335FB0732DEFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB0732DE0732
        DE0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0335FB
        0732DE0335FB0335FB0335FB0732DE0335FBFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB03
        35FB0335FB0732DE0335FBFF00FFFF00FF0335FB0335FB0335FB0335FBFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0335FB0335FB0732DE0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB03
        35FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FBFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0335FBFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335
        FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn3: TBitBtn
      Left = 632
      Top = 448
      Width = 137
      Height = 41
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BitBtn4Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF92635DA46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769A46769A46769A46769A46769A46769A46769A46769FF00FFFF
        00FFFF00FFFF00FF646365314B62AC7D7EF6DAB6F3D5ADF2D1A5F0CE9EEFCB97
        EFC791EEC589EBC182EBC080EBC080EBC080EBC080EBC080EBC080EDC180EABF
        7F9F6F60FF00FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AF2D5B1F0
        D1AAEFCFA3EECB9DEDC796EDC58FEBC188EABF82E9BD7FE9BD7FE9BD7FE9BD7F
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF32A0FE37A1FF106F
        E2325F8BB67D79F2D4B1F0D1AAEFCFA4EECB9DEDC796EDC58FEBC189EABF82E9
        BD7FE9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF37A4FE379FFF0E6DDE355F89BB7F79F2D4B0F0D1AAEFCEA3EECB9CEDC7
        95EDC58FEBC189E9BD81E9BD7FE9BD7FE9BD7FEABF7FE7BC7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FF93656037A4FE359EFF0F6FDE35608BA67B7FF2D5B1
        F0D1AAEFCEA3EECB9CEDC796EDC590EBC189E9BF82E9BD7FE9BD7FEABF7FE7BC
        7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF956660F2E2D338A5FE329DFF15
        6DCE444F5BDAB8A0925D5A986660935E5B9A6663B88A74D7AB82EBC189E9BD81
        E9BD7FEABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FFFF00FF986963F2E6
        DAFAEEDE3BABFFA1CAE78F6D6B96665FC2A38CE9DCB7FBF8CBE7DCB6BF9A899D
        6B66CB9E7BEBC189E9BD81EABF7FE7BC7E9F6F60FF00FFFF00FFFF00FFFF00FF
        FF00FF9E6E64F4EAE1FBF2E6F8EADCB49291A06D66EDD4A4FFFCCAFFFFCFFFFF
        CFFFFFD5FFFFEAE3D3CC96635FD5AB82EBC188EABF82E7BB7E9F6F60FF00FFFF
        00FFFF00FFFF00FFFF00FFA37266F6EEE9FCF6EDF8EFE3A16C67C79F81F6D095
        FCF4C2FFFFCFFFFFD8FFFFEEFFFFFAFFFFFFB79387B88A73EBC48EEBC288E7BC
        809F6F60FF00FFFF00FFFF00FFFF00FFFF00FFA77568F8F3F0FEFBF6FBF3EB9D
        6A64E7C28EEEB87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6DCCEAD996560
        EDC795EDC58FE9BF879F6F62FF00FFFF00FFFF00FFFF00FFFF00FFAC7969FAF6
        F4FFFFFEFEF8F3935F5BF7D495EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFFE3FF
        FFD7F6F2C9935E5BEECB9CEEC996EAC18EA07063FF00FFFF00FFFF00FFFF00FF
        FF00FFB17E6BFAF6F4FFFFFFFFFEFB9E6B65E9C793EAA96AEFBD80FAE9B4FFFF
        D0FFFFD3FFFFD1FFFFD1E1D1B0996660EFCEA1EECB9CEBC592A07264FF00FFFF
        00FFFF00FFFF00FFFF00FFB6816CFAF6F4FFFFFFFFFFFFA4706BCBA989F8E2B5
        F0C690F0C286F7DCA5FEF3C1FEF8C6FFFFCFBB9984BB8F7EF0D1A9F0CFA3EDC9
        999D7065FF00FFFF00FFFF00FFFF00FFFF00FFBB846EFAF6F4FFFFFFFFFFFFE5
        D5D5A07068EDE3E2FFF4E2EFBD80EBAB6FF0C086FBDEA3EBD9A9986760DAB89F
        F0D4AFEFD0A7CEB491896A63FF00FFFF00FFFF00FFFF00FFFF00FFC0896FFBF7
        F4FFFFFFFFFFFFFFFFFFD7C0BF9E6F6BC6A999EAD19EFADA9CE9C793C59D829D
        6A64D0AC9CF3DCBDE5CEAFC4B096A1927F806762FF00FFFF00FFFF00FFFF00FF
        FF00FFC58C70FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFE5D5D5A4766A9A6862935F
        5B9E6A64BD988FE0C4B5FAE9D0E0D0BAB8AB9AA79C8BA49786846964FF00FFFF
        00FFFF00FFFF00FFFF00FFCB9173FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFBFCF7F0FBF2E9FBF2E5E9D3C49E675B98665B95655B96655B9665
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
    end
    object GroupBox8: TGroupBox
      Left = 440
      Top = 441
      Width = 177
      Height = 129
      Caption = ' Legenda: '
      TabOrder = 17
      object Label6: TLabel
        Left = 16
        Top = 25
        Width = 15
        Height = 16
        Caption = '     '
        Color = 16776176
        ParentColor = False
      end
      object Label7: TLabel
        Left = 16
        Top = 49
        Width = 15
        Height = 16
        Caption = '     '
        Color = clInfoBk
        ParentColor = False
      end
      object Label8: TLabel
        Left = 40
        Top = 25
        Width = 79
        Height = 16
        Caption = 'N'#186' da Coluna'
      end
      object Label10: TLabel
        Left = 40
        Top = 49
        Width = 69
        Height = 16
        Caption = 'N'#186' da Linha'
      end
      object Label11: TLabel
        Left = 16
        Top = 73
        Width = 15
        Height = 16
        Caption = '     '
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label13: TLabel
        Left = 16
        Top = 97
        Width = 15
        Height = 16
        Caption = '     '
        Color = 10930928
        ParentColor = False
      end
      object Label14: TLabel
        Left = 40
        Top = 73
        Width = 116
        Height = 16
        Caption = 'M'#225'ximo Caracteres'
      end
      object Label15: TLabel
        Left = 40
        Top = 97
        Width = 108
        Height = 16
        Caption = 'M'#225'ximo de Linhas'
      end
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CheckBox1.Checked'
      'CheckBox10.Checked'
      'CheckBox11.Checked'
      'CheckBox12.Checked'
      'CheckBox13.Checked'
      'CheckBox14.Checked'
      'CheckBox15.Checked'
      'CheckBox16.Checked'
      'CheckBox17.Checked'
      'CheckBox18.Checked'
      'CheckBox19.Checked'
      'CheckBox2.Checked'
      'CheckBox20.Checked'
      'CheckBox21.Checked'
      'CheckBox22.Checked'
      'CheckBox23.Checked'
      'CheckBox24.Checked'
      'CheckBox25.Checked'
      'CheckBox26.Checked'
      'CheckBox27.Checked'
      'CheckBox28.Checked'
      'CheckBox29.Checked'
      'CheckBox3.Checked'
      'CheckBox30.Checked'
      'CheckBox31.Checked'
      'CheckBox32.Checked'
      'CheckBox33.Checked'
      'CheckBox34.Checked'
      'CheckBox35.Checked'
      'CheckBox36.Checked'
      'CheckBox37.Checked'
      'CheckBox38.Checked'
      'CheckBox39.Checked'
      'CheckBox4.Checked'
      'CheckBox40.Checked'
      'CheckBox41.Checked'
      'CheckBox42.Checked'
      'CheckBox43.Checked'
      'CheckBox44.Checked'
      'CheckBox45.Checked'
      'CheckBox46.Checked'
      'CheckBox47.Checked'
      'CheckBox48.Checked'
      'CheckBox49.Checked'
      'CheckBox5.Checked'
      'CheckBox50.Checked'
      'CheckBox51.Checked'
      'CheckBox52.Checked'
      'CheckBox53.Checked'
      'CheckBox54.Checked'
      'CheckBox55.Checked'
      'CheckBox56.Checked'
      'CheckBox57.Checked'
      'CheckBox58.Checked'
      'CheckBox59.Checked'
      'CheckBox6.Checked'
      'CheckBox60.Checked'
      'CheckBox61.Checked'
      'CheckBox62.Checked'
      'CheckBox63.Checked'
      'CheckBox64.Checked'
      'CheckBox65.Checked'
      'CheckBox66.Checked'
      'CheckBox67.Checked'
      'CheckBox68.Checked'
      'CheckBox7.Checked'
      'CheckBox8.Checked'
      'CheckBox9.Checked'
      'CurrencyEdit1.Value'
      'CurrencyEdit10.Value'
      'CurrencyEdit100.Value'
      'CurrencyEdit101.Value'
      'CurrencyEdit102.Value'
      'CurrencyEdit103.Value'
      'CurrencyEdit104.Value'
      'CurrencyEdit105.Value'
      'CurrencyEdit106.Value'
      'CurrencyEdit107.Value'
      'CurrencyEdit108.Value'
      'CurrencyEdit109.Value'
      'CurrencyEdit11.Value'
      'CurrencyEdit110.Value'
      'CurrencyEdit111.Value'
      'CurrencyEdit112.Value'
      'CurrencyEdit113.Value'
      'CurrencyEdit115.Value'
      'CurrencyEdit116.Value'
      'CurrencyEdit117.Value'
      'CurrencyEdit118.Value'
      'CurrencyEdit119.Value'
      'CurrencyEdit12.Value'
      'CurrencyEdit120.Value'
      'CurrencyEdit121.Value'
      'CurrencyEdit122.Value'
      'CurrencyEdit123.Value'
      'CurrencyEdit124.Value'
      'CurrencyEdit125.Value'
      'CurrencyEdit127.Value'
      'CurrencyEdit128.Value'
      'CurrencyEdit129.Value'
      'CurrencyEdit13.Value'
      'CurrencyEdit130.Value'
      'CurrencyEdit131.Value'
      'CurrencyEdit132.Value'
      'CurrencyEdit133.Value'
      'CurrencyEdit134.Value'
      'CurrencyEdit135.Value'
      'CurrencyEdit136.Value'
      'CurrencyEdit137.Value'
      'CurrencyEdit138.Value'
      'CurrencyEdit139.Value'
      'CurrencyEdit14.Value'
      'CurrencyEdit140.Value'
      'CurrencyEdit141.Value'
      'CurrencyEdit142.Value'
      'CurrencyEdit143.Value'
      'CurrencyEdit144.Value'
      'CurrencyEdit145.Value'
      'CurrencyEdit146.Value'
      'CurrencyEdit147.Value'
      'CurrencyEdit148.Value'
      'CurrencyEdit149.Value'
      'CurrencyEdit15.Value'
      'CurrencyEdit150.Value'
      'CurrencyEdit151.Value'
      'CurrencyEdit152.Value'
      'CurrencyEdit154.Value'
      'CurrencyEdit155.Value'
      'CurrencyEdit156.Value'
      'CurrencyEdit157.Value'
      'CurrencyEdit158.Value'
      'CurrencyEdit159.Value'
      'CurrencyEdit16.Value'
      'CurrencyEdit160.Value'
      'CurrencyEdit161.Value'
      'CurrencyEdit162.Value'
      'CurrencyEdit163.Value'
      'CurrencyEdit164.Value'
      'CurrencyEdit165.Value'
      'CurrencyEdit166.Value'
      'CurrencyEdit168.Value'
      'CurrencyEdit169.Value'
      'CurrencyEdit17.Value'
      'CurrencyEdit170.Value'
      'CurrencyEdit171.Value'
      'CurrencyEdit172.Value'
      'CurrencyEdit173.Value'
      'CurrencyEdit174.Value'
      'CurrencyEdit175.Value'
      'CurrencyEdit176.Value'
      'CurrencyEdit177.Value'
      'CurrencyEdit178.Value'
      'CurrencyEdit180.Value'
      'CurrencyEdit181.Value'
      'CurrencyEdit186.Value'
      'CurrencyEdit187.Value'
      'CurrencyEdit189.Value'
      'CurrencyEdit19.Value'
      'CurrencyEdit192.Value'
      'CurrencyEdit194.Value'
      'CurrencyEdit197.Value'
      'CurrencyEdit199.Value'
      'CurrencyEdit2.Value'
      'CurrencyEdit20.Value'
      'CurrencyEdit200.Value'
      'CurrencyEdit201.Value'
      'CurrencyEdit203.Value'
      'CurrencyEdit205.Value'
      'CurrencyEdit207.Value'
      'CurrencyEdit21.Value'
      'CurrencyEdit22.Value'
      'CurrencyEdit23.Value'
      'CurrencyEdit25.Value'
      'CurrencyEdit26.Value'
      'CurrencyEdit27.Value'
      'CurrencyEdit28.Value'
      'CurrencyEdit29.Value'
      'CurrencyEdit3.Value'
      'CurrencyEdit30.Value'
      'CurrencyEdit31.Value'
      'CurrencyEdit32.Value'
      'CurrencyEdit33.Value'
      'CurrencyEdit34.Value'
      'CurrencyEdit35.Value'
      'CurrencyEdit36.Value'
      'CurrencyEdit37.Value'
      'CurrencyEdit38.Value'
      'CurrencyEdit39.Value'
      'CurrencyEdit4.Value'
      'CurrencyEdit40.Value'
      'CurrencyEdit41.Value'
      'CurrencyEdit42.Value'
      'CurrencyEdit43.Value'
      'CurrencyEdit44.Value'
      'CurrencyEdit45.Value'
      'CurrencyEdit46.Value'
      'CurrencyEdit47.Value'
      'CurrencyEdit48.Value'
      'CurrencyEdit49.Value'
      'CurrencyEdit5.Value'
      'CurrencyEdit50.Value'
      'CurrencyEdit51.Value'
      'CurrencyEdit52.Value'
      'CurrencyEdit53.Value'
      'CurrencyEdit54.Value'
      'CurrencyEdit55.Value'
      'CurrencyEdit57.Value'
      'CurrencyEdit58.Value'
      'CurrencyEdit59.Value'
      'CurrencyEdit6.Value'
      'CurrencyEdit60.Value'
      'CurrencyEdit61.Value'
      'CurrencyEdit62.Value'
      'CurrencyEdit63.Value'
      'CurrencyEdit64.Value'
      'CurrencyEdit65.Value'
      'CurrencyEdit66.Value'
      'CurrencyEdit67.Value'
      'CurrencyEdit68.Value'
      'CurrencyEdit69.Value'
      'CurrencyEdit7.Value'
      'CurrencyEdit70.Value'
      'CurrencyEdit71.Value'
      'CurrencyEdit72.Value'
      'CurrencyEdit73.Value'
      'CurrencyEdit74.Value'
      'CurrencyEdit75.Value'
      'CurrencyEdit76.Value'
      'CurrencyEdit77.Value'
      'CurrencyEdit78.Value'
      'CurrencyEdit79.Value'
      'CurrencyEdit8.Value'
      'CurrencyEdit80.Value'
      'CurrencyEdit81.Value'
      'CurrencyEdit82.Value'
      'CurrencyEdit83.Value'
      'CurrencyEdit84.Value'
      'CurrencyEdit85.Value'
      'CurrencyEdit86.Value'
      'CurrencyEdit87.Value'
      'CurrencyEdit88.Value'
      'CurrencyEdit89.Value'
      'CurrencyEdit9.Value'
      'CurrencyEdit90.Value'
      'CurrencyEdit91.Value'
      'CurrencyEdit92.Value'
      'CurrencyEdit93.Value'
      'CurrencyEdit94.Value'
      'CurrencyEdit95.Value'
      'CurrencyEdit96.Value'
      'CurrencyEdit97.Value'
      'CurrencyEdit98.Value'
      'CurrencyEdit99.Value')
    StoredValues = <>
    Left = 528
    Top = 16
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'SP INFORM'#193'TICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0207/00393'
    RegistroUsuario.AutorizacaoKey = 'USUN-2976-LIRR-6059-AZAV'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Nota Fiscal  - Prisma Pack'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 106
    TamanhoQteColunas = 145
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 560
    Top = 16
  end
end
