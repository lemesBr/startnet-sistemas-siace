object VendaListFrm: TVendaListFrm
  Left = 22
  Top = 63
  Width = 759
  Height = 473
  ActiveControl = DateEdit1
  Caption = 'Listagem :: Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 737
    Height = 121
    Caption = ' Filtros: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = GroupBox2Enter
    DesignSize = (
      737
      121)
    object Label8: TLabel
      Left = 16
      Top = 16
      Width = 69
      Height = 16
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 64
      Width = 64
      Height = 16
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 176
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 369
      Top = 16
      Width = 148
      Height = 16
      Caption = 'Empresa/Pessoa F'#237'sica:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label2Click
      OnMouseEnter = Label2MouseEnter
      OnMouseLeave = Label2MouseLeave
    end
    object Label5: TLabel
      Left = 368
      Top = 64
      Width = 71
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Sub-Grupo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 176
      Top = 64
      Width = 43
      Height = 16
      Caption = 'Grupo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 16
      Top = 32
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 0
      OnChange = DateEdit1Change
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyDown = DateEdit1KeyDown
    end
    object DateEdit2: TDateEdit
      Left = 16
      Top = 80
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 2
      OnChange = DateEdit1Change
      OnEnter = DateEdit1Enter
      OnExit = DateEdit2Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 176
      Top = 32
      Width = 177
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_FRENTISTA'
      ListField = 'NOME'
      ListSource = DtsQryFrentista
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object RadioGroup1: TRadioGroup
      Left = 648
      Top = 40
      Width = 121
      Height = 89
      ItemIndex = 2
      Items.Strings = (
        'Produtos da Loja'
        'Combust'#237'veis'
        'Todos')
      TabOrder = 3
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 656
      Top = 32
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object Edit1: TEdit
      Left = 369
      Top = 32
      Width = 280
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 48
      ParentFont = False
      TabOrder = 5
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 80
      Width = 177
      Height = 24
      Hint = 'Grupo de Produto'
      Anchors = [akLeft, akTop, akRight]
      DropDownRows = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODGRUPOP'
      ListField = 'NOME'
      ListSource = DtsGrupoP
      NullValueKey = 46
      ParentFont = False
      TabOrder = 6
      OnDropDown = DBLookupComboBox1DropDown
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 368
      Top = 80
      Width = 281
      Height = 24
      Hint = 'Sub-Grupo de Produto'
      Anchors = [akTop, akRight]
      DropDownRows = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODSUBGRUPOP'
      ListField = 'NOME'
      ListSource = DtsSubGrupoP
      NullValueKey = 46
      ParentFont = False
      TabOrder = 7
      OnDropDown = DBLookupComboBox1DropDown
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 136
    Width = 737
    Height = 305
    Caption = '(Nenhum registro encontrado)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 281
      Width = 735
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '  Listagem de Vendas'
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        735
        23)
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
      object SpeedButton1: TSpeedButton
        Left = 656
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akLeft, akBottom]
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
      object SpeedButton3: TSpeedButton
        Left = 632
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akLeft, akBottom]
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
      object SpeedButton4: TSpeedButton
        Left = 704
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akLeft, akBottom]
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
    object DBGrid3: TDBGrid
      Left = 1
      Top = 1
      Width = 735
      Height = 280
      Align = alClient
      DataSource = DtsQryListVend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = DBGrid3DrawColumnCell
      OnDblClick = DBGrid3DblClick
      OnKeyDown = DBGrid3KeyDown
      OnTitleClick = DBGrid3TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'REF_PRODUTOS'
          Title.Caption = 'Refer'#234'ncia'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_SERIE'
          Title.Caption = 'N'#186' de S'#233'rie'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quant. Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRC_VENDA'
          Title.Caption = 'Pre'#231'o'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Caption = 'Sub -Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_NF'
          Title.Caption = 'N'#250'mero da Nota'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM_GARANTIA_APOS_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Garantia Cliente'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM_GARANTIA_FABRICANTE'
          Title.Alignment = taCenter
          Title.Caption = 'Data Garantia Fabricante'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM_GARANTIA_APOS_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Garantia Cliente'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIM_GARANTIA_FABRICANTE'
          Title.Alignment = taCenter
          Title.Caption = 'Garantia Fabricante'
          Width = 132
          Visible = True
        end>
    end
  end
  object DtsQryClientes: TDataSource
    DataSet = QryClientes
    Left = 280
    Top = 272
  end
  object QryListVend: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select Ref_Produtos, Num_serie, Produto, Prc_Venda, FIM_GARANTIA' +
        '_APOS_VENDA,'
      
        'FIM_GARANTIA_FABRICANTE,sum(quantidade) quantidade, sum(Subtotal' +
        ') SubTotal,'
      'NF_ENTRADA.NUM_NF FROM Pedidos_Itens'
      
        'LEFT OUTER JOIN NF_ENTRADA on (Pedidos_Itens.COD_NF_ENTRADA=NF_E' +
        'NTRADA.COD_NF_ENTRADA)'
      
        'group by REF_PRODUTOS,Num_serie,produto,prc_venda,FIM_GARANTIA_A' +
        'POS_VENDA,'
      'FIM_GARANTIA_FABRICANTE,NF_ENTRADA.NUM_NF')
    Left = 312
    Top = 240
    object QryListVendNUM_SERIE: TIBStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object QryListVendPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object QryListVendPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      DisplayFormat = '##,###0.000'
      Precision = 18
      Size = 3
    end
    object QryListVendFIM_GARANTIA_APOS_VENDA: TDateTimeField
      FieldName = 'FIM_GARANTIA_APOS_VENDA'
    end
    object QryListVendFIM_GARANTIA_FABRICANTE: TDateTimeField
      FieldName = 'FIM_GARANTIA_FABRICANTE'
    end
    object QryListVendSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object QryListVendREF_PRODUTOS: TIBStringField
      FieldName = 'REF_PRODUTOS'
      Size = 30
    end
    object QryListVendQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###0.000'
      Precision = 18
      Size = 3
    end
    object QryListVendNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Size = 30
    end
  end
  object DtsQryListVend: TDataSource
    DataSet = QryListVend
    Left = 312
    Top = 272
  end
  object PopupMenu2: TPopupMenu
    Left = 184
    Top = 240
    object AumentarMnu: TMenuItem
      Caption = 'Aumentar Visualiza'#231#227'o'
    end
    object DiminuirMnu: TMenuItem
      Caption = 'Diminuir Visualiza'#231#227'o'
      Enabled = False
    end
    object MaximizarMnu: TMenuItem
      Caption = 'Maximizar Visuliza'#231#227'o'
    end
    object MinimizarMnu: TMenuItem
      Caption = 'Minimizar Visualiza'#231#227'o'
      Enabled = False
    end
  end
  object QryFrentista: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryFrentistaAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FRENTISTA')
    Left = 352
    Top = 240
  end
  object DtsQryFrentista: TDataSource
    DataSet = QryFrentista
    Left = 352
    Top = 272
  end
  object QryClientes: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTRO order by nome')
    Left = 280
    Top = 240
  end
  object QryGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODGRUPOP, Nome from GRUPOP')
    Left = 390
    Top = 241
    object QryGrupoPCODGRUPOP: TIntegerField
      FieldName = 'CODGRUPOP'
      Origin = 'GRUPOP.CODGRUPOP'
      Required = True
    end
    object QryGrupoPNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'GRUPOP.NOME'
      Required = True
      Size = 30
    end
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
    Left = 430
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODGRUPOP'
        ParamType = ptUnknown
      end>
  end
  object DtsGrupoP: TDataSource
    DataSet = QryGrupoP
    Left = 390
    Top = 273
  end
  object DtsSubGrupoP: TDataSource
    DataSet = QrySubGrupoP
    Left = 430
    Top = 273
  end
end
