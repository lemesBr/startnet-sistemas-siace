object ProdutoCadFrm: TProdutoCadFrm
  Left = 304
  Top = 0
  Width = 827
  Height = 728
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  Caption = 'Cadastro :: Produtos'
  Color = clBtnFace
  Constraints.MinHeight = 492
  Constraints.MinWidth = 729
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 735
    Height = 433
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    TabOrder = 0
    OnEnter = TabSheet1Enter
    object TabSheet1: TTabSheet
      Caption = '   Produtos   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnEnter = TabSheet1Enter
      DesignSize = (
        727
        402)
      object GroupBox1: TGroupBox
        Left = 8
        Top = 0
        Width = 711
        Height = 393
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        DesignSize = (
          711
          393)
        object Label1: TLabel
          Left = 488
          Top = 16
          Width = 69
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Refer'#234'ncia:'
        end
        object Label3: TLabel
          Left = 16
          Top = 16
          Width = 50
          Height = 16
          Caption = 'Produto:'
        end
        object Label31: TLabel
          Left = 488
          Top = 336
          Width = 31
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'OBS:'
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 288
          Width = 209
          Height = 89
          Caption = ' Promo'#231#227'o: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Label18: TLabel
            Left = 16
            Top = 32
            Width = 41
            Height = 16
            Caption = 'Quant.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 16
            Top = 64
            Width = 39
            Height = 16
            Caption = 'Pre'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CurrencyEdit3: TCurrencyEdit
            Left = 120
            Top = 56
            Width = 65
            Height = 24
            Hint = 'Pre'#231'o Unit'#225'rio do Produto em Promo'#231#227'o'
            AutoSize = False
            DisplayFormat = ',0.00;,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 1
            ZeroEmpty = False
            OnChange = CurrencyEdit3Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
          object CurrencyEdit2: TCurrencyEdit
            Left = 120
            Top = 24
            Width = 65
            Height = 24
            Hint = 'Quantidade de In'#237'cio da Promo'#231#227'o'
            AutoSize = False
            DisplayFormat = ',0.00;,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 0
            ZeroEmpty = False
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 488
          Top = 160
          Width = 209
          Height = 169
          Anchors = [akTop, akRight]
          Caption = ' Pre'#231'o: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object Label9: TLabel
            Left = 16
            Top = 32
            Width = 37
            Height = 16
            Caption = 'Custo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 16
            Top = 64
            Width = 53
            Height = 16
            Caption = 'Margem:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 16
            Top = 120
            Width = 46
            Height = 16
            Caption = 'Venda :'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 16
            Top = 88
            Width = 73
            Height = 16
            AutoSize = False
            Caption = 'Sugest'#227'o: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CurrencyEdit9: TCurrencyEdit
            Left = 96
            Top = 56
            Width = 89
            Height = 24
            Hint = 'Margem Desejada para Venda'
            AutoSize = False
            DisplayFormat = ',0.00 %;-,0.00 %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            ParentFont = False
            TabOrder = 1
            ZeroEmpty = False
            OnChange = CurrencyEdit8Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
          object CurrencyEdit8: TCurrencyEdit
            Left = 96
            Top = 24
            Width = 89
            Height = 23
            Hint = 'Pre'#231'o de Custo'
            AutoSize = False
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 0
            ZeroEmpty = False
            OnChange = CurrencyEdit8Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
          object CurrencyEdit10: TCurrencyEdit
            Left = 16
            Top = 136
            Width = 169
            Height = 23
            Hint = 'Pre'#231'o de Venda'
            AutoSize = False
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 3
            ZeroEmpty = False
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit10KeyPress
          end
          object CurrencyEdit11: TCurrencyEdit
            Left = 80
            Top = 88
            Width = 105
            Height = 21
            Hint = 'Pre'#231'o Sugerido para Venda'
            TabStop = False
            AutoSize = False
            BorderStyle = bsNone
            Color = clBtnFace
            ReadOnly = True
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 248
          Top = 160
          Width = 209
          Height = 217
          Anchors = [akTop]
          Caption = ' Estoque: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label12: TLabel
            Left = 16
            Top = 32
            Width = 46
            Height = 16
            Caption = 'M'#237'nimo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 16
            Top = 64
            Width = 33
            Height = 16
            Caption = 'Ideal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 16
            Top = 160
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
          object Label24: TLabel
            Left = 16
            Top = 88
            Width = 35
            Height = 16
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CurrencyEdit6: TCurrencyEdit
            Left = 96
            Top = 88
            Width = 89
            Height = 24
            TabStop = False
            AutoSize = False
            BorderStyle = bsNone
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FormatOnEditing = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object CurrencyEdit4: TCurrencyEdit
            Left = 96
            Top = 24
            Width = 89
            Height = 24
            AutoSize = False
            DisplayFormat = ',0.00;,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 0
            ZeroEmpty = False
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
          object CurrencyEdit5: TCurrencyEdit
            Left = 96
            Top = 56
            Width = 89
            Height = 24
            AutoSize = False
            DisplayFormat = ',0.00;,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 1
            ZeroEmpty = False
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit2KeyPress
          end
          object CurrencyEdit7: TCurrencyEdit
            Left = 16
            Top = 176
            Width = 169
            Height = 24
            Hint = 'Quantidade em Estoque'
            AutoSize = False
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            MinValue = -9999999.990000000000000000
            ParentFont = False
            TabOrder = 3
            ZeroEmpty = False
            OnChange = CurrencyEdit7Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 16
          Top = 160
          Width = 209
          Height = 128
          Caption = ' Apresenta'#231#227'o: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label7: TLabel
            Left = 16
            Top = 96
            Width = 74
            Height = 16
            Caption = 'Und. Venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 16
            Top = 64
            Width = 77
            Height = 16
            Caption = 'Embalagem:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 16
            Top = 32
            Width = 41
            Height = 16
            Caption = 'Quant.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 120
            Top = 88
            Width = 65
            Height = 24
            DataField = 'APR_UND'
            DataSource = DtsDstProduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBEdit8: TDBEdit
            Left = 120
            Top = 56
            Width = 65
            Height = 24
            DataField = 'APR_EMBALAGEM'
            DataSource = DtsDstProduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 120
            Top = 24
            Width = 65
            Height = 24
            AutoSize = False
            DisplayFormat = ',0.00;,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FormatOnEditing = True
            MaxValue = 9999999.990000000000000000
            ParentFont = False
            TabOrder = 0
            ZeroEmpty = False
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = CurrencyEdit1KeyPress
          end
        end
        object Edit3: TEdit
          Left = 488
          Top = 32
          Width = 209
          Height = 24
          Anchors = [akTop, akRight]
          MaxLength = 28
          TabOrder = 0
          OnChange = Edit3Change
          OnEnter = Edit3Enter
          OnExit = Edit1Exit
          OnKeyDown = Edit3KeyDown
          OnKeyPress = Edit3KeyPress
        end
        object Panel3: TPanel
          Left = 8
          Top = 64
          Width = 697
          Height = 97
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          DesignSize = (
            697
            97)
          object Label5: TLabel
            Left = 256
            Top = 0
            Width = 71
            Height = 16
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Sub-Grupo :'
            OnClick = Label5Click
            OnMouseEnter = Label5MouseEnter
            OnMouseLeave = Label5MouseLeave
          end
          object Label23: TLabel
            Left = 480
            Top = 0
            Width = 76
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'C'#243'digo ECF:'
          end
          object Label15: TLabel
            Left = 592
            Top = 0
            Width = 92
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #218'ltima Compra:'
          end
          object Label6: TLabel
            Left = 8
            Top = 48
            Width = 73
            Height = 16
            Cursor = crHandPoint
            Caption = 'Fornecedor:'
            OnClick = Label6Click
            OnMouseEnter = Label6MouseEnter
            OnMouseLeave = Label6MouseLeave
          end
          object Label14: TLabel
            Left = 480
            Top = 48
            Width = 70
            Height = 16
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Fabricante :'
            OnClick = Label6Click
            OnMouseEnter = Label6MouseEnter
            OnMouseLeave = Label6MouseLeave
          end
          object Label4: TLabel
            Left = 8
            Top = 0
            Width = 43
            Height = 16
            Cursor = crHandPoint
            Caption = 'Grupo :'
            OnClick = Label4Click
            OnMouseEnter = Label4MouseEnter
            OnMouseLeave = Label4MouseLeave
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 8
            Top = 16
            Width = 231
            Height = 24
            Hint = 'Grupo de Produto'
            Anchors = [akLeft, akTop, akRight]
            DataField = 'COD_GRUPOP'
            DataSource = DtsDstProduto
            DropDownRows = 8
            KeyField = 'CODGRUPOP'
            ListField = 'NOME'
            ListSource = DtsGrupoP
            NullValueKey = 46
            TabOrder = 0
            OnDropDown = DBLookupComboBox1DropDown
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 256
            Top = 16
            Width = 209
            Height = 24
            Hint = 'Sub-Grupo de Produto'
            Anchors = [akTop, akRight]
            DataField = 'COD_SUBGRUPOP'
            DataSource = DtsDstProduto
            DropDownRows = 8
            KeyField = 'CODSUBGRUPOP'
            ListField = 'NOME'
            ListSource = DtsSubGrupoP
            NullValueKey = 46
            TabOrder = 1
            OnDropDown = DBLookupComboBox1DropDown
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 480
            Top = 16
            Width = 97
            Height = 24
            Hint = 'C'#243'digo de Tributa'#231#227'o do ECF'
            Anchors = [akTop, akRight]
            DataField = 'COD_ECF'
            DataSource = DtsDstProduto
            KeyField = 'CODECF'
            ListField = 'NOME'
            ListSource = DtsQryTrib
            NullValueKey = 46
            TabOrder = 2
            OnDropDown = DBLookupComboBox1DropDown
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBDateEdit1: TDBDateEdit
            Left = 592
            Top = 16
            Width = 98
            Height = 24
            Hint = 'Data da Compra do Produto'
            DataField = 'ULT_COMPRA'
            DataSource = DtsDstProduto
            GlyphKind = gkCustom
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
              777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
              79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
              777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
              79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
              CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
            Anchors = [akTop, akRight]
            NumGlyphs = 2
            TabOrder = 3
            YearDigits = dyTwo
            OnEnter = Edit1Enter
            OnExit = DBDateEdit1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object BitBtn2: TBitBtn
            Left = 416
            Top = 64
            Width = 47
            Height = 24
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
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
          object BitBtn1: TBitBtn
            Left = 640
            Top = 64
            Width = 47
            Height = 24
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
          object Edit2: TEdit
            Left = 8
            Top = 64
            Width = 393
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            ReadOnly = True
            TabOrder = 4
            OnChange = Edit1Change
            OnEnter = Edit1Enter
            OnExit = Edit1Exit
            OnKeyDown = Edit2KeyDown
            OnKeyPress = Edit2KeyPress
          end
          object Edit4: TEdit
            Left = 480
            Top = 64
            Width = 152
            Height = 24
            Anchors = [akTop, akRight]
            ReadOnly = True
            TabOrder = 6
            OnChange = Edit1Change
            OnEnter = Edit1Enter
            OnExit = Edit4Exit
            OnKeyDown = Edit2KeyDown
            OnKeyPress = Edit4KeyPress
          end
        end
        object DBEdit9: TDBEdit
          Left = 488
          Top = 352
          Width = 209
          Height = 24
          Anchors = [akTop, akRight]
          DataField = 'OBS'
          DataSource = DtsDstProduto
          TabOrder = 6
        end
      end
      object Edit1: TEdit
        Left = 24
        Top = 32
        Width = 453
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        MaxLength = 48
        TabOrder = 0
        OnChange = Edit1Change
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = '    Tributa'#231#227'o    '
      ImageIndex = 2
      object GroupBox9: TGroupBox
        Left = 8
        Top = 0
        Width = 711
        Height = 393
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label34: TLabel
          Left = 112
          Top = 64
          Width = 51
          Height = 16
          Caption = 'Sit. Trib.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 112
          Top = 112
          Width = 33
          Height = 16
          Caption = 'NCM:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 16
          Top = 16
          Width = 18
          Height = 16
          Caption = 'IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 16
          Top = 64
          Width = 35
          Height = 16
          Caption = 'ICMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 112
          Top = 16
          Width = 79
          Height = 16
          Caption = 'Class. Fiscal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 16
          Top = 112
          Width = 75
          Height = 16
          Caption = 'ICMS Subst.:'
        end
        object CurrencyEdit13: TCurrencyEdit
          Left = 16
          Top = 32
          Width = 81
          Height = 24
          Hint = 'Margem Desejada para Venda'
          AutoSize = False
          DisplayFormat = ',0.00 %;-,0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FormatOnEditing = True
          ParentFont = False
          TabOrder = 0
          ZeroEmpty = False
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = CurrencyEdit2KeyPress
        end
        object CurrencyEdit14: TCurrencyEdit
          Left = 16
          Top = 80
          Width = 81
          Height = 24
          Hint = 'Margem Desejada para Venda'
          AutoSize = False
          DisplayFormat = ',0.00 %;-,0.00 %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FormatOnEditing = True
          ParentFont = False
          TabOrder = 1
          ZeroEmpty = False
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = CurrencyEdit2KeyPress
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 112
          Top = 80
          Width = 121
          Height = 24
          DataField = 'S_TRIB'
          DataSource = DtsDstProduto
          DropDownWidth = 550
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'COD_ST'
          ListField = 'COD_ST; DESCRICAO'
          ListSource = DtsQrySitTrib
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
          OnDropDown = DBLookupComboBox1DropDown
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 112
          Top = 128
          Width = 121
          Height = 24
          DataField = 'CODIGO_NCM'
          DataSource = DtsDstProduto
          DropDownWidth = 550
          KeyField = 'CODIGO_NCM'
          ListField = 'CODIGO_NCM; DESC_NCM'
          ListSource = DstQryClFis
          NullValueKey = 46
          TabOrder = 5
          OnDropDown = DBLookupComboBox1DropDown
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = DBLookupComboBox5KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 32
          Width = 121
          Height = 24
          DataField = 'CL_FIS'
          DataSource = DtsDstProduto
          TabOrder = 3
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object CurrencyEdit15: TCurrencyEdit
          Left = 16
          Top = 128
          Width = 81
          Height = 24
          AutoSize = False
          DisplayFormat = ',0.00 %;-,0.00 %'
          TabOrder = 2
          OnEnter = Edit1Enter
          OnExit = Edit1Exit
          OnKeyPress = CurrencyEdit2KeyPress
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 20
    Top = 444
    Width = 681
    Height = 196
    BevelInner = bvRaised
    TabOrder = 1
    Visible = False
    object DBGrid1: TDBGrid
      Left = 2
      Top = 19
      Width = 677
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
          Width = 467
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Width = 189
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 677
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
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 472
    Top = 472
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 504
    object Comeco1: TMenuItem
      Caption = 'Procura a partir do Come'#231'o'
      GroupIndex = 2
      RadioItem = True
      OnClick = Comeco1Click
    end
    object Qualquer1: TMenuItem
      Caption = 'Procura em Qualquer parte'
      Checked = True
      GroupIndex = 2
      RadioItem = True
      OnClick = Qualquer1Click
    end
  end
  object DtsDstProduto: TDataSource
    DataSet = DM1.DstProduto
    Left = 568
    Top = 472
  end
  object Qry1Prod: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsDstProduto
    SQL.Strings = (
      'Select COD_PRODUTOS, NOME, REFERENCIA from Produtos '
      'where TIPO_PRODUTO = 0 '
      'order by NOME')
    Left = 664
    Top = 504
  end
  object DtsQry1Prod: TDataSource
    DataSet = Qry1Prod
    Left = 696
    Top = 472
  end
  object DtsGrupoP: TDataSource
    DataSet = QryGrupoP
    Left = 664
    Top = 472
  end
  object DtsSubGrupoP: TDataSource
    DataSet = QrySubGrupoP
    Left = 632
    Top = 472
  end
  object QryGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODGRUPOP, Nome from GRUPOP')
    Left = 632
    Top = 504
  end
  object QrySubGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsGrupoP
    SQL.Strings = (
      'select CODSUBGRUPOP, CODGRUPOP, Nome from SUBGRUPOP'
      'where'
      ' CODGRUPOP = :CODGRUPOP')
    Left = 600
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPOP'
        ParamType = ptUnknown
      end>
  end
  object DtsQryTrib: TDataSource
    DataSet = QryTrib
    Left = 600
    Top = 472
  end
  object QryTrib: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODECF, NOME from TRIBECF')
    Left = 568
    Top = 504
  end
  object SQLProduto: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'select NOME from CADASTRO')
    Transaction = DM1.IBTransaction1
    Left = 536
    Top = 472
  end
  object SQLFornec: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 536
    Top = 504
  end
  object sqlSERIE: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 504
    Top = 472
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 504
    Top = 504
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'BitBtn1.Hint'
      'BitBtn2.Hint'
      'GroupBox1.Caption'
      'GroupBox2.Caption'
      'GroupBox3.Caption'
      'GroupBox4.Caption'
      'GroupBox5.Caption'
      'Label1.Caption'
      'Label10.Caption'
      'Label11.Caption'
      'Label12.Caption'
      'Label13.Caption'
      'Label14.Caption'
      'Label15.Caption'
      'Label17.Caption'
      'Label18.Caption'
      'Label19.Caption'
      'Label21.Caption'
      'Label22.Caption'
      'Label23.Caption'
      'Label24.Caption'
      'Label3.Caption'
      'Label31.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'Label9.Caption'
      'TabSheet1.Caption'
      'Panel2.Caption')
    StoredValues = <>
    Left = 696
    Top = 504
  end
  object DtsQrySitTrib: TDataSource
    DataSet = QrySitTrib
    Left = 440
    Top = 472
  end
  object QrySitTrib: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SITUACAO_TRIBUTARIA')
    Left = 440
    Top = 504
  end
  object DstQryClFis: TDataSource
    DataSet = QryClFis
    Left = 408
    Top = 472
  end
  object QryClFis: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from NCM')
    Left = 408
    Top = 504
  end
end
