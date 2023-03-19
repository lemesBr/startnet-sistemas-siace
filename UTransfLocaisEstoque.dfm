inherited FrmTransfLocaisEstoque: TFrmTransfLocaisEstoque
  Left = 240
  Top = 52
  Caption = 'Transfer'#234'ncia entre Locais de Estoque'
  ClientHeight = 487
  ClientWidth = 662
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 668
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Width = 662
    Height = 436
    ExplicitWidth = 662
    ExplicitHeight = 436
    FullHeight = 436
    object Panel30: TPanel
      Left = 0
      Top = 0
      Width = 662
      Height = 119
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 98
        Top = 3
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label21: TLabel
        Left = 8
        Top = 40
        Width = 62
        Height = 13
        Caption = 'Local Origem'
      end
      object BtnConsOrigem: TSpeedButton
        Left = 68
        Top = 56
        Width = 23
        Height = 21
        Hint = 'Consultar Cliente'
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
        OnClick = BtnConsOrigemClick
      end
      object Label22: TLabel
        Left = 98
        Top = 40
        Width = 143
        Height = 13
        Caption = 'Descri'#231#227'o do Local de Origem'
      end
      object Label5: TLabel
        Left = 8
        Top = 77
        Width = 65
        Height = 13
        Caption = 'Local Destino'
      end
      object BtnConsDestino: TSpeedButton
        Left = 68
        Top = 93
        Width = 23
        Height = 21
        Hint = 'Consultar Tipo de Venda'
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
        OnClick = BtnConsDestinoClick
      end
      object Label6: TLabel
        Left = 98
        Top = 77
        Width = 131
        Height = 13
        Caption = 'Descri'#231#227'o do Local Destino'
      end
      object LConv: TLabel
        Left = 240
        Top = 48
        Width = 241
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 551
        Top = 40
        Width = 75
        Height = 13
        Caption = 'Estoque Origem'
      end
      object Label7: TLabel
        Left = 551
        Top = 77
        Width = 78
        Height = 13
        Caption = 'Estoque Destino'
      end
      object EdtCodigo: TAlignEdit
        Left = 8
        Top = 19
        Width = 65
        Height = 21
        TabStop = False
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtCodOrigem: TAlignEdit
        Left = 8
        Top = 56
        Width = 57
        Height = 21
        Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Cliente'
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnEnter = EdtCodOrigemEnter
        OnExit = EdtCodOrigemExit
        OnKeyDown = EdtCodOrigemKeyDown
        OnKeyPress = EdtCodOrigemKeyPress
      end
      object EdtNomeOrigem: TEdit
        Left = 98
        Top = 56
        Width = 443
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
      object EdtCodDestino: TAlignEdit
        Left = 8
        Top = 93
        Width = 57
        Height = 21
        Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Tipo de Venda'
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnEnter = EdtCodDestinoEnter
        OnExit = EdtCodDestinoExit
        OnKeyDown = EdtCodDestinoKeyDown
        OnKeyPress = EdtCodOrigemKeyPress
      end
      object EdtNomeDestino: TEdit
        Left = 98
        Top = 93
        Width = 443
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
      object EdtData: TMaskEdit
        Left = 98
        Top = 19
        Width = 86
        Height = 21
        TabStop = False
        Color = clSilver
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        ReadOnly = True
        TabOrder = 1
        Text = '  /  /    '
      end
      object EdtEstoqueOrigem: TCurrencyEdit
        Left = 551
        Top = 56
        Width = 105
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DecimalPlaces = 3
        DisplayFormat = ',#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        ZeroEmpty = False
      end
      object EdtEstoqueDestino: TCurrencyEdit
        Left = 551
        Top = 93
        Width = 105
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DecimalPlaces = 3
        DisplayFormat = ',#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        ZeroEmpty = False
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 119
      Width = 662
      Height = 317
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      TabOrder = 1
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 658
        Height = 313
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        BevelWidth = 2
        Color = 16710131
        TabOrder = 0
        object Label19: TLabel
          Left = 8
          Top = 51
          Width = 32
          Height = 13
          Caption = 'Quant.'
        end
        object BtnConsPro: TSpeedButton
          Left = 124
          Top = 33
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
          OnClick = BtnConsProClick
        end
        object BtnAddPro: TSpeedButton
          Left = 149
          Top = 33
          Width = 25
          Height = 21
          Hint = 'Cadastrar Produto'
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            700077777777777770007777700077777000777770C077777000777770C07777
            7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
            7000777770C07777700077777000777770007777777777777000777777777777
            7000}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnAddProClick
        end
        object Label18: TLabel
          Left = 178
          Top = 17
          Width = 103
          Height = 13
          Caption = 'Descri'#231#227'o do Produto'
        end
        object Label3: TLabel
          Left = 8
          Top = 17
          Width = 47
          Height = 13
          Caption = 'Cod.Prod.'
        end
        object Label16: TLabel
          Left = 2
          Top = 2
          Width = 654
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Itens do Estoque'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 97
        end
        object EdtQuant: TCurrencyEdit
          Left = 8
          Top = 67
          Width = 73
          Height = 21
          AutoSize = False
          CheckOnExit = True
          Color = clSilver
          DecimalPlaces = 3
          DisplayFormat = ',#0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FormatOnEditing = True
          ParentFont = False
          TabOrder = 1
          ZeroEmpty = False
        end
        object EdtNomePro: TEdit
          Left = 178
          Top = 33
          Width = 472
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
        object DBGrid1: TDBGrid
          Left = 2
          Top = 100
          Width = 654
          Height = 211
          TabStop = False
          Align = alBottom
          Color = clSilver
          DataSource = DSQBuscaItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 7485192
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'ORDEM'
              Title.Alignment = taCenter
              Title.Caption = 'ORD'
              Width = 29
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_PRO'
              Title.Alignment = taCenter
              Title.Caption = 'COD.PROD.'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'NOME_PRO'
              Title.Alignment = taCenter
              Title.Caption = 'PRODUTO'
              Width = 408
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'QUANT'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'UND.'
              Width = 50
              Visible = True
            end>
        end
        object EdtCodPro: TAlignEdit
          Left = 8
          Top = 33
          Width = 113
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          Alignment = taRightJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = EdtCodProEnter
          OnExit = EdtCodProExit
          OnKeyDown = EdtCodProKeyDown
          OnKeyPress = EdtCodOrigemKeyPress
        end
        object BtnGrava: TBitBtn
          Left = 109
          Top = 65
          Width = 65
          Height = 25
          Caption = '&Grava'
          TabOrder = 2
          OnClick = BtnGravaClick
        end
        object BtnExclui: TBitBtn
          Left = 197
          Top = 65
          Width = 65
          Height = 25
          Caption = '&Exclui'
          TabOrder = 3
          OnClick = BtnExcluiClick
        end
      end
    end
  end
  inherited Panel2: TAdvPanel
    Top = 436
    Width = 662
    ExplicitTop = 436
    ExplicitWidth = 662
    FullHeight = 51
    inherited btnLocalizar: TAdvGlowButton
      Left = 560
    end
    inherited btnSalvar: TAdvGlowButton
      OnClick = BtnGravarClick
      ExplicitLeft = 402
      ExplicitTop = 2
    end
    inherited btnexcluir: TAdvGlowButton
      OnClick = BtnExcluirClick
      ExplicitLeft = 302
      ExplicitTop = 2
    end
    inherited btnCancelar: TAdvGlowButton
      ImageIndex = 2
      OnClick = BtnCancelarClick
    end
    inherited btnEditar: TAdvGlowButton
      OnClick = nil
      ExplicitLeft = 102
    end
    inherited btnNovo: TAdvGlowButton
      OnClick = btnNovoClick
    end
  end
  object QOrdem: TFDQuery
    Connection = DM.Coneccao
    Transaction = DM.FDTransaction1
    SQL.Strings = (
      'SELECT MAX(ORDEM) AS ORDEM'
      'FROM ITENS_TRANSF_LOCAIS_ESTOQUE'
      'WHERE CODIGO = :CODIGO')
    Left = 184
    Top = 352
    ParamData = <
      item
        Name = 'CODIGO'
      end>
    object QOrdemORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object IBTRTransf: TFDTransaction
    Connection = DM.Coneccao
    Left = 176
    Top = 320
  end
  object QBuscaItens: TFDQuery
    Connection = DM.Coneccao
    Transaction = IBTRTransf
    SQL.Strings = (
      'SELECT I.*, P.DESCRICAO, U.DESCRICAO'
      'FROM ITENS_TRANSF_LOCAIS_ESTOQUE I'
      'INNER JOIN PRODUTOS P'
      'ON (I.COD_PRO = P.CODIGO)'
      'INNER JOIN UNIDADES U'
      'ON (P.UNIDADE = U.CODIGO)'
      'WHERE I.CODIGO = :CODIGO'
      'ORDER BY I.ORDEM'
      ''
      '')
    Left = 128
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ITENS_TRANSF_LOCAIS_ESTOQUE.CODIGO'
      Required = True
    end
    object QBuscaItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ITENS_TRANSF_LOCAIS_ESTOQUE.ORDEM'
      Required = True
    end
    object QBuscaItensCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = 'ITENS_TRANSF_LOCAIS_ESTOQUE.COD_PRO'
      Required = True
    end
    object QBuscaItensQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = 'ITENS_TRANSF_LOCAIS_ESTOQUE.QUANT'
      Required = True
      DisplayFormat = ',#0.000'
      Precision = 18
      Size = 3
    end
    object QBuscaItensCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'ITENS_TRANSF_LOCAIS_ESTOQUE.COD_EMP'
      Required = True
    end
    object QBuscaItensNOME_PRO: TIBStringField
      FieldName = 'NOME_PRO'
      Origin = 'PRODUTO.NOME_PRO'
      Required = True
      Size = 80
    end
    object QBuscaItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADE_MEDIDA.DESCRICAO'
      Required = True
      Size = 10
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 128
    Top = 360
  end
  object QInsert: TFDQuery
    Connection = DM.Coneccao
    Transaction = IBTRTransf
    SQL.Strings = (
      'SELECT *'
      
        'FROM SP_INSERT_TRANSF_LOCAL_ESTOQUE (:DATA, :CODIGO_ORIGEM, :COD' +
        'IGO_DESTINO, :COD_USU, :COD_EMP)')
    Left = 312
    Top = 320
    ParamData = <
      item
        Name = 'DATA'
      end
      item
        Name = 'CODIGO_ORIGEM'
      end
      item
        Name = 'CODIGO_DESTINO'
      end
      item
        Name = 'COD_USU'
      end
      item
        Name = 'COD_EMP'
      end>
    object QInsertCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SP_INSERT_TRANSF_LOCAL_ESTOQUE.CODIGO'
    end
  end
  object IBSQLTransf: TFDQuery
    Connection = DM.Coneccao
    Left = 266
    Top = 321
  end
end
