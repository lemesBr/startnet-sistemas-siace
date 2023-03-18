object Inventario_ItensCadFrm: TInventario_ItensCadFrm
  Left = 45
  Top = 87
  Width = 733
  Height = 458
  Caption = 'Cadastro :: Itens Invent'#225'rio'
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 460
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefaultPosOnly
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 64
    Align = alTop
    TabOrder = 0
    DesignSize = (
      725
      64)
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 187
      Height = 16
      Cursor = crHandPoint
      Caption = 'Selecione a Data do Invent'#225'rio:'
      OnClick = Label3Click
      OnMouseEnter = Label3MouseEnter
      OnMouseLeave = Label3MouseLeave
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 697
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_INVENTARIO'
      ListField = 'COD_INVENTARIO;DATAHORA'
      ListSource = DtsQryInventario
      ParentFont = False
      TabOrder = 0
      OnDropDown = DBLookupComboBox1DropDown
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 281
    Width = 725
    Height = 143
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    DesignSize = (
      725
      143)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 709
      Height = 121
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
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
      object Label1: TLabel
        Left = 16
        Top = 64
        Width = 73
        Height = 16
        Caption = 'Quantidade:'
      end
      object Label4: TLabel
        Left = 216
        Top = 64
        Width = 61
        Height = 16
        Caption = 'Sub Total:'
      end
      object Label5: TLabel
        Left = 320
        Top = 64
        Width = 42
        Height = 16
        Caption = 'Posse:'
      end
      object Label6: TLabel
        Left = 632
        Top = 64
        Width = 21
        Height = 16
        Caption = 'UF:'
      end
      object Label7: TLabel
        Left = 392
        Top = 64
        Width = 38
        Height = 16
        Caption = 'CNPJ:'
      end
      object Label8: TLabel
        Left = 512
        Top = 64
        Width = 86
        Height = 16
        Caption = 'Insc. Estadual:'
      end
      object Label9: TLabel
        Left = 16
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
      end
      object Label10: TLabel
        Left = 120
        Top = 64
        Width = 84
        Height = 16
        Caption = 'Valor Unit'#225'rio:'
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 32
        Width = 89
        Height = 24
        DataField = 'COD_PRODUTOS'
        DataSource = DtsDstInventario_Itens
        TabOrder = 13
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 216
        Top = 80
        Width = 89
        Height = 24
        DataField = 'VALOR_PRODUTO'
        DataSource = DtsDstInventario_Itens
        TabOrder = 12
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 32
        Width = 497
        Height = 24
        DataField = 'PRODUTO'
        DataSource = DtsDstInventario_Itens
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 89
        Height = 24
        DataField = 'QUANTIDADE'
        DataSource = DtsDstInventario_Itens
        TabOrder = 10
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object Edit1: TEdit
        Left = 120
        Top = 32
        Width = 497
        Height = 24
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = Edit1KeyDown
      end
      object BitBtn1: TBitBtn
        Left = 632
        Top = 32
        Width = 65
        Height = 25
        Hint = 'DETALHES DOS CONTATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
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
      object CurrencyEdit1: TCurrencyEdit
        Left = 16
        Top = 80
        Width = 89
        Height = 25
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 216
        Top = 80
        Width = 89
        Height = 25
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 392
        Top = 80
        Width = 105
        Height = 24
        DataField = 'CNPJ_POSSUIDOR'
        DataSource = DtsDstInventario_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 512
        Top = 80
        Width = 105
        Height = 24
        DataField = 'IE_EST_POSSUIDOR'
        DataSource = DtsDstInventario_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBComboBox4: TDBComboBox
        Left = 632
        Top = 80
        Width = 65
        Height = 24
        Style = csDropDownList
        DataField = 'UF_POSSUIDOR'
        DataSource = DtsDstInventario_Itens
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
        TabOrder = 8
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBComboBox4KeyPress
      end
      object Edit2: TEdit
        Left = 16
        Top = 32
        Width = 89
        Height = 24
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = Edit2KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 120
        Top = 80
        Width = 81
        Height = 24
        DataField = 'VALOR_UNITARIO'
        DataSource = DtsDstInventario_Itens
        TabOrder = 14
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 120
        Top = 80
        Width = 81
        Height = 25
        AutoSize = False
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = CurrencyEdit3Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 320
        Top = 80
        Width = 57
        Height = 24
        Hint = 
          '1- C'#243'digo destinado a especificar a exist'#234'ncia de relacionamento' +
          ' de um Registro de Exporta'#231#227'o com uma NF de remessa com fim espe' +
          'c'#237'fico (1:1).'#13#10'2- C'#243'digo destinado a especificar a exist'#234'ncia de' +
          ' relacionamento de um Registro de Exporta'#231#227'o com mais de uma NF ' +
          'de remessa com fim espec'#237'fico (1:N).'#13#10'3- C'#243'digo destinado a espe' +
          'cificar a exist'#234'ncia de relacionamento de mais de um Registro de' +
          ' Exporta'#231#227'o com somente uma NF de remessa com fim espec'#237'fico (N:' +
          '1).'
        DropDownWidth = 377
        KeyField = 'VALOR'
        ListField = 'DESCRICAO'
        ListSource = DtsQryPosse
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = DBLookupComboBox2Click
        OnDropDown = DBLookupComboBox1DropDown
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = Edit1KeyDown
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 64
    Width = 725
    Height = 217
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 723
      Height = 215
      Align = alClient
      Anchors = [akLeft, akTop, akBottom]
      DataSource = DtsDstInventario_Itens
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
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PRODUTOS'
          Title.Caption = 'Refer'#234'ncia'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Caption = 'Valor Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PRODUTO'
          Title.Caption = 'Sub Total'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_POSSE'
          Title.Caption = 'Posse'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_POSSUIDOR'
          Title.Caption = 'UF'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_POSSUIDOR'
          Title.Caption = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE_EST_POSSUIDOR'
          Title.Caption = 'Insc. Estadual'
          Width = 76
          Visible = True
        end>
    end
  end
  object SQLCascadeCheck: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 376
    Top = 136
  end
  object QryInventario: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select COD_INVENTARIO, DATAHORA from INVENTARIO'
      'ORDER BY DATAHORA DESC')
    Left = 344
    Top = 136
    object QryInventarioCOD_INVENTARIO: TIntegerField
      FieldName = 'COD_INVENTARIO'
      Origin = 'INVENTARIO.COD_INVENTARIO'
      Required = True
    end
    object QryInventarioDATAHORA: TDateTimeField
      FieldName = 'DATAHORA'
      Origin = 'INVENTARIO.DATAHORA'
    end
  end
  object DtsQryInventario: TDataSource
    DataSet = QryInventario
    OnDataChange = DtsQryInventarioDataChange
    Left = 344
    Top = 168
  end
  object DtsDstInventario_Itens: TDataSource
    DataSet = DM1.DstInventario_Itens
    OnDataChange = DtsDstInventario_ItensDataChange
    Left = 376
    Top = 168
  end
  object QryPosse: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SINTEGRA_TABELAS'
      'where TIPO = '#39'COD_POSSE'#39)
    Left = 408
    Top = 136
  end
  object DtsQryPosse: TDataSource
    DataSet = QryPosse
    Left = 408
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 136
    object ZerarcampoQuantidadeparaprodutoscomquantidadenegativa1: TMenuItem
      Caption = 'ZERAR campo QUANTIDADE para produtos com quantidade NEGATIVA'
      OnClick = ZerarcampoQuantidadeparaprodutoscomquantidadenegativa1Click
    end
    object EXCLUIRprodutoscomQUANTIDADEZERO1: TMenuItem
      Caption = 'EXCLUIR produtos com QUANTIDADE ZERO ou NEGATIVA'
      OnClick = EXCLUIRprodutoscomQUANTIDADEZERO1Click
    end
    object EXCLUIRprodutoscomSUBTOTALZERO1: TMenuItem
      Caption = 'EXCLUIR produtos com SUBTOTAL ZERO ou NEGATIVO'
      OnClick = EXCLUIRprodutoscomSUBTOTALZERO1Click
    end
  end
end
