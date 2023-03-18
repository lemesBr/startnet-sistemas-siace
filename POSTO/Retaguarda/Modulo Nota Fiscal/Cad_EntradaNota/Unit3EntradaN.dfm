object EntradaNFCadFrm: TEntradaNFCadFrm
  Left = 225
  Top = 44
  Width = 757
  Height = 576
  Caption = 'Cadastro :: Entrada de Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 8
    Top = 96
    Width = 737
    Height = 113
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 16
      Top = 8
      Width = 69
      Height = 16
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 112
      Top = 8
      Width = 50
      Height = 16
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label8Click
      OnMouseEnter = Label8MouseEnter
      OnMouseLeave = Label8MouseLeave
    end
    object Label30: TLabel
      Left = 168
      Top = 8
      Width = 98
      Height = 16
      Caption = 'Garantia Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object TLabel
      Left = 384
      Top = 8
      Width = 3
      Height = 16
    end
    object Panel5: TPanel
      Left = 384
      Top = 8
      Width = 337
      Height = 49
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        337
        49)
      object Label7: TLabel
        Left = 104
        Top = 0
        Width = 42
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Cl. Fis.:'
      end
      object Label27: TLabel
        Left = 184
        Top = 0
        Width = 37
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'S. Tri.:'
      end
      object Label12: TLabel
        Left = 256
        Top = 0
        Width = 55
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Unidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 16
        Width = 65
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'CL_FIS'
        DataSource = DtsQry1Prod
        Enabled = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 16
        Width = 57
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'S_TRIB'
        DataSource = DtsQry1Prod
        Enabled = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 256
        Top = 16
        Width = 81
        Height = 24
        DataField = 'APR_UND'
        DataSource = DtsQry1Prod
        Enabled = False
        TabOrder = 2
      end
    end
    object Edit3: TEdit
      Left = 16
      Top = 24
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 0
      OnChange = Edit3Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyDown = Edit3KeyDown
      OnKeyPress = Edit3KeyPress
    end
    object Edit8: TEdit
      Left = 168
      Top = 24
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Visible = False
      OnChange = Edit8Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object Panel1: TPanel
      Left = 8
      Top = 56
      Width = 713
      Height = 41
      BevelOuter = bvNone
      TabOrder = 1
      TabStop = True
      object Label2: TLabel
        Left = 192
        Top = 0
        Width = 84
        Height = 16
        Hint = 'N'#186' de Controle do Formul'#225'rio'
        Caption = 'Valor Unit'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TLabel
        Left = 480
        Top = 0
        Width = 58
        Height = 16
        Caption = 'ICMS (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 560
        Top = 0
        Width = 41
        Height = 16
        Caption = 'IPI (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 296
        Top = 0
        Width = 61
        Height = 16
        Hint = 'N'#186' de Controle do Formul'#225'rio'
        Caption = 'Desc. (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 104
        Top = 0
        Width = 73
        Height = 16
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 384
        Top = 0
        Width = 59
        Height = 16
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 632
        Top = 0
        Width = 53
        Height = 16
        Caption = 'Valor IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 192
        Top = 16
        Width = 89
        Height = 24
        AutoSize = False
        DecimalPlaces = 6
        DisplayFormat = ',0.000000;-,0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = CurrencyEdit17Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 480
        Top = 16
        Width = 65
        Height = 24
        AutoSize = False
        DisplayFormat = ' ,0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 99.990000000000000000
        ParentFont = False
        TabOrder = 4
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object CurrencyEdit11: TCurrencyEdit
        Left = 560
        Top = 16
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 99.990000000000000000
        ParentFont = False
        TabOrder = 5
        OnChange = CurrencyEdit11Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object CurrencyEdit12: TCurrencyEdit
        Left = 296
        Top = 16
        Width = 73
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00;,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 99.990000000000000000
        ParentFont = False
        TabOrder = 2
        OnChange = CurrencyEdit17Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object CurrencyEdit15: TCurrencyEdit
        Left = 384
        Top = 16
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnChange = CurrencyEdit15Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = DateEdit2KeyPress
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 632
        Top = 16
        Width = 80
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        OnChange = CurrencyEdit16Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = CurrencyEdit16KeyPress
      end
      object CurrencyEdit17: TCurrencyEdit
        Left = 104
        Top = 16
        Width = 73
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = CurrencyEdit17Change
        OnEnter = Edit4Enter
        OnExit = Edit4Exit
        OnKeyPress = CurrencyEdit17KeyPress
      end
      object Panel6: TPanel
        Left = 0
        Top = 23
        Width = 100
        Height = 17
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 7
        object CheckBox1: TCheckBox
          Left = 8
          Top = 0
          Width = 89
          Height = 17
          Caption = 'N'#186' de S'#233'rie'
          TabOrder = 0
          OnKeyPress = DateEdit2KeyPress
        end
      end
    end
  end
  object Edit5: TEdit
    Left = 120
    Top = 120
    Width = 361
    Height = 24
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = Edit5Change
    OnEnter = Edit4Enter
    OnExit = Edit4Exit
    OnKeyPress = Edit5KeyPress
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 81
    Caption = 'Dados da Nota:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label15: TLabel
      Left = 16
      Top = 16
      Width = 73
      Height = 16
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label15Click
      OnMouseEnter = Label15MouseEnter
      OnMouseLeave = Label15MouseLeave
    end
    object Label4: TLabel
      Left = 584
      Top = 16
      Width = 50
      Height = 16
      Caption = 'N'#186' Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 472
      Top = 16
      Width = 82
      Height = 16
      Caption = 'Data Entrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 360
      Top = 16
      Width = 88
      Height = 16
      Caption = 'Data Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 656
      Top = 16
      Width = 62
      Height = 16
      Caption = 'Ctrl. Form.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 272
      Top = 16
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
    object Edit4: TEdit
      Left = 16
      Top = 32
      Width = 177
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyDown = Edit4KeyDown
      OnKeyPress = Edit4KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 32
      Width = 57
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object DBDateEdit2: TDBDateEdit
      Left = 472
      Top = 32
      Width = 97
      Height = 24
      DataField = 'DATAHORA_RECEBIMENTO'
      DataSource = DtsDstNFEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnEnter = Edit4Enter
      OnExit = DBDateEdit2Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object DBDateEdit1: TDBDateEdit
      Left = 360
      Top = 32
      Width = 97
      Height = 24
      DataField = 'DATAHORA_EMISSAO'
      DataSource = DtsDstNFEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnEnter = Edit4Enter
      OnExit = DBDateEdit1Exit
      OnKeyPress = DBDateEdit1KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 584
      Top = 32
      Width = 57
      Height = 24
      DataField = 'NUM_NF'
      DataSource = DtsDstNFEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 656
      Top = 32
      Width = 65
      Height = 24
      DataField = 'NUM_FORM'
      DataSource = DtsDstNFEntrada
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 272
      Top = 32
      Width = 73
      Height = 24
      DataField = 'CFOP'
      DataSource = Dts_NF_Entrada
      DropDownWidth = 450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_CFOP_CODIGO'
      ListField = 'COD_CFOP_CODIGO; DESC_OPERACAO'
      ListSource = DstQryCFOP
      NullValueKey = 46
      ParentFont = False
      TabOrder = 2
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = DBLookupComboBox1KeyPress
    end
  end
  object GroupBox8: TGroupBox
    Left = 312
    Top = 89
    Width = 281
    Height = 73
    Caption = 'Garantia Fornecedor:'
    TabOrder = 2
    Visible = False
    object Label28: TLabel
      Left = 16
      Top = 16
      Width = 31
      Height = 16
      Caption = 'Dias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 136
      Top = 16
      Width = 32
      Height = 16
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 136
      Top = 32
      Width = 103
      Height = 25
      GlyphKind = gkCustom
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000088888888888888880FF8FF8FF8FF
        8FF08FF8FF8FF8F38F3809F89F89F8FF8FF088F88F88F8FF8FF8088888888888
        888088888888888888880FF8FF8FF8FF8FF08FF8FF8FF8FF8FF809F89F89F89F
        89F088F88F88F88F88F8088888888888888088888888888888880FF8FF8FF8FF
        8FF08FF8FF8FF8FF8FF809F89F89F89F89F088F88F88F88F88F8088888888888
        888088888888888888880FFFFF8FF8FF8FF08F33338FF8FF8FF80FFFFF89F89F
        89F08FFFFF88F88F88F800000000000000008888888888888888CCCCCC7777CC
        CCCC888888FFFF888888CCCCCCCCCCCCCCCC8888888888888888}
      NumGlyphs = 2
      YearDigits = dyTwo
      TabOrder = 1
      OnChange = DateEdit1Change
      OnEnter = Edit4Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 102
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnChange = Edit1Change
      OnEnter = Edit4Enter
      OnExit = Edit4Exit
      OnKeyPress = DateEdit2KeyPress
    end
  end
  object Panel7: TPanel
    Left = 8
    Top = 216
    Width = 737
    Height = 225
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    object PageControl3: TPageControl
      Left = 8
      Top = 8
      Width = 727
      Height = 209
      ActivePage = TabSheet6
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl3Change
      object TabSheet6: TTabSheet
        Caption = 'Produtos'
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 719
          Height = 175
          ActivePage = TabSheet1
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style = tsFlatButtons
          TabOrder = 0
          OnChange = PageControl1Change
          object TabSheet1: TTabSheet
            Caption = 'Produtos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            object ListView1: TListView
              Left = 0
              Top = 0
              Width = 711
              Height = 144
              Align = alClient
              AllocBy = 3
              Columns = <
                item
                  Caption = 'Refer'#234'ncia'
                  Width = 90
                end
                item
                  Caption = 'Descri'#231#227'o'
                  Width = 200
                end
                item
                  Caption = 'Cl. Fis.'
                  Width = 60
                end
                item
                  Caption = 'S. Tri.'
                  Width = 60
                end
                item
                  Caption = 'Unid. Venda'
                  Width = 100
                end
                item
                  Caption = 'Quant.'
                  Width = 60
                end
                item
                  Caption = 'Valor Unit.'
                  Width = 80
                end
                item
                  Caption = 'Desc.(%)'
                  Width = 80
                end
                item
                  Caption = 'Sub-Total'
                  Width = 90
                end
                item
                  Caption = 'ICMS'
                  Width = 60
                end
                item
                  Caption = 'IPI'
                  Width = 60
                end
                item
                  Caption = 'Valor do IPI'
                  Width = 90
                end
                item
                  Caption = 'codprod'
                  Width = 0
                end
                item
                  Caption = 'alter/insert'
                  Width = 0
                end
                item
                  Caption = 'N'#186' serie'
                  Width = 0
                end
                item
                  Caption = 'Valor Desconto'
                  Width = 0
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GridLines = True
              HideSelection = False
              ReadOnly = True
              RowSelect = True
              ParentFont = False
              TabOrder = 0
              ViewStyle = vsReport
              OnKeyDown = ListView1KeyDown
              OnSelectItem = ListView1SelectItem
            end
            object Panel14: TPanel
              Left = 128
              Top = 48
              Width = 489
              Height = 73
              BevelInner = bvLowered
              BevelWidth = 4
              TabOrder = 1
              Visible = False
              object Label68: TLabel
                Left = 14
                Top = 14
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
              end
              object Label69: TLabel
                Left = 14
                Top = 16
                Width = 459
                Height = 47
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
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'N'#186' de S'#233'rie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImageIndex = 1
            ParentFont = False
            object ListView2: TListView
              Left = 0
              Top = 0
              Width = 711
              Height = 144
              Align = alClient
              Columns = <
                item
                  Caption = 'N'#186' de S'#233'rie'
                  Width = 459
                end
                item
                  Caption = 'Garantia Fornecedor'
                  Width = 139
                end
                item
                  Caption = 'Garantia Cliente'
                  Width = 139
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GridLines = True
              ReadOnly = True
              RowSelect = True
              ParentFont = False
              TabOrder = 0
              ViewStyle = vsReport
            end
            object ListView3: TListView
              Left = 368
              Top = 8
              Width = 305
              Height = 69
              Columns = <
                item
                  Caption = 'CodProd'
                  Width = 100
                end
                item
                  Caption = 'N'#186' de S'#233'rie'
                  Width = 100
                end
                item
                  Caption = 'Garantia Cliente'
                end
                item
                  Caption = 'Garantia Fornec'
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GridLines = True
              RowSelect = True
              ParentFont = False
              TabOrder = 1
              ViewStyle = vsReport
              Visible = False
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'C'#225'lculo de Imposto'
        ImageIndex = 1
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 569
          Height = 177
          ActivePage = TabSheet3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'ICMS'
            object Panel9: TPanel
              Left = -8
              Top = -8
              Width = 561
              Height = 153
              BevelOuter = bvNone
              TabOrder = 0
              object Label23: TLabel
                Left = 416
                Top = 8
                Width = 74
                Height = 16
                Caption = 'Isenta ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 8
                Top = 8
                Width = 103
                Height = 16
                Caption = 'Base C'#225'lc. ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 280
                Top = 8
                Width = 123
                Height = 16
                Caption = 'Valor Total do ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 8
                Top = 56
                Width = 77
                Height = 16
                Caption = 'Outras ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 280
                Top = 104
                Width = 118
                Height = 16
                Caption = 'ICMS Subst. Interna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 144
                Top = 104
                Width = 92
                Height = 16
                Caption = 'Valor Dif. ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 8
                Top = 104
                Width = 129
                Height = 16
                Caption = 'Aliquota ICMS Dif (%):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 416
                Top = 104
                Width = 121
                Height = 16
                Caption = 'C'#243'digo Fiscal ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 416
                Top = 56
                Width = 107
                Height = 16
                Caption = 'ICMS Antecipado:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 144
                Top = 8
                Width = 110
                Height = 16
                Caption = 'Aliquota ICMS (%):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 280
                Top = 56
                Width = 110
                Height = 16
                Caption = 'Valor ICMS Subst.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 144
                Top = 56
                Width = 110
                Height = 16
                Caption = 'Base ICMS Subst.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object CurrencyEdit8: TCurrencyEdit
                Left = 416
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 3
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit13: TCurrencyEdit
                Left = 280
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 2
                OnChange = CurrencyEdit13Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit14: TCurrencyEdit
                Left = 8
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 0
                OnChange = CurrencyEdit14Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = CurrencyEdit14KeyPress
              end
              object CurrencyEdit22: TCurrencyEdit
                Left = 8
                Top = 72
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 4
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit24: TCurrencyEdit
                Left = 144
                Top = 120
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 9
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object ComboBox1: TComboBox
                Left = 280
                Top = 120
                Width = 121
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ItemHeight = 16
                ItemIndex = 0
                ParentFont = False
                TabOrder = 10
                Text = 'N'#227'o'
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = ComboBox1KeyPress
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
              end
              object CurrencyEdit21: TCurrencyEdit
                Left = 8
                Top = 120
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 8
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object ComboBox2: TComboBox
                Left = 416
                Top = 120
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
                ItemIndex = 0
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DBEdit6KeyPress
                Items.Strings = (
                  ''
                  '1 - Op. c/ Cr'#233'd. Imposto'
                  '2 - Op. s/ Cr'#233'd. Imposto - Isentas ou N'#227'o Tributadas'
                  '3 - Op. s/ Cr'#233'd. Imposto - Outras')
              end
              object CurrencyEdit23: TCurrencyEdit
                Left = 416
                Top = 72
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 7
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit25: TCurrencyEdit
                Left = 144
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                MaxValue = 99.990000000000000000
                ParentFont = False
                TabOrder = 1
                OnChange = CurrencyEdit14Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit6: TCurrencyEdit
                Left = 280
                Top = 72
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 6
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit27: TCurrencyEdit
                Left = 144
                Top = 72
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 5
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'IPI'
            ImageIndex = 1
            object Panel10: TPanel
              Left = -8
              Top = -8
              Width = 553
              Height = 145
              BevelOuter = bvNone
              TabOrder = 0
              object Label24: TLabel
                Left = 280
                Top = 8
                Width = 106
                Height = 16
                Caption = 'Valor Total do IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 8
                Top = 8
                Width = 86
                Height = 16
                Caption = 'Base C'#225'lc. IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 8
                Top = 56
                Width = 60
                Height = 16
                Caption = 'Outras IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 416
                Top = 8
                Width = 57
                Height = 16
                Caption = 'Isenta IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 144
                Top = 8
                Width = 93
                Height = 16
                Caption = 'Aliquota IPI (%):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label43: TLabel
                Left = 144
                Top = 56
                Width = 104
                Height = 16
                Caption = 'C'#243'digo Fiscal IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object CurrencyEdit7: TCurrencyEdit
                Left = 280
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 2
                OnChange = CurrencyEdit7Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit18: TCurrencyEdit
                Left = 8
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 0
                OnChange = CurrencyEdit18Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = CurrencyEdit18KeyPress
              end
              object CurrencyEdit19: TCurrencyEdit
                Left = 8
                Top = 72
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 4
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit20: TCurrencyEdit
                Left = 416
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 3
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit26: TCurrencyEdit
                Left = 144
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                MaxValue = 99.990000000000000000
                ParentFont = False
                TabOrder = 1
                OnChange = CurrencyEdit18Change
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object ComboBox3: TComboBox
                Left = 144
                Top = 72
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
                TabOrder = 5
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DBEdit7KeyPress
                Items.Strings = (
                  ''
                  '1 - Op. c/ Cr'#233'd. Imposto'
                  '2 - Op. s/ Cr'#233'd. Imposto - Isentas ou N'#227'o Tributadas'
                  '3 - Op. s/ Cr'#233'd. Imposto - Outras')
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Outros'
            ImageIndex = 2
            object Panel11: TPanel
              Left = -8
              Top = -8
              Width = 505
              Height = 145
              BevelOuter = bvNone
              TabOrder = 0
              object Label19: TLabel
                Left = 8
                Top = 8
                Width = 88
                Height = 16
                Caption = 'Valor do Frete:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 144
                Top = 8
                Width = 82
                Height = 16
                Caption = 'Valor Seguro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 280
                Top = 8
                Width = 106
                Height = 16
                Caption = 'Outras despesas:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object CurrencyEdit5: TCurrencyEdit
                Left = 280
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 2
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit3: TCurrencyEdit
                Left = 144
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 1
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = DateEdit2KeyPress
              end
              object CurrencyEdit2: TCurrencyEdit
                Left = 8
                Top = 24
                Width = 121
                Height = 24
                AutoSize = False
                DisplayFormat = ',0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 17
                ParentFont = False
                TabOrder = 0
                OnEnter = Edit4Enter
                OnExit = Edit4Exit
                OnKeyPress = CurrencyEdit2KeyPress
              end
            end
          end
        end
        object Panel8: TPanel
          Left = 576
          Top = 16
          Width = 137
          Height = 121
          BevelOuter = bvNone
          TabOrder = 1
          object Label21: TLabel
            Left = 8
            Top = 62
            Width = 101
            Height = 16
            Caption = 'Valor Total Nota:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 8
            Top = 11
            Width = 126
            Height = 16
            Caption = 'Valor Total Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CurrencyEdit4: TCurrencyEdit
            Left = 8
            Top = 26
            Width = 121
            Height = 24
            AutoSize = False
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 17
            ParentFont = False
            TabOrder = 0
            OnChange = CurrencyEdit4Change
            OnEnter = Edit4Enter
            OnExit = Edit4Exit
            OnKeyPress = DateEdit2KeyPress
          end
          object CurrencyEdit9: TCurrencyEdit
            Left = 8
            Top = 77
            Width = 121
            Height = 24
            AutoSize = False
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 17
            ParentFont = False
            TabOrder = 1
            OnChange = CurrencyEdit9Change
            OnEnter = Edit4Enter
            OnExit = Edit4Exit
            OnKeyPress = CurrencyEdit9KeyPress
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 48
    Top = 453
    Width = 361
    Height = 196
    BevelInner = bvRaised
    TabOrder = 3
    Visible = False
    object DBGrid1: TDBGrid
      Left = 2
      Top = 19
      Width = 357
      Height = 175
      Hint = 'Contatos '
      Align = alClient
      DataSource = DtsQry1Prod
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 250
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 357
      Height = 17
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Produtos'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Qry1Prod: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select COD_PRODUTOS, ALIQUOTA_ICMS, ALIQUOTA_IPI, CL_FIS, APR_UN' +
        'D, S_TRIB, Nome, REFERENCIA from Produtos order by COD_PRODUTOS')
    Left = 640
    Top = 456
  end
  object DtsQry1Prod: TDataSource
    DataSet = Qry1Prod
    Left = 640
    Top = 488
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 672
    Top = 488
  end
  object DtsDstNFEntrada: TDataSource
    DataSet = DM1.Dst_NF_Entrada
    Left = 576
    Top = 488
  end
  object DtsDst_NF_Entrada_Produtos: TDataSource
    DataSet = DM1.Dst_NF_Entrada_Itens
    Left = 576
    Top = 456
  end
  object SQLinsert: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'select * from NF_ENTRADA_PRODUTO')
    Transaction = DM1.IBTransaction1
    Left = 544
    Top = 456
  end
  object SQLUpdate: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 544
    Top = 488
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 512
    Top = 488
  end
  object IBNserie: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 512
    Top = 456
  end
  object DstQryCFOP: TDataSource
    DataSet = QryCFOP
    Left = 480
    Top = 488
  end
  object QryCFOP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CFOP_CODIGO'
      'order by COD_CFOP_CODIGO')
    Left = 480
    Top = 456
  end
  object QryFornecedor: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTRO')
    Left = 672
    Top = 456
  end
  object QrySintegra: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_INFO')
    Left = 448
    Top = 456
  end
  object Dts_NF_Entrada: TDataSource
    DataSet = DM1.Dst_NF_Entrada
    Left = 608
    Top = 456
  end
  object Dts_NF_Entrada_Itens: TDataSource
    DataSet = DM1.Dst_NF_Entrada_Itens
    Left = 608
    Top = 488
  end
  object SQLEntrada: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 448
    Top = 488
  end
  object QryUpdate: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Dts_NF_Entrada
    SQL.Strings = (
      'select COD_PRODUTOS, QUANTIDADE from NF_ENTRADA_ITENS'
      'where COD_NF_ENTRADA = :Cod_Nf_Entrada')
    Left = 416
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_NF_ENTRADA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
end
