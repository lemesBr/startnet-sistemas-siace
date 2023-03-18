object ProdCombustivelCadFrm: TProdCombustivelCadFrm
  Left = 181
  Top = 82
  Width = 515
  Height = 431
  Caption = 'Cadastro :: Produto Combust'#237'vel'
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 202
    Width = 507
    Height = 195
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      507
      195)
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 475
      Height = 174
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 0
      DesignSize = (
        475
        174)
      object Label1: TLabel
        Left = 120
        Top = 16
        Width = 50
        Height = 16
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
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
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 65
        Height = 16
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 351
        Top = 16
        Width = 87
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'N'#186' do Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 352
        Top = 64
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
      object Label2: TLabel
        Left = 120
        Top = 64
        Width = 82
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Volume Atual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 15
        Top = 16
        Width = 69
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 80
        Width = 89
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRC_VENDA'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 16
        Top = 80
        Width = 89
        Height = 24
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = 'R$ ,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        TabOrder = 4
        OnEnter = CurrencyEdit2Enter
        OnExit = CurrencyEdit2Exit
        OnKeyPress = CurrencyEdit2KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 32
        Width = 216
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 128
        Width = 440
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 352
        Top = 32
        Width = 105
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        DataField = 'ID_PRODUTOS'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          '1'#9
          '2'#9
          '3'#9
          '4'#9
          '5'#9
          '6'#9
          '7'#9
          '8'#9
          '9'#9
          '10'#9
          '11'#9
          '12'#9
          '13'#9
          '14'#9
          '15'#9
          '16'#9
          '17'#9
          '18'#9
          '19'#9
          '20'#9
          '21'#9
          '22'#9
          '23'#9
          '24'#9
          '25'#9
          '26'#9
          '27'#9
          '28'#9
          '29'#9
          '30'#9
          '31'#9
          '32'#9
          '33'#9
          '34'#9
          '35'#9
          '36'#9
          '37'#9
          '38'#9
          '39'#9
          '40'#9
          '41'#9
          '42'#9
          '43'#9
          '44'#9
          '45'#9
          '46'#9
          '47'#9
          '48'#9
          '49'#9
          '50'#9
          '51'#9
          '52'#9
          '53'#9
          '54'#9
          '55'#9
          '56'#9
          '57'#9
          '58'#9
          '59'#9
          '60'#9
          '61'#9
          '62'#9
          '63'#9
          '64'#9
          '65'#9
          '66'#9
          '67'#9
          '68'#9
          '69'#9
          '70'#9
          '71'#9
          '72'#9
          '73'#9
          '74'#9
          '75'#9
          '76'#9
          '77'#9
          '78'#9
          '79'#9
          '80'#9
          '81'#9
          '82'#9
          '83'#9
          '84'#9
          '85'#9
          '86'#9
          '87'#9
          '88'#9
          '89'#9
          '90'#9
          '91'#9
          '92'#9
          '93'#9
          '94'#9
          '95'#9
          '96'#9
          '97'#9
          '98'#9
          '99'#9
          '100'#9
          '101'#9
          '102'#9
          '103'#9
          '104'#9
          '105'#9
          '106'#9
          '107'#9
          '108'#9
          '109'#9
          '110'#9
          '111'#9
          '112'#9
          '113'#9
          '114'#9
          '115'#9
          '116'#9
          '117'#9
          '118'#9
          '119'#9
          '120'#9
          '121'#9
          '122'#9
          '123'#9
          '124'#9
          '125'#9
          '126'#9
          '127'#9
          '128'#9
          '129'#9
          '130'#9
          '131'#9
          '132'#9
          '133'#9
          '134'#9
          '135'#9
          '136'#9
          '137'#9
          '138'#9
          '139'#9
          '140'#9
          '141'#9
          '142'#9
          '143'#9
          '144'#9
          '145'#9
          '146'#9
          '147'#9
          '148'#9
          '149'#9
          '150'#9
          '151'#9
          '152'#9
          '153'#9
          '154'#9
          '155'#9
          '156'#9
          '157'#9
          '158'#9
          '159'#9
          '160'#9
          '161'#9
          '162'#9
          '163'#9
          '164'#9
          '165'#9
          '166'#9
          '167'#9
          '168'#9
          '169'#9
          '170'#9
          '171'#9
          '172'#9
          '173'#9
          '174'#9
          '175'#9
          '176'#9
          '177'#9
          '178'#9
          '179'#9
          '180'#9
          '181'#9
          '182'#9
          '183'#9
          '184'#9
          '185'#9
          '186'#9
          '187'#9
          '188'#9
          '189'#9
          '190'#9
          '191'#9
          '192'#9
          '193'#9
          '194'#9
          '195'#9
          '196'#9
          '197'#9
          '198'#9
          '199'#9
          '200'#9
          '201'#9
          '202'#9
          '203'#9
          '204'#9
          '205'#9
          '206'#9
          '207'#9
          '208'#9
          '209'#9
          '210'#9
          '211'#9
          '212'#9
          '213'#9
          '214'#9
          '215'#9
          '216'#9
          '217'#9
          '218'#9
          '219'#9
          '220'#9
          '221'#9
          '222'#9
          '223'#9
          '224'#9
          '225'#9
          '226'#9
          '227'#9
          '228'#9
          '229'#9
          '230'#9
          '231'#9
          '232'#9
          '233'#9
          '234'#9
          '235'#9
          '236'#9
          '237'#9
          '238'#9
          '239'#9
          '240'#9
          '241'#9
          '242'#9
          '243'#9
          '244'#9
          '245'#9
          '246'#9
          '247'#9
          '248'#9
          '249'#9
          '250'#9
          '251'#9
          '252'#9
          '253'#9
          '254'#9)
        ParentFont = False
        TabOrder = 3
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object DBComboBox2: TDBComboBox
        Left = 352
        Top = 80
        Width = 105
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        DataField = 'APR_UND'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Lt'
          'm3')
        ParentFont = False
        TabOrder = 6
        OnEnter = DBComboBox1Enter
        OnExit = DBComboBox1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 120
        Top = 80
        Width = 218
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'EST_ATUAL'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 120
        Top = 80
        Width = 218
        Height = 24
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 5
        OnEnter = CurrencyEdit2Enter
        OnExit = CurrencyEdit2Exit
        OnKeyPress = CurrencyEdit2KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 32
        Width = 90
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'REFERENCIA'
        DataSource = DtsDstProdCombustivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 16
        Top = 32
        Width = 90
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 507
    Height = 202
    Align = alClient
    DataSource = DtsDstProdCombustivel
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
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Caption = 'Refer'#234'ncia'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_ATUAL'
        Title.Caption = 'Volume Atual'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APR_UND'
        Title.Caption = 'Unidade'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRC_VENDA'
        Title.Caption = 'Pre'#231'o'
        Width = 75
        Visible = True
      end>
  end
  object DtsDstProdCombustivel: TDataSource
    DataSet = DM1.DstProdCombustivel
    Left = 16
    Top = 176
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 16
    Top = 128
  end
  object SQLProduto: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    SQL.Strings = (
      '')
    Transaction = DM1.IBTransaction1
    Left = 67
    Top = 128
  end
end
