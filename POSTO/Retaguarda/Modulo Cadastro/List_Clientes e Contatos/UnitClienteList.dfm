object ClienteListFrm: TClienteListFrm
  Left = 29
  Top = 58
  Width = 762
  Height = 525
  Caption = 'Listagem :: Empresa / Pessoa F'#237'sica'
  Color = clBtnFace
  Constraints.MinHeight = 484
  Constraints.MinWidth = 745
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
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 433
    Caption = ' Filtros: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 47
      Height = 16
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 144
      Top = 160
      Width = 27
      Height = 16
      Caption = 'U.F.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 208
      Width = 45
      Height = 16
      Cursor = crHandPoint
      Caption = 'Classe:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = Label5Click
      OnMouseEnter = Label5MouseEnter
      OnMouseLeave = Label5MouseLeave
    end
    object Label10: TLabel
      Left = 16
      Top = 256
      Width = 31
      Height = 16
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 112
      Width = 39
      Height = 16
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 160
      Width = 28
      Height = 16
      Caption = 'Cep:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 88
      Top = 256
      Width = 50
      Height = 16
      Caption = 'Pessoa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 154
      Height = 16
      Cursor = crHandPoint
      Caption = 'Empresa / Pessoa F'#237'sica:'
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
    object Edit3: TEdit
      Left = 16
      Top = 80
      Width = 169
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 224
      Width = 169
      Height = 24
      DropDownWidth = 270
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CodClasse'
      ListField = 'CODCLASSE; NOME'
      ListSource = DtsQryClasse
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
    end
    object ComboBox2: TComboBox
      Left = 16
      Top = 272
      Width = 57
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
      Items.Strings = (
        ''
        'C - Cliente'
        'F - Fornecedor')
    end
    object Edit6: TEdit
      Left = 16
      Top = 128
      Width = 169
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
    end
    object Edit2: TEdit
      Left = 16
      Top = 176
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 169
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 48
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 320
      Width = 169
      Height = 97
      Caption = 'Data de Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 3
        Height = 16
      end
      object Label3: TLabel
        Left = 16
        Top = 32
        Width = 21
        Height = 16
        Caption = 'De:'
      end
      object Label8: TLabel
        Left = 16
        Top = 64
        Width = 23
        Height = 16
        Caption = 'At'#233':'
      end
      object DateEdit1: TDateEdit
        Left = 48
        Top = 26
        Width = 103
        Height = 24
        DialogTitle = 'Selecionar uma data'
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
        OnChange = Edit1Change
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit3KeyDown
      end
      object DateEdit2: TDateEdit
        Left = 48
        Top = 58
        Width = 103
        Height = 24
        DialogTitle = 'Selecionar uma data'
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 1
        OnChange = Edit1Change
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = DateEdit2KeyDown
      end
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 176
      Width = 41
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
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
    object ComboBox3: TComboBox
      Left = 88
      Top = 272
      Width = 97
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit3KeyDown
      Items.Strings = (
        ''
        'F'#237'sica'
        'Jur'#237'dica')
    end
  end
  object Panel2: TPanel
    Left = 216
    Top = 16
    Width = 529
    Height = 425
    Caption = '(Nenhum registro encontrado)'
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 248
      Width = 527
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      Visible = False
    end
    object Panel6: TPanel
      Left = 1
      Top = 250
      Width = 527
      Height = 174
      Align = alBottom
      Caption = 'Panel6'
      TabOrder = 0
      Visible = False
      DesignSize = (
        527
        174)
      object DBGrid2: TDBGrid
        Left = 1
        Top = 18
        Width = 525
        Height = 132
        Align = alClient
        Constraints.MinHeight = 50
        DataSource = DtsQryContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnKeyDown = DBGrid2KeyDown
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Contato'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGO'
            Title.Caption = 'Cargo'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CGCCPF'
            Title.Caption = 'CPF'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSCESTRG'
            Title.Caption = 'RG'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Width = 80
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 226
        Top = 84
        Width = 74
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Caption = '(Nenhum)'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 525
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Contato/Dependente'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel7: TPanel
        Left = 1
        Top = 150
        Width = 525
        Height = 23
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = ' Listagem Cadastral'
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Locked = True
        ParentFont = False
        TabOrder = 3
        DesignSize = (
          525
          23)
        object SpeedButton4: TSpeedButton
          Left = 424
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton2: TSpeedButton
          Left = 448
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton1: TSpeedButton
          Left = 472
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton3: TSpeedButton
          Left = 496
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
          OnClick = SpeedButton4Click
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 527
      Height = 247
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 1
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 18
        Width = 525
        Height = 228
        Align = alClient
        DataSource = DtsQryClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
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
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CGCCPF'
            Title.Caption = 'CNPJ / CPF'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSCESTRG'
            Title.Caption = 'Insc. Est. / RG'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPESSOA'
            Title.Caption = 'Pessoa'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Title.Caption = 'Cep'
            Width = 80
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 525
        Height = 17
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Empresa/Pessoa F'#237'sica'
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
  end
  object DtsQryClasse: TDataSource
    DataSet = QryClasse
    Left = 232
    Top = 96
  end
  object QryClasse: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryClasseAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT CODCLASSE, NOME FROM CLASSE '
      'ORDER BY NOME')
    Left = 232
    Top = 64
  end
  object QryClientes: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    AfterScroll = QryClientesAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CADASTRO'
      'ORDER BY NOME')
    Left = 264
    Top = 64
  end
  object DtsQryClientes: TDataSource
    DataSet = QryClientes
    Left = 264
    Top = 96
  end
  object QryContatos: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DtsQryClientes
    SQL.Strings = (
      'SELECT * FROM CONTATO'
      'WHERE CODCLI = :codcli'
      'ORDER BY NOME')
    Left = 296
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCLI'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object DtsQryContatos: TDataSource
    DataSet = QryContatos
    Left = 296
    Top = 96
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'GroupBox2.Caption'
      'Label1.Caption'
      'Label10.Caption'
      'Label11.Caption'
      'Label12.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'Panel5.Caption')
    StoredValues = <>
    Left = 328
    Top = 64
  end
end
