object FormGefaNFe: TFormGefaNFe
  Left = 375
  Top = 62
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de NF-e'
  ClientHeight = 663
  ClientWidth = 769
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 769
    Height = 40
    Align = alTop
    TabOrder = 0
    object myLabel3d2: TmyLabel3d
      Left = 163
      Top = 3
      Width = 320
      Height = 33
      Caption = 'SIACE-Gera'#231#227'o de NF-e'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object Label3: TLabel
      Left = 566
      Top = 16
      Width = 72
      Height = 13
      Caption = 'N'#186' da Nota: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TRxCalcEdit
      Left = 640
      Top = 13
      Width = 106
      Height = 21
      AutoSize = False
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 40
    Width = 769
    Height = 568
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 227
      Top = 11
      Width = 41
      Height = 13
      Caption = 'CFOP: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 234
      Width = 71
      Height = 13
      Caption = 'Peso Bruto: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 243
      Top = 234
      Width = 105
      Height = 13
      Caption = 'Qtde de Volumes: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 466
      Top = 232
      Width = 116
      Height = 13
      Caption = 'Especie do volume: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 256
      Width = 85
      Height = 13
      Caption = 'Inf. FDicional: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 404
      Width = 740
      Height = 17
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'ITENS DA NOTA (Produtos)'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 7
      Top = 323
      Width = 738
      Height = 17
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'DADOS DA NOTA '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 10
      Width = 61
      Height = 13
      Caption = 'Tipo NFe: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 6
      Top = 35
      Width = 84
      Height = 13
      Caption = 'Tipo Emiss'#227'o: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 7
      Top = 60
      Width = 67
      Height = 13
      Caption = 'Finalidade: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 227
      Top = 84
      Width = 72
      Height = 13
      Caption = 'Ref. a NFE: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 411
      Top = 59
      Width = 107
      Height = 13
      Caption = 'Ref. ao Cupon n'#186': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 615
      Top = 59
      Width = 76
      Height = 13
      Caption = 'Ref. ECF n'#186': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 536
      Top = 543
      Width = 72
      Height = 13
      Caption = 'Total dos Itens'
    end
    object RxLabel2: TRxLabel
      Left = 248
      Top = 542
      Width = 75
      Height = 13
      Caption = 'Total Desconto'
    end
    object Label25: TLabel
      Left = 7
      Top = 277
      Width = 62
      Height = 13
      Caption = 'Inf. Fisco: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 8
      Top = 299
      Width = 96
      Height = 13
      Caption = 'Base ICMS-ST %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 240
      Top = 300
      Width = 129
      Height = 13
      Caption = 'Percentual ICMS-ST %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiEdit2: TsuiEdit
      Left = 440
      Top = 10
      Width = 303
      Height = 19
      TabStop = False
      UIStyle = FromThemeFile
      BorderColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 101
      Top = 229
      Width = 119
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 355
      Top = 230
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 587
      Top = 230
      Width = 158
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object GroupBox4: TGroupBox
      Left = 7
      Top = 99
      Width = 739
      Height = 125
      Caption = 'Transporte'
      TabOrder = 9
      object Label1: TLabel
        Left = 7
        Top = 20
        Width = 82
        Height = 13
        Caption = 'Tranportador: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 237
        Top = 42
        Width = 61
        Height = 13
        Caption = 'UF Placa :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 7
        Top = 43
        Width = 83
        Height = 13
        Caption = 'Placa Veiculo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 7
        Top = 70
        Width = 67
        Height = 13
        Caption = 'Valor Frete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 239
        Top = 71
        Width = 78
        Height = 13
        Caption = 'Valor Seguro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 464
        Top = 71
        Width = 134
        Height = 13
        Caption = 'Valor Outras Despesas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 373
        Top = 41
        Width = 39
        Height = 13
        Caption = 'RNTC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 7
        Top = 99
        Width = 92
        Height = 13
        Caption = 'Placa Reboque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 237
        Top = 98
        Width = 61
        Height = 13
        Caption = 'UF Placa :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 373
        Top = 97
        Width = 39
        Height = 13
        Caption = 'RNTC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object suiEdit1: TsuiEdit
        Left = 237
        Top = 14
        Width = 338
        Height = 19
        TabStop = False
        UIStyle = FromThemeFile
        BorderColor = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object suiRadioGroup1: TsuiRadioGroup
        Left = 584
        Top = 7
        Width = 145
        Height = 56
        UIStyle = FromThemeFile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        TabStop = True
        Items.Strings = (
          'Emitente'
          'Destinat'#225'rio')
        Columns = 1
        TopMargin = 8
        FontColor = clBlack
        BorderColor = clBlack
        ItemIndex = 1
      end
      object ComboBox1: TComboBox
        Left = 302
        Top = 38
        Width = 62
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 1
        ParentFont = False
        TabOrder = 2
        Text = 'AL'
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
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
      end
      object Edit5: TEdit
        Left = 95
        Top = 39
        Width = 122
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RxDBComboEdit1: TComboEdit
        Left = 96
        Top = 14
        Width = 121
        Height = 21
        Color = 12974332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 4
        Text = ''
        OnButtonClick = RxDBComboEdit1ButtonClick
        OnExit = RxDBComboEdit1Exit
        OnKeyPress = RxDBComboEdit1KeyPress
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 94
        Top = 67
        Width = 123
        Height = 21
        AutoSize = False
        TabOrder = 5
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 328
        Top = 67
        Width = 121
        Height = 21
        AutoSize = False
        TabOrder = 6
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 608
        Top = 67
        Width = 121
        Height = 21
        AutoSize = False
        TabOrder = 7
      end
      object Edit10: TEdit
        Left = 423
        Top = 39
        Width = 154
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object Edit11: TEdit
        Left = 95
        Top = 95
        Width = 122
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object ComboBox5: TComboBox
        Left = 302
        Top = 94
        Width = 62
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
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
      end
      object Edit12: TEdit
        Left = 423
        Top = 95
        Width = 154
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
    end
    object RxDBComboEdit2: TComboEdit
      Left = 328
      Top = 10
      Width = 101
      Height = 21
      Color = 12974332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnButtonClick = RxDBComboEdit2ButtonClick
      OnExit = RxDBComboEdit2Exit
      OnKeyPress = RxDBComboEdit2KeyPress
    end
    object Edit6: TEdit
      Left = 100
      Top = 252
      Width = 645
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object ComboBox2: TComboBox
      Left = 102
      Top = 8
      Width = 124
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Sa'#237'da'
      Items.Strings = (
        'Sa'#237'da'
        'Entrada'
        'Sa'#237'da')
    end
    object ComboBox3: TComboBox
      Left = 102
      Top = 32
      Width = 124
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Contingencia'
        'SVC-RS'
        'SVC-AN')
    end
    object ComboBox4: TComboBox
      Left = 102
      Top = 55
      Width = 124
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'Normal'
      OnChange = ComboBox4Change
      Items.Strings = (
        'Normal'
        'Complemtentar'
        'De ajuste'
        'Devolu'#231#227'o')
    end
    object Edit7: TEdit
      Left = 328
      Top = 82
      Width = 370
      Height = 21
      Hint = 'FAVOR DIGITAR A CHAVE DA NFE DE REFER'#202'NCIA COM 44 DIGITOS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnExit = Edit7Exit
    end
    object Edit8: TEdit
      Left = 520
      Top = 56
      Width = 90
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object Edit9: TEdit
      Left = 696
      Top = 56
      Width = 49
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentFont = False
      TabOrder = 13
      Text = '001'
      OnKeyPress = Edit9KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 227
      Top = 57
      Width = 149
      Height = 17
      Caption = 'Ref: a Cupom Fiscal?'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 103
      Top = 82
      Width = 98
      Height = 17
      Caption = 'Ref: a NFe?'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox2Click
    end
    object suiButton7: TsuiButton
      Left = 701
      Top = 83
      Width = 43
      Height = 19
      Hint = 'Cadastro de Grupo de Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = 'NFE'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      TabStop = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 16
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton7Click
      ResHandle = 0
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 421
      Width = 741
      Height = 113
      DataSource = DM.dts_nfe_itens
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnColExit = DBGrid1ColExit
      OnEnter = _NFEnter
      OnExit = DBGrid1Exit
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEN'
          Title.Caption = 'Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_SEQUENCIA'
          Title.Caption = 'Seq.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_NOTA'
          Title.Caption = 'Nr Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PRODUTO'
          Title.Caption = 'Cod. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEST'
          Title.Caption = 'C'#243'd. Cest'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_NCM'
          Title.Caption = 'Cod NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST'
          Title.Caption = 'Cst/Cson'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 276
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_UNIDADE'
          Title.Caption = 'Und.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QT_PRODUTO'
          Title.Caption = 'Quant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_UNITARIO'
          Title.Caption = 'Vlr Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_DESCONTO'
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL'
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_ICM'
          Title.Caption = 'Alic_Icms'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM'
          Title.Caption = 'Base ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM'
          Title.Caption = 'Valor ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_SERV'
          Title.Caption = 'Prod/Serv.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_ICM_SUBST'
          Title.Caption = 'Aliq. Icms Subst'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM_SUBST'
          Title.Caption = 'Base Icms SUBST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM_SUBST'
          Title.Caption = 'Valor Icms SUBST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_IPI'
          Title.Caption = 'Aliq. IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_IPI'
          Title.Caption = 'Base IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_IPI'
          Title.Caption = 'Valor IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_ISS'
          Title.Caption = 'Aliq. ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ISS'
          Title.Caption = 'Base ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ISS'
          Title.Caption = 'Valor ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERC_DESCONTO'
          Title.Caption = '% Desc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_CONTABIL'
          Title.Caption = 'Valor Contabil'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_OUTROS'
          Title.Caption = 'Outros Valores'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ISENTO'
          Title.Caption = 'Valor Isento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_PIS'
          Title.Caption = 'Aliq. PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_PIS'
          Title.Caption = 'Base PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_PIS'
          Title.Caption = 'Valor PIS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_COFINS'
          Title.Caption = 'Aliq. COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_COFINS'
          Title.Caption = 'Base COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_COFINS'
          Title.Caption = 'Valor COFINS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_ICM_PROPRIO_ST'
          Title.Caption = 'Aliq. ICMS Proprio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM_PROPRIO_ST'
          Title.Caption = 'Base ICMS Proprio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM_PROPRIO_ST'
          Title.Caption = 'Valor Icms Proprio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ_ICM_SUBST_REAL'
          Title.Caption = 'Aliq. ICMS Subst. Real'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM_SUBST_REAL'
          Title.Caption = 'Base Icms Subst. Real'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM_SUBST_REAL'
          Title.Caption = 'Valor Icms Subst. Real'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_ATUALIZACAO'
          Title.Caption = 'C'#243'd Venda'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 6
      Top = 341
      Width = 741
      Height = 61
      DataSource = DM.DTS_NFE
      TabOrder = 18
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBGrid2Enter
      OnExit = DBGrid2Exit
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NR_NOTA'
          Title.Caption = 'N'#186' Nota'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE_NF'
          Title.Caption = 'S'#233'rie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_CFOP'
          Title.Caption = 'CFOP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP_DESC'
          Title.Caption = 'Nat. Opera'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_EMISSAO'
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL'
          Title.Caption = 'Total '
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ACRESCIMOS'
          Title.Caption = 'Acrescimos'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_DESCONTOS'
          Title.Caption = 'Descontos'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_MERCADORIAS'
          Title.Caption = 'Valor Mercadorias'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_SERVICOS'
          Title.Caption = 'Valor dos Outras Despesas'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_FRETE'
          Title.Caption = 'Frete'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_SEGURO'
          Title.Caption = 'Seguro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM_SUBST'
          Title.Caption = 'Base Icms ST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM_SUBST'
          Title.Caption = 'Valor Icms ST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ICM'
          Title.Caption = 'Base ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ICM'
          Title.Caption = 'Valor Icms'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_IPI'
          Title.Caption = 'Base IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_IPI'
          Title.Caption = 'Valor IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_ISS'
          Title.Caption = 'Base ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_PIS'
          Title.Caption = 'Base Pis'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_PIS'
          Title.Caption = 'Valor Pis'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_BASE_COFINS'
          Title.Caption = 'Base Cofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_COFINS'
          Title.Caption = 'Valor Cofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ISS'
          Title.Caption = 'Valor ISS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_RECIBO_NFE'
          Title.Caption = 'Recibo NFe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_ACESSO_NFE'
          Title.Caption = 'Chave NFE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE_FOR'
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ_CLIENTE_FORN'
          Title.Caption = 'Cpf/ Cnpj'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE_CLIENTE_FORN'
          Title.Caption = 'Insc. estadual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO_CLI_FORN'
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END_NUM_CLIENTE'
          Title.Caption = 'N'#186' Rua'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_IBGE'
          Title.Caption = 'IBGE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_CLIENTE_FORN'
          Title.Caption = 'Cep'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO_CLIENTE_FORN'
          Title.Caption = 'Bairro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PESSOA'
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Fone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE_CLIENTE_FORN'
          Title.Caption = 'Cidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_CLIENTE_FORN'
          Title.Caption = 'UF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE_PRODUTOR'
          Title.Caption = 'Insc. Produtor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTOR_RURAL'
          Title.Caption = #201' prod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object CheckBox3: TCheckBox
      Left = 227
      Top = 35
      Width = 149
      Height = 17
      Caption = 'Venda no Estado'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 19
      OnMouseUp = CheckBox3MouseUp
    end
    object CheckBox4: TCheckBox
      Left = 411
      Top = 37
      Width = 149
      Height = 17
      Caption = 'Venda Fora do Estado'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnMouseUp = CheckBox4MouseUp
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 624
      Top = 539
      Width = 121
      Height = 21
      AutoSize = False
      ReadOnly = True
      TabOrder = 21
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 328
      Top = 537
      Width = 121
      Height = 21
      AutoSize = False
      ReadOnly = True
      TabOrder = 22
    end
    object Edit13: TEdit
      Left = 100
      Top = 273
      Width = 645
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object edtBaseICMSST: TCurrencyEdit
      Left = 107
      Top = 296
      Width = 123
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;,0.00'
      TabOrder = 23
    end
    object edtPercentualICMSST: TCurrencyEdit
      Left = 376
      Top = 297
      Width = 123
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;,0.00'
      TabOrder = 24
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 608
    Width = 769
    Height = 55
    Align = alBottom
    TabOrder = 2
    object confirmar: TsuiButton
      Left = 536
      Top = 10
      Width = 135
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = 'Confirmar NF-e F10'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
        FBF2B9EBB885DC8262D25E52CD4D52CD4D5CD0587CD979ACE7AAEBF9EAFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFBFEFBB0E8AF5CD15A52CE5058D4565FDB5C62DE6062DE6060DC5D5AD65752
        CE5055CF539BE39AF4FCF4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFF2FBF27CDA7C52CF525ED95E61D66160D0605FCC5F5FCA5F5FCA
        5F5FCB5F60CF6060D46061DC6152CF526AD56AE7F8E7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFF7FDF770D87351CF5560D6635ECC625ECB625ECB62
        5ECB625ECB625ECB625ECB625ECB625ECB625ECC6260D36352D05760D363E7F8
        E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86DF8B51CF575FD1655ECC645E
        CC645ECC6460DD6761E26861E16760DA665ECE645ECC645ECC645ECC645ECC64
        5FCF6552CF596DD872F7FDF8FF00FFFF00FFFF00FFFF00FFCBF1CE51D05B5FCF
        675ECC675ECC675ECD6760DD6A62E66CFFFFFFFFFFFF65E56F60DA695ECF675E
        CE675ECD675ECC675ECC675ECE6751CF5AABE9B0FF00FFFF00FFFF00FFFF00FF
        6FDA7B56CA625ECD695ECD695ECF6A60DD6E60E46FFFFFFFFFFFFFFFFFFFFFFF
        FF64E5735FDB6D5ECF6A5ECF6A5ECE695ECD695ECD695ACC6758D365F2FCF3FF
        00FFFF00FFDAF6DD50CC605ECE6C5ECE6C5ECF6C60DE7160E472FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF60E5735FDD715ECF6D5ECF6D5ECF6C5ECE6C5ECE
        6C50C960B9EDBFFF00FFFF00FFAFEBB950C3625ECF705ECF705FDD7460E275FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60E6775FDD745ED071
        5ED0715ECF705ECF7054C5668CE19AFF00FFFF00FF8FE19E52C5685DD1735DD1
        735ED975FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF60E77A5EDF785DD1735DD1735DD07358CB6E6ED682FF00FFFF00FF83DB96
        54C96E5DD1765DD2775DD277FFFFFFFFFFFFFFFFFFFFFFFF5DD2775DD277FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF60E87E5EDF7B5DD2775DD17659CD7363CF7BFF
        00FFFF00FF86DB9B53CA715CD37A5CD37A5CD37A5CD37AFFFFFFFFFFFF61D47F
        5CD37A5CD37A5CD37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EE7815EDF7E5CD3
        7A59CF7665CE7FFF00FFFF00FF99E2AD50C8715CD57D5CD47D5CD37D5CD37D5C
        D37D5CD37D5CD37D5CD37D5CD37D5CD37D5CD37DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF5EDE815CD57D55CE767AD693FF00FFFF00FFC0EECE4DC9735CD7815BD6
        815BD6815BD5815BD5815BD5815BD5815BD5815BD5815BD5815BD5815BD581FF
        FFFFFFFFFFFFFFFFFFFFFF5BD8815CD7814ECA74A1E3B5FF00FFFF00FFF2FCF5
        51CC795BD8835CD8845BD6835BD6835BD6835BD6835BD6835BD6835BD6835BD6
        835BD6835BD6835BD683FFFFFFFFFFFF5BD7845CD8845CD9854DCB76D7F4E1FF
        00FFFF00FFFF00FF92E0AD4DCD7A5CDA885CD8875BD7865BD6865BD6865BD686
        5BD6865BD6865BD6865BD6865BD6865BD6865BD7865BD8875CD9875CDA8852D1
        7E71D794FF00FFFF00FFFF00FFFF00FFECFAF155D28354D5835BDA8A5BD98A5B
        D8895BD8895BD7895BD7895BD7895BD7895BD7895BD7895BD8895BD88A5BDA8A
        5BDC8B59DA894DD07DD5F4E1FF00FFFF00FFFF00FFFF00FFFF00FFC8F1D84DD1
        8157DA8A5BDC8E5BDA8D5BD98D5BD88C5BD88C5BD88C5BD88C5BD88C5BD88C5B
        D98D5BDA8D5BDD8E5BDF8F4DD281A7E9C1FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB1EDC94FD58653D8895BDF915BDC8F5BDB8F5BDA8F5BDA8F5BDA
        8F5BDB8F5BDB8F5BDD905BDF9157DD8E4DD48491E5B4FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCF4DD59DA904CD68659E0925BE194
        5BE0945BDF935BE0945BE0945BE2945BE3944DD78850D88AB1EECBFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4FDF89E
        EABF57DB904CD8894CD7884DD88A4FDA8C4CD7884CD88950DA8C8FE7B6EAFAF1
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFBFEFCCFF5E0B7F1D19AEBBE94EABBB7F1D1C8F4DCF2
        FCF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = confirmarClick
      ResHandle = 0
    end
    object Inserir: TsuiButton
      Left = 109
      Top = 10
      Width = 135
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = 'Gerar NF-e F3'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
        FBF2B9EBB885DC8262D25E52CD4D52CD4D5CD0587CD979ACE7AAEBF9EAFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFBFEFBB0E8AF5CD15A52CE5058D4565FDB5C62DE6062DE6060DC5D5AD65752
        CE5055CF539BE39AF4FCF4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFF2FBF27CDA7C52CF525ED95E61D66160D0605FCC5F5FCA5F5FCA
        5F5FCB5F60CF6060D46061DC6152CF526AD56AE7F8E7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFF7FDF770D87351CF5560D6635ECC625ECB625ECB62
        5ECB625ECB625ECB625ECB625ECB625ECB625ECC6260D36352D05760D363E7F8
        E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86DF8B51CF575FD1655ECC645E
        CC645ECC6460D96661E16762E66962E56860DE6760D5655ECC645ECC645ECC64
        5FCF6552CF596DD872F7FDF8FF00FFFF00FFFF00FFFF00FFCBF1CE51D05B5FCF
        675ECC675ECC675ECD675ECE6760DC69CFF7D3FFFFFFFFFFFFCFF7D260DA695E
        CE675ECD675ECC675ECC675ECE6751CF5AABE9B0FF00FFFF00FFFF00FFFF00FF
        6FDA7B56CA625ECD695ECD695ECF6A5ECF6A5ECF6A5ED46CFFFFFFFFFFFFFFFF
        FFFFFFFF5FD76C5ECF6A5ECF6A5ECE695ECD695ECD695ACC6758D365F2FCF3FF
        00FFFF00FFDAF6DD50CC605ECE6C5ECE6C5ECF6C5ECF6D5ECF6D5ECF6D5ED26E
        FFFFFFFFFFFFFFFFFFFFFFFF5FD9705ECF6D5ECF6D5ECF6D5ECF6C5ECE6C5ECE
        6C50C960B9EDBFFF00FFFF00FFAFEBB950C3625ECF705ECF705FDD7460E47661
        EA7860E6775FDC74FFFFFFFFFFFFFFFFFFFFFFFF61E87761EC7861E97860E175
        5FD9735ECF705ECF7054C5668CE19AFF00FFFF00FF8FE19E52C5685DD1735DD1
        735FE078CFF9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCFF8D75EDD775DD1735DD07358CB6E6ED682FF00FFFF00FF83DB96
        54C96E5DD1765DD2775ED878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDA7A5DD2775DD17659CD7363CF7BFF
        00FFFF00FF86DB9B53CA715CD37A5CD37A5CD37AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CD47B5CD37A5CD3
        7A59CF7665CE7FFF00FFFF00FF99E2AD50C8715CD57D5CD47D5CD37DCEF2D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEF2D8
        5CD47D5CD47D5CD57D55CE767AD693FF00FFFF00FFC0EECE4DC9735CD7815BD6
        815BD6815BD5815BD5815BD5815BD581FFFFFFFFFFFFFFFFFFFFFFFF5BD5815B
        D5815BD5815BD5815BD6815BD6815CD7814ECA74A1E3B5FF00FFFF00FFF2FCF5
        51CC795BD8835CD8845BD6835BD6835BD6835BD6835BD683FFFFFFFFFFFFFFFF
        FFFFFFFF5BD6835BD6835BD6835BD6835BD7845CD8845CD9854DCB76D7F4E1FF
        00FFFF00FFFF00FF92E0AD4DCD7A5CDA885CD8875BD7865BD6865BD6865BD686
        FFFFFFFFFFFFFFFFFFFFFFFF5BD6865BD6865BD7865BD8875CD9875CDA8852D1
        7E71D794FF00FFFF00FFFF00FFFF00FFECFAF155D28354D5835BDA8A5BD98A5B
        D8895BD8895BD789CDF3DBFFFFFFFFFFFFCDF3DB5BD7895BD8895BD88A5BDA8A
        5BDC8B59DA894DD07DD5F4E1FF00FFFF00FFFF00FFFF00FFFF00FFC8F1D84DD1
        8157DA8A5BDC8E5BDA8D5BD98D5BD88C5BD88C5BD88C5BD88C5BD88C5BD88C5B
        D98D5BDA8D5BDD8E5BDF8F4DD281A7E9C1FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB1EDC94FD58653D8895BDF915BDC8F5BDB8F5BDA8F5BDA8F5BDA
        8F5BDB8F5BDB8F5BDD905BDF9157DD8E4DD48491E5B4FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCF4DD59DA904CD68659E0925BE194
        5BE0945BDF935BE0945BE0945BE2945BE3944DD78850D88AB1EECBFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4FDF89E
        EABF57DB904CD8894CD7884DD88A4FDA8C4CD7884CD88950DA8C8FE7B6EAFAF1
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFBFEFCCFF5E0B7F1D19AEBBE94EABBB7F1D1C8F4DCF2
        FCF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = InserirClick
      ResHandle = 0
    end
    object btnCancelar: TsuiButton
      Left = 328
      Top = 10
      Width = 135
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ShowHint = True
      Caption = '&Cancelar - F5'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
        F6FFB8CCFF82A7FF5E8DFF4D81FF4D81FF5889FF79A0FFAAC3FFEAF0FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFBFCFFAFC6FF5A8AFF5082FF598BFF6294FF6699FF6699FF6296FF5B8EFF50
        82FF5385FF9AB7FFF4F7FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFF2F6FF7BA3FF5085FF6092FF628CFF5F83FF5E7FF95D7DF35D7D
        F35E7FF75E82FF6189FF6595FF5085FF6996FFE7EEFFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFF7FAFF729CFF5386FF638BFF5F80F85E7FF45E7FF4
        5E7FF45E7FF45E7FF45E7FF45E7FF45E7FF45E7FF56288FF5487FF6191FFE7EE
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF89ADFF5486FF648AFF6288FF63
        89FF6289FF6286FF6081F96081F96081F96081F96287FF6389FF6389FF6286FF
        6286FF5786FF719CFFF7FAFFFF00FFFF00FFFF00FFFF00FFCEDDFF588AFF6385
        FF6487FFB5C7FFFFFFFFFFFFFF678DFF6588FF6283F96283F96589FF678DFFFF
        FFFFFFFFFFB5C6FF6486FF6283FB5786FFAFC7FFFF00FFFF00FFFF00FFFF00FF
        78A3FF5D81FF6383F76486FEFFFFFFFFFFFFFFFFFFFFFFFF688FFF678DFF678D
        FF678EFFFFFFFFFFFFFFFFFFFFFFFFFF6587FF6383F76183FE6192FFF3F7FFFF
        00FFFF00FFDDE8FF5B86FF6585F86585F86686FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6C95FF6C93FFF2F5FFFFFFFFFFFFFFFFFFFFFFFFFF6586F96585F86585
        F85A81FFBED3FFFF00FFFF00FFB6CEFF597CF66787F96788FB6788FC6788FCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6788FC
        6788FB6787F96787F95D7EF296B7FFFF00FFFF00FF9AB7FF5E7FEF698AFB698A
        FC698AFD698AFD698AFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF698AFD698AFD698AFD698AFB6989F96484F47C9EFFFF00FFFF00FF90ACFF
        6282F36C8BFE6C8CFE6C8CFE6C8CFE6C8CFE6C8CFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF6C8CFE6C8CFE6C8CFE6C8CFE6C8CFE6C8BFD6787F77292FFFF
        00FFFF00FF93ADFF6484F56D8EFF6D8EFF6D8EFF6D8EFF6D8EFF6E8FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E91FF6E91FF6D8EFF6D8EFF6D8EFF6D8E
        FF698AFB7493FBFF00FFFF00FFA6BBFF6385F76F91FF6F90FF7091FF7398FF77
        9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF759BFF7397FF
        6F90FF6F91FF7091FF688AFB88A2FBFF00FFFF00FFC9D7FF6384F77293FF7192
        FF7598FF88A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF779CFF7497FF7292FF7293FF6486F8ADC0FFFF00FFFF00FFF4F7FF
        698AFC7395FF7395FF7598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7394FF7394
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF769AFF7396FF7496FF6588FCDDE6FFFF
        00FFFF00FFFF00FFA2B7FF688AFF7698FF7596FFFFFFFFFFFFFFFFFFFFFFFFFF
        7595FF7595FF7595FF7595FFFFFFFFFFFFFFFFFFFFFFFFFF7799FF7799FF6D8F
        FF86A2FFFF00FFFF00FFFF00FFFF00FFEFF3FF7193FF7194FF789AFFBBCCFFFF
        FFFFFFFFFF7697FF7697FF7697FF7697FF7697FF7697FFFFFFFFFFFFFFBDCDFF
        789BFF769AFF6A8EFFDCE4FFFF00FFFF00FFFF00FFFF00FFFF00FFD2DDFF6C91
        FF769AFF7A9CFF789AFF7899FF7899FF7899FF7899FF7899FF7899FF7899FF78
        99FF799BFF7A9DFF7CA0FF6C91FFB7C9FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFC0D1FF7095FF7498FF7CA0FF7B9DFF7A9CFF7A9BFF7A9BFF7A9B
        FF7A9CFF7A9DFF7C9EFF7DA0FF7A9EFF6F94FFA7BDFFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7E1FF7C9EFF7195FF7DA1FF7FA2FF
        7EA0FF7EA0FF7EA0FF7FA1FF7FA2FF7FA4FF7296FF7499FFC1D1FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6F9FFB3
        C8FF7BA0FF7399FF7299FF7399FF759BFF7399FF7399FF769CFFA8C0FFEFF3FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFCFDFFDAE5FFC7D7FFB1C8FFACC4FFC7D7FFD5E1FFF5
        F8FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnCancelarClick
      ResHandle = 0
    end
  end
  object SDS_NFE1: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select NR_NOTA, NR_PEDIDO, N_NOTA_ENTRADA, nr_protocolo_nfe, STA' +
      'TUS_CANCELADO, nr_recibo_nfe from NFE_NOTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 234
    Top = 8
    object SDS_NFE1NR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object SDS_NFE1NR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object SDS_NFE1N_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object SDS_NFE1NR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object SDS_NFE1NR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object SDS_NFE1STATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
  end
  object DTS_NFE1: TDataSource
    DataSet = SDS_NFE1
    Left = 266
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    InitialDir = 'c:\siace\nfe'
    Title = 'Selecione a NFe'
    Left = 152
    Top = 368
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,G.FLAG_ICMS' +
        ','
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS, G.PERC_I' +
        'CMS_ESTADUAL, G.PERC_ICMS_INTER_ESTADUAL, '
      
        'G.CFOP_EST_VENDA, G.CFOP_REV_EST, G.CFOP_REV_INTER, G.CFOP_EST_T' +
        'RANSF, G.CFOP_INTER_EST_TRASNF, G.CST_VENDA, GR.NCM_SH, GR.PERC_' +
        'TRIBU, GR.FONTE, ncm.alic_nac, ncm.alic_imp,ncm.alic_revenda, P.' +
        'VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO, P.CEST'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 504
    Top = 8
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'Cod_Ven'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PEDIDOS_ITENS.CODIGO'
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'PEDIDOS_ITENS.CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'PEDIDOS_ITENS.ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'PEDIDOS_ITENS.CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TIBStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TIBStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.DESCRICAO_PRODUTO'
      Size = 50
    end
    object QBuscaItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'PEDIDOS_ITENS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object QBuscaItensPRECO_TOTAL: TIBBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PEDIDOS_ITENS.PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'PEDIDOS_ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TIBStringField
      FieldName = 'DEV'
      Origin = 'PEDIDOS_ITENS.DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TIBBCDField
      FieldName = 'QNT_DEV'
      Origin = 'PEDIDOS_ITENS.QNT_DEV'
      Precision = 18
      Size = 4
    end
    object QBuscaItensVAL_DEV: TIBBCDField
      FieldName = 'VAL_DEV'
      Origin = 'PEDIDOS_ITENS.VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TIBBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'PEDIDOS_ITENS.ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PEDIDOS_ITENS.UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'PEDIDOS_ITENS.SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'PEDIDOS_ITENS.VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'PEDIDOS_ITENS.FRACAO'
    end
    object QBuscaItensCOD_NCM: TIBStringField
      FieldName = 'COD_NCM'
      Origin = 'PEDIDOS_ITENS.COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = 'PEDIDOS_ITENS.PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TIBBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PEDIDOS_ITENS.PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TIBBCDField
      FieldName = 'BASE_ISS'
      Origin = 'PEDIDOS_ITENS.BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TIBBCDField
      FieldName = 'VL_ISS'
      Origin = 'PEDIDOS_ITENS.VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TIBBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PEDIDOS_ITENS.PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TIBBCDField
      FieldName = 'VL_ICM'
      Origin = 'PEDIDOS_ITENS.VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TIBBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PEDIDOS_ITENS.PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'PEDIDOS_ITENS.BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TIBBCDField
      FieldName = 'VL_IPI'
      Origin = 'PEDIDOS_ITENS.VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TIBBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PEDIDOS_ITENS.PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TIBBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'PEDIDOS_ITENS.BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = 'PEDIDOS_ITENS.VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TIBBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TIBBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TIBBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PEDIDOS_ITENS.PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TIBBCDField
      FieldName = 'BASE_PIS'
      Origin = 'PEDIDOS_ITENS.BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = 'PEDIDOS_ITENS.VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TIBStringField
      FieldName = 'IMPRIME'
      Origin = 'PEDIDOS_ITENS.IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'PEDIDOS_ITENS.COD_EMPRESA'
      Required = True
    end
    object QBuscaItensICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'PRODUTOS.IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'PRODUTOS.OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_PIS_COFINS: TIBStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TIBStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA: TIBStringField
      FieldName = 'CST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = 'PRODUTOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TIBStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TIBStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA_INTER: TIBStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = 'PRODUTOS.COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'PRODUTOS.COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'PRODUTOS.QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = 'PRODUTOS.UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'PRODUTOS.ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPERC_TRIBU: TIBBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'GRUPOS.PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TIBStringField
      FieldName = 'FONTE'
      Origin = 'GRUPOS.FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TIBBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'TABELA_NCM.ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TIBBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'TABELA_NCM.ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = 'PRODUTOS.VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'PRODUTOS.CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
    object QBuscaItensCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = 'PRODUTOS.COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = 'PRODUTOS.N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = 'PRODUTOS.ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'PRODUTOS.ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'PRODUTOS.TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = 'PRODUTOS.N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = 'PRODUTOS.COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'PRODUTOS.ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'PRODUTOS.COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'PRODUTOS.TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PRODUTOS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PRODUTOS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 500
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = '"PEDIDOS_ITENS"."ID_BICO"'
    end
    object QBuscaItensID_TANQUE: TIBStringField
      FieldName = 'ID_TANQUE'
      Origin = '"PEDIDOS_ITENS"."ID_TANQUE"'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TIBStringField
      FieldName = 'ID_BOMBA'
      Origin = '"PEDIDOS_ITENS"."ID_BOMBA"'
      Size = 5
    end
    object QBuscaItensBICO: TIBStringField
      FieldName = 'BICO'
      Origin = '"PEDIDOS_ITENS"."BICO"'
      Size = 2
    end
    object QBuscaItensFLAG_ICMS: TIBStringField
      FieldName = 'FLAG_ICMS'
      Origin = '"GRUPO_TRIBUTACAO"."FLAG_ICMS"'
      Size = 1
    end
    object QBuscaItensPERC_ICMS_ESTADUAL: TIBBCDField
      FieldName = 'PERC_ICMS_ESTADUAL'
      Origin = '"GRUPO_TRIBUTACAO"."PERC_ICMS_ESTADUAL"'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_INTER_ESTADUAL: TIBBCDField
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Origin = '"GRUPO_TRIBUTACAO"."PERC_ICMS_INTER_ESTADUAL"'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_REV_EST: TIBStringField
      FieldName = 'CFOP_REV_EST'
      Origin = '"GRUPO_TRIBUTACAO"."CFOP_REV_EST"'
      Size = 4
    end
    object QBuscaItensCFOP_REV_INTER: TIBStringField
      FieldName = 'CFOP_REV_INTER'
      Origin = '"GRUPO_TRIBUTACAO"."CFOP_REV_INTER"'
      Size = 4
    end
    object QBuscaItensCFOP_EST_TRANSF: TIBStringField
      FieldName = 'CFOP_EST_TRANSF'
      Origin = '"GRUPO_TRIBUTACAO"."CFOP_EST_TRANSF"'
      Size = 4
    end
    object QBuscaItensCFOP_INTER_EST_TRASNF: TIBStringField
      FieldName = 'CFOP_INTER_EST_TRASNF'
      Origin = '"GRUPO_TRIBUTACAO"."CFOP_INTER_EST_TRASNF"'
      Size = 4
    end
    object QBuscaItensNCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItensCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QBuscaItensALIC_REVENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_REVENDA'
      Origin = 'ALIC_REVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPRECO_UNITARIO: TBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 536
    Top = 8
  end
  object QBuscaItens1: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,G.FLAG_ICMS' +
        ','
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS, G.PERC_I' +
        'CMS_ESTADUAL, G.PERC_ICMS_INTER_ESTADUAL,'
      
        'G.CFOP_EST_VENDA, G.CFOP_REV_EST, G.CFOP_REV_INTER, G.CFOP_EST_T' +
        'RANSF, G.CFOP_INTER_EST_TRASNF, G.CST_VENDA, GR.NCM_SH, GR.PERC_' +
        'TRIBU, GR.FONTE, ncm.alic_nac, ncm.alic_imp,ncm.alic_revenda, P.' +
        'VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO, P.CEST'
      'FROM notasfiscais_itens I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PRODUTO = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PRODUTO = :CODPRO and codigo_NOTA = :Cod_NOTA')
    Left = 504
    Top = 40
    ParamData = <
      item
        Name = 'CODPRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_NOTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaItens1CODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItens1CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object QBuscaItens1CODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 13
    end
    object QBuscaItens1CODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object QBuscaItens1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object QBuscaItens1NCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object QBuscaItens1CST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object QBuscaItens1CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object QBuscaItens1DESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object QBuscaItens1QUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItens1VALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
    object QBuscaItens1VALOR_DESC: TBCDField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1TOTAL_ITEM: TBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QBuscaItens1BASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
    end
    object QBuscaItens1DATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object QBuscaItens1FRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItens1QUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Origin = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object QBuscaItens1LOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object QBuscaItens1MARG_LUCRO: TBCDField
      FieldName = 'MARG_LUCRO'
      Origin = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QBuscaItens1BASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_ICMS_ST: TBCDField
      FieldName = 'ALIC_ICMS_ST'
      Origin = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QBuscaItens1IMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Origin = 'IMOBILZ'
      Size = 1
    end
    object QBuscaItens1BASE_PIS: TBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_PIS: TBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_COFINS: TBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_COFINS: TBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1UN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Origin = 'UN_FRACAO'
      Size = 5
    end
    object QBuscaItens1ITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QBuscaItens1CODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object QBuscaItens1NUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
    end
    object QBuscaItens1ICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Origin = 'ICMS_RETIDO'
      Size = 1
    end
    object QBuscaItens1SUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DESCONTO_P: TBCDField
      FieldName = 'DESCONTO_P'
      Origin = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_REDUCAO: TBCDField
      FieldName = 'ICMS_REDUCAO'
      Origin = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_VALORRETIDO: TBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Origin = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_ISENTO: TBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_NAOTRIBUTADO: TBCDField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Origin = 'ICMS_NAOTRIBUTADO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1IPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Origin = 'IPI_TIPO'
      Size = 25
    end
    object QBuscaItens1TIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object QBuscaItens1FRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1OUTRAS: TBCDField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1SEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
      Size = 2
    end
    object QBuscaItens1SUB_PRODUTOS: TBCDField
      FieldName = 'SUB_PRODUTOS'
      Origin = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1ITEM_ESPECIAL_VALOR: TBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1ICMS_OUTRAS: TBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Origin = 'ALTERA_ITEM'
    end
    object QBuscaItens1CREDITO_ICMS: TBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1CREDITO_ICMS_BASE: TBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Origin = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1PMARGEM: TFloatField
      FieldName = 'PMARGEM'
      Origin = 'PMARGEM'
    end
    object QBuscaItens1PRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Origin = 'CODLANCAMENTO'
      Size = 10
    end
    object QBuscaItens1ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1COD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object QBuscaItens1COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1APLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QBuscaItens1IPI_IRPJ: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1OUTROS_IMPOSTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1NCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItens1QTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItens1UND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1ML_QUANT_BEB: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItens1SIT_COFINS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_PIS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_COFINS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1SIT_PIS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1FLAG_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_ICMS'
      Origin = 'FLAG_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1CST_IPI_SAIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItens1CST_VENDA_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1PERC_ALIQUOTA_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ALIQUOTA_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CFOP_INTER_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1FLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1PERC_ICMS_ESTADUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_ESTADUAL'
      Origin = 'PERC_ICMS_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICMS_INTER_ESTADUAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Origin = 'PERC_ICMS_INTER_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CFOP_EST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CFOP_REV_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_REV_EST'
      Origin = 'CFOP_REV_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CFOP_REV_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_REV_INTER'
      Origin = 'CFOP_REV_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CFOP_EST_TRANSF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_TRANSF'
      Origin = 'CFOP_EST_TRANSF'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CFOP_INTER_EST_TRASNF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_EST_TRASNF'
      Origin = 'CFOP_INTER_EST_TRASNF'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1CST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItens1NCM_SH_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_2'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItens1PERC_TRIBU: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1FONTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONTE'
      Origin = 'FONTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QBuscaItens1ALIC_NAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_IMP: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItens1CHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QBuscaItens1COR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItens1COR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItens1N_MOTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItens1ANO_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1ANO_MOD_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItens1TIPO_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItens1N_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItens1COD_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItens1ESPECIE_VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItens1COD_COR_DENATRAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItens1TIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItens1PESOBRUTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItens1PESOLIQUIDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItens1CEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QBuscaItens1ALIC_REVENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_REVENDA'
      Origin = 'ALIC_REVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens1
    Left = 536
    Top = 40
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42325.594024282400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  DADOS_ENDERECO: String;                                       ' +
        '          '
      '  DESCR_CST: String;'
      '    '
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  while Engine.FreeSpace > 10 do Engine.ShowBand(Child1);  '
      '  Engine.ShowBand(Child2);'
      'end;'
      ''
      'procedure Child3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Child3.Visible := (<Page> = 1) and (MasterData2.DataSet.Record' +
        'Count > 0);                                                     ' +
        '         '
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := <Page> = 1;                                ' +
        '                              '
      'end;'
      ''
      'procedure Header2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Header1.Visible := not Header2.Visible;                       ' +
        '                                       '
      'end;'
      ''
      'procedure ColumnHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnHeader1.Visible := <Page> > 1;                          ' +
        '                    '
      'end;'
      ''
      'procedure ColumnFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ColumnFooter1.Visible := Engine.FinalPass and (<Page> = 1);   ' +
        '                                                                ' +
        ' '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Trim(<Parametros."Imagem">) <> '#39#39' then'
      '  begin              '
      '    imgLogomarca.Picture.LoadFromFile(<Parametros."Imagem">);'
      '    if Trim(<Parametros."LogoExpandido">) = '#39'1'#39' then'
      '    begin'
      '      Memo10.Visible := False;'
      '      Memo11.Visible := False;'
      
        '      imgLogomarca.Width := imgLogomarca.Width+Memo10.Width;    ' +
        '                                                                ' +
        '  '
      '    end;'
      '  end else'
      '  begin'
      '    Memo10.Width := Memo10.Width + Memo10.Left;'
      '    Memo11.Width := Memo11.Width + Memo11.Left;'
      '    Memo10.Left := 0;'
      '    Memo11.Left := 0;'
      
        '    imgLogomarca.Visible := False;                              ' +
        '                                        '
      '  end;            '
      '    '
      '  if Trim(<Emitente."CRT">) = '#39'3'#39' then'
      '    DESCR_CST := '#39'CST'#39
      '  else'
      '    DESCR_CST := '#39'CSOSN'#39';                      '
      'end;'
      ''
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  DADOS_ENDERECO := Trim('
      '    <Emitente."XLgr"> + '#39', '#39' + <Emitente."Nro"> + #13 +       '
      
        '    <Emitente."XBairro"> + '#39' - '#39' + <Emitente."XMun"> + '#39' - '#39' + <' +
        'Emitente."UF"> + #13 +                   '
      
        '    '#39'Fone: '#39' + <Emitente."Fone"> + '#39' CEP: '#39' + <Emitente."CEP"> +' +
        ' #13 +       '
      '    <Parametros."Site"> + #13 +       '
      '    <Parametros."Email">  '
      '  );  '
      'end;'
      ''
      'procedure Overlay1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Overlay1.Visible := <Identificacao."TpAmb"> = '#39'2'#39';'
      '  if Overlay1.Visible then'
      '  begin              '
      '    Overlay1.Height        := Engine.PageHeight;'
      
        '    memWatermark.Width     := Overlay1.Width;                   ' +
        '               '
      '    memWatermark.Height    := Engine.PageHeight;'
      '    memWatermark.Font.Size := 50;'
      '  end;                  '
      'end;'
      '  '
      '    '
      'procedure Memo38OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'IF Length (<Destinatario."CNPJCPF">) = 14 then'
      'Sender.EditMask := '#39'999.999.999-99;0;'#39';'
      'else'
      'Sender.EditMask := '#39'99.999.999/9999-99;0;'#39';    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 448
    Top = 376
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      BackPictureVisible = False
      LargeDesignHeight = True
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 11.338582680000000000
        Top = 865.512370000000000000
        Width = 755.906000000000000000
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992089370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[DadosProdutos."XProd"] [DadosProdutos."infAdProd"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 283.464537640000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."NCM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          Left = 321.259813230000000000
          Width = 26.456695350000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."ORIGEM"][DadosProdutos."CST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          Left = 347.716506140000000000
          Width = 24.566929130000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataField = 'UTrib'
          DataSetName = 'DadosProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."UTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo137: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."QCom"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo138: TfrxMemoView
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VUnTrib"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo139: TfrxMemoView
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo143: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo144: TfrxMemoView
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."PICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."PIPI"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Width = 642.520100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            
              'Destinat'#225'rio: [Destinatario."Xnome"] - [Destinatario."XLgr"], [D' +
              'estinatario."Nro"] - [Destinatario."XBairro"] - [Destinatario."X' +
              'Mun"] - [Destinatario."UF"].'
            
              'Emiss'#227'o: [Identificacao."DEmi"]  Valor Total: R$ [CalculoImposto' +
              '."VNF" #n%2,2n]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795300000000000000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795300000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 73.811070000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385802360000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 642.520100000000000000
          Top = 25.456710000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 517.795610000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWindow
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 525.354670000000000000
          Top = 11.559060000000000000
          Width = 109.606370000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 173.858362910000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo1: TfrxMemoView
          Left = 445.984540000000000000
          Width = 309.921460000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Left = 462.236237560000000000
          Top = 7.559060000000000000
          Width = 79.000000000000000000
          Height = 45.354330710000000000
          BarType = bcCode128C
          Expression = '<Identificacao."ID">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo6: TfrxMemoView
          Left = 445.984540000000000000
          Top = 60.472480000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 445.984540000000000000
          Top = 90.708720000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Consulta de autenticidade no portal da NF-e'
            'www.nfe.fazenda.gov.br/portal ou no site da SEFAZ Autenticadora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 445.984540000000000000
          Top = 70.811070000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Width = 94.488164570000000000
          Height = 120.944960000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Top = 8.338590000000000000
          Width = 219.212740000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."XNome"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Top = 47.574830000000000000
          Width = 219.212740000000000000
          Height = 62.362221810000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            '[DADOS_ENDERECO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 351.496290000000000000
          Top = 20.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da '
            'Nota Fiscal Eletr'#244'nica')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 351.496290000000000000
          Top = 70.811070000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]'
            'Folha [Page#]/[TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 359.834880000000000000
          Top = 46.354360000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '0 - ENTRADA'
            '1 - SA'#205'DA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 416.748300000000000000
          Top = 46.354360000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."TpNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 120.944960000000000000
          Width = 445.984540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NATUREZA DA OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 130.393700790000000000
          Width = 442.205010000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Identificacao."NatOp"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 445.984540000000000000
          Top = 120.944960000000000000
          Width = 309.921460000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Parametros."Contingencia_Descricao"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 445.984540000000000000
          Top = 129.393700790000000000
          Width = 309.921460000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IE"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 253.228510000000000000
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL DO SUBSTITUTO TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 253.228510000000000000
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IEST"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 249.448980000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 506.457020000000000000
          Top = 156.850410790000000000
          Width = 249.448980000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."CNPJ"]')
          ParentFont = False
        end
        object imgLogomarca: TfrxPictureView
          Top = 5.118120000000000000
          Width = 124.724490000000000000
          Height = 105.826840000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 9.448816460000000000
        Top = 1288.819730000000000000
        Width = 755.906000000000000000
        object Memo150: TfrxMemoView
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'DATA E HORA DA IMPRESS'#195'O: [Date #ddd/mm/yyyy] [Time #dhh:mm:ss] ' +
              '[Parametros."Usuario"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 396.850650000000000000
          Width = 359.055350000000000000
          Height = 9.448816460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."Sistema"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Top = 960.000620000000000000
        Visible = False
        Width = 755.906000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        Child = frxReport1.Child1
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 3.779527560000000000
        Top = 982.677800000000000000
        Width = 755.906000000000000000
        object Memo161: TfrxMemoView
          Width = 60.472480000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 321.260050000000000000
          Width = 26.456695350000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 347.716564720000000000
          Width = 24.566929130000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 438.425480000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 483.779840000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 574.488560000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 619.842920000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 710.551640000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 733.228820000000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object Child3: TfrxChild
        FillType = ftBrush
        Height = 35.795300000000000000
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Child3OnBeforePrint'
        Stretched = True
        object Subreport1: TfrxSubreport
          Left = 0.779530000000000000
          Top = 16.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = frxReport1.Page2
        end
        object Memo55: TfrxMemoView
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DUPLICATAS')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 96.267762910000000000
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        Child = frxReport1.Child3
        DataSetName = 'Identificacao'
        RowCount = 0
        object Memo29: TfrxMemoView
          Top = 16.897650000000000000
          Width = 468.661720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 26.346390790000000000
          Width = 464.882190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Top = 16.897650000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 631.181510000000000000
          Top = 26.346390790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DEmi"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 631.181510000000000000
          Top = 43.354360000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.803100790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DSaiEnt"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 631.181510000000000000
          Top = 69.811070000000000000
          Width = 124.724490000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'HORA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 631.181510000000000000
          Top = 79.259810790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."HoraSaida"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 468.661720000000000000
          Top = 16.897650000000000000
          Width = 162.519790000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 468.661720000000000000
          Top = 26.346390790000000000
          Width = 162.519790000000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo38OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          Left = 555.590910000000000000
          Top = 43.354360000000000000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590910000000000000
          Top = 52.803100790000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 385.512060000000000000
          Top = 43.354360000000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BAIRRO / DISTRITO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 52.803100790000000000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XBairro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          Top = 43.354360000000000000
          Width = 385.512060000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 52.803100790000000000
          Width = 381.732530000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[Destinatario."XLgr"], [Destinatario."Nro"]  [Destinatario."XCpl' +
              '"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Top = 69.811070000000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 79.259810790000000000
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XMun"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.811070000000000000
          Width = 30.236240000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.259810790000000000
          Width = 30.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          Left = 385.512060000000000000
          Top = 69.811070000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'TELEFONE / FAX')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 79.259810790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."Fone"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          Left = 498.897960000000000000
          Top = 69.811070000000000000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 498.897960000000000000
          Top = 79.259810790000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."IE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 162.519772910000000000
        Top = 597.165740000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo58: TfrxMemoView
          Top = 2.779530000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 0.543290000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = -31.236240000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Left = 114.944960000000000000
          Top = 15.118120000000000000
          Width = 114.897637795276000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 102.047310000000000000
          Top = 24.566860790000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Left = 229.551330000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 230.551330000000000000
          Top = 24.566860790000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBCST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo65: TfrxMemoView
          Left = 343.937230000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS SUBSTITUI'#199#195'O')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 314.921460000000000000
          Top = 24.566860790000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo67: TfrxMemoView
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 574.488560000000000000
          Top = 23.566860790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo69: TfrxMemoView
          Left = 459.590848000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 459.590848000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo71: TfrxMemoView
          Left = 344.693136000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 344.693136000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VOutro"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo73: TfrxMemoView
          Left = 229.795424000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 229.795424000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          Left = 114.897712000000000000
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 114.897712000000000000
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VSeg"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo77: TfrxMemoView
          Top = 41.574830000000000000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Top = 51.023570790000000000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 574.488560000000000000
          Top = 41.574830000000000000
          Width = 181.417440000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 15724527
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 574.488560000000000000
          Top = 50.023570790000000000
          Width = 181.417440000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo82: TfrxMemoView
          Top = 69.921259840000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 636.094512600000000000
          Top = 83.149660000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 636.094512600000000000
          Top = 92.598400790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo85: TfrxMemoView
          Left = 604.724800000000000000
          Top = 83.149660000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 604.724800000000000000
          Top = 92.598400790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Veiculo."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo87: TfrxMemoView
          Left = 536.693260000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 536.693260000000000000
          Top = 92.598400790000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."PLACA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          Left = 453.543600000000000000
          Top = 83.149660000000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 453.543600000000000000
          Top = 92.598400790000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."RNTC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo91: TfrxMemoView
          Left = 362.834880000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 362.834880000000000000
          Top = 92.598400790000000000
          Width = 90.708720000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."ModFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo93: TfrxMemoView
          Top = 83.149660000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Top = 92.598400790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo95: TfrxMemoView
          Left = 604.724800000000000000
          Top = 109.606370000000000000
          Width = 31.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 604.724800000000000000
          Top = 119.055110790000000000
          Width = 31.370078740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Transportador."UF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo97: TfrxMemoView
          Left = 636.094512600000000000
          Top = 109.606370000000000000
          Width = 119.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 636.094512600000000000
          Top = 119.055110790000000000
          Width = 119.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."IE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo99: TfrxMemoView
          Left = 362.834880000000000000
          Top = 109.606370000000000000
          Width = 241.889920000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 362.834880000000000000
          Top = 119.055110790000000000
          Width = 241.889920000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XMun"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo101: TfrxMemoView
          Top = 109.606370000000000000
          Width = 362.834880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Top = 119.055110790000000000
          Width = 362.834880000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XEnder"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo103: TfrxMemoView
          Top = 136.063080000000000000
          Width = 51.653576670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Top = 145.511820790000000000
          Width = 51.653576670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."QVol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo105: TfrxMemoView
          Left = 51.653576670000000000
          Top = 136.063080000000000000
          Width = 134.803236670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 51.653576670000000000
          Top = 145.511820790000000000
          Width = 134.803236670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Esp"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo107: TfrxMemoView
          Left = 186.456813330000000000
          Top = 136.063080000000000000
          Width = 142.362296670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 186.456813330000000000
          Top = 145.511820790000000000
          Width = 142.362296670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Marca"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo109: TfrxMemoView
          Left = 328.819110000000000000
          Top = 136.063080000000000000
          Width = 187.716656670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 328.819110000000000000
          Top = 145.511820790000000000
          Width = 187.716656670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."NVol"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo111: TfrxMemoView
          Left = 516.535766670000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 516.535766670000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoB"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo113: TfrxMemoView
          Left = 636.220883330000000000
          Top = 136.063080000000000000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 636.220883330000000000
          Top = 145.511820790000000000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = ',0.00#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo193: TfrxMemoView
          Left = 459.102660000000000000
          Top = 15.118120000000000000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DOS TRIBUTOS APROXIMADO')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 464.882190000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VTotTrib"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 37.795287800000000000
        Top = 805.039890000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Header2OnBeforePrint'
        object Memo115: TfrxMemoView
          Top = 2.000000000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Top = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 60.472480000000000000
          Top = 15.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 283.464537640000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 321.259813230000000000
          Top = 15.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCR_CST]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 347.716506140000000000
          Top = 15.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 372.283493860000000000
          Top = 15.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 394.960659210000000000
          Top = 15.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE/TRIB')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 438.425480000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 483.779840000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 529.134200000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 619.842920000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 710.551640000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 733.228820000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 710.551640000000000000
          Top = 15.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'QUOTA %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Top = 782.362710000000000000
        Width = 755.906000000000000000
        RowCount = 1
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 35.795287800000000000
        Top = 317.480520000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnHeader1OnBeforePrint'
        object Memo5: TfrxMemoView
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Top = 13.118120000000000000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 60.472480000000000000
          Top = 13.118120000000000000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 283.464537640000000000
          Top = 13.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 321.259813230000000000
          Top = 13.118120000000000000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCR_CST]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 347.716506140000000000
          Top = 13.118120000000000000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 372.283493860000000000
          Top = 13.118120000000000000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 394.960659210000000000
          Top = 13.118120000000000000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 438.425480000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          Left = 483.779840000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          Left = 529.134200000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'TOTAL')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 574.488560000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 619.842920000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 665.197280000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 710.551640000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          Left = 733.228820000000000000
          Top = 24.456710000000000000
          Width = 22.677180000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          Left = 710.551640000000000000
          Top = 13.118120000000000000
          Width = 45.354360000000000000
          Height = 11.338572910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'QUOTA %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Top = 1009.134510000000000000
        Width = 755.906000000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 194.535542910000000000
        Top = 1069.606990000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ColumnFooter1OnBeforePrint'
        object Memo152: TfrxMemoView
          Top = 3.779530000000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Top = 16.897650000000100000
          Width = 217.322859060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Top = 26.346390790000200000
          Width = 217.322859060000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IM"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 217.322859060000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS SERVI'#199'OS')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 217.322859060000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VServ"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 396.850418110000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 396.850418110000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VBC"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 576.377977170000000000
          Top = 16.897650000000100000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO ISSQN')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 576.377977170000000000
          Top = 26.346390790000200000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VISS"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 517.795610000000000000
          Top = 58.472480000000100000
          Width = 238.110216690000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Top = 45.354360000000000000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS FDICIONAIS')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Top = 58.472480000000100000
          Width = 517.795319530000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -5
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Top = 68.031540000000000000
          Width = 517.795610000000000000
          Height = 124.724490000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[InformacoesAdicionais."OBS"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object Overlay1: TfrxOverlay
        FillType = ftBrush
        Height = 37.795177950000000000
        Top = 899.528140000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'Overlay1OnBeforePrint'
        object memWatermark: TfrxMemoView
          Align = baClient
          Width = 755.906000000000000000
          Height = 37.795177950000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'HOMOLOGA'#199#195'O'
            ''
            'SEM VALOR FISCAL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      LargeDesignHeight = True
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 5
        ColumnWidth = 151.181102362205000000
        DataSetName = 'Duplicatas'
        RowCount = 0
        object Memo81: TfrxMemoView
          Left = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Duplicatas."NDup"]'
            '[Duplicatas."DVenc"]'
            '[Duplicatas."VDup" #n%2,2n]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Width = 52.913420000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero'
            'Vencimento'
            'Valor R$')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          Left = 52.913420000000000000
          Width = 3.779530000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          LineSpacing = 3.000000000000000000
          Memo.UTF8W = (
            ':'
            ':'
            ':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
  end
end
