object ProdPrecoFrm: TProdPrecoFrm
  Left = 37
  Top = 74
  Width = 757
  Height = 494
  ActiveControl = DBLookupComboBox1
  Caption = 'ProdPrecoFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 248
    Width = 50
    Height = 13
    Caption = 'Fabricante'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 449
    Caption = 'Produto: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      305
      449)
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 37
      Height = 16
      Caption = 'Grupo'
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 65
      Height = 16
      Caption = 'Sub-Grupo'
    end
    object Label3: TLabel
      Left = 8
      Top = 144
      Width = 73
      Height = 16
      Caption = 'C'#243'digo ECF'
    end
    object Label4: TLabel
      Left = 8
      Top = 200
      Width = 70
      Height = 16
      Caption = 'Fornecedor'
    end
    object Label5: TLabel
      Left = 8
      Top = 256
      Width = 64
      Height = 16
      Caption = 'Fabricante'
    end
    object Edit2: TEdit
      Left = 8
      Top = 272
      Width = 225
      Height = 24
      ReadOnly = True
      TabOrder = 4
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 8
      Top = 216
      Width = 225
      Height = 24
      ReadOnly = True
      TabOrder = 3
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 96
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODGRUPOP'
      ListField = 'NOME'
      ListSource = DstQrySubGrupoP
      ParentFont = False
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 8
      Top = 160
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODECF'
      ListField = 'NOME'
      ListSource = DstQryECF
      ParentFont = False
      TabOrder = 2
      OnClick = DBLookupComboBox1Click
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyPress = DBLookupComboBox2KeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 40
      Width = 225
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODGRUPOP'
      ListField = 'NOME'
      ListSource = DstQryGrupoP
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyPress = DBLookupComboBox1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 240
      Top = 216
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
    object BitBtn2: TBitBtn
      Left = 240
      Top = 272
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
      TabOrder = 6
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
    object GroupBox2: TGroupBox
      Left = 144
      Top = 320
      Width = 153
      Height = 113
      Caption = 'Valor: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object CurrencyEdit1: TCurrencyEdit
        Left = 16
        Top = 25
        Width = 129
        Height = 24
        AutoSize = False
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object AlterarBtn: TBitBtn
        Left = 88
        Top = 64
        Width = 57
        Height = 25
        Caption = 'Alterar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = AlterarBtnClick
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 320
      Width = 129
      Height = 113
      Caption = 'Tipo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Percentual'
        'Valor')
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel7: TPanel
    Left = 320
    Top = 12
    Width = 409
    Height = 444
    BevelWidth = 2
    Caption = '(Nenhum registro encontrado)'
    TabOrder = 1
    object Panel6: TPanel
      Left = 2
      Top = 419
      Width = 405
      Height = 23
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Caption = '   Listagem de Produto'
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
        405
        23)
      object SpeedButton4: TSpeedButton
        Left = 309
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Expandir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF
          003FBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003FBF7F00BF003FBFBFBFBFBFBF
          BF003FBF003FBF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBF003F
          BF7F00BF003FBFBFBFBF003FBF003FBF7F00BF7F00BF7F00BF003FBFBFBFBFBF
          BFBFBFBF0000BFBFBFBF003FBF7F00BF003FBF003FBF003FBF7F00BF7F00BF7F
          00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF003FFFFF
          00FFFF00BF7F00BF7F00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBF
          BFFFFF00BF7F00BF003FBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF003FBFBFBFBFBFBFFFFF00FF
          FF00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00BF
          003FBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFFFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00BF7F00FFFF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBF0000BFBFBFFFFF00
          FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton2: TSpeedButton
        Left = 333
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Expandir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF003FBF003FBF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00BF7F00BF003FBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF7F00BF7F00BF7F
          00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFFFFF
          00FFFF00BF7F00BF7F00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF003FBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FF
          FF00BF7F00BF7F00BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF003FBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00
          BF003FBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ResizeGrid
      end
      object SpeedButton1: TSpeedButton
        Left = 357
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FFFFF00FFFF00BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBF003FBF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F
          00BF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBF003FBF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBF003FBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
      object SpeedButton3: TSpeedButton
        Left = 381
        Top = 2
        Width = 23
        Height = 20
        Hint = 'Suprimir Visualiza'#231#227'o'
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          7A030000424D7A0300000000000036000000280000000E000000130000000100
          18000000000044030000C40E0000C40E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFFFFF00BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00FFFF00BFBFBF0000BFBF
          BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BF
          7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FFFFF00FFFF00BFBFBFBF
          BFBFBFBFBFBFBFBFBF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF7F00FFFF00FFFF00BFBFBFBFBFBFBFBFBFBF003FBF7F00FFFF00BFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00FFFF00FFFF00BFBFBFBFBFBF
          BF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00
          BF7F00FFFF00FFFF00BFBFBFBF003FBF7F00FFFF00BFBFBF0000BFBFBFBFBFBF
          BFBFBFBF003FBF7F00BF7F00BF7F00BF7F00FFFF00FFFF00BF003FBF7F00FFFF
          00BFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF7F00BF7F00BF7F00BF00
          3FBF003FBF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F
          00BF7F00BF7F00BF003FBF003FBFBFBFBF003FBF7F00BF003FBFBFBF0000BFBF
          BFBFBFBFBFBFBFBF003FBF7F00BF7F00BF003FBF003FBFBFBFBFBFBFBF003FBF
          7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBF003FBF
          BFBFBFBFBFBFBFBFBF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF
          003FBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBF003FBF7F00BF003FBFBFBF
          0000BFBFBFBFBFBFBFBFBFBF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF003FBF7F00BF003FBFBFBF0000BFBFBFBFBFBFBFBFBFBF003FBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF003FBF003FBF003FBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = ResizeGrid
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 405
      Height = 417
      Align = alClient
      DataSource = DstQryPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRC_CUSTO'
          Title.Caption = 'Preco de Custo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRC_VENDA'
          Title.Caption = 'Preco de Venda'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_LUCRO'
          Title.Caption = 'Valor de Lucro'
          Width = 93
          Visible = True
        end>
    end
  end
  object DstQryGrupoP: TDataSource
    DataSet = QryGrupoP
    Left = 120
    Top = 24
  end
  object DstQrySubGrupoP: TDataSource
    DataSet = QrySubGrupoP
    Left = 120
    Top = 56
  end
  object DstQryECF: TDataSource
    DataSet = QryECF
    Left = 152
    Top = 24
  end
  object DstQryPreco: TDataSource
    DataSet = QryPreco
    Left = 152
    Top = 56
  end
  object SQLUpdate: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 248
    Top = 24
  end
  object QryPreco: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select PRODUTOS.COD_PRODUTOS,PRODUTOS.NOME,PRODUTOS.NOME FABRICA' +
        'NTE,'
      'CADASTRO.NOME FORNECEDOR,PRODUTOS.PRC_CUSTO, PRODUTOS.PRC_VENDA,'
      
        'PRODUTOS.VALOR_LUCRO,SUBGRUPOP.NOME SUBGRUPO, GRUPOP.NOME GRUPO,' +
        'TRIBECF.NOME ECF'
      'from PRODUTOS'
      
        'left outer join CADASTRO on (PRODUTOS.COD_CLI_FORNECEDOR = CADAS' +
        'TRO.CODCLI)'
      
        'left outer join CADASTRO on (PRODUTOS.COD_CLI_FABRICANTE = CADAS' +
        'TRO.CODCLI)'
      
        'left outer join GRUPOP on (PRODUTOS.COD_GRUPOP = GRUPOP.CODGRUPO' +
        'P)'
      
        'left outer join SUBGRUPOP on (PRODUTOS.COD_SUBGRUPOP = SUBGRUPOP' +
        '.CODSUBGRUPOP)'
      'left outer join TRIBECF on (PRODUTOS.COD_ECF = TRIBECF.CODECF)'
      'where COD_PRODUTOS <> 0')
    Left = 184
    Top = 24
    object QryPrecoCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'PRODUTOS.COD_PRODUTOS'
      Required = True
    end
    object QryPrecoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object QryPrecoFABRICANTE: TIBStringField
      FieldName = 'FABRICANTE'
      Origin = 'PRODUTOS.NOME'
      Size = 50
    end
    object QryPrecoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'CADASTRO.NOME'
      Size = 50
    end
    object QryPrecoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = 'PRODUTOS.PRC_CUSTO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryPrecoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = 'PRODUTOS.PRC_VENDA'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPrecoVALOR_LUCRO: TIBBCDField
      FieldName = 'VALOR_LUCRO'
      Origin = 'PRODUTOS.VALOR_LUCRO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object QryPrecoSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPOP.NOME'
      Size = 30
    end
    object QryPrecoGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPOP.NOME'
      Size = 30
    end
    object QryPrecoECF: TIBStringField
      FieldName = 'ECF'
      Origin = 'TRIBECF.NOME'
      Size = 10
    end
  end
  object QryGrupoP: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODGRUPOP, NOME from GRUPOP')
    Left = 184
    Top = 56
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
    SQL.Strings = (
      'Select CODGRUPOP, NOME  from SUBGRUPOP')
    Left = 216
    Top = 24
    object QrySubGrupoPCODGRUPOP: TIntegerField
      FieldName = 'CODGRUPOP'
      Origin = 'SUBGRUPOP.CODGRUPOP'
      Required = True
    end
    object QrySubGrupoPNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'SUBGRUPOP.NOME'
      Required = True
      Size = 30
    end
  end
  object QryECF: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODECF, NOME from TRIBECF')
    Left = 216
    Top = 56
    object QryECFCODECF: TIntegerField
      FieldName = 'CODECF'
      Origin = 'TRIBECF.CODECF'
      Required = True
    end
    object QryECFNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'TRIBECF.NOME'
      Required = True
      Size = 10
    end
  end
end
