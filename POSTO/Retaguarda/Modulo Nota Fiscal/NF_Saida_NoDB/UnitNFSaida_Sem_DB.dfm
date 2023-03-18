object SaidaNFAvulsoFrm: TSaidaNFAvulsoFrm
  Left = -3
  Top = 115
  Width = 808
  Height = 608
  Caption = 'Cadastro :: Sa'#237'da de Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 800
    Height = 579
    Align = alClient
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label48: TLabel
      Left = 664
      Top = 160
      Width = 107
      Height = 16
      Caption = 'Data da Emiss'#227'o:'
    end
    object Label49: TLabel
      Left = 664
      Top = 208
      Width = 87
      Height = 16
      Caption = 'Data de Sa'#237'da'
    end
    object Label50: TLabel
      Left = 664
      Top = 272
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 664
      Top = 224
      Width = 68
      Height = 16
      Caption = 'ou Entrada:'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 128
      Width = 649
      Height = 185
      Caption = ' Destinat'#225'rio / Remetente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        649
        185)
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
        Left = 424
        Top = 24
        Width = 74
        Height = 16
        Caption = 'CNPJ / CPF:'
      end
      object Label56: TLabel
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
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit7: TEdit
        Left = 424
        Top = 40
        Width = 209
        Height = 24
        MaxLength = 30
        TabOrder = 1
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit8: TEdit
        Left = 16
        Top = 88
        Width = 321
        Height = 24
        MaxLength = 60
        TabOrder = 2
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit9: TEdit
        Left = 352
        Top = 88
        Width = 153
        Height = 24
        MaxLength = 34
        TabOrder = 3
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit10: TEdit
        Left = 520
        Top = 88
        Width = 113
        Height = 24
        MaxLength = 16
        TabOrder = 4
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit11: TEdit
        Left = 16
        Top = 136
        Width = 145
        Height = 24
        MaxLength = 30
        TabOrder = 5
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit14: TEdit
        Left = 480
        Top = 136
        Width = 153
        Height = 24
        MaxLength = 30
        TabOrder = 8
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object ComboBox4: TComboBox
        Left = 416
        Top = 136
        Width = 49
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 7
        OnEnter = ComboBox3Enter
        OnExit = ComboBox3Exit
        OnKeyDown = Edit6KeyDown
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
      object DateEdit1: TDateEdit
        Left = 304
        Top = 137
        Width = 97
        Height = 24
        CheckOnExit = True
        NumGlyphs = 2
        TabOrder = 6
        OnEnter = DateEdit4Enter
        OnExit = DateEdit4Exit
        OnKeyDown = Edit6KeyDown
      end
      object BitBtn1: TBitBtn
        Left = 352
        Top = 40
        Width = 57
        Height = 25
        Hint = 'DETALHES DOS CONTATOS'
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        TabStop = False
        OnClick = BitBtn1Click
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
      object ComboBox5: TComboBox
        Left = 176
        Top = 136
        Width = 113
        Height = 24
        ItemHeight = 16
        TabOrder = 10
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 0
      Width = 649
      Height = 121
      TabOrder = 2
      object Label27: TLabel
        Left = 16
        Top = 64
        Width = 140
        Height = 16
        Caption = 'Natureza da Opera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 408
        Top = 64
        Width = 39
        Height = 16
        Caption = 'CFOP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 504
        Top = 64
        Width = 125
        Height = 16
        Caption = 'Insc. Est. Subst. Trib.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 504
        Top = 80
        Width = 129
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 28
        ParentFont = False
        TabOrder = 2
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 408
        Top = 80
        Width = 81
        Height = 24
        KeyField = 'COD_CFOP_CODIGO'
        ListField = 'COD_CFOP_CODIGO'
        ListSource = DstQryCFOP
        TabOrder = 1
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit1: TEdit
        Left = 16
        Top = 80
        Width = 377
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 28
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit1KeyDown
      end
    end
    object DateEdit4: TDateEdit
      Left = 664
      Top = 176
      Width = 97
      Height = 24
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 4
      OnEnter = DateEdit4Enter
      OnExit = DateEdit4Exit
      OnKeyDown = Edit6KeyDown
    end
    object DateEdit5: TDateEdit
      Left = 664
      Top = 240
      Width = 97
      Height = 24
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 5
      OnEnter = DateEdit4Enter
      OnExit = DateEdit4Exit
      OnKeyDown = Edit6KeyDown
    end
    object DateTimePicker1: TDateTimePicker
      Left = 664
      Top = 288
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
      TabOrder = 6
      OnKeyDown = Edit6KeyDown
    end
    object GroupBox6: TGroupBox
      Left = 9
      Top = 316
      Width = 752
      Height = 349
      Caption = ' Dados do Produto: '
      TabOrder = 7
      DesignSize = (
        752
        349)
      object Label30: TLabel
        Left = 544
        Top = 320
        Width = 61
        Height = 16
        Caption = 'Desconto:'
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 69
        Height = 16
        Caption = 'Refer'#234'ncia:'
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 50
        Height = 16
        Caption = 'Produto:'
      end
      object Label3: TLabel
        Left = 208
        Top = 16
        Width = 27
        Height = 16
        Caption = 'C.T.:'
      end
      object Label4: TLabel
        Left = 208
        Top = 64
        Width = 51
        Height = 16
        Caption = 'Sit. Trib.:'
      end
      object Label5: TLabel
        Left = 288
        Top = 16
        Width = 117
        Height = 16
        Caption = 'Unidade de Venda:'
      end
      object Label6: TLabel
        Left = 288
        Top = 64
        Width = 73
        Height = 16
        Caption = 'Quantidade:'
      end
      object Label7: TLabel
        Left = 424
        Top = 16
        Width = 84
        Height = 16
        Caption = 'Valor Unit'#225'rio:'
      end
      object Label8: TLabel
        Left = 424
        Top = 64
        Width = 69
        Height = 16
        Caption = 'Valor Total:'
      end
      object Label9: TLabel
        Left = 560
        Top = 16
        Width = 35
        Height = 16
        Caption = 'ICMS:'
      end
      object Label54: TLabel
        Left = 560
        Top = 64
        Width = 18
        Height = 16
        Caption = 'IPI:'
      end
      object Label55: TLabel
        Left = 616
        Top = 16
        Width = 87
        Height = 16
        Caption = 'Valor Total IPI:'
      end
      object CurrencyEdit12: TCurrencyEdit
        Left = 616
        Top = 312
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '( - ) ,###,##0.00'
        TabOrder = 12
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object ListView1: TListView
        Left = 16
        Top = 112
        Width = 735
        Height = 193
        Columns = <
          item
            Caption = 'Refer'#234'ncia'
            Width = 80
          end
          item
            Caption = 'Produto'
            Width = 200
          end
          item
            Caption = 'C.T.'
            Width = 55
          end
          item
            Caption = 'Sit. Trib.'
            Width = 55
          end
          item
            Caption = 'Unid.'
            Width = 55
          end
          item
            Caption = 'Quant.'
          end
          item
            Caption = 'Valor Unit'#225'rio'
            Width = 80
          end
          item
            Caption = 'Valor Total'
            Width = 80
          end
          item
            Caption = 'ICMS'
            Width = 55
          end
          item
            Caption = 'IPI'
            Width = 55
          end
          item
            Caption = 'Valor IPI'
            Width = 80
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 11
        ViewStyle = vsReport
        OnClick = ListView1Click
        OnKeyDown = ListView1KeyDown
      end
      object Edit200: TEdit
        Left = 16
        Top = 32
        Width = 105
        Height = 24
        TabOrder = 0
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = Edit200KeyPress
      end
      object Edit500: TEdit
        Left = 16
        Top = 80
        Width = 177
        Height = 24
        TabOrder = 1
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit500KeyDown
      end
      object Edit1500: TEdit
        Left = 208
        Top = 32
        Width = 65
        Height = 24
        TabOrder = 2
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit1600: TEdit
        Left = 208
        Top = 80
        Width = 65
        Height = 24
        TabOrder = 3
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit1700: TEdit
        Left = 288
        Top = 32
        Width = 121
        Height = 24
        TabOrder = 4
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object CurrencyEdit100: TCurrencyEdit
        Left = 288
        Top = 80
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 5
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit200: TCurrencyEdit
        Left = 424
        Top = 32
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 6
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit300: TCurrencyEdit
        Left = 424
        Top = 80
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 7
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit1900: TCurrencyEdit
        Left = 560
        Top = 32
        Width = 41
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 8
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit2000: TCurrencyEdit
        Left = 560
        Top = 80
        Width = 41
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 9
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit2100: TCurrencyEdit
        Left = 616
        Top = 32
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 10
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = CurrencyEdit2100KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object BitBtn2: TBitBtn
        Left = 136
        Top = 32
        Width = 57
        Height = 25
        Hint = 'DETALHES DOS CONTATOS'
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        TabStop = False
        OnClick = BitBtn2Click
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
    end
    object Edit13: TEdit
      Left = 664
      Top = 24
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = Edit6Enter
      OnExit = Edit6Exit
      OnKeyDown = Edit13KeyDown
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 830
      Width = 753
      Height = 180
      Caption = 'Transportador / Volumes Transportados: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      DesignSize = (
        753
        180)
      object Label32: TLabel
        Left = 16
        Top = 24
        Width = 131
        Height = 16
        Caption = 'Nome / Raz'#227'o Social:'
      end
      object Label33: TLabel
        Left = 624
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
        Left = 624
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
        Left = 624
        Top = 120
        Width = 82
        Height = 16
        Caption = 'Peso L'#237'quido:'
      end
      object Edit35: TEdit
        Left = 16
        Top = 40
        Width = 249
        Height = 24
        MaxLength = 28
        TabOrder = 0
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit37: TEdit
        Left = 456
        Top = 40
        Width = 89
        Height = 24
        MaxLength = 28
        TabOrder = 2
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit38: TEdit
        Left = 624
        Top = 40
        Width = 121
        Height = 24
        MaxLength = 28
        TabOrder = 4
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit39: TEdit
        Left = 16
        Top = 88
        Width = 321
        Height = 24
        MaxLength = 253
        TabOrder = 5
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit40: TEdit
        Left = 352
        Top = 88
        Width = 193
        Height = 24
        MaxLength = 28
        TabOrder = 6
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit41: TEdit
        Left = 624
        Top = 88
        Width = 121
        Height = 24
        MaxLength = 28
        TabOrder = 8
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit43: TEdit
        Left = 120
        Top = 136
        Width = 113
        Height = 24
        MaxLength = 28
        TabOrder = 10
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
      end
      object Edit44: TEdit
        Left = 248
        Top = 136
        Width = 89
        Height = 24
        MaxLength = 28
        TabOrder = 11
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit6KeyDown
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
        OnEnter = ComboBox3Enter
        OnExit = ComboBox3Exit
        OnKeyDown = Edit6KeyDown
        Items.Strings = (
          ''
          '[1] - Emitente'
          '[2] - Destinat'#225'rio')
      end
      object ComboBox1: TComboBox
        Left = 560
        Top = 40
        Width = 49
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 3
        OnEnter = ComboBox3Enter
        OnExit = ComboBox3Exit
        OnKeyDown = Edit6KeyDown
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
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 9
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 352
        Top = 136
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 12
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit17: TCurrencyEdit
        Left = 472
        Top = 136
        Width = 137
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00, Kg;###,##0.00 -Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        MaxValue = 9999999.99
        ParentFont = False
        TabOrder = 13
        ZeroEmpty = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit18: TCurrencyEdit
        Left = 624
        Top = 136
        Width = 121
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00, Kg;###,##0.00 -Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        MaxValue = 9999999.99
        ParentFont = False
        TabOrder = 14
        ZeroEmpty = False
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object ComboBox2: TComboBox
        Left = 560
        Top = 88
        Width = 49
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        MaxLength = 2
        TabOrder = 7
        OnEnter = ComboBox3Enter
        OnExit = ComboBox3Exit
        OnKeyDown = Edit6KeyDown
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
      object BitBtn3: TBitBtn
        Left = 280
        Top = 40
        Width = 57
        Height = 25
        Hint = 'DETALHES DOS CONTATOS'
        Anchors = [akTop, akRight]
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
        OnClick = BitBtn3Click
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
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 1018
      Width = 353
      Height = 170
      Caption = ' Dados Adicionais: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
    object GroupBox3: TGroupBox
      Left = 8
      Top = 680
      Width = 753
      Height = 142
      Caption = ' C'#225'lculo do Imposto: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object Label19: TLabel
        Left = 16
        Top = 80
        Width = 88
        Height = 16
        Caption = 'Valor do Frete:'
      end
      object Label20: TLabel
        Left = 168
        Top = 80
        Width = 82
        Height = 16
        Caption = 'Valor Seguro:'
      end
      object Label22: TLabel
        Left = 320
        Top = 80
        Width = 106
        Height = 16
        Caption = 'Outras despesas:'
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 320
        Top = 96
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 3
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 168
        Top = 96
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 2
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object CurrencyEdit11: TCurrencyEdit
        Left = 16
        Top = 96
        Width = 133
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00;###,##0.00'
        TabOrder = 1
        OnEnter = CurrencyEdit1Enter
        OnExit = CurrencyEdit1Exit
        OnKeyDown = Edit6KeyDown
        OnKeyPress = CurrencyEdit200KeyPress
      end
      object Panel1: TPanel
        Left = 8
        Top = 24
        Width = 737
        Height = 49
        BevelOuter = bvNone
        TabOrder = 0
        object Label26: TLabel
          Left = 608
          Top = 0
          Width = 126
          Height = 16
          Caption = 'Valor Total Produtos:'
        end
        object Label25: TLabel
          Left = 464
          Top = 0
          Width = 110
          Height = 16
          Caption = 'Valor ICMS Subst.:'
        end
        object Label23: TLabel
          Left = 312
          Top = 0
          Width = 110
          Height = 16
          Caption = 'Base ICMS Subst.:'
        end
        object Label47: TLabel
          Left = 160
          Top = 0
          Width = 70
          Height = 16
          Caption = 'Valor ICMS:'
        end
        object Label31: TLabel
          Left = 8
          Top = 0
          Width = 103
          Height = 16
          Caption = 'Base C'#225'lc. ICMS:'
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 616
          Top = 16
          Width = 121
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          Enabled = False
          TabOrder = 4
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
        object CurrencyEdit6: TCurrencyEdit
          Left = 464
          Top = 16
          Width = 133
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 3
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
        object CurrencyEdit8: TCurrencyEdit
          Left = 312
          Top = 16
          Width = 133
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 2
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
        object CurrencyEdit13: TCurrencyEdit
          Left = 160
          Top = 16
          Width = 133
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 1
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
        object CurrencyEdit14: TCurrencyEdit
          Left = 8
          Top = 16
          Width = 133
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 0
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
      end
      object Panel100: TPanel
        Left = 464
        Top = 80
        Width = 281
        Height = 49
        BevelOuter = bvNone
        TabOrder = 4
        object Label21: TLabel
          Left = 160
          Top = 0
          Width = 101
          Height = 16
          Caption = 'Valor Total Nota:'
        end
        object Label24: TLabel
          Left = 8
          Top = 0
          Width = 106
          Height = 16
          Caption = 'Valor Total do IPI:'
        end
        object CurrencyEdit7: TCurrencyEdit
          Left = 8
          Top = 16
          Width = 133
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 0
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
        object CurrencyEdit9: TCurrencyEdit
          Left = 160
          Top = 16
          Width = 121
          Height = 24
          AutoSize = False
          DisplayFormat = '###,##0.00;###,##0.00'
          TabOrder = 1
          OnEnter = CurrencyEdit1Enter
          OnExit = CurrencyEdit1Exit
          OnKeyDown = Edit6KeyDown
          OnKeyPress = CurrencyEdit200KeyPress
        end
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
      TabOrder = 11
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 16
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
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 384
      Top = 1148
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
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 504
      Top = 1148
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
      OnClick = Button1Click
    end
    object GroupBox8: TGroupBox
      Left = 600
      Top = 1018
      Width = 161
      Height = 81
      Caption = ' Formul'#225'rio: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Visible = False
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
        OnEnter = Edit6Enter
        OnExit = Edit6Exit
        OnKeyDown = Edit4KeyDown
      end
    end
    object BitBtn4: TBitBtn
      Left = 624
      Top = 392
      Width = 121
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 12
      OnClick = Button5Click
    end
    object RadioGroup1: TRadioGroup
      Left = 408
      Top = 16
      Width = 217
      Height = 41
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Sa'#237'da'
        'Entrada')
      TabOrder = 0
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
    Left = 672
    Top = 88
  end
  object DstQryCFOP: TDataSource
    DataSet = QryCFOP
    OnDataChange = DstQryCFOPDataChange
    Left = 672
    Top = 120
  end
  object QryCFOP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CFOP_CODIGO'
      'Order By COD_CFOP_CODIGO')
    Left = 704
    Top = 120
  end
  object QrySintegra: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_INFO')
    Left = 704
    Top = 88
  end
  object QryContato: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTROFRM'
      'where CODCLI = :SELECT_COD_CLI')
    Left = 736
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SELECT_COD_CLI'
        ParamType = ptUnknown
      end>
  end
end
