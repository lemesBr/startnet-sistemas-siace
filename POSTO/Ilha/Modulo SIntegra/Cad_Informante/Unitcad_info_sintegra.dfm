object SintegraInfoCadFrm: TSintegraInfoCadFrm
  Left = 42
  Top = 25
  Width = 756
  Height = 544
  Caption = 'Cadastro :: Informante do SIntegra'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 748
    Height = 273
    Align = alClient
    DataSource = DsDstSintegra_Info
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_CONTRIBUINTE'
        Title.Caption = 'Contribuinte'
        Width = 305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTATO'
        Title.Caption = 'Contato'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC'
        Title.Caption = 'CNPJ'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC_EST'
        Title.Caption = 'Inscri'#231#227'o Estadual'
        Width = 105
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 273
    Width = 748
    Height = 237
    Align = alBottom
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 727
      Height = 217
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 288
        Top = 16
        Width = 41
        Height = 16
        Caption = 'CNPJ: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 424
        Top = 16
        Width = 86
        Height = 16
        Caption = 'Insc. Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 132
        Height = 16
        Caption = 'Nome do Contribuinte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 288
        Top = 160
        Width = 60
        Height = 16
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 496
        Top = 112
        Width = 21
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 288
        Top = 64
        Width = 28
        Height = 16
        Caption = 'FAX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 64
        Width = 49
        Height = 16
        Caption = 'Contato:'
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
        Width = 73
        Height = 16
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 424
        Top = 112
        Width = 18
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 288
        Top = 112
        Width = 30
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 424
        Top = 160
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
      object Label13: TLabel
        Left = 16
        Top = 160
        Width = 87
        Height = 16
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 424
        Top = 64
        Width = 57
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 288
        Top = 32
        Width = 121
        Height = 24
        DataField = 'CGC'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 424
        Top = 32
        Width = 121
        Height = 24
        DataField = 'INSC_EST'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 32
        Width = 257
        Height = 24
        DataField = 'NOME_CONTRIBUINTE'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 288
        Top = 176
        Width = 121
        Height = 24
        DataField = 'MUNICIPIO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 288
        Top = 80
        Width = 121
        Height = 24
        DataField = 'FAX'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBComboBox4: TDBComboBox
        Left = 496
        Top = 128
        Width = 49
        Height = 24
        Style = csDropDownList
        DataField = 'UF'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
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
        ParentFont = False
        TabOrder = 9
        OnEnter = DBComboBox4Enter
        OnExit = DBComboBox4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit16: TDBEdit
        Left = 16
        Top = 80
        Width = 257
        Height = 24
        DataField = 'NOME_CONTATO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 16
        Top = 176
        Width = 257
        Height = 24
        DataField = 'COMPLEMENTO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 128
        Width = 257
        Height = 24
        DataField = 'LOGRADOURO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 288
        Top = 128
        Width = 121
        Height = 24
        DataField = 'CEP'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit15KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 424
        Top = 176
        Width = 121
        Height = 24
        DataField = 'BAIRRO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 424
        Top = 128
        Width = 57
        Height = 24
        DataField = 'NRO'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit17: TDBEdit
        Left = 424
        Top = 80
        Width = 121
        Height = 24
        DataField = 'TELEFONE'
        DataSource = DsDstSintegra_Info
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object CheckBox1: TCheckBox
        Left = 232
        Top = 160
        Width = 41
        Height = 17
        Alignment = taLeftJustify
        Caption = 's/n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = CheckBox1Click
      end
      object GroupBox2: TGroupBox
        Left = 560
        Top = 16
        Width = 153
        Height = 185
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        object DBCheckBox3: TDBCheckBox
          Left = 16
          Top = 24
          Width = 121
          Height = 17
          Hint = 'Marque se for usu'#225'rio do Sintegra.'
          Caption = 'Usu'#225'rio SIntegra'
          DataField = 'ENABLED_SINTEGRA'
          DataSource = DsDstSintegra_Info
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 16
          Top = 72
          Width = 121
          Height = 17
          Hint = 'Marque se for Substituto Tribut'#225'rio.'
          Caption = 'Subst. Tribut'#225'rio'
          DataField = 'SUBSTITUTO_TRIBUTARIO'
          DataSource = DsDstSintegra_Info
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 48
          Width = 113
          Height = 17
          Hint = 'Marque se for Contribuinte IPI.'
          Caption = 'Contribunte IPI'
          DataField = 'CONTRIBUINTE_IPI'
          DataSource = DsDstSintegra_Info
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object DsDstSintegra_Info: TDataSource
    DataSet = DM1.DstSintegra_Info
    Left = 680
    Top = 192
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Label11.Caption'
      'Label12.Caption'
      'Label13.Caption'
      'Label14.Caption'
      'Label15.Caption'
      'Label16.Caption'
      'Label17.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'DBCheckBox1.Caption'
      'DBCheckBox2.Caption'
      'DBCheckBox3.Caption'
      'GroupBox1.Caption'
      'GroupBox2.Caption')
    StoredValues = <>
    Left = 552
    Top = 160
  end
  object DsDstSintegra_LooKup_Operacoes: TDataSource
    DataSet = Qry_Operacoes
    Left = 584
    Top = 192
  end
  object Qry_Operacoes: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cod_sintegra_lookup, codigo,  descricao from SINTEGRA_LOO' +
        'KUP'
      'WHERE TIPO = '#39'COD_OPERACAO'#39)
    Left = 584
    Top = 160
  end
  object Qry_Finalidade: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cod_sintegra_lookup, codigo,  descricao from SINTEGRA_LOO' +
        'KUP'
      'WHERE TIPO = '#39'COD_FINALIDADE'#39)
    Left = 616
    Top = 160
  end
  object Qry_Convenio: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cod_sintegra_lookup, codigo,  descricao from SINTEGRA_LOO' +
        'KUP'
      'WHERE TIPO = '#39'COD_CONVENIO'#39)
    Left = 648
    Top = 160
  end
  object DsDstSintegra_LooKup_Finalidade: TDataSource
    DataSet = Qry_Finalidade
    Left = 616
    Top = 192
  end
  object DsDstSintegra_LooKup_Convenio: TDataSource
    DataSet = Qry_Convenio
    Left = 648
    Top = 192
  end
end
