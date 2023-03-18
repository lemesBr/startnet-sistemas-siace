object SintegraGNRECadFrm: TSintegraGNRECadFrm
  Left = 148
  Top = 115
  Width = 597
  Height = 426
  Caption = 'Cadastro :: Guia de Recolhimento de Tributos Estaduais (GNRE)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 589
    Height = 135
    Align = alBottom
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 569
      Height = 118
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 93
        Height = 16
        Caption = 'Data da GNRE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 368
        Top = 64
        Width = 72
        Height = 16
        Caption = 'Favorecida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 64
        Width = 84
        Height = 16
        Caption = 'Banco GNRE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 152
        Top = 64
        Width = 95
        Height = 16
        Caption = 'Ag'#234'ncia GNRE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 456
        Top = 64
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
      object Label4: TLabel
        Left = 152
        Top = 16
        Width = 74
        Height = 16
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 280
        Top = 16
        Width = 126
        Height = 16
        Caption = 'M'#234's/Ano Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 456
        Top = 16
        Width = 78
        Height = 16
        Caption = 'N'#186' Conv'#234'nio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 280
        Top = 64
        Width = 60
        Height = 16
        Caption = 'N'#186' GNRE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 24
        DataField = 'BANCO_GNRE'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 152
        Top = 80
        Width = 113
        Height = 24
        DataField = 'AGENCIA_GNRE'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 456
        Top = 80
        Width = 98
        Height = 24
        TabStop = False
        DataField = 'VALOR_GNRE'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit10: TDBEdit
        Left = 280
        Top = 32
        Width = 161
        Height = 24
        DataField = 'MES_ANO_REFERENCIA'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 456
        Top = 32
        Width = 97
        Height = 24
        DataField = 'NRO_CONVENIO'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 280
        Top = 80
        Width = 73
        Height = 24
        DataField = 'NRO_GNRE'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBDateEdit1: TDBDateEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 25
        DataField = 'DATAHORA_GNRE'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBDateEdit1KeyPress
      end
      object DBDateEdit2: TDBDateEdit
        Left = 152
        Top = 32
        Width = 113
        Height = 25
        DataField = 'DATA_VENCIMENTO'
        DataSource = DSDstSintegra_GNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit10KeyPress
      end
      object DBComboBox4: TDBComboBox
        Left = 368
        Top = 80
        Width = 73
        Height = 24
        Style = csDropDownList
        DataField = 'UF_FAVORECIDA'
        DataSource = DSDstSintegra_GNRE
        DropDownCount = 9
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
        TabOrder = 7
        OnKeyPress = DBEdit10KeyPress
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 456
        Top = 80
        Width = 97
        Height = 25
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 589
    Height = 257
    Align = alClient
    DataSource = DSDstSintegra_GNRE
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'Data de Vencimento'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAHORA_GNRE'
        Title.Caption = 'Data da GNRE'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_ANO_REFERENCIA'
        Title.Caption = 'M'#234's/Ano de Ref.'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRO_CONVENIO'
        Title.Caption = 'N'#186' do Conv'#234'nio'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_GNRE'
        Title.Caption = 'Valor'
        Width = 95
        Visible = True
      end>
  end
  object DSDstSintegra_GNRE: TDataSource
    DataSet = DM1.DstSintegra_GNRE
    Left = 480
    Top = 48
  end
  object SQLInformante: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'select CGC, INSC_EST, UF from SINTEGRA_INFO')
    Transaction = DM1.IBTransaction1
    Left = 512
    Top = 48
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Label1.Caption'
      'Label2.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'Label9.Caption'
      'GroupBox1.Caption')
    StoredValues = <>
    Left = 448
    Top = 48
  end
end
