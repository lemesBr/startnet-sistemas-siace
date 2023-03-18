object FrmAlteraPreco: TFrmAlteraPreco
  Left = 304
  Top = 126
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera'#231#227'o de Pre'#231'o'
  ClientHeight = 501
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 482
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object DBGrid: TDBGrid
      Left = 2
      Top = 105
      Width = 864
      Height = 375
      Align = alClient
      Color = clSilver
      DataSource = DSQConsPro
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = DBGridDblClick
      OnEnter = DBGridEnter
      OnExit = DBGridExit
      OnKeyDown = DBGridKeyDown
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.'
          Width = 58
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Title.Caption = 'C'#243'd. Barras'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'C'#243'd Fab/Ref.'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 260
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Val.'
          Width = 34
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Und.'
          Width = 33
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ESTOQUE_MINIMO'
          Title.Alignment = taCenter
          Title.Caption = 'Est.M'#237'nimo'
          Width = 73
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Estoque'
          Width = 62
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Venda'
          Width = 77
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 2'
          Width = 67
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PRECO_PROMOCAO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Promo'#231#227'o'
          Width = 81
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PRECO_CUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Custo'
          Width = 72
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'MARGEM_LUCRO'
          Title.Alignment = taCenter
          Title.Caption = 'M.Lucro(%)'
          Width = 71
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESC_SECCAO'
          Title.Alignment = taCenter
          Title.Caption = 'Se'#231#227'o'
          Width = 242
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'Grupo'
          Width = 260
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_SUBGRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'Sub-Grupo'
          Width = 255
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_PIS_COFINS'
          Title.Caption = 'PIS/COFINS'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PERC_ALIQUOTA_PIS'
          Title.Alignment = taCenter
          Title.Caption = 'PIS(%)'
          Width = 59
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PERC_ALIQUOTA_COFINS'
          Title.Alignment = taCenter
          Title.Caption = 'COFINS(%)'
          Width = 58
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'IPI_IRPJ'
          Title.Alignment = taCenter
          Title.Caption = 'IR(%)'
          Width = 61
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Icms(%)'
          Width = 66
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'OUTROS_IMPOSTOS'
          Title.Alignment = taCenter
          Title.Caption = 'Desp.(%)'
          Width = 63
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALIDADE_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Validade'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESC_LOCAL_ESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Setor Estoque'
          Visible = True
        end>
    end
    object PanelEstoque: TPanel
      Left = 384
      Top = 330
      Width = 257
      Height = 73
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 3
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 251
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Estoque M'#237'nimo'
        ExplicitWidth = 77
      end
      object EdtEstMin: TCurrencyEdit
        Left = 24
        Top = 32
        Width = 113
        Height = 21
        AutoSize = False
        CheckOnExit = True
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 0
        ZeroEmpty = False
        OnKeyPress = ComboConsKeyPress
      end
      object BtnConfirma: TButton
        Left = 168
        Top = 24
        Width = 75
        Height = 20
        Caption = '&Confirma'
        TabOrder = 1
        OnClick = BtnConfirmaClick
      end
      object BtnCancela: TButton
        Left = 168
        Top = 48
        Width = 75
        Height = 20
        Caption = '&Cancela'
        TabOrder = 2
        OnClick = BtnCancelaClick
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 864
      Height = 103
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 2
      object GroupBox1: TGroupBox
        Left = 8
        Top = 6
        Width = 249
        Height = 49
        Caption = 'Consultar por'
        TabOrder = 0
        object ComboCons: TComboBox
          Left = 8
          Top = 16
          Width = 233
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          OnChange = ComboConsChange
          OnKeyPress = ComboConsKeyPress
          Items.Strings = (
            'PALAVRA CHAVE'
            'NOME'
            'C'#211'D.BARRA'
            'COD.INTERNO'
            'SE'#199#195'O'
            'LABORATORIO'
            'GRUPO TRIBUTACAO'
            'LOCAL DE ESTOQUE'
            'C'#211'D. FAB/REFER'#202'NCIA')
        end
      end
      object RdgAtivo: TRadioGroup
        Left = 8
        Top = 56
        Width = 249
        Height = 41
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Destivados'
          'Todos')
        TabOrder = 1
      end
      object GB2: TGroupBox
        Left = 264
        Top = 6
        Width = 521
        Height = 92
        Caption = 'Consultar por'
        TabOrder = 2
        object BtnConsSub: TSpeedButton
          Left = 68
          Top = 64
          Width = 23
          Height = 21
          Hint = 'Consultar Produto'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
            B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
            EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
            FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
            B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
            FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
            E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
            A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
            FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
            C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
            FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
            A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnConsSubClick
        end
        object BtnConsGrupo: TSpeedButton
          Left = 68
          Top = 40
          Width = 23
          Height = 21
          Hint = 'Consultar Produto'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
            B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
            EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
            FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
            B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
            FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
            E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
            A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
            FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
            C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
            FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
            A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnConsGrupoClick
        end
        object BtnCons: TSpeedButton
          Left = 68
          Top = 16
          Width = 23
          Height = 21
          Hint = 'Consultar Produto'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
            B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
            EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
            FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
            B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
            FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
            E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
            A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
            FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
            C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
            FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
            A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnConsClick
        end
        object EdtCons: TEdit
          Left = 96
          Top = 16
          Width = 321
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyPress = ComboConsKeyPress
        end
        object EdtCodGrupo: TAlignEdit
          Left = 8
          Top = 40
          Width = 57
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Alignment = taRightJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnEnter = EdtCodGrupoEnter
          OnExit = EdtCodGrupoExit
          OnKeyDown = EdtCodGrupoKeyDown
          OnKeyPress = EdtCodGrupoKeyPress
        end
        object EdtCodSub: TAlignEdit
          Left = 8
          Top = 64
          Width = 57
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Alignment = taRightJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnEnter = EdtCodSubEnter
          OnExit = EdtCodSubExit
          OnKeyDown = EdtCodSubKeyDown
          OnKeyPress = EdtCodGrupoKeyPress
        end
        object EdtNomeGrupo: TEdit
          Left = 95
          Top = 40
          Width = 414
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object EdtNomeSub: TEdit
          Left = 95
          Top = 64
          Width = 414
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object EdtCod: TAlignEdit
          Left = 8
          Top = 16
          Width = 57
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Alignment = taRightJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnEnter = EdtCodEnter
          OnExit = EdtCodExit
          OnKeyDown = EdtCodKeyDown
          OnKeyPress = EdtCodGrupoKeyPress
        end
        object EdtNome: TEdit
          Left = 95
          Top = 16
          Width = 414
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 6
        end
      end
      object BtnOk: TButton
        Left = 792
        Top = 20
        Width = 65
        Height = 23
        Caption = '&OK'
        TabOrder = 3
        OnClick = BtnOkClick
        OnKeyPress = ComboConsKeyPress
      end
      object BtnSair: TButton
        Left = 792
        Top = 52
        Width = 65
        Height = 23
        Caption = '&Sair'
        TabOrder = 4
        OnClick = BtnSairClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 482
    Width = 868
    Height = 19
    Panels = <
      item
        Text = '[ENTER] Forma'#231#227'o Pre'#231'o'
        Width = 135
      end
      item
        Text = '[F2] Consultar'
        Width = 90
      end
      item
        Text = '[F3] '#218'ltima Compra/Venda'
        Width = 150
      end
      item
        Text = '[F7] Alterar Se'#231#227'o/Setor Estoque'
        Width = 200
      end
      item
        Text = '[F8] Impostos'
        Width = 110
      end
      item
        Text = '[F9] Composi'#231#227'o'
        Width = 110
      end
      item
        Text = '[F11] Est.M'#237'nimo'
        Width = 115
      end
      item
        Text = '[F12] Ativar/Desativar'
        Width = 120
      end>
  end
  object QConsProd: TFDQuery
    OnCalcFields = QConsProdCalcFields
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = IBTRLocal
    SQL.Strings = (
      
        'SELECT P.CODIGO, P.CODIGO_BARRAS,P.ESTOQUE, P.ATIVO, P.DESCRICAO' +
        ', P.SECCAO, P.CODIGO_GRUPO, P.CODIGO_SUBGRUPO, P.CODIGO_LOCAL_ES' +
        'TOQUE, P.REFERENCIA,  P.PRECO_VENDA, P.NOME_GRUPO, P.NOME_SUBGRU' +
        'PO,'
      
        '              P.PRECO_PROMOCAO, P.ESTOQUE_MINIMO, P.VALIDADE, P.' +
        'ICMS, P.MARGEM_LUCRO2, p.ncm_sh,'
      '              P.IPI_IRPJ, P.SIT_TRIBUTARIA, P.OUTROS_IMPOSTOS,'
      
        '              P.PRECO_CUSTO, P.MARGEM_LUCRO, P.PRECO_VENDA2, P.V' +
        'ALIDADE_PRODUTO, S.DESCRICAO AS DESC_SECCAO, G.DESCRICAO AS DESC' +
        '_GRUPO_TRIBUTACAO,'
      
        '              U.ABREVIATURA AS UNIDADE, SE.DESCRICAO AS DESC_LOC' +
        'AL_ESTOQUE, G.PERC_ALIQUOTA_PIS, G.PERC_ALIQUOTA_COFINS, G.FLAG_' +
        'PIS_COFINS'
      '              FROM PRODUTOS P'
      '              INNER JOIN SECCAO S'
      '              ON (P.SECCAO = S.CODIGO)'
      '              INNER JOIN GRUPO_TRIBUTACAO G'
      '              ON (P.GRUPO_TRIBUTACAO = G.COD_GRUPO)'
      '              INNER JOIN UNIDADES U'
      '              ON (P.UNIDADE = U.CODIGO)'
      '              INNER JOIN LOCAIS_ESTOQUE SE'
      '              ON (P.CODIGO_LOCAL_ESTOQUE = SE.CODIGO)')
    Left = 304
    Top = 216
    object QConsProdCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConsProdCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QConsProdESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object QConsProdATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QConsProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object QConsProdSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object QConsProdCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object QConsProdCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object QConsProdCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object QConsProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 40
    end
    object QConsProdPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 3
    end
    object QConsProdCALC_PIS_COFINS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_PIS_COFINS'
      Size = 7
      Calculated = True
    end
    object QConsProdNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object QConsProdNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object QConsProdPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      currency = True
      Precision = 18
      Size = 3
    end
    object QConsProdESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object QConsProdVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object QConsProdICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object QConsProdMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object QConsProdNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 12
    end
    object QConsProdIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QConsProdSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QConsProdOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QConsProdPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsProdMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object QConsProdPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      currency = True
      Precision = 18
      Size = 3
    end
    object QConsProdVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object QConsProdDESC_SECCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_SECCAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QConsProdDESC_GRUPO_TRIBUTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_GRUPO_TRIBUTACAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object QConsProdUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'ABREVIATURA'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QConsProdDESC_LOCAL_ESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_LOCAL_ESTOQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QConsProdPERC_ALIQUOTA_PIS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'PERC_ALIQUOTA_PIS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QConsProdPERC_ALIQUOTA_COFINS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'PERC_ALIQUOTA_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object QConsProdFLAG_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'FLAG_PIS_COFINS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object DSQConsPro: TDataSource
    AutoEdit = False
    DataSet = QConsProd
    Left = 304
    Top = 272
  end
  object IBTRLocal: TFDTransaction
    Connection = DM.Coneccao
    Left = 384
    Top = 216
  end
  object QAux: TFDQuery
    CachedUpdates = True
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    Left = 456
    Top = 216
  end
end
