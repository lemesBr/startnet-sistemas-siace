object FormConsultaProdutos: TFormConsultaProdutos
  Left = 154
  Top = 75
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta Produtos'
  ClientHeight = 487
  ClientWidth = 830
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 216
      Top = 5
      Width = 180
      Height = 13
      Caption = 'Entre com a op'#231#227'o desejada F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 621
      Top = 7
      Width = 196
      Height = 35
      Alignment = taRightJustify
      Color = clBlack
      DataField = 'PRECO_VENDA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 9
      Top = 5
      Width = 193
      Height = 13
      Caption = 'Selecione a Op'#231#227'o de Pesquisa F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 216
      Top = 20
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object cbxpesquisa: TComboBox
      Left = 7
      Top = 20
      Width = 194
      Height = 21
      TabOrder = 1
      Text = 'Apenas Inicio da descri'#231#227'o'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Apenas Inicio da descri'#231#227'o'
        'qualquer parte da descric'#227'o'
        'Pesquisa Por Codigo Barras'
        'Pesquisa Por Referencia'
        'Por C'#243'digo')
    end
    object Edit2: TEdit
      Left = 664
      Top = 12
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 2
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 830
    Height = 390
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object Panel4: TPanel
      Left = 2
      Top = 230
      Width = 826
      Height = 158
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      Enabled = False
      TabOrder = 0
      object Bevel1: TBevel
        Left = 650
        Top = 18
        Width = 162
        Height = 135
      end
      object RxLabel3: TRxLabel
        Left = 646
        Top = 3
        Width = 95
        Height = 13
        Caption = 'Foto do Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShadowColor = clWindow
      end
      object RxLabel22: TRxLabel
        Left = 5
        Top = 5
        Width = 39
        Height = 13
        Caption = 'Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel23: TRxLabel
        Left = 5
        Top = 30
        Width = 65
        Height = 13
        Caption = 'Sub-Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel24: TRxLabel
        Left = 5
        Top = 55
        Width = 40
        Height = 13
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel25: TRxLabel
        Left = 5
        Top = 80
        Width = 69
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel19: TRxLabel
        Left = 167
        Top = 105
        Width = 98
        Height = 13
        Caption = 'Estoque Vendido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 328
        Top = 105
        Width = 34
        Height = 13
        Caption = 'D.M.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 5
        Top = 105
        Width = 50
        Height = 13
        Caption = 'Estoque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBImage1: TsuiDBImage
        Left = 656
        Top = 20
        Width = 151
        Height = 131
        Color = 15263976
        DataField = 'FOTO'
        DataSource = DM.DTS_PRODUTOS
        Stretch = True
        TabOrder = 0
        TabStop = False
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object Grupo2: TsuiDBEdit
        Left = 76
        Top = 5
        Width = 552
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NOME_GRUPO'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object SubGrupo2: TsuiDBEdit
        Left = 76
        Top = 30
        Width = 552
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NOME_SUBGRUPO'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object Marca2: TsuiDBEdit
        Left = 76
        Top = 55
        Width = 552
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NOME_MARCA'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object FORNECEDOR2: TsuiDBEdit
        Left = 76
        Top = 80
        Width = 552
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'NOME_FORNECEDOR'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit15: TsuiDBEdit
        Left = 167
        Top = 121
        Width = 150
        Height = 32
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'ESTOQUE_VENDIDO'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit6: TsuiDBEdit
        Left = 329
        Top = 121
        Width = 299
        Height = 32
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'DESCONTO_MAXIMO'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit1: TsuiDBEdit
        Left = 5
        Top = 121
        Width = 150
        Height = 32
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'ESTOQUE'
        DataSource = DM.DTS_PRODUTOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 826
      Height = 228
      Align = alClient
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 822
        Height = 224
        Align = alClient
        DataSource = DM.DTS_PRODUTOS
        FixedColor = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BARRAS'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo de Barras'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Refer'#234'ncia'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_UNIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Unidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_VENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Valor (R$)'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_VENDA2'
            Title.Alignment = taCenter
            Title.Caption = 'Preco(2)'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 439
    Width = 830
    Height = 48
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 2
    object myLabel3d1: TmyLabel3d
      Left = 296
      Top = 8
      Width = 368
      Height = 33
      Caption = 'SIACE - Consulta Produtos '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object suiDBNavigator1: TsuiDBNavigator
      Left = 8
      Top = 8
      Width = 228
      Height = 30
      Cursor = crDefault
      UIStyle = FromThemeFile
      DataSource = DM.DTS_PRODUTOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
      TabStop = True
    end
  end
end
