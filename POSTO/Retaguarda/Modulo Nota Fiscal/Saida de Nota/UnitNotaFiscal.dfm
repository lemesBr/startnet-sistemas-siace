object SaidaNFFrm: TSaidaNFFrm
  Left = -10
  Top = 49
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro :: Sa'#237'da de Nota Fiscal'
  ClientHeight = 542
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 804
    Height = 542
    Align = alClient
    BevelKind = bkFlat
    TabOrder = 0
    object Label48: TLabel
      Left = 664
      Top = 152
      Width = 107
      Height = 16
      Caption = 'Data da Emiss'#227'o:'
    end
    object Label49: TLabel
      Left = 664
      Top = 200
      Width = 87
      Height = 16
      Caption = 'Data de Sa'#237'da'
    end
    object Label50: TLabel
      Left = 664
      Top = 264
      Width = 91
      Height = 16
      Caption = 'Hora da Sa'#237'da:'
    end
    object Label51: TLabel
      Left = 664
      Top = 8
      Width = 89
      Height = 16
      Caption = 'N'#186' Nota Fiscal:'
    end
    object Label53: TLabel
      Left = 664
      Top = 216
      Width = 68
      Height = 16
      Caption = 'ou Entrada:'
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 413
      Width = 762
      Height = 81
      Caption = ' Fatura: '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 51
        Height = 16
        Caption = 'N'#250'mero:'
      end
      object Label2: TLabel
        Left = 72
        Top = 24
        Width = 74
        Height = 16
        Caption = 'Vencimento:'
      end
      object Label3: TLabel
        Left = 168
        Top = 24
        Width = 35
        Height = 16
        Caption = 'Valor:'
      end
      object Label4: TLabel
        Left = 264
        Top = 24
        Width = 51
        Height = 16
        Caption = 'N'#250'mero:'
      end
      object Label5: TLabel
        Left = 328
        Top = 24
        Width = 74
        Height = 16
        Caption = 'Vencimento:'
      end
      object Label6: TLabel
        Left = 416
        Top = 24
        Width = 35
        Height = 16
        Caption = 'Valor:'
      end
      object Label7: TLabel
        Left = 512
        Top = 24
        Width = 51
        Height = 16
        Caption = 'N'#250'mero:'
      end
      object Label8: TLabel
        Left = 576
        Top = 24
        Width = 74
        Height = 16
        Caption = 'Vencimento:'
      end
      object Label9: TLabel
        Left = 664
        Top = 24
        Width = 35
        Height = 16
        Caption = 'Valor:'
      end
      object Edit15: TEdit
        Left = 16
        Top = 40
        Width = 49
        Height = 24
        MaxLength = 28
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit18: TEdit
        Left = 264
        Top = 40
        Width = 53
        Height = 24
        MaxLength = 28
        TabOrder = 3
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit21: TEdit
        Left = 512
        Top = 40
        Width = 55
        Height = 24
        MaxLength = 28
        TabOrder = 6
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object DateEdit1: TDateEdit
        Left = 72
        Top = 40
        Width = 89
        Height = 24
        CheckOnExit = True
        NumGlyphs = 2
        TabOrder = 1
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object DateEdit2: TDateEdit
        Left = 328
        Top = 40
        Width = 82
        Height = 24
        CheckOnExit = True
        NumGlyphs = 2
        TabOrder = 4
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object DateEdit3: TDateEdit
        Left = 576
        Top = 40
        Width = 78
        Height = 24
        CheckOnExit = True
        NumGlyphs = 2
        TabOrder = 7
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 168
        Top = 40
        Width = 79
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        MaxLength = 13
        TabOrder = 2
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 416
        Top = 40
        Width = 79
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        MaxLength = 13
        TabOrder = 5
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 664
        Top = 40
        Width = 79
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        MaxLength = 13
        TabOrder = 8
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit1KeyPress
      end
    end
    object GroupBox6: TGroupBox
      Left = 9
      Top = 311
      Width = 761
      Height = 186
      Caption = ' Dados do Produto: '
      TabOrder = 11
      object Label30: TLabel
        Left = 552
        Top = 160
        Width = 61
        Height = 16
        Caption = 'Desconto:'
      end
      object Label68: TLabel
        Left = 48
        Top = 136
        Width = 459
        Height = 41
        AutoSize = False
        Caption = 'Nota Fiscal Cancelada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label69: TLabel
        Left = 47
        Top = 135
        Width = 459
        Height = 42
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nota Fiscal Cancelada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -37
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object CurrencyEdit12: TCurrencyEdit
        Left = 624
        Top = 152
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '( - ) ,###,##0.00'
        TabOrder = 0
        OnKeyPress = CurrencyEdit12KeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 0
      Width = 649
      Height = 112
      TabOrder = 0
      object Label27: TLabel
        Left = 16
        Top = 56
        Width = 140
        Height = 16
        Caption = 'Natureza da Opera'#231#227'o:'
      end
      object Label28: TLabel
        Left = 408
        Top = 56
        Width = 39
        Height = 16
        Caption = 'CFOP:'
      end
      object Label29: TLabel
        Left = 504
        Top = 56
        Width = 125
        Height = 16
        Caption = 'Insc. Est. Subst. Trib.:'
      end
      object Edit3: TEdit
        Left = 504
        Top = 72
        Width = 129
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 28
        ParentFont = False
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit1: TEdit
        Left = 16
        Top = 72
        Width = 377
        Height = 24
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 28
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        OnChange = Edit1Change
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
      end
      object RadioGroup1: TRadioGroup
        Left = 408
        Top = 8
        Width = 225
        Height = 41
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Sa'#237'da'
          'Entrada')
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 408
        Top = 72
        Width = 81
        Height = 24
        KeyField = 'COD_CFOP_CODIGO'
        ListField = 'COD_CFOP_CODIGO'
        ListSource = DstQryCFOP
        TabOrder = 3
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyDown = DBLookupComboBox1KeyDown
      end
    end
    object DateEdit4: TDateEdit
      Left = 664
      Top = 168
      Width = 97
      Height = 24
      CheckOnExit = True
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyDown = Edit15KeyDown
    end
    object DateEdit5: TDateEdit
      Left = 664
      Top = 232
      Width = 97
      Height = 24
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 3
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyDown = Edit15KeyDown
    end
    object DateTimePicker1: TDateTimePicker
      Left = 664
      Top = 280
      Width = 97
      Height = 24
      CalAlignment = dtaLeft
      Date = 37188
      Time = 37188
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkTime
      ParseInput = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit15KeyDown
    end
    object Edit13: TEdit
      Left = 664
      Top = 24
      Width = 97
      Height = 24
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 742
      Width = 762
      Height = 180
      Caption = 'Transportador / Volumes Transportados: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object Label32: TLabel
        Left = 16
        Top = 24
        Width = 131
        Height = 16
        Caption = 'Nome / Raz'#227'o Social:'
      end
      object Label33: TLabel
        Left = 616
        Top = 72
        Width = 113
        Height = 16
        Caption = 'Inscri'#231#227'o Estadual:'
      end
      object Label34: TLabel
        Left = 352
        Top = 72
        Width = 60
        Height = 16
        Caption = 'Munic'#237'pio:'
      end
      object Label35: TLabel
        Left = 16
        Top = 72
        Width = 62
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object Label36: TLabel
        Left = 560
        Top = 72
        Width = 27
        Height = 16
        Caption = 'U.F.:'
      end
      object Label37: TLabel
        Left = 560
        Top = 24
        Width = 27
        Height = 16
        Caption = 'U.F.:'
      end
      object Label38: TLabel
        Left = 352
        Top = 120
        Width = 51
        Height = 16
        Caption = 'N'#250'mero:'
      end
      object Label39: TLabel
        Left = 616
        Top = 24
        Width = 92
        Height = 16
        Caption = 'C.N.P.J / C.P.F.:'
      end
      object Label40: TLabel
        Left = 456
        Top = 24
        Width = 86
        Height = 16
        Caption = 'Placa Veiculo:'
      end
      object Label41: TLabel
        Left = 352
        Top = 24
        Width = 96
        Height = 16
        Caption = 'Frete Por Conta:'
      end
      object Label42: TLabel
        Left = 16
        Top = 120
        Width = 73
        Height = 16
        Caption = 'Quantidade:'
      end
      object Label43: TLabel
        Left = 120
        Top = 120
        Width = 53
        Height = 16
        Caption = 'Esp'#233'cie:'
      end
      object Label44: TLabel
        Left = 248
        Top = 120
        Width = 41
        Height = 16
        Caption = 'Marca:'
      end
      object Label45: TLabel
        Left = 472
        Top = 120
        Width = 69
        Height = 16
        Caption = 'Peso Bruto:'
      end
      object Label46: TLabel
        Left = 616
        Top = 120
        Width = 82
        Height = 16
        Caption = 'Peso L'#237'quido:'
      end
      object Edit35: TEdit
        Left = 16
        Top = 40
        Width = 265
        Height = 24
        MaxLength = 28
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit35KeyPress
      end
      object Edit37: TEdit
        Left = 456
        Top = 40
        Width = 89
        Height = 24
        MaxLength = 28
        TabOrder = 2
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit38: TEdit
        Left = 616
        Top = 40
        Width = 129
        Height = 24
        MaxLength = 28
        TabOrder = 4
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit39: TEdit
        Left = 16
        Top = 88
        Width = 321
        Height = 24
        MaxLength = 253
        TabOrder = 5
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit40: TEdit
        Left = 352
        Top = 88
        Width = 193
        Height = 24
        MaxLength = 28
        TabOrder = 6
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit41: TEdit
        Left = 616
        Top = 88
        Width = 129
        Height = 24
        MaxLength = 28
        TabOrder = 8
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit43: TEdit
        Left = 120
        Top = 136
        Width = 113
        Height = 24
        MaxLength = 28
        TabOrder = 10
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit44: TEdit
        Left = 248
        Top = 136
        Width = 89
        Height = 24
        MaxLength = 28
        TabOrder = 11
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object ComboBox3: TComboBox
        Left = 352
        Top = 40
        Width = 89
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 28
        TabOrder = 1
        OnEnter = ComboBox4Enter
        OnExit = ComboBox4Exit
        OnKeyDown = Edit15KeyDown
        Items.Strings = (
          ''
          '[1] - Emitente'
          '[2] - Destinat'#225'rio')
      end
      object BitBtn5: TBitBtn
        Left = 296
        Top = 40
        Width = 45
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        TabStop = False
        OnClick = BitBtn5Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777770000070000000777777777770BFB0700000007777
          77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
          0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
          B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
          FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
          0000770000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
      object ComboBox1: TComboBox
        Left = 560
        Top = 40
        Width = 41
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 3
        OnEnter = ComboBox4Enter
        OnExit = ComboBox4Exit
        OnKeyDown = Edit15KeyDown
        Items.Strings = (
          ''
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object CurrencyEdit15: TCurrencyEdit
        Left = 16
        Top = 136
        Width = 89
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00;'
        MaxLength = 16
        TabOrder = 9
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit11KeyPress
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 352
        Top = 136
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        MaxLength = 16
        TabOrder = 12
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit11KeyPress
      end
      object CurrencyEdit17: TCurrencyEdit
        Left = 472
        Top = 136
        Width = 129
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00, Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 13
        ZeroEmpty = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object CurrencyEdit18: TCurrencyEdit
        Left = 616
        Top = 136
        Width = 129
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00, Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        TabOrder = 14
        ZeroEmpty = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit15KeyDown
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object ComboBox2: TComboBox
        Left = 560
        Top = 88
        Width = 41
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 7
        OnEnter = ComboBox4Enter
        OnExit = ComboBox4Exit
        OnKeyDown = Edit15KeyDown
        Items.Strings = (
          ''
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 930
      Width = 353
      Height = 170
      Caption = ' Dados Adicionais: '
      TabOrder = 10
      object Memo1: TMemo
        Left = 16
        Top = 24
        Width = 321
        Height = 130
        MaxLength = 254
        TabOrder = 0
      end
    end
    object GroupBox8: TGroupBox
      Left = 392
      Top = 930
      Width = 377
      Height = 81
      Caption = ' Formul'#225'rio: '
      TabOrder = 9
      object Label52: TLabel
        Left = 16
        Top = 24
        Width = 126
        Height = 16
        Caption = 'N'#250'mero de Controle: '
      end
      object Edit4: TEdit
        Left = 16
        Top = 40
        Width = 129
        Height = 24
        MaxLength = 28
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit4KeyDown
      end
    end
    object Button2: TButton
      Left = 288
      Top = 20
      Width = 105
      Height = 33
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BitBtn3Click
      OnKeyDown = BitBtn3KeyDown
    end
    object Button1: TButton
      Left = 24
      Top = 20
      Width = 257
      Height = 33
      Caption = 'Imprimir Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object Button3: TButton
      Left = 392
      Top = 1060
      Width = 105
      Height = 33
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn3Click
      OnKeyDown = BitBtn3KeyDown
    end
    object Button4: TButton
      Left = 512
      Top = 1060
      Width = 257
      Height = 33
      Caption = 'Imprimir Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn1Click
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 506
      Width = 761
      Height = 228
      Caption = ' C'#225'lculo do Imposto: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object Label19: TLabel
        Left = 168
        Top = 168
        Width = 88
        Height = 16
        Caption = 'Valor do Frete:'
      end
      object Label20: TLabel
        Left = 320
        Top = 168
        Width = 82
        Height = 16
        Caption = 'Valor Seguro:'
      end
      object Label22: TLabel
        Left = 472
        Top = 168
        Width = 106
        Height = 16
        Caption = 'Outras despesas:'
      end
      object Label21: TLabel
        Left = 472
        Top = 72
        Width = 112
        Height = 16
        Caption = 'Valor Outros ICMS:'
      end
      object Label54: TLabel
        Left = 320
        Top = 72
        Width = 107
        Height = 16
        Caption = 'ICMS Antecipado:'
      end
      object Label55: TLabel
        Left = 472
        Top = 24
        Width = 109
        Height = 16
        Caption = 'Valor Isento ICMS:'
      end
      object Label56: TLabel
        Left = 168
        Top = 24
        Width = 87
        Height = 16
        Caption = 'Aliquota ICMS:'
      end
      object Label57: TLabel
        Left = 16
        Top = 168
        Width = 95
        Height = 16
        Caption = 'Valor Outros IPI:'
      end
      object Label58: TLabel
        Left = 472
        Top = 120
        Width = 92
        Height = 16
        Caption = 'Valor Isento IPI:'
      end
      object Label59: TLabel
        Left = 168
        Top = 120
        Width = 70
        Height = 16
        Caption = 'Aliquota IPI:'
      end
      object Label60: TLabel
        Left = 16
        Top = 120
        Width = 83
        Height = 16
        Caption = 'Base C'#225'lc IPI:'
      end
      object Label61: TLabel
        Left = 624
        Top = 72
        Width = 121
        Height = 16
        Caption = 'C'#243'digo Fiscal ICMS:'
      end
      object Label62: TLabel
        Left = 624
        Top = 120
        Width = 104
        Height = 16
        Caption = 'C'#243'digo Fiscal IPI:'
      end
      object Label26: TLabel
        Left = 616
        Top = 24
        Width = 126
        Height = 16
        Caption = 'Valor Total Produtos:'
      end
      object Label25: TLabel
        Left = 168
        Top = 72
        Width = 110
        Height = 16
        Caption = 'Valor ICMS Subst.:'
      end
      object Label23: TLabel
        Left = 16
        Top = 72
        Width = 110
        Height = 16
        Caption = 'Base ICMS Subst.:'
      end
      object Label47: TLabel
        Left = 320
        Top = 24
        Width = 104
        Height = 16
        Caption = 'Valor Total ICMS:'
      end
      object Label31: TLabel
        Left = 16
        Top = 24
        Width = 103
        Height = 16
        Caption = 'Base C'#225'lc. ICMS:'
      end
      object Label24: TLabel
        Left = 624
        Top = 168
        Width = 101
        Height = 16
        Caption = 'Valor Total Nota:'
      end
      object Label63: TLabel
        Left = 320
        Top = 120
        Width = 106
        Height = 16
        Caption = 'Valor Total do IPI:'
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 472
        Top = 184
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 18
        OnChange = CurrencyEdit11Change
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 320
        Top = 184
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 17
        OnChange = CurrencyEdit11Change
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit11: TCurrencyEdit
        Left = 168
        Top = 184
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 16
        OnChange = CurrencyEdit11Change
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit19: TCurrencyEdit
        Left = 472
        Top = 88
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 8
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit20: TCurrencyEdit
        Left = 320
        Top = 88
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 7
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit21: TCurrencyEdit
        Left = 472
        Top = 40
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 3
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit22: TCurrencyEdit
        Left = 168
        Top = 40
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        MaxValue = 99.99
        TabOrder = 1
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit23: TCurrencyEdit
        Left = 16
        Top = 184
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 15
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit24: TCurrencyEdit
        Left = 472
        Top = 136
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 13
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit25: TCurrencyEdit
        Left = 168
        Top = 136
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        MaxValue = 99.99
        TabOrder = 11
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit26: TCurrencyEdit
        Left = 16
        Top = 136
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 10
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 624
        Top = 40
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        Enabled = False
        MaxLength = 13
        TabOrder = 4
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 168
        Top = 88
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 6
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit8: TCurrencyEdit
        Left = 16
        Top = 88
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 5
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit13: TCurrencyEdit
        Left = 320
        Top = 40
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 2
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit14: TCurrencyEdit
        Left = 16
        Top = 40
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 0
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 320
        Top = 136
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 12
        OnChange = CurrencyEdit11Change
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit9: TCurrencyEdit
        Left = 624
        Top = 184
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '0.00'
        MaxLength = 13
        TabOrder = 19
        OnChange = CurrencyEdit11Change
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object ComboBox5: TComboBox
        Left = 624
        Top = 88
        Width = 121
        Height = 24
        Hint = 
          '1 - Opera'#231#245'es com Cr'#233'dito de Imposto'#13#10'2 - Opera'#231#245'es sem Cr'#233'dito ' +
          'de Imposto - Isentas ou N'#227'o Tributadas'#13#10'3 - Opera'#231#245'es sem Cr'#233'dit' +
          'o de Imposto - Outras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
        Items.Strings = (
          ''
          '1 - Op. c/ Cr'#233'd. Imposto'
          '2 - Op. s/ Cr'#233'd. Imposto - Isentas ou N'#227'o Tributadas'
          '3 - Op. s/ Cr'#233'd. Imposto - Outras')
      end
      object ComboBox6: TComboBox
        Left = 624
        Top = 136
        Width = 121
        Height = 24
        Hint = 
          '1 - Opera'#231#245'es com Cr'#233'dito de Imposto'#13#10'2 - Opera'#231#245'es sem Cr'#233'dito ' +
          'de Imposto - Isentas ou N'#227'o Tributadas'#13#10'3 - Opera'#231#245'es sem Cr'#233'dit' +
          'o de Imposto - Outras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Items.Strings = (
          ''
          '1 - Op. c/ Cr'#233'd. Imposto'
          '2 - Op. s/ Cr'#233'd. Imposto - Isentas ou N'#227'o Tributadas'
          '3 - Op. s/ Cr'#233'd. Imposto - Outras')
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 120
      Width = 649
      Height = 185
      Caption = ' Destinat'#225'rio / Remetente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label10: TLabel
        Left = 16
        Top = 120
        Width = 60
        Height = 16
        Caption = 'Munic'#237'pio:'
      end
      object Label11: TLabel
        Left = 176
        Top = 120
        Width = 66
        Height = 16
        Caption = 'Fone / Fax:'
      end
      object Label12: TLabel
        Left = 416
        Top = 120
        Width = 27
        Height = 16
        Caption = 'U.F.:'
      end
      object Label13: TLabel
        Left = 480
        Top = 120
        Width = 113
        Height = 16
        Caption = 'Inscri'#231#227'o Estadual:'
      end
      object Label14: TLabel
        Left = 16
        Top = 72
        Width = 62
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object Label15: TLabel
        Left = 352
        Top = 72
        Width = 90
        Height = 16
        Caption = 'Bairro / Distrito:'
      end
      object Label16: TLabel
        Left = 520
        Top = 72
        Width = 30
        Height = 16
        Caption = 'CEP:'
      end
      object Label17: TLabel
        Left = 16
        Top = 24
        Width = 131
        Height = 16
        Caption = 'Nome / Raz'#227'o Social:'
      end
      object Label18: TLabel
        Left = 408
        Top = 24
        Width = 74
        Height = 16
        Caption = 'CNPJ / CPF:'
      end
      object Label64: TLabel
        Left = 304
        Top = 120
        Width = 74
        Height = 16
        Caption = 'Vencimento:'
      end
      object Edit6: TEdit
        Left = 16
        Top = 40
        Width = 321
        Height = 24
        MaxLength = 74
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit35KeyPress
      end
      object Edit7: TEdit
        Left = 408
        Top = 40
        Width = 225
        Height = 24
        MaxLength = 30
        TabOrder = 1
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit8: TEdit
        Left = 16
        Top = 88
        Width = 321
        Height = 24
        MaxLength = 60
        TabOrder = 2
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit9: TEdit
        Left = 352
        Top = 88
        Width = 153
        Height = 24
        MaxLength = 34
        TabOrder = 3
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit10: TEdit
        Left = 520
        Top = 88
        Width = 113
        Height = 24
        MaxLength = 16
        TabOrder = 4
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit11: TEdit
        Left = 16
        Top = 136
        Width = 145
        Height = 24
        MaxLength = 30
        TabOrder = 5
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit12: TEdit
        Left = 176
        Top = 136
        Width = 113
        Height = 24
        MaxLength = 30
        TabOrder = 6
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object Edit14: TEdit
        Left = 480
        Top = 136
        Width = 153
        Height = 24
        MaxLength = 30
        TabOrder = 9
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
      object ComboBox4: TComboBox
        Left = 416
        Top = 136
        Width = 49
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 8
        OnEnter = ComboBox4Enter
        OnExit = ComboBox4Exit
        OnKeyDown = Edit15KeyDown
        Items.Strings = (
          ''
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object BitBtn6: TBitBtn
        Left = 352
        Top = 40
        Width = 45
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TabStop = False
        OnClick = BitBtn5Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777770000070000000777777777770BFB0700000007777
          77700000FBF07000000077777770BFB0BFB07000000077000000FBF000007000
          0000770FBFB0BFBFB07770000000770BFBF0FBFBF07770000000770FBFB0BFBF
          B07770000000770BFBF00000007770000000770FBFBFBFB0777770000000770B
          FBFBFBF0777770000000770FBFBFBFB0777770000000770BFBFBFBF077777000
          0000770000000000777770000000777777777777777770000000777777777777
          777770000000}
      end
      object DateTimePicker2: TDateTimePicker
        Left = 304
        Top = 137
        Width = 97
        Height = 24
        CalAlignment = dtaLeft
        Date = 37188
        Time = 37188
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit15KeyDown
      end
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 336
      Width = 729
      Height = 113
      DataSource = DtsQryItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'REF_PRODUTOS'
          Title.Caption = 'C'#243'digo do Produto'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRC_VENDA'
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Caption = 'Valor Total'
          Width = 68
          Visible = True
        end>
    end
  end
  object Panel9: TPanel
    Left = 112
    Top = 208
    Width = 577
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 1
    Visible = False
    object Label65: TLabel
      Left = 72
      Top = 48
      Width = 441
      Height = 52
      Caption = 'Finalizando Opera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 71
      Top = 47
      Width = 441
      Height = 52
      Alignment = taCenter
      Caption = 'Finalizando Opera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label67: TLabel
      Left = 32
      Top = 16
      Width = 109
      Height = 29
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
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
    Autor = Deltress
    About = 'RDprint 3.0f - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Nota Fiscal  - Prisma Pack'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 106
    TamanhoQteColunas = 145
    TamanhoQteLPP = Oito
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 688
    Top = 56
  end
  object DtsQryItens: TDataSource
    DataSet = QryItens
    Left = 720
    Top = 88
  end
  object QryItens: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryPedidos
    SQL.Strings = (
      'select * from PEDIDOS_ITENS')
    Left = 720
    Top = 120
    object QryItensCOD_PEDIDOS_ITENS: TIntegerField
      FieldName = 'COD_PEDIDOS_ITENS'
      Origin = 'PEDIDOS_ITENS.COD_PEDIDOS_ITENS'
      Required = True
    end
    object QryItensCOD_PEDIDOS: TIntegerField
      FieldName = 'COD_PEDIDOS'
      Origin = 'PEDIDOS_ITENS.COD_PEDIDOS'
      Required = True
    end
    object QryItensCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PEDIDOS_ITENS.COD_PRODUTOS'
    end
    object QryItensREF_PRODUTOS: TIBStringField
      FieldName = 'REF_PRODUTOS'
      Origin = 'PEDIDOS_ITENS.REF_PRODUTOS'
      Size = 30
    end
    object QryItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = 'PEDIDOS_ITENS.NUM_ITEM'
    end
    object QryItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'PEDIDOS_ITENS.PRODUTO'
      Size = 50
    end
    object QryItensCOD_GRUPOP: TIntegerField
      FieldName = 'COD_GRUPOP'
      Origin = 'PEDIDOS_ITENS.COD_GRUPOP'
    end
    object QryItensCOD_SUBGRUPOP: TIntegerField
      FieldName = 'COD_SUBGRUPOP'
      Origin = 'PEDIDOS_ITENS.COD_SUBGRUPOP'
    end
    object QryItensCOD_ECF: TIntegerField
      FieldName = 'COD_ECF'
      Origin = 'PEDIDOS_ITENS.COD_ECF'
    end
    object QryItensOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'PEDIDOS_ITENS.OBS'
      Size = 255
    end
    object QryItensPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PEDIDOS_ITENS.PRC_VENDA'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryItensSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'PEDIDOS_ITENS.SUBTOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryItensVALOR_DESCONTO: TIBBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'PEDIDOS_ITENS.VALOR_DESCONTO'
      Precision = 18
      Size = 3
    end
    object QryItensPRM_ENABLED: TIntegerField
      FieldName = 'PRM_ENABLED'
      Origin = 'PEDIDOS_ITENS.PRM_ENABLED'
      Required = True
    end
    object QryItensPRM_QUANT: TIBBCDField
      FieldName = 'PRM_QUANT'
      Origin = 'PEDIDOS_ITENS.PRM_QUANT'
      Precision = 18
      Size = 3
    end
    object QryItensPRM_PRC: TIBBCDField
      FieldName = 'PRM_PRC'
      Origin = 'PEDIDOS_ITENS.PRM_PRC'
      Precision = 18
      Size = 3
    end
    object QryItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryItensNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Origin = 'PEDIDOS_ITENS.NUM_SERIE'
      Size = 30
    end
    object QryItensDATA_COMPRA_NSERIE: TDateTimeField
      FieldName = 'DATA_COMPRA_NSERIE'
      Origin = 'PEDIDOS_ITENS.DATA_COMPRA_NSERIE'
    end
    object QryItensPRC_CUSTO_NSERIE: TIBBCDField
      FieldName = 'PRC_CUSTO_NSERIE'
      Origin = 'PEDIDOS_ITENS.PRC_CUSTO_NSERIE'
      Precision = 18
      Size = 4
    end
    object QryItensFIM_GARANTIA_FABRICANTE: TDateTimeField
      FieldName = 'FIM_GARANTIA_FABRICANTE'
      Origin = 'PEDIDOS_ITENS.FIM_GARANTIA_FABRICANTE'
    end
    object QryItensFIM_GARANTIA_APOS_VENDA: TDateTimeField
      FieldName = 'FIM_GARANTIA_APOS_VENDA'
      Origin = 'PEDIDOS_ITENS.FIM_GARANTIA_APOS_VENDA'
    end
    object QryItensCOD_NF_ENTRADA: TIntegerField
      FieldName = 'COD_NF_ENTRADA'
      Origin = 'PEDIDOS_ITENS.COD_NF_ENTRADA'
    end
    object QryItensBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS'
      Precision = 18
      Size = 3
    end
    object QryItensBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS_SUBST'
      Precision = 18
      Size = 3
    end
    object QryItensVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'PEDIDOS_ITENS.VALOR_ICMS'
      Precision = 18
      Size = 3
    end
    object QryItensVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'PEDIDOS_ITENS.VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object QryItensCL_FIS: TIBStringField
      FieldName = 'CL_FIS'
      Origin = 'PEDIDOS_ITENS.CL_FIS'
      Size = 15
    end
    object QryItensS_TRIB: TIBStringField
      FieldName = 'S_TRIB'
      Origin = 'PEDIDOS_ITENS.S_TRIB'
      Size = 15
    end
    object QryItensENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'PEDIDOS_ITENS.ENABLED'
    end
    object QryItensDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'PEDIDOS_ITENS.DATAHORA'
    end
    object QryItensULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'PEDIDOS_ITENS.ULTATUALCODSETOR'
    end
    object QryItensULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'PEDIDOS_ITENS.ULTATUALCODSETORUSER'
    end
    object QryItensULTATUAL: TDateTimeField
      FieldName = 'ULTATUAL'
      Origin = 'PEDIDOS_ITENS.ULTATUAL'
    end
    object QryItensAPR_UND: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PEDIDOS_ITENS.APR_UND'
      Required = True
      Size = 6
    end
    object QryItensPERC_DESCONTO: TIBBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PEDIDOS_ITENS.PERC_DESCONTO'
      Precision = 18
      Size = 3
    end
    object QryItensALIQUOTA_ICMS: TIBBCDField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = 'PEDIDOS_ITENS.ALIQUOTA_ICMS'
      Precision = 18
      Size = 3
    end
    object QryItensALIQUOTA_IPI: TIBBCDField
      FieldName = 'ALIQUOTA_IPI'
      Origin = 'PEDIDOS_ITENS.ALIQUOTA_IPI'
      Precision = 18
      Size = 3
    end
    object QryItensREDUCAO_BASE_ICMS: TIBBCDField
      FieldName = 'REDUCAO_BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.REDUCAO_BASE_ICMS'
      Precision = 18
      Size = 3
    end
    object QryItensCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = 'PEDIDOS_ITENS.CODIGO_NCM'
      Size = 15
    end
  end
  object QryPedidos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PEDIDOS')
    Left = 688
    Top = 120
  end
  object IBSQL1: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 752
    Top = 88
  end
  object QryCadastro: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 720
    Top = 56
  end
  object DtsQryPedidos: TDataSource
    DataSet = QryPedidos
    Left = 688
    Top = 88
  end
  object DstQryCFOP: TDataSource
    DataSet = QryCFOP
    Left = 656
    Top = 88
  end
  object QryCFOP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CFOP_CODIGO'
      'Order By COD_CFOP_CODIGO')
    Left = 656
    Top = 120
  end
  object QrySintegra: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_INFO')
    Left = 656
    Top = 56
  end
  object SQLImpressao: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 752
    Top = 120
  end
end
