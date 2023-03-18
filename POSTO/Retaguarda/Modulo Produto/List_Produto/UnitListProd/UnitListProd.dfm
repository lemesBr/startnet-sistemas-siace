object ProdutoListFrm: TProdutoListFrm
  Left = 12
  Top = 7
  Width = 808
  Height = 608
  ActiveControl = Edit1
  Caption = 'Listagem :: Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000088888888888888888800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008F0000000000000FF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008F0000000000000FF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008F0000000000000FF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008F0000000000000FF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008F0000000000000FF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008F0000000000000FF8000000000000008FFFFFFFFFFFFFFFF800000000000
    0008FFFFFFFFFFFFFFFF8000000000000008FF44EFFFFFFF8888800000000000
    0008F44E4F4444448FFF8000000000000008FF44FFFFFFFF8FF8000000000000
    0008FFFFFFFFFFFF8F8000000000000000088888888888888800000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFF00003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00
    003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00
    003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00003FFE00
    003FFE00003FFE00007FFE0000FFFE0001FFFE0003FFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 209
    Caption = ' Filtros: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 69
      Height = 16
      Cursor = crHandPoint
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label2Click
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object Label3: TLabel
      Left = 512
      Top = 16
      Width = 40
      Height = 16
      Cursor = crHandPoint
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label3Click
      OnMouseEnter = Label3MouseEnter
      OnMouseLeave = Label3MouseLeave
    end
    object Label4: TLabel
      Left = 512
      Top = 64
      Width = 68
      Height = 16
      Cursor = crHandPoint
      Caption = 'Sub-Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label4Click
      OnMouseEnter = Label4MouseEnter
      OnMouseLeave = Label4MouseLeave
    end
    object Label6: TLabel
      Left = 232
      Top = 16
      Width = 73
      Height = 16
      Cursor = crHandPoint
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label6Click
      OnMouseEnter = Label6MouseEnter
      OnMouseLeave = Label6MouseLeave
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 50
      Height = 16
      Cursor = crHandPoint
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label2Click
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object Label8: TLabel
      Left = 232
      Top = 64
      Width = 67
      Height = 16
      Cursor = crHandPoint
      Caption = 'Fabricante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label6Click
      OnMouseLeave = Label6MouseLeave
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 201
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit2KeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 512
      Top = 32
      Width = 209
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODGRUPOP'
      ListField = 'NOME'
      ListSource = DtsQryGrupoP
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 232
      Top = 32
      Width = 201
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit3KeyPress
    end
    object GroupBox4: TGroupBox
      Left = 408
      Top = 112
      Width = 193
      Height = 89
      Caption = ' Per'#237'do da Compra: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = True
      object Label5: TLabel
        Left = 8
        Top = 32
        Width = 21
        Height = 16
        Caption = 'De:'
      end
      object Label7: TLabel
        Left = 8
        Top = 64
        Width = 23
        Height = 16
        Caption = 'At'#233':'
      end
      object DateEdit1: TDateEdit
        Left = 48
        Top = 24
        Width = 129
        Height = 24
        NumGlyphs = 2
        TabOrder = 0
        OnChange = DateEdit1Change
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 48
        Top = 56
        Width = 129
        Height = 24
        NumGlyphs = 2
        TabOrder = 1
        OnChange = DateEdit1Change
        OnEnter = DateEdit1Enter
        OnExit = DateEdit1Exit
        OnKeyPress = DateEdit2KeyPress
      end
    end
    object Edit2: TEdit
      Left = 16
      Top = 80
      Width = 201
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 112
      Width = 377
      Height = 89
      Caption = ' Estoque: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
      object CheckBox1: TCheckBox
        Left = 16
        Top = 24
        Width = 145
        Height = 17
        Caption = 'Abaixo do M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 56
        Width = 121
        Height = 17
        Caption = 'Abaixo do Ideal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object CheckBox3: TCheckBox
        Left = 160
        Top = 24
        Width = 104
        Height = 17
        Caption = 'Em Promo'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox4: TCheckBox
        Left = 160
        Top = 56
        Width = 97
        Height = 17
        Caption = 'Negativo'
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox7: TCheckBox
        Left = 280
        Top = 24
        Width = 89
        Height = 17
        Caption = 'Positivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object CheckBox8: TCheckBox
        Left = 280
        Top = 56
        Width = 73
        Height = 17
        Caption = 'Zerado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox1Click
      end
    end
    object BitBtn2: TBitBtn
      Left = 440
      Top = 32
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object BitBtn3: TBitBtn
      Left = 440
      Top = 80
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    object Edit4: TEdit
      Left = 232
      Top = 80
      Width = 200
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit3KeyPress
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 512
      Top = 80
      Width = 209
      Height = 24
      Hint = 'Sub-Grupo de Produto'
      DropDownRows = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODSUBGRUPOP'
      ListField = 'NOME'
      ListSource = DtsQrySubGrupoP
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
      OnDropDown = DBLookupComboBox1DropDown
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox5: TCheckBox
      Left = 616
      Top = 120
      Width = 105
      Height = 17
      Caption = 'Listar N'#186' Serie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = CheckBox1Click
      OnKeyDown = CheckBox5KeyDown
      OnMouseDown = CheckBox5MouseDown
    end
    object CheckBox6: TCheckBox
      Left = 616
      Top = 144
      Width = 105
      Height = 17
      Caption = 'Sem Garantia'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = CheckBox1Click
    end
  end
  object Panel7: TPanel
    Left = 8
    Top = 224
    Width = 737
    Height = 217
    Caption = '(Nenhum registro encontrado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 96
      Width = 735
      Height = 0
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel6: TPanel
      Left = 1
      Top = 193
      Width = 735
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '   Listagem de Produtos'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        735
        23)
      object SpeedButton3: TSpeedButton
        Left = 632
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          18000000000048030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00BF003FBF003FBF003FBF003FBF003F
          BF003FBF003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00BF7F00BF7F
          00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
          00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
          BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
          003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
          FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
          BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton1: TSpeedButton
        Left = 656
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
          00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
          BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
          003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
          FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
          BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
          003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton2: TSpeedButton
        Left = 680
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Expandir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF
          7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F
          00BF7F00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00
          BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF003FBF
          003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF003FBF003FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton4: TSpeedButton
        Left = 704
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7E030000424D7E030000000000003600000028000000130000000E0000000100
          18000000000048030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF003FBF003F
          BF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FFFFF00FFFF
          00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF
          7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F
          00BF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00
          BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00FF
          FF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FFFFF00FFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FFFFF00BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF00
          3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FFF
          FF00FFFF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00FFFF
          00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBF003FBF
          003FBF003FBF003FFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00BFBFBF
          BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 96
      Width = 735
      Height = 97
      Align = alBottom
      Caption = 'Panel9'
      TabOrder = 1
      Visible = False
      object DBGrid2: TDBGrid
        Left = 1
        Top = 18
        Width = 733
        Height = 78
        Align = alClient
        Constraints.MinHeight = 50
        DataSource = DtsNumSerie
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_SERIE'
            Title.Caption = 'N'#186' de S'#233'rie'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 312
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_FABRICANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Data Garantia Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 132
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FIM_GARANTIA_FABRICANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 132
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GARANTIA_POSVENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Garantia Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 132
            Visible = True
          end>
      end
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 733
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'N'#250'meros de Serie'
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 735
      Height = 95
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 733
        Height = 93
        Align = alClient
        DataSource = DtsQryListProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_VENDA'
            Title.Caption = 'Pre'#231'o Venda'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRC_CUSTO'
            Title.Caption = 'Pre'#231'o Custo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_ATUAL'
            Title.Caption = 'Estoque'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NTRIBECF'
            Title.Caption = 'Tributa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_MIN'
            Title.Caption = 'Estoque Minimo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_IDEAL'
            Title.Caption = 'Estoque Ideal'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULT_COMPRA'
            Title.Caption = 'Ultima Compra'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRM_QUANT'
            Title.Caption = 'Quant. Promo'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRM_PRC'
            Title.Caption = 'Pre'#231'o Promo'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APR_UND'
            Title.Caption = 'Unidade'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDOR'
            Title.Caption = 'Fornecedor'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FABRICANTE'
            Title.Caption = 'Fabricante'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Grupo'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBGRUPO'
            Title.Caption = 'Sub-Grupo'
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object QryListProd: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryListProdAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  PRODUTOS.COD_PRODUTOS,PRODUTOS.REFERENCIA, PRODUTOS.NOME' +
        ', PRODUTOS.Prc_Venda,'
      'PRODUTOS.EST_ATUAL, PRODUTOS.EST_MIN, PRODUTOS.EST_IDEAL,'
      'PRODUTOS.ULT_COMPRA, PRODUTOS.PRM_QUANT,PRODUTOS.Apr_Und,'
      
        'PRODUTOS.PRM_PRC,a.NOME FORNECEDOR,b.NOME FABRICANTE, TribEcf.no' +
        'me NTRIBECF, Grupop.nome GRUPO,'
      
        'SubGrupoP.Nome SUBGRUPO, PRODUTOS.Prc_Custo,ENABLE_NUMSERIE from' +
        ' PRODUTOS                    '
      'LEFT OUTER JOIN TribEcf ON (PRODUTOS.COD_ECF = TribEcf.CODECF)'
      
        'LEFT OUTER JOIN GrupoP ON (PRODUTOS.COD_GRUPOP = Grupop.CodGrupo' +
        'P)'
      
        'LEFT OUTER JOIN SubGrupoP ON (PRODUTOS.COD_SUBGRUPOP = SubGrupop' +
        '.CodSubGRUPOP)'
      
        'LEFT OUTER JOIN CADASTRO a on (a.CODCLI=PRODUTOS.COD_CLI_FORNECE' +
        'DOR)'
      
        'LEFT OUTER JOIN CADASTRO b on (b.CODCLI= PRODUTOS.COD_CLI_FABRIC' +
        'ANTE)'
      'where COD_PRODUTOS<> 0')
    Left = 16
    Top = 456
    object QryListProdCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object QryListProdREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = 'PRODUTOS.REFERENCIA'
      Required = True
      Size = 30
    end
    object QryListProdNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object QryListProdPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PRODUTOS.PRC_VENDA'
      Required = True
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object QryListProdEST_ATUAL: TIBBCDField
      FieldName = 'EST_ATUAL'
      Origin = 'PRODUTOS.EST_ATUAL'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryListProdEST_MIN: TIBBCDField
      FieldName = 'EST_MIN'
      Origin = 'PRODUTOS.EST_MIN'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryListProdEST_IDEAL: TIBBCDField
      FieldName = 'EST_IDEAL'
      Origin = 'PRODUTOS.EST_IDEAL'
      Precision = 18
      Size = 3
    end
    object QryListProdULT_COMPRA: TDateTimeField
      FieldName = 'ULT_COMPRA'
      Origin = 'PRODUTOS.ULT_COMPRA'
    end
    object QryListProdPRM_QUANT: TIBBCDField
      FieldName = 'PRM_QUANT'
      Origin = 'PRODUTOS.PRM_QUANT'
      Precision = 18
      Size = 3
    end
    object QryListProdAPR_UND: TIBStringField
      FieldName = 'APR_UND'
      Origin = 'PRODUTOS.APR_UND'
      Required = True
      Size = 6
    end
    object QryListProdPRM_PRC: TIBBCDField
      FieldName = 'PRM_PRC'
      Origin = 'PRODUTOS.PRM_PRC'
      Precision = 18
      Size = 3
    end
    object QryListProdFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'CADASTRO.NOME'
      Size = 50
    end
    object QryListProdFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'CADASTRO.NOME'
      Size = 50
    end
    object QryListProdGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPOP.NOME'
      Size = 30
    end
    object QryListProdSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPOP.NOME'
      Size = 30
    end
    object QryListProdPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = 'PRODUTOS.PRC_CUSTO'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object QryListProdENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'PRODUTOS.ENABLE_NUMSERIE'
      Required = True
    end
    object QryListProdNTRIBECF: TIBStringField
      FieldName = 'NTRIBECF'
      Origin = 'TRIBECF.NOME'
      Size = 10
    end
  end
  object QrySubGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryGrupoPAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryGrupoP
    SQL.Strings = (
      'select CODSUBGRUPOP, CODGRUPOP, Nome from SUBGRUPOP'
      'where'
      ' CODGRUPOP = :CODGRUPOP order by nome')
    Left = 80
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODGRUPOP'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object QryGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryGrupoPAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODGRUPOP, NOME from GRUPOP order by nome')
    Left = 48
    Top = 456
  end
  object DtsQryListProd: TDataSource
    DataSet = QryListProd
    Left = 16
    Top = 488
  end
  object DtsQryGrupoP: TDataSource
    DataSet = QryGrupoP
    Left = 48
    Top = 488
  end
  object DtsQrySubGrupoP: TDataSource
    DataSet = QrySubGrupoP
    Left = 80
    Top = 488
  end
  object DtsDstProduto: TDataSource
    Left = 112
    Top = 488
  end
  object DtsNumSerie: TDataSource
    DataSet = QryNumSerie
    Left = 144
    Top = 488
  end
  object QryNumSerie: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryListProd
    SQL.Strings = (
      
        'select NUM_SERIE,FIM_GARANTIA_FABRICANTE, GARANTIA_POSVENDA  fro' +
        'm PRODUTOS_NSERIE'
      'where'
      'COD_PRODUTOS=:COD_PRODUTOS')
    Left = 144
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_PRODUTOS'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 112
    Top = 456
    object AumentarMnu: TMenuItem
      Caption = 'Aumentar Visualiza'#231#227'o'
    end
    object DiminuirMnu: TMenuItem
      Caption = 'Diminuir Visualiza'#231#227'o'
      Enabled = False
    end
    object MaximizarMnu: TMenuItem
      Caption = 'Maximizar Visualiza'#231#227'o'
    end
    object MinimizarMnu: TMenuItem
      Caption = 'Minimizar Visualiza'#231#227'o'
      Enabled = False
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'AumentarMnu.Caption'
      'BitBtn2.Hint'
      'BitBtn3.Hint'
      'CheckBox1.Caption'
      'CheckBox2.Caption'
      'CheckBox3.Caption'
      'CheckBox4.Caption'
      'CheckBox5.Caption'
      'CheckBox6.Caption'
      'DiminuirMnu.Caption'
      'GroupBox1.Caption'
      'GroupBox2.Caption'
      'GroupBox4.Caption'
      'Label1.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'MaximizarMnu.Caption'
      'MinimizarMnu.Caption'
      'SpeedButton1.Hint'
      'SpeedButton2.Hint'
      'SpeedButton3.Hint'
      'SpeedButton4.Hint')
    StoredValues = <>
    Left = 176
    Top = 456
  end
end
