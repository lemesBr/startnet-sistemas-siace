object SintegraReducaoZCadFrm: TSintegraReducaoZCadFrm
  Left = 50
  Top = 80
  Width = 697
  Height = 451
  Caption = 'Cadastro :: Redu'#231#227'o Z'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 128
    Width = 689
    Height = 289
    Align = alBottom
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 377
      Height = 265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object Label2: TLabel
        Left = 256
        Top = 16
        Width = 81
        Height = 16
        Caption = 'N'#186' de Ordem:'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 99
        Height = 16
        Caption = 'Primeiro Cupom:'
      end
      object Label4: TLabel
        Left = 136
        Top = 64
        Width = 87
        Height = 16
        Caption = #218'ltimo Cupom:'
      end
      object Label5: TLabel
        Left = 256
        Top = 64
        Width = 85
        Height = 16
        Caption = 'Qnt. Redu'#231#227'o:'
      end
      object Label6: TLabel
        Left = 256
        Top = 208
        Width = 70
        Height = 16
        Caption = 'Total Geral:'
      end
      object Label7: TLabel
        Left = 136
        Top = 208
        Width = 77
        Height = 16
        Caption = 'Venda Bruta:'
      end
      object Label8: TLabel
        Left = 136
        Top = 112
        Width = 90
        Height = 16
        Caption = 'Cancelamento:'
      end
      object Label9: TLabel
        Left = 256
        Top = 112
        Width = 100
        Height = 16
        Caption = 'Subst. Tribut'#225'ria:'
      end
      object Label10: TLabel
        Left = 16
        Top = 160
        Width = 51
        Height = 16
        Caption = 'Isen'#231#227'o:'
      end
      object Label11: TLabel
        Left = 136
        Top = 160
        Width = 93
        Height = 16
        Caption = 'N'#227'o Incid'#234'ncia:'
      end
      object Label12: TLabel
        Left = 256
        Top = 160
        Width = 24
        Height = 16
        Caption = 'ISS:'
      end
      object Label22: TLabel
        Left = 16
        Top = 112
        Width = 78
        Height = 16
        Caption = 'Qnt. Rein'#237'cio:'
      end
      object Label23: TLabel
        Left = 16
        Top = 208
        Width = 61
        Height = 16
        Caption = 'Desconto:'
      end
      object DBEdit2: TDBEdit
        Left = 256
        Top = 32
        Width = 105
        Height = 24
        DataField = 'NRO_ORDEM_EQP'
        DataSource = DataSource1
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 80
        Width = 105
        Height = 24
        DataField = 'NRO_CONTADOR_INICIO'
        DataSource = DataSource1
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 80
        Width = 105
        Height = 24
        DataField = 'NRO_CONTADOR_FIM'
        DataSource = DataSource1
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 256
        Top = 80
        Width = 105
        Height = 24
        DataField = 'NRO_CONTADOR_Z'
        DataSource = DataSource1
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 256
        Top = 224
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'VALOR_TOTAL_GERAL'
        DataSource = DataSource1
        TabOrder = 13
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 136
        Top = 224
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'VALOR_VENDA_BRUTA'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 14
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 136
        Top = 128
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'CANCELAMENTO'
        DataSource = DataSource1
        TabOrder = 15
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 256
        Top = 128
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'SUBSTITUICAO_TRIBUTARIA'
        DataSource = DataSource1
        TabOrder = 16
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 176
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'ISENTO'
        DataSource = DataSource1
        TabOrder = 17
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 136
        Top = 176
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'NAO_INCIDENCIA'
        DataSource = DataSource1
        TabOrder = 18
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 256
        Top = 176
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'ISSQN'
        DataSource = DataSource1
        TabOrder = 19
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object CurrencyEdit16: TCurrencyEdit
        Left = 256
        Top = 224
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 12
        Visible = False
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit18: TCurrencyEdit
        Left = 136
        Top = 128
        Width = 105
        Height = 24
        Hint = 'Valor de cancelamentos'
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 6
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit19: TCurrencyEdit
        Left = 256
        Top = 128
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 7
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit20: TCurrencyEdit
        Left = 16
        Top = 176
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 8
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit21: TCurrencyEdit
        Left = 136
        Top = 176
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 9
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit22: TCurrencyEdit
        Left = 256
        Top = 176
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 10
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 16
        Top = 128
        Width = 103
        Height = 24
        DataField = 'CONTADOR_REINICIO'
        DataSource = DataSource1
        TabOrder = 5
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 16
        Top = 224
        Width = 105
        Height = 24
        TabStop = False
        DataField = 'DESCONTO'
        DataSource = DataSource1
        TabOrder = 20
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 16
        Top = 224
        Width = 105
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        TabOrder = 11
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object Panel2: TPanel
        Left = 8
        Top = 16
        Width = 233
        Height = 49
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = Panel2Exit
        object Label1: TLabel
          Left = 128
          Top = 0
          Width = 72
          Height = 16
          Caption = 'N'#186' de S'#233'rie:'
        end
        object Label21: TLabel
          Left = 8
          Top = 0
          Width = 85
          Height = 16
          Caption = 'Data Emiss'#227'o'
        end
        object DBEdit1: TDBEdit
          Left = 128
          Top = 16
          Width = 105
          Height = 24
          DataField = 'NRO_SERIE_EQP'
          DataSource = DataSource1
          TabOrder = 1
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object DBDateEdit1: TDBDateEdit
          Left = 8
          Top = 16
          Width = 105
          Height = 24
          DataField = 'DATA_EMISSAO'
          DataSource = DataSource1
          NumGlyphs = 2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBDateEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 391
      Top = 8
      Width = 282
      Height = 265
      Caption = ' Tributa'#231#227'o '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label14: TLabel
        Left = 88
        Top = 16
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
      object Label15: TLabel
        Left = 184
        Top = 16
        Width = 51
        Height = 16
        Caption = 'Imposto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 16
        Top = 16
        Width = 52
        Height = 16
        Caption = 'Aliquota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit26: TDBEdit
        Left = 88
        Top = 185
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'VALOR_TPARCIAL05'
        DataSource = DataSource1
        TabOrder = 19
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit23: TDBEdit
        Left = 88
        Top = 147
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'VALOR_TPARCIAL04'
        DataSource = DataSource1
        TabOrder = 17
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit20: TDBEdit
        Left = 88
        Top = 108
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'VALOR_TPARCIAL03'
        DataSource = DataSource1
        TabOrder = 15
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit17: TDBEdit
        Left = 88
        Top = 70
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'VALOR_TPARCIAL02'
        DataSource = DataSource1
        TabOrder = 13
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 88
        Top = 32
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'VALOR_TPARCIAL01'
        DataSource = DataSource1
        TabOrder = 11
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit25: TDBEdit
        Left = 16
        Top = 147
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'ALIQUOTA05'
        DataSource = DataSource1
        TabOrder = 18
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object DBEdit22: TDBEdit
        Left = 16
        Top = 185
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'ALIQUOTA04'
        DataSource = DataSource1
        TabOrder = 16
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object DBEdit19: TDBEdit
        Left = 16
        Top = 108
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'ALIQUOTA03'
        DataSource = DataSource1
        TabOrder = 14
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object DBEdit16: TDBEdit
        Left = 16
        Top = 70
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'ALIQUOTA02'
        DataSource = DataSource1
        TabOrder = 12
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 16
        Top = 32
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'ALIQUOTA01'
        DataSource = DataSource1
        TabOrder = 10
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 16
        Top = 32
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 88
        Top = 32
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 16
        Top = 70
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 88
        Top = 70
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit7: TCurrencyEdit
        Left = 16
        Top = 108
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit8: TCurrencyEdit
        Left = 88
        Top = 108
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit10: TCurrencyEdit
        Left = 16
        Top = 147
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit11: TCurrencyEdit
        Left = 88
        Top = 147
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit13: TCurrencyEdit
        Left = 16
        Top = 185
        Width = 57
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit14: TCurrencyEdit
        Left = 88
        Top = 185
        Width = 81
        Height = 24
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Visible = False
        OnChange = DBEdit14Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = CurrencyEdit14KeyPress
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 184
        Top = 32
        Width = 81
        Height = 25
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 20
      end
      object CurrencyEdit9: TCurrencyEdit
        Left = 184
        Top = 70
        Width = 81
        Height = 25
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 21
      end
      object CurrencyEdit12: TCurrencyEdit
        Left = 184
        Top = 108
        Width = 81
        Height = 25
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 22
      end
      object CurrencyEdit15: TCurrencyEdit
        Left = 184
        Top = 147
        Width = 81
        Height = 25
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 23
      end
      object CurrencyEdit17: TCurrencyEdit
        Left = 184
        Top = 185
        Width = 81
        Height = 25
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 24
      end
      object CurrencyEdit23: TCurrencyEdit
        Left = 88
        Top = 224
        Width = 81
        Height = 24
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 25
        OnKeyPress = CurrencyEdit18KeyPress
      end
      object CurrencyEdit24: TCurrencyEdit
        Left = 184
        Top = 224
        Width = 81
        Height = 24
        TabStop = False
        AutoSize = False
        DisplayFormat = '0.00;-0.00'
        ReadOnly = True
        TabOrder = 26
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 689
    Height = 128
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_EMISSAO'
        Title.Caption = 'Data de Emiss'#227'o'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRO_SERIE_EQP'
        Title.Caption = 'N'#186' de S'#233'rie '
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRO_ORDEM_EQP'
        Title.Caption = 'N'#186' de Ordem'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRO_CONTADOR_Z'
        Title.Caption = 'Qnt. Redu'#231#227'o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTADOR_REINICIO'
        Title.Caption = 'Qnt. Rein'#237'cio'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_VENDA_BRUTA'
        Title.Caption = 'Venda Bruta'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL_GERAL'
        Title.Caption = 'Total Geral'
        Width = 80
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM1.DstSintegra_R60
    OnDataChange = DataSource1DataChange
    Left = 16
    Top = 48
  end
  object SQLReducaoZ: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      'select * from SINTEGRA_R60')
    Transaction = DM1.IBTransaction1
    Left = 48
    Top = 48
  end
  object SQLReducaoZ_Edit: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 80
    Top = 48
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'GroupBox2.Caption'
      'Label1.Caption'
      'Label10.Caption'
      'Label11.Caption'
      'Label12.Caption'
      'Label14.Caption'
      'Label15.Caption'
      'Label16.Caption'
      'Label2.Caption'
      'Label21.Caption'
      'Label22.Caption'
      'Label23.Caption'
      'Label3.Caption'
      'Label4.Caption'
      'Label5.Caption'
      'Label6.Caption'
      'Label7.Caption'
      'Label8.Caption'
      'Label9.Caption'
      'Panel1.Caption'
      'Panel2.Caption')
    StoredValues = <>
    Left = 112
    Top = 48
  end
end
