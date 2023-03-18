object VendaListFrm: TVendaListFrm
  Left = 113
  Top = 13
  Width = 808
  Height = 580
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
      OnClick = Label1Click
      OnMouseEnter = Label1MouseEnter
      OnMouseLeave = Label1MouseLeave
    end
    object Label2: TLabel
      Left = 369
      Top = 64
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
    object Label3: TLabel
      Left = 368
      Top = 16
      Width = 69
      Height = 16
      Caption = 'Refer'#234'ncia:'
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
      Left = 496
      Top = 16
      Width = 72
      Height = 16
      Caption = 'N'#186' de S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 624
      Top = 16
      Width = 69
      Height = 16
      Caption = 'N'#186' da Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 177
      Top = 63
      Width = 100
      Height = 16
      Caption = 'Ponto de Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label17Click
      OnMouseEnter = Label17MouseEnter
      OnMouseLeave = Label17MouseLeave
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
      TabOrder = 5
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
      KeyField = 'CODVEND'
      ListField = 'NOME'
      ListSource = DtsQryVendedor
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object Edit2: TEdit
      Left = 368
      Top = 32
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = Edit2Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object Edit3: TEdit
      Left = 496
      Top = 32
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = Edit2Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object Edit4: TEdit
      Left = 624
      Top = 32
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = Edit2Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 79
      Width = 177
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODPDV'
      ListField = 'NOME'
      ListSource = DsPdv
      NullValueKey = 16429
      ParentFont = False
      TabOrder = 6
      OnDropDown = DBLookupComboBox2DropDown
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = DateEdit2KeyDown
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
  object Panel1: TPanel
    Left = 392
    Top = 456
    Width = 345
    Height = 196
    BevelInner = bvRaised
    TabOrder = 2
    Visible = False
    object DBGrid1: TDBGrid
      Left = 2
      Top = 19
      Width = 341
      Height = 175
      Hint = 'Empresas / Pessoa F'#237'sica'
      Align = alClient
      DataSource = DtsQryClientes
      Options = [dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 230
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 341
      Height = 17
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'Empresa / Pessoa F'#237'sica'
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
  object Edit1: TEdit
    Left = 377
    Top = 88
    Width = 344
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 48
    ParentFont = False
    TabOrder = 3
    OnChange = Edit1Change
    OnEnter = Edit1Enter
    OnExit = Edit1Exit
    OnKeyDown = Edit1KeyDown
  end
  object DtsQryClientes: TDataSource
    DataSet = QryClientes
    Left = 104
    Top = 488
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
    Left = 136
    Top = 456
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
      DisplayFormat = '##,##0.00'
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
      DisplayFormat = '##,##0.00'
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
    Left = 136
    Top = 488
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 72
    Top = 456
  end
  object PopupMenu2: TPopupMenu
    Left = 8
    Top = 456
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
  object QryVendedor: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryVendedorAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from VENDEDOR')
    Left = 64952
    Top = 752
  end
  object DtsQryVendedor: TDataSource
    DataSet = QryVendedor
    Left = 64952
    Top = 784
  end
  object QryClientes: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CADASTRO order by nome')
    Left = 104
    Top = 456
  end
  object QryDesconto: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryListVend
    SQL.Strings = (
      'Select sum(desconto) desconto from Pedidos')
    Left = 200
    Top = 456
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredValues = <>
    Left = 40
    Top = 456
  end
  object QryPdv: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PDV ')
    Left = 168
    Top = 456
  end
  object DsPdv: TDataSource
    DataSet = QryPdv
    Left = 168
    Top = 488
  end
  object QryValorTotal: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 232
    Top = 456
  end
end
