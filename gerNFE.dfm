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
    object myLabel3d1: TsLabelFX
      Left = 14
      Top = 2
      Width = 386
      Height = 33
      Caption = 'M O D U L O  DE  E N V I O  DA  N F E'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
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
      Width = 84
      Height = 13
      Caption = 'Inf. Adicional: '
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
        ParentFont = False
        TabOrder = 2
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
          FieldName = 'VL_AVISTA'
          Title.Caption = 'Valor Avista'
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
          FieldName = 'VL_PRAZO'
          Title.Caption = 'Valor a Prazo'
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
      Left = 107
      Top = 12
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
    Connection = DM.SQLC
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
    Left = 298
    Top = 16
  end
  object OpenDialog1: TOpenDialog
    Ctl3D = False
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    InitialDir = 'c:\siace\nfe'
    Options = [ofHideReadOnly]
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
        'TRIBU, GR.FONTE, ncm.alic_nac, ncm.alic_imp,ncm.alic_estadual, P' +
        '.VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      
        'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO, P.CEST, p.DESC_P' +
        'ROD_ANP'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 464
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
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 70
    end
    object QBuscaItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Origin = 'PRECO_UNITARIO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object QBuscaItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TStringField
      FieldName = 'DEV'
      Origin = 'DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TBCDField
      FieldName = 'QNT_DEV'
      Origin = 'QNT_DEV'
      Precision = 18
    end
    object QBuscaItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Origin = 'VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object QBuscaItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Origin = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Origin = 'BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Origin = 'VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Origin = 'VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Origin = 'VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Origin = 'VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Origin = 'VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
      Required = True
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
    end
    object QBuscaItensID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TStringField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Size = 5
    end
    object QBuscaItensBICO: TStringField
      FieldName = 'BICO'
      Origin = 'BICO'
      Size = 2
    end
    object QBuscaItensICMS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS'
      Origin = 'ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensAPLICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QBuscaItensIPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensNCM_SH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItensUND_TRIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'SIT_COFINS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'SIT_PIS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'SIT_COFINS_VENDA_INTER_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'SIT_PIS_VENDA_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensFLAG_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_ICMS'
      Origin = 'FLAG_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensCST_IPI_SAIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'CST_IPI_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QBuscaItensCST_VENDA_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA_INTER'
      Origin = 'CST_VENDA_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'CFOP_INTER_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensFLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensPERC_ICMS_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_ESTADUAL'
      Origin = 'PERC_ICMS_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_INTER_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_INTER_ESTADUAL'
      Origin = 'PERC_ICMS_INTER_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensCFOP_EST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'CFOP_EST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCFOP_REV_EST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_REV_EST'
      Origin = 'CFOP_REV_EST'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCFOP_REV_INTER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_REV_INTER'
      Origin = 'CFOP_REV_INTER'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCFOP_EST_TRANSF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_EST_TRANSF'
      Origin = 'CFOP_EST_TRANSF'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCFOP_INTER_EST_TRASNF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_INTER_EST_TRASNF'
      Origin = 'CFOP_INTER_EST_TRASNF'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensCST_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_VENDA'
      Origin = 'CST_VENDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QBuscaItensNCM_SH_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM_SH_1'
      Origin = 'NCM_SH'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscaItensPERC_TRIBU: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_TRIBU'
      Origin = 'PERC_TRIBU'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONTE'
      Origin = 'FONTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_ESTADUAL'
      Origin = 'ALIC_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QBuscaItensCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COR'
      Origin = 'COR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaItensCOR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensN_MOTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensANO_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensN_SERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QBuscaItensDESC_PROD_ANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_PROD_ANP'
      Origin = 'DESC_PROD_ANP'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 568
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
        'TRIBU, GR.FONTE, ncm.alic_nac, ncm.alic_imp,ncm.alic_estadual, P' +
        '.VEICULO, P.CHASSI, P.COR,'
      
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
    Left = 464
    Top = 56
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
    object QBuscaItens1VALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1TOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QBuscaItens1BASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PRECO_VENDA2: TFMTBCDField
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
    object QBuscaItens1MARG_LUCRO: TFMTBCDField
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
    object QBuscaItens1BASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Origin = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_ICMS_ST: TFMTBCDField
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
    object QBuscaItens1BASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1VALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1BASE_IPI: TFMTBCDField
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
    object QBuscaItens1SUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1DESCONTO_P: TFMTBCDField
      FieldName = 'DESCONTO_P'
      Origin = 'DESCONTO_P'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_REDUCAO: TFMTBCDField
      FieldName = 'ICMS_REDUCAO'
      Origin = 'ICMS_REDUCAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_VALORRETIDO: TFMTBCDField
      FieldName = 'ICMS_VALORRETIDO'
      Origin = 'ICMS_VALORRETIDO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_ISENTO: TFMTBCDField
      FieldName = 'ICMS_ISENTO'
      Origin = 'ICMS_ISENTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ICMS_NAOTRIBUTADO: TFMTBCDField
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
    object QBuscaItens1FRETE: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1OUTRAS: TFMTBCDField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1SEGURO: TFMTBCDField
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
    object QBuscaItens1SUB_PRODUTOS: TFMTBCDField
      FieldName = 'SUB_PRODUTOS'
      Origin = 'SUB_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1ITEM_ESPECIAL_VALOR: TFMTBCDField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Origin = 'ITEM_ESPECIAL_VALOR'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1ICMS_OUTRAS: TFMTBCDField
      FieldName = 'ICMS_OUTRAS'
      Origin = 'ICMS_OUTRAS'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
      Origin = 'ALTERA_ITEM'
    end
    object QBuscaItens1CREDITO_ICMS: TFMTBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1CREDITO_ICMS_BASE: TFMTBCDField
      FieldName = 'CREDITO_ICMS_BASE'
      Origin = 'CREDITO_ICMS_BASE'
      Precision = 18
      Size = 3
    end
    object QBuscaItens1PMARGEM: TSingleField
      FieldName = 'PMARGEM'
      Origin = 'PMARGEM'
    end
    object QBuscaItens1PRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItens1CODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Origin = 'CODLANCAMENTO'
      Size = 50
    end
    object QBuscaItens1ICMS: TFMTBCDField
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
    object QBuscaItens1IPI_IRPJ: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1OUTROS_IMPOSTOS: TFMTBCDField
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
      Size = 12
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
    object QBuscaItens1ML_QUANT_BEB: TFMTBCDField
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
    object QBuscaItens1PERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ALIQUOTA_COFINS: TFMTBCDField
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
    object QBuscaItens1PERC_ICMS_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ICMS_ESTADUAL'
      Origin = 'PERC_ICMS_ESTADUAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1PERC_ICMS_INTER_ESTADUAL: TFMTBCDField
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
    object QBuscaItens1PERC_TRIBU: TFMTBCDField
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
    object QBuscaItens1ALIC_NAC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_NAC'
      Origin = 'ALIC_NAC'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_IMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_IMP'
      Origin = 'ALIC_IMP'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QBuscaItens1ALIC_ESTADUAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIC_ESTADUAL'
      Origin = 'ALIC_ESTADUAL'
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
    object QBuscaItens1PESOBRUTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object QBuscaItens1PESOLIQUIDO: TFMTBCDField
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
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens1
    Left = 560
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42203.460160023100000000
    ReportOptions.LastChange = 44537.052167199100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Linha,qtd:Integer;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if linha>14 then begin'
      '  Header2.StartNewPage:=True;'
      '  line49.visible:=false;'
      ' end;'
      '   if linha<14 then begin'
      '    qtd:=14-linha;'
      '    footer1.height:=footer1.height+(qtd*16);'
      '  end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'Linha:=0;'
      ''
      'end;'
      ''
      'procedure DetailData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  Linha:=Linha+1;'
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
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSetName = 'frxDBItens'
      end
      item
        DataSetName = 'frxDBPV'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Endereco'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'COlonna MT'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 52.913420000000000000
        ParentFont = False
        Top = 124.724490000000000000
        Width = 737.008350000000000000
        DataSetName = 'frxDBPV'
        RowCount = 0
        object Memo84: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 52.913420000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 102.263080000000000000
          Top = 3.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 430.127830000000000000
          Top = 3.722820000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 17.759060000000000000
          Top = 18.897637795275600000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 34.771653543307100000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object frxDBPVRAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 18.897637800000000000
          Width = 599.735560000000000000
          Height = 15.420470000000000000
          DataField = 'RAZAO'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."RAZAO"]')
          ParentFont = False
        end
        object frxDBPVNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 34.771653540000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VENDEDOR'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VENDEDOR"]')
          ParentFont = False
        end
        object frxDBPVDATA_EMISSAO: TfrxMemoView
          AllowVectorExport = True
          Left = 495.016080000000000000
          Top = 3.779530000000000000
          Width = 205.379530000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 18.118120000000000000
          Top = 2.779530000000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.819530000000000000
        Top = 245.669450000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo82: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 23.819530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COlonna MT'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object frxDBItensID_PRODUTO: TfrxMemoView
          AllowVectorExport = True
          Left = -62.031540000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'ID_PRODUTO'
          DataSetName = 'frxDBItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."ID_PRODUTO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 2.559060000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'ITEM'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ITEM"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 2.559060000000000000
          Width = 338.721460000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO_SL'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO_SL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 396.107360000000000000
          Top = 3.559060000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'PRECO'
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."PRECO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 496.160000000000000000
          Top = 3.559060000000000000
          Width = 81.713420000000000000
          Height = 15.118120000000000000
          DataField = 'QTD'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 642.720000000000000000
          Top = 3.559060000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ITEM'
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VALOR_ITEM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 587.360000000000000000
          Top = 2.779530000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'UNIDADE'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."UNIDADE"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Top = 0.677180000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 391.520000000000000000
          Top = 0.779530000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Top = 0.779530000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 583.520000000000000000
          Top = 0.338590000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Top = 0.559060000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 737.008350000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 4.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 4.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 426.907360000000000000
          Top = 4.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 496.200940000000000000
          Top = 4.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 641.760940000000000000
          Top = 4.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 587.400940000000000000
          Top = 5.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 41.040940000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 391.560940000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 491.440940000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 583.560940000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 639.240940000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo83: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 105.826776540000000000
        ParentFont = False
        Top = 291.023810000000000000
        Width = 737.008350000000000000
        OnAfterCalcHeight = 'Footer1OnAfterCalcHeight'
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874015748000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object frxDBOrcamentoOBS: TfrxMemoView
          AllowVectorExport = True
          Left = 127.579530000000000000
          Top = 34.015770000000000000
          Width = 595.200000000000000000
          Height = 32.881880000000000000
          DataSetName = 'frxDBPV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 114.595300000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 67.415770000000000000
          Width = 384.000000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 67.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object frxDBPVSUBTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object frxDBPVDESCONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object frxDBPVTOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 56.692950000000000000
        ParentFont = False
        Top = 540.472790000000000000
        Width = 737.008350000000000000
        DataSetName = 'frxDBPV'
        RowCount = 0
        object Memo80: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 56.692950000000000000
          DataSetName = 'frxDBPV'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 112.601670000000000000
          Top = 3.645669290000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."CODIGO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 440.466420000000000000
          Top = 3.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 29.097650000000000000
          Top = 18.763779530000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 19.897650000000000000
          Top = 34.637795280000000000
          Width = 76.195300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 112.897650000000000000
          Top = 34.637795280000000000
          Width = 403.200000000000000000
          Height = 15.420470000000000000
          DataField = 'VENDEDOR'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."VENDEDOR"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 524.354670000000000000
          Top = 3.645669290000000000
          Width = 201.600000000000000000
          Height = 15.420470000000000000
          DataField = 'DATA_EMISSAO'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 28.456710000000000000
          Top = 3.645669290000000000
          Width = 66.595300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PEDIDO n'#186)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 112.385900000000000000
          Top = 18.763779530000000000
          Width = 614.853680000000000000
          Height = 15.420470000000000000
          DataField = 'RAZAO'
          DataSetName = 'frxDBPV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."RAZAO"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 96.488250000000000000
        ParentFont = False
        Top = 419.527830000000000000
        Width = 737.008350000000000000
        object Memo79: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 737.008350000000000000
          Height = 81.370130000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 109.883550000000000000
          Top = 17.338590000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 110.179530000000000000
          Top = 38.081880000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 77.845640000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 16.563760000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 109.779530000000000000
          Top = 58.445640000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 3.559060000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Style = fsDashDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'COlonna MT'
        Font.Style = []
        Height = 81.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 101.663080000000000000
          Top = 0.774830000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBEmp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."FANTASIA"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 101.959060000000000000
          Top = 21.518120000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'END:[frxDBEmpresa."ENDERECO"],[frxDBEmpresa."NUMERO"] - [frxDBEm' +
              'presa."BAIRRO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 61.281880000000000000
          Width = 624.000000000000000000
          Height = 15.420470000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FONE:[frxDBEmpresa."FONE"] EMAIL:[frxDBEmpresa."EMAIL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 86.400000000000000000
          Height = 76.800000000000000000
          Center = True
          DataField = 'LOGOMARCA'
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 101.559060000000000000
          Top = 41.881880000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]- [frxDBEmpresa."UF"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 619.842920000000000000
        Width = 737.008350000000000000
        object Memo78: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ITEM')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 48.954360000000000000
          Top = 4.779530000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 430.686890000000000000
          Top = 4.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 499.980470000000000000
          Top = 4.779530000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 645.540470000000000000
          Top = 4.779530000000000000
          Width = 91.011070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 591.180470000000000000
          Top = 5.000000000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377952755900000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582677165000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110236220000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677165354000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637795276000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 665.197280000000000000
        Width = 737.008350000000000000
        OnAfterPrint = 'DetailData1OnAfterPrint'
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo81: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 737.008350000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 3.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ITEM'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."ITEM"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 45.174830000000000000
          Top = 3.000000000000000000
          Width = 342.500990000000000000
          Height = 15.118120000000000000
          DataField = 'DESCRICAO_SL'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItens."DESCRICAO_SL"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 398.107360000000000000
          Top = 3.000000000000000000
          Width = 89.272480000000000000
          Height = 15.118120000000000000
          DataField = 'PRECO'
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."PRECO"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 499.160000000000000000
          Top = 3.000000000000000000
          Width = 85.492950000000000000
          Height = 15.118120000000000000
          DataField = 'QTD'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."QTD"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 643.720000000000000000
          Top = 3.000000000000000000
          Width = 91.200000000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_ITEM'
          DataSetName = 'frxDBItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."VALOR_ITEM"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 590.360000000000000000
          Top = 3.220470000000000000
          Width = 47.092950000000000000
          Height = 15.118120000000000000
          DataField = 'UNIDADE'
          DataSetName = 'frxDBItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBItens."UNIDADE"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 44.976377952755900000
          Top = 0.220470000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 395.338582680000000000
          Top = 0.220470000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 495.118110236220000000
          Top = 0.220470000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 586.582677165354000000
          Top = 0.220470000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 642.897637795276000000
          Top = 0.220470000000000000
          Height = 23.040000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 710.551640000000000000
        Width = 737.008350000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 737.007874015748000000
          Height = 28.800000000000000000
          Frame.Typ = []
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 127.579530000000000000
          Top = 34.015770000000000000
          Width = 595.200000000000000000
          Height = 32.881880000000000000
          DataSetName = 'frxDBPV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."OBSERVACOES"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 114.595300000000000000
          Height = 16.320000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 67.415770000000000000
          Width = 384.000000000000000000
          Height = 28.800000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Declaro que recebi os itens descritos acima, [frxDBEmpresa."CIDA' +
              'DE"]-[frxDBEmpresa."UF"], [DATE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 396.600000000000000000
          Top = 67.518120000000000000
          Width = 326.400000000000000000
          Height = 28.800000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___________________________________________'
            'ASSINATURA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 523.104330000000000000
          Top = 5.379530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total>>>')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 4.779530000000000000
          Width = 93.051961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal>>>')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 274.318120000000000000
          Top = 3.779530000000000000
          Width = 102.651961180000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto>>>')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 113.118120000000000000
          Top = 4.943290000000000000
          Width = 153.600000000000000000
          Height = 19.200000000000000000
          DataField = 'SUBTOTAL'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 379.918120000000000000
          Top = 4.343290000000000000
          Width = 124.800000000000000000
          Height = 19.200000000000000000
          DataField = 'DESCONTO'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 619.918120000000000000
          Top = 4.943290000000000000
          Width = 115.200000000000000000
          Height = 19.200000000000000000
          DataField = 'TOTAL'
          DataSetName = 'frxDBPV'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPV."TOTAL"]')
          ParentFont = False
        end
      end
    end
  end
  object n_nota: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      
        'select max(NR_NOTA) n_nota from  NFe_NOTA where cd_empresa =:cod' +
        '_emp')
    Left = 607
    Top = 235
    ParamData = <
      item
        Name = 'COD_EMP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object n_notaN_NOTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_NOTA'
      Origin = 'N_NOTA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
