object FormConsProdutos: TFormConsProdutos
  Left = 289
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Produto  Cadastrado'
  ClientHeight = 513
  ClientWidth = 910
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 427
    Width = 3
    Height = 13
  end
  object lUltimaLeitura: TLabel
    Left = 624
    Top = 41
    Width = 139
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 184
      Top = 34
      Width = 158
      Height = 13
      Caption = 'Entre Com a Descri'#231'ao  - F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 5
      Top = 34
      Width = 137
      Height = 13
      Caption = ' Op'#231#227'o de Pesquisa - F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel9: TRxLabel
      Left = 489
      Top = 53
      Width = 92
      Height = 13
      Caption = 'Pre'#231'o de Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 726
      Top = 41
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'PRECO_VENDA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 491
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText2: TDBText
      Left = 726
      Top = 6
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 5
      Top = 5
      Width = 126
      Height = 13
      Caption = 'Sele'#231#227'o dos produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 184
      Top = 49
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object cbxpesquisa: TComboBox
      Left = 5
      Top = 49
      Width = 170
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Pesquisa qualquer parte da descric'#227'o'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Pesquisa inicio da descri'#231#227'o produto'
        'Pesquisa qualquer parte da descric'#227'o'
        'Pesquisa Por Codigo Barras'
        'Pesquisa Por Referencia'
        'Pesquisa Por C'#243'digo'
        'Pesquisa Por NCM'
        'Por C'#243'd. Original'
        'Por Cod. Pacote')
    end
    object Edit2: TEdit
      Left = 776
      Top = 52
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 2
      Visible = False
    end
    object suiButton2: TsBitBtn
      Left = 617
      Top = 2
      Width = 29
      Height = 24
      Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
      TabOrder = 3
      Visible = False
      OnClick = suiButton2Click
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F3F2F2E7E6E6D8D6D4D3D0CDDBCECAE7D5
        D2F2EEEDF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F7F7F7EDEDEDD4D2D0C0BDB9B6B3AFB9B3AFC08B7CC5644BD7A699
        F1EDEBF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F7F9F9F8F8F8F8F8F8F8
        F8EEEEEDD0CECBBFBBB9C1BFBDC4C4C3C9C2C0DAA48CE17446C37C61DCD2CEF8
        F8F8F8F7F9F8F8F8F8F8F8F9F8F8F8F8F8F9F8F8F9F8F8F9F7F9F8F7F8DAD8D6
        C2BFBBCAC8C6CFCDCDCFCECED2CDCBDCB098D88356CCA28ECDC7C2F9F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F3F1F1EDEDEAE9EBE9CAC6C1CFCCC8D6
        D5D5C9C7C7BBB9B7DBCFCBD08F79CD8568D2BDB4C9C5BFF8F6F6F6F6F6F8F7F9
        F8F7F8F8F8F8F4F3F2DFD8D2D4B8A78AA36D51A15597B18FD8D6D1DEDEDCC1BE
        BDA39E9CC2A99ECC7953CD8D71DACEC8D0C8BFDDBBA6CEBAB0C0CEDBE1E7EFF6
        F6F7DDE3DAB4C0A4E7CEB48FB46B38B54469B86CC3D2BCD9DAD6D7D9D9ACC2CD
        84AEC3A59C98BB9788D2C4BED9B8A1D47337A880634D95BD82A8C4EAE9EAC2D6
        BE8BC284D6D5B6A7C68566D06866C96B8BCD88BACFB6BACED58AC5E368BCE474
        B0D0A9B3B8D3BBA9E6AC87F2A473C0B09A5CB7DA859EAAE1D2CABAD4B491D486
        B5CB97A6BC8493D18886B38185D08580BD9D7CBED66CBEE863BDE766B9E37EB8
        D6BFC1BED7B8A5E6C5B0B3C0C662A9D2B7BCBFE0CFC2C2D9BB9DD890C0DAB0D9
        D9CBBAC4B8B0B9AE7CA58670B6BD6EC6EC6AC6F164C0EC5FB9E861B7E47FB9D8
        A5AAACA8AAAB75B8D569ACD2CFD6DBE3DBD3E8EFE4B7D4ACA7BCAA95BED275C0
        E589ADC15E7D8A65A5C888CEF381CFF76CC5EF60BAE85EB6E560B2DF9EC4D788
        B7CF66B2DC79A8C7C9CDCFE3E0DAF7F8F7DBE9E996C7D873BEE462BAE45596BA
        31698D4E8FBC83BBE08FC8E983CEF463BBEA5FB6E55DB2E075B8DB71C1E86AB7
        E092BACFD2D8D9F2F2F1F1F5F6BADCED7AC7ED6CC5F063BFEA529DC53078A33C
        8CBF3988BE428CBF85D2F665C0EC5EB7E55CB1DF66BCE666C1ED62BBE86DB9E2
        A9D1E7EEF3F7ECF2F6AED6EC96D5F588D2F56CC3EE58A6D0428BB43595C9268D
        C62183C162B7E569C1EE60B7E662B1DE7BC7EF70C6F263BCEA5FB6E570B6DCD8
        E9F3EDF3F6BBDCEEB9E3F8B0E3F97DC6E83A718A4A85A44CA1C836A5D6269CD2
        2592CF2F96D32F95D051A3D389C8E790D6F76AC2ED5EB6E563B2DDC6DFEEF1F3
        F5C6DBE7B4DAEFA2D8F16BA1B64D5D633E545D4C6F7F6FAFCA62BEE050B8DF4D
        B3DC3CB5D834B6D41BA5C756B5D970C5F05FB8E769B4DCD4E7F2F5F5F5C4CCD0
        809CA87199AB4D69756365666266677B8183BBC3C8CADCE3C1DAE3B2CDD76FC4
        CF2BD9EC0CD5EF21A8D153B5E44DAEDE76B7D9E4EEF3F7F7F7DDDEDF999FA170
        797E6A70747777788D8D8DC6C5C5F1F1F1F8F8F8F9F8F8EEEFF0B6CED468C6D9
        34CBEF20B2E526A2D939A6D591C6DDEDF2F4F9F8F8F6F6F6EAEAEAD8D8D7CBCB
        CACCCCCCDCDCDCF2F2F2F8F8F8F8F8F8F8F9F7F7F7F7EAECEDC7D8DE9DC8DA80
        C4E383C6E6AEDAEDE2EFF5F7F7F8F8F8F8F8F8F8F7F8F8F7F8F7F5F6F6F6F6F6
        F6F7F7F8F8F8F8F8F8F8F8F8F8F9F7F8F8F8F7F7F8F4F5F5EEF1F1E9F0F3EBF1
        F5F4F6F7F7F8F8F8F7F9}
      SkinData.SkinSection = 'BUTTON'
    end
    object CheckBox1: TCheckBox
      Left = 149
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 230
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Inativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 317
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 386
      Top = 5
      Width = 207
      Height = 17
      Caption = 'Por qualquer parte da descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 910
    Height = 164
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 902
      Height = 156
      Align = alClient
      DataSource = DM.DTS_PRODUTOS
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      ListBorder = lbMild
      MarkerStyle = msDefault
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking]
      OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgLoadCurrentOrder, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
      TabOrder = 0
      Totals.Color = 10930928
      OnDblClick = suiDBGrid1DblClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyPress = suiDBGrid1KeyPress
      OnOrderChanged = XDBGrid1OrderChanged
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Cod. Prod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 57
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Title.Caption = 'C'#243'd. Barras'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 6
          Visible = True
          Width = 91
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Cod. Fab/Ref.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 4
          Visible = True
          Width = 106
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 2
          Visible = True
          Width = 277
        end
        item
          Expanded = False
          FieldName = 'DESC_UNIDADE'
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 32
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Caption = 'Est. I.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 42
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_FRACAO'
          Title.Caption = 'Est. F.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 41
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'P'#231' Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 70
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Caption = 'P'#231' Venda2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 79
        end
        item
          Expanded = False
          FieldName = 'PRECO_ANT'
          Title.Caption = 'Pre'#231'o Anterior'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 96
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          CheckBox = True
          CheckBoxStyle = cbLoweredGray
          CheckBoxValues = 'A;I'
          Expanded = False
          FieldName = 'ATIVO'
          ReadOnly = True
          Title.Caption = 'Ativo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 37
        end
        item
          Expanded = False
          FieldName = 'NCM_SH'
          Title.Caption = 'C'#243'digo NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 90
        end
        item
          Expanded = False
          FieldName = 'CHASSI'
          Title.Caption = 'Chassi Veiculo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 231
        end
        item
          Expanded = False
          FieldName = 'N_MOTOR'
          Title.Caption = 'N'#186' do Motor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 158
        end
        item
          Expanded = False
          FieldName = 'LOCALIZACAO'
          Title.Caption = 'Localiza'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODORIGINAL'
          Title.Caption = 'C'#243'd. Original'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PACOTE'
          Title.Caption = 'C'#243'd. Pacote'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
      OrderFields = 'DESCRICAO,REFERENCIA,CODIGO_BARRAS'
    end
    object GroupBox1: TGroupBox
      Left = 216
      Top = 32
      Width = 473
      Height = 105
      Caption = 'Altera'#231#227'o do Grupo de Tributa'#231#227'o'
      TabOrder = 1
      Visible = False
      object RxLabel13: TRxLabel
        Left = 8
        Top = 23
        Width = 57
        Height = 13
        Caption = 'Tributa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object D_grupo_t: TEdit
        Left = 112
        Top = 36
        Width = 345
        Height = 21
        Color = clBtnFace
        TabOrder = 0
      end
      object Grupo_Trib: TfrxComboEdit
        Left = 8
        Top = 36
        Width = 97
        Height = 21
        Style = csSimple
        ItemHeight = 13
        TabOrder = 1
        OnExit = Grupo_TribExit
        Glyph.Data = {
          96000000424D960000000000000076000000280000000F000000040000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFF0F00FFF00FFF00FF0F00FFF00FFF00FF0FFFFFFFFFFFFFFF0}
        OnButtonClick = Grupo_TribButtonClick
      end
      object suiButton5: TsBitBtn
        Left = 97
        Top = 72
        Width = 120
        Height = 27
        Caption = '&Confirma'
        TabOrder = 2
        OnClick = suiButton5Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
          BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
          FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
          6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
          CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
          FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
          75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
          00FFFF00FFFFE3BFFFBC6CF9BC76F3B875FBBD77FEBF78FFC278FFC378FFC378
          FFC378FFC378FFC378FFC378FFC378FFC378FFC178FDBE77F9BC76F3B875F9BC
          76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74FBBE75FFC177FFEDD6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD6
          FFC176FABD75F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73FEBF
          75FFECD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEDD6FDBF75F6BA73F4B972FABB6FFF00FFFF00FFF0B265
          F8BC73F9BC73FCBE74FFFFFFFFFFFFFDDEBAFABD73FABD73FFC878FFCD79FFCC
          78FFC576FABD73FABD73FDDEBAFFFFFFFFFFFFFEC074F9BC73F8BC73F0B265FF
          00FFFF00FFECB064FBBE72FBBE73FBBE73FFFFFFFFFFFFFBBE73FBBE73FBBE73
          FFCB77FFFFFFFFFFFFFFC976FBBE73FBBE73FBBE73FFFFFFFFFFFFFEC073FBBE
          72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FFFFFFFFFFFFFD
          C072FDC072FDC072FFC975FFFFFFFFFFFFFFCC76FDC072FDC072FDC072FFFFFF
          FFFFFFFEC172FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC1
          71FFFFFFFFFFFFFFCE75FFD477FFD478FFCF75FFFFFFFFFFFFFFD678FFD878FF
          D277FFCA74FFFFFFFFFFFFFFC271FEC171FDC171EEB262FF00FFFF00FFF1B462
          FFC270FFC371FFC371FFFFFFFFFFFFFFCE74FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFCC73FFFFFFFFFFFFFFC371FFC371FFC270F0B362FF
          00FFFF00FFF2B561FFC36FFFC470FFC470FFFFFFFFFFFFFFC570FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC570FFFFFFFFFFFFFFC570FFC4
          70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFC56FFFFFFFFFFFFFFF
          C66FFFC56FFFC56FFFC56FFFFFFFFFFFFFFFC56FFFC56FFFC56FFFC56FFFFFFF
          FFFFFFFFC66FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFC7
          6EFFFFFFFFFFFFFFC86FFFC76EFFC76EFFC76EFFFFFFFFFFFFFFC76EFFC76EFF
          C76EFFC76EFFFFFFFFFFFFFFC86EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
          FFC86EFFC86EFFC86EFFFFFFFFFFFFFFCC6FFFCD6FFFC86EFFC86EFFFFFFFFFF
          FFFFC86EFFC86EFFCB6EFFCA6EFFFFFFFFFFFFFFC96EFFC86EFFC86DF7B95FFF
          00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFFFFFFFFFFFFFE9B7FFD570FFD670
          FFD570FFD570FFD570FFD570FFD570FFD36FFFE7B7FFFFFFFFFFFFFFCA6DFFCA
          6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFEFD3FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0D3FFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
          6CFFCC6CFFF0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0D3FFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
          FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCC6CFFCC6CFFCC6CFFCC6CFFCC
          6CFFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
          00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
          FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
          5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
          D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
          FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
          BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
          CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton6: TsBitBtn
        Left = 249
        Top = 72
        Width = 120
        Height = 27
        Caption = '&Sair'
        TabOrder = 3
        OnClick = suiButton6Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFD3E5FFB6D5FFA9CDFFA9CDFFA9CDFFA9
          CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFF
          A9CDFFA9CDFFC2DCFFF3F8FFFF00FFFF00FFFDFEFF9AC6FF6FAEFF6FAEFF73B1
          FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73
          B1FF73B1FF73B1FF73B1FF73B1FF6FAEFF7BB4FFE5F0FFFF00FFCEE4FF6EAFFF
          7CB6FF79AFFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78AC
          FF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF7AB2FF70AFFF95C4FFFF
          00FFB3D7FF669CFF72A4FF72A4FF72A4FF9BBEFFC7DAFFC7DAFFC7DAFFC7DAFF
          C7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFBED5FF7AA9FF72A4FF72A4
          FF71A4FF76B2FFFF00FFCCE2FF6499FF72A7FF72A7FF95BDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE6EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D2E3FF72A7FF72A7FF6BA0FF85B3FFFF00FFFCFDFF74A8FF6CA4FF71AAFFA5C8
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBAFF6794FF8DAFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEDF4FF71ABFF72ABFF639DFFCADEFFFF00FFFF00FFC6DDFF
          63A1FF71AEFF7EB5FFFAFCFFFFFFFFFFFFFFFFFFFFFFFFFF88AFFF689AFF7CA7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD8FF71AFFF67A5FF83B4FFFF00FFFF
          00FFFF00FFFDFEFF80B5FF68A9FF70B0FFBCD9FFFFFFFFFFFFFFFFFFFFFFFFFF
          E6F0FFA7C8FFE3EDFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FF7AB5FF71B2FF62A4
          FFDAEAFFFF00FFFF00FFFF00FFFF00FFD0E5FF62A7FF70B3FF78B6FFF5F9FFFF
          FFFFFFFFFFFFFFFFE7F1FFA7CBFFCFE2FFFFFFFFFFFFFFFFFFFFFFFFFFAED3FF
          70B4FF64A9FF90C1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8ABFFF63AB
          FF6EB5FFAFD6FFFFFFFFFFFFFFFFFFFF98C5FF6FAFFF71B0FFF8FBFFFFFFFFFF
          FFFFEBF4FF73B7FF6EB7FF63AAFFE5F1FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFE1F0FF60ADFF6EBAFF71BAFFECF6FFFFFFFFFFFFFF93C8FF72B7FF72B7
          FFEEF7FFFFFFFFFFFFFFA1D1FF6EBBFF60AEFFA2CFFFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF98CCFF60B0FF6DBCFFA0D3FFFFFFFFFFFFFF
          95CEFF74BEFF74BEFFEFF7FFFFFFFFE0F1FF6EBDFF6BBBFF67B4FFEEF7FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9F4FF62B4FF6CBFFF6C
          BEFFE4F2FFFFFFFF97D3FF77C5FF77C5FFEFF8FFFFFFFF8FCEFF6DC1FF5EB3FF
          AED9FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFA4D6FF5EB5FF6CC2FF91D1FFFFFFFFA3DBFF78CAFF7CCCFFFAFDFFD2ECFF6C
          C3FF67BFFF6FBEFFF8FCFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFF3FAFF64BCFF68C3FF6BC4FFD5EEFFF0F9FFB2E3FFD6F0
          FFFEFEFF80CDFF6CC7FF5DBAFFBCE2FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3E0FF5CBBFF6AC8FF86D1FF
          FEFEFFFFFFFFFFFFFFC2E8FF6BC9FF62C2FF77C7FFFDFEFFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF8FCFF6D
          C5FF64C7FF69CAFFA9E0FFF4FBFFD3F0FF73CEFF6ACCFF5BBFFFCFECFFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFC0E7FF5BC1FF69CEFF69CCFF69CCFF69CCFF69CEFF5EC4FF81
          D0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFDFEFF75CDFF60C8FF68D0FF68CFFF69D0
          FF69D2FF5AC4FFDEF3FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEEFFF59C8FF
          68D6FF68D6FF69D6FF5AC8FF94DBFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF8FDCFF5ACCFF63D6FF5CCFFF6AD0FFECF9FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFBFEFFA7E6FF7BDAFF92E0FFE4F7FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 245
    Width = 910
    Height = 152
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object RxLabel27: TRxLabel
      Left = 188
      Top = 64
      Width = 82
      Height = 13
      Caption = 'Inf. FDicional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel38: TRxLabel
      Left = 188
      Top = 88
      Width = 44
      Height = 13
      Caption = 'Chassi:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 188
      Top = 109
      Width = 50
      Height = 13
      Caption = 'Sec'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel28: TRxLabel
      Left = 3
      Top = 10
      Width = 97
      Height = 13
      Caption = 'Garantia/Meses:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 3
      Top = 38
      Width = 56
      Height = 13
      Caption = 'Validade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel36: TRxLabel
      Left = 3
      Top = 66
      Width = 63
      Height = 13
      Caption = 'Quant. Cx:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel37: TRxLabel
      Left = 3
      Top = 93
      Width = 101
      Height = 13
      Caption = 'Qtde Fracionada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 188
      Top = 10
      Width = 89
      Height = 13
      Caption = 'Principio Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 188
      Top = 36
      Width = 71
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 188
      Top = 130
      Width = 55
      Height = 13
      Caption = 'Cod. MS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 3
      Top = 125
      Width = 46
      Height = 13
      Caption = 'Frac'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 518
      Top = 132
      Width = 75
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 482
      Top = 86
      Width = 76
      Height = 13
      Caption = 'Cod Original:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel16: TRxLabel
      Left = 483
      Top = 109
      Width = 73
      Height = 13
      Caption = 'Cod Pacote:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 279
      Top = 57
      Width = 448
      Height = 22
      DataField = 'APLICACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 279
      Top = 82
      Width = 194
      Height = 23
      DataField = 'CHASSI'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit11: TDBEdit
      Left = 107
      Top = 9
      Width = 77
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 37
      Width = 77
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 65
      Width = 77
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 107
      Top = 92
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_FRACIONADA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBMemo3: TDBMemo
      Left = 279
      Top = 6
      Width = 448
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 356
      Top = 31
      Width = 371
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 279
      Top = 32
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 279
      Top = 128
      Width = 122
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit6: TDBEdit
      Left = 107
      Top = 124
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit1: TDBEdit
      Left = 279
      Top = 106
      Width = 194
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM.DTS_SECCAO1
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DBEdit7: TDBEdit
      Left = 605
      Top = 128
      Width = 122
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'LOCALIZACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBImage1: TDBImage
      Left = 729
      Top = 6
      Width = 175
      Height = 141
      DataField = 'FOTO'
      DataSource = DM.DTS_PRODUTOS
      TabOrder = 13
    end
    object DBMemo5: TDBMemo
      Left = 560
      Top = 81
      Width = 167
      Height = 23
      DataField = 'CODORIGINAL'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBMemo6: TDBMemo
      Left = 560
      Top = 105
      Width = 167
      Height = 23
      DataField = 'COD_PACOTE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 472
    Width = 910
    Height = 41
    Align = alBottom
    TabOrder = 3
    object RxLabel8: TRxLabel
      Left = 435
      Top = 13
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
    object suiButton1: TsBitBtn
      Left = 652
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Cadastro - F4'
      TabOrder = 0
      OnClick = suiButton1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
        BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
        FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
        6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
        CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
        FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
        75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875FBBD77FEBF78FFC278FFC378FFC378
        FFC378FFC378FFC378FFC378FFC378FFC378FFC178FDBE77F9BC76F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74FBBE75FFC177FFEDD6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD6
        FFC176FABD75F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73FEBF
        75FFECD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDD6FDBF75F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FCBE74FFFFFFFFFFFFFDDEBAFABD73FABD73FFC878FFCD79FFCC
        78FFC576FABD73FABD73FDDEBAFFFFFFFFFFFFFEC074F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FFFFFFFFFFFFFBBE73FBBE73FBBE73
        FFCB77FFFFFFFFFFFFFFC976FBBE73FBBE73FBBE73FFFFFFFFFFFFFEC073FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FFFFFFFFFFFFFD
        C072FDC072FDC072FFC975FFFFFFFFFFFFFFCC76FDC072FDC072FDC072FFFFFF
        FFFFFFFEC172FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC1
        71FFFFFFFFFFFFFFCE75FFD477FFD478FFCF75FFFFFFFFFFFFFFD678FFD878FF
        D277FFCA74FFFFFFFFFFFFFFC271FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFC371FFFFFFFFFFFFFFCE74FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCC73FFFFFFFFFFFFFFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFC470FFFFFFFFFFFFFFC570FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC570FFFFFFFFFFFFFFC570FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFC56FFFFFFFFFFFFFFF
        C66FFFC56FFFC56FFFC56FFFFFFFFFFFFFFFC56FFFC56FFFC56FFFC56FFFFFFF
        FFFFFFFFC66FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFC7
        6EFFFFFFFFFFFFFFC86FFFC76EFFC76EFFC76EFFFFFFFFFFFFFFC76EFFC76EFF
        C76EFFC76EFFFFFFFFFFFFFFC86EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFC86EFFFFFFFFFFFFFFCC6FFFCD6FFFC86EFFC86EFFFFFFFFFF
        FFFFC86EFFC86EFFCB6EFFCA6EFFFFFFFFFFFFFFC96EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFFFFFFFFFFFFFE9B7FFD570FFD670
        FFD570FFD570FFD570FFD570FFD570FFD36FFFE7B7FFFFFFFFFFFFFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFEFD3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF0D3FFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFF0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0D3FFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCC6CFFCC6CFFCC6CFFCC6CFFCC
        6CFFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
    object DBNavigator: TsDBNavigator
      Left = 3
      Top = 8
      Width = 86
      Height = 27
      FullRepaint = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DM.DTS_PRODUTOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
    end
    object suiButton3: TsBitBtn
      Left = 780
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Custos - F5'
      TabOrder = 2
      OnClick = suiButton3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFD3E5FFB6D5FFA9CDFFA9CDFFA9CDFFA9
        CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFF
        A9CDFFA9CDFFC2DCFFF3F8FFFF00FFFF00FFFDFEFF9AC6FF6FAEFF6FAEFF73B1
        FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73
        B1FF73B1FF73B1FF73B1FF73B1FF6FAEFF7BB4FFE5F0FFFF00FFCEE4FF6EAFFF
        7CB6FF79AFFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78AC
        FF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF7AB2FF70AFFF95C4FFFF
        00FFB3D7FF669CFF72A4FF72A4FF72A4FF9BBEFFC7DAFFC7DAFFC7DAFFC7DAFF
        C7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFBED5FF7AA9FF72A4FF72A4
        FF71A4FF76B2FFFF00FFCCE2FF6499FF72A7FF72A7FF95BDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE6EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2E3FF72A7FF72A7FF6BA0FF85B3FFFF00FFFCFDFF74A8FF6CA4FF71AAFFA5C8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBAFF6794FF8DAFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEDF4FF71ABFF72ABFF639DFFCADEFFFF00FFFF00FFC6DDFF
        63A1FF71AEFF7EB5FFFAFCFFFFFFFFFFFFFFFFFFFFFFFFFF88AFFF689AFF7CA7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD8FF71AFFF67A5FF83B4FFFF00FFFF
        00FFFF00FFFDFEFF80B5FF68A9FF70B0FFBCD9FFFFFFFFFFFFFFFFFFFFFFFFFF
        E6F0FFA7C8FFE3EDFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FF7AB5FF71B2FF62A4
        FFDAEAFFFF00FFFF00FFFF00FFFF00FFD0E5FF62A7FF70B3FF78B6FFF5F9FFFF
        FFFFFFFFFFFFFFFFE7F1FFA7CBFFCFE2FFFFFFFFFFFFFFFFFFFFFFFFFFAED3FF
        70B4FF64A9FF90C1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8ABFFF63AB
        FF6EB5FFAFD6FFFFFFFFFFFFFFFFFFFF98C5FF6FAFFF71B0FFF8FBFFFFFFFFFF
        FFFFEBF4FF73B7FF6EB7FF63AAFFE5F1FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFE1F0FF60ADFF6EBAFF71BAFFECF6FFFFFFFFFFFFFF93C8FF72B7FF72B7
        FFEEF7FFFFFFFFFFFFFFA1D1FF6EBBFF60AEFFA2CFFFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF98CCFF60B0FF6DBCFFA0D3FFFFFFFFFFFFFF
        95CEFF74BEFF74BEFFEFF7FFFFFFFFE0F1FF6EBDFF6BBBFF67B4FFEEF7FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9F4FF62B4FF6CBFFF6C
        BEFFE4F2FFFFFFFF97D3FF77C5FF77C5FFEFF8FFFFFFFF8FCEFF6DC1FF5EB3FF
        AED9FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFA4D6FF5EB5FF6CC2FF91D1FFFFFFFFA3DBFF78CAFF7CCCFFFAFDFFD2ECFF6C
        C3FF67BFFF6FBEFFF8FCFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFF3FAFF64BCFF68C3FF6BC4FFD5EEFFF0F9FFB2E3FFD6F0
        FFFEFEFF80CDFF6CC7FF5DBAFFBCE2FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3E0FF5CBBFF6AC8FF86D1FF
        FEFEFFFFFFFFFFFFFFC2E8FF6BC9FF62C2FF77C7FFFDFEFFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF8FCFF6D
        C5FF64C7FF69CAFFA9E0FFF4FBFFD3F0FF73CEFF6ACCFF5BBFFFCFECFFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFC0E7FF5BC1FF69CEFF69CCFF69CCFF69CCFF69CEFF5EC4FF81
        D0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFDFEFF75CDFF60C8FF68D0FF68CFFF69D0
        FF69D2FF5AC4FFDEF3FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEEFFF59C8FF
        68D6FF68D6FF69D6FF5AC8FF94DBFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8FDCFF5ACCFF63D6FF5CCFFF6AD0FFECF9FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFBFEFFA7E6FF7BDAFF92E0FFE4F7FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
    object suiDBEdit1: TDBEdit
      Left = 536
      Top = 8
      Width = 109
      Height = 28
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object suiButton4: TsBitBtn
      Left = 92
      Top = 8
      Width = 173
      Height = 27
      Caption = '&Alterar Grupo Tributa'#231#227'o'
      TabOrder = 4
      OnClick = suiButton4Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFFF1E1FFDFBAFFD4A2FFD099FFCE97FFD19CFFD7A9FFE5C8FFF9F1FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFFF3E6FFD39FFFC37CFFBC6EFFC172FFC374FFC475FFC273FFBE70FF
        BE71FFC684FFDFBAFFFCF9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF01FEFFE7C9FFC277FFC16FFFC578FFC379FEBE78FCBE77FBBD
        77FCBE77FFC078FFC579FFC878FFBE6DFFCF93FFF6EBFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFFE2BEFFC06FFFC375FEBF78F7BA75F3B875
        F3B875F3B875F3B875F3B875F3B875F4B975F8BB76FFC379FFBF6EFFC984FFF6
        EAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFEDD4FFC473FFC375F7BB75F4
        BA74F5BA74F7BB75F9BC75FABD75FABD75F9BC75F7BB75F5BA74F4BA74F4BA74
        FDBF76FFBF6CFFD090FFFBF6FF00FFFF00FFFF00FFFF00FFFFF9F1FFCE89FFBD
        6EF7BB73F6BA73F9BC74FBBE75FEC075FFC075FBBB6EF9B96CFBBC71FEC075FB
        BE75F9BC74F6BA73F6BA73FBBD75FFBE6AFFE0B5FF00FFFF00FFFF00FFFF00FF
        FFE6C1FFBC68F9BC73F8BC73FBBE73FEC074FFC275F9B869FABB6FFDCA8DFED0
        99FBC381F7B667FDBC6EFFC175FFC074FCBE73F9BC73FCBD71FFC97DFFF7EAFF
        00FFFF00FFFFFBF6FFD18EF9BA6CF9BD72FBBE73FEC173FFC374F7B766FDCB8E
        FFF4E5FFFDFAFFFDFCFFFCF8FEE5C6FCBE71FFBE6CFFBE6CFEBD6CFCBC6CF9BA
        6BFFBB67FFE4B9FF00FFFF00FFFFF7EAFFBF6BF9BD70FBBF71FEC172FFC273FE
        BE6DFAC682FFF8EFFF00FFFF00FFFF00FFFF00FFFF00FFFFD094FFD094FFD094
        FFD094FECF94FBCE94FCD099FFE7BEFF00FFFF00FFFFF1DAF5B763FCC071FEC1
        71FFC271FFC371F5B765FCE3C1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFEDCD
        F1B462FFC270FFC371FFC371FFC16EF4BA6CFEEED8FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFFEED0F3B561FFC470FFC470FFC470FFC26EF3B968FFEDD2FF00FF
        FF00FFFF00FFFFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FFCC
        66FFCC66FFCC66FF00FFFF00FFFFF4E1F7B861FFC66FFFC66FFFC56EFFC46EF7
        B861FFE0AAFF00FFFF00FFFF00FFFFFEFCFFCD65FFCD65FFDF76FFDF76FFDF76
        FFDF76FFDF76FFDF76FFDF76FFCD65FF00FFFF00FFFFF9EEFBC170FFC56BFFC8
        6EFFC66EFFC56EFFC46CFFCB6BFFEFCAFF00FFFF00FFFF00FFFF00FFF5B760FF
        C56EFFC56EFFC56EFFC56EFFC56EFFC56EFFC56EF5B760FF00FFFF00FFFFFEFB
        FED79EFFC062FFCA6EFFC96EFFC76DFFC76DFFCA68FFD36CFFE7AFFFF1D0FFF3
        D9FCE6C6F9CB89FDBF65FFC86DFFC86DFFC86DFFC86DFFC86DFFC76DF7B95FFF
        00FFFF00FFFF00FFFFEFD6FFC469FFCB6CFFCB6DFFC96CFFC86CFFCA6DFFD66E
        FFD362FFD569FFD66FFFD362FEC165FFC86CFFCA6DFFCA6DFFCA6DFFCA6DFFCA
        6DFFC96CF8BA5EFF00FFFF00FFFF00FFFFFEFDFFDA9EFFC15EFFCF6DFFCC6CFF
        CA6CFFC96CFFCA6CFFD56EFFD96EFFDA6EFFDA70FFCF6DFFCA6CFFCA6CFFCC6C
        FFCC6CFFCC6CFFCB6CFFCA6CF9BB5EFF00FFFF00FFFF00FFFF00FFFFF9EFFFD2
        81FFC761FFD16CFFCE6CFFCC6CFFCA6BFFCA6BFFCB6BFFCC6CFFCA6BFFCB6BFF
        CC6CFFCE6CFFCF6CFFD06CFFCF6CFFCF6CFFCC6CFBBD5DFF00FFFF00FFFF00FF
        FF00FFFF00FFFFF4E0FFD380FFC65EFFD26CFFD16CFFCF6CFFCE6CFFCE6CFFCE
        6CFFCE6CFFCF6CFFD16CFFD36DFFD16AFFC75EFFC65EFFC45EFFD06CFEBE5DFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFF9EEFFDE9AFFCB60FFCC62FFD369
        FFD56CFFD46CFFD46CFFD66CFFD66CFFD267FFCA5EFFD16EFFE1A1FFFDF8FFC9
        5EFFC65EFFC25DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFEFF
        F1D1FFE09BFFD06AFFCC5DFFCC5DFFCC5DFFCC5DFFCC5EFFD77DFFE7B1FFF6E0
        FF00FFFF00FFFF00FFFFCA5DFFC65CFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFFFEFAFFF9ECFFF5DCFFF0CBFFEFC9FFF1CFFFF7E4FF
        FBF1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFC85DFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn1: TsBitBtn
      Left = 268
      Top = 8
      Width = 133
      Height = 27
      Caption = '&Lan'#231'ar Similar'
      TabOrder = 5
      OnClick = sBitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
        FBF2B9EBB885DC8262D25E52CD4D52CD4D5CD0587CD979ACE7AAEBF9EAFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFBFEFBB0E8AF5CD15A52CE5058D4565FDB5C62DE6062DE6060DC5D5AD65752
        CE5055CF539BE39AF4FCF4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFF2FBF27CDA7C52CF525ED95E61D66160D0605FCC5F5FCA5F5FCA
        5F5FCB5F60CF6060D46061DC6152CF526AD56AE7F8E7FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFF7FDF770D87351CF5560D6635ECC625ECB625ECB62
        5ECB625ECB625ECB625ECB625ECB625ECB625ECC6260D36352D05760D363E7F8
        E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86DF8B51CF575FD1655ECC645E
        CC645ECC6460D96661E16762E66962E56860DE6760D5655ECC645ECC645ECC64
        5FCF6552CF596DD872F7FDF8FF00FFFF00FFFF00FFFF00FFCBF1CE51D05B5FCF
        675ECC675ECC675ECD675ECE6760DC69CFF7D3FFFFFFFFFFFFCFF7D260DA695E
        CE675ECD675ECC675ECC675ECE6751CF5AABE9B0FF00FFFF00FFFF00FFFF00FF
        6FDA7B56CA625ECD695ECD695ECF6A5ECF6A5ECF6A5ED46CFFFFFFFFFFFFFFFF
        FFFFFFFF5FD76C5ECF6A5ECF6A5ECE695ECD695ECD695ACC6758D365F2FCF3FF
        00FFFF00FFDAF6DD50CC605ECE6C5ECE6C5ECF6C5ECF6D5ECF6D5ECF6D5ED26E
        FFFFFFFFFFFFFFFFFFFFFFFF5FD9705ECF6D5ECF6D5ECF6D5ECF6C5ECE6C5ECE
        6C50C960B9EDBFFF00FFFF00FFAFEBB950C3625ECF705ECF705FDD7460E47661
        EA7860E6775FDC74FFFFFFFFFFFFFFFFFFFFFFFF61E87761EC7861E97860E175
        5FD9735ECF705ECF7054C5668CE19AFF00FFFF00FF8FE19E52C5685DD1735DD1
        735FE078CFF9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCFF8D75EDD775DD1735DD07358CB6E6ED682FF00FFFF00FF83DB96
        54C96E5DD1765DD2775ED878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDA7A5DD2775DD17659CD7363CF7BFF
        00FFFF00FF86DB9B53CA715CD37A5CD37A5CD37AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CD47B5CD37A5CD3
        7A59CF7665CE7FFF00FFFF00FF99E2AD50C8715CD57D5CD47D5CD37DCEF2D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEF2D8
        5CD47D5CD47D5CD57D55CE767AD693FF00FFFF00FFC0EECE4DC9735CD7815BD6
        815BD6815BD5815BD5815BD5815BD581FFFFFFFFFFFFFFFFFFFFFFFF5BD5815B
        D5815BD5815BD5815BD6815BD6815CD7814ECA74A1E3B5FF00FFFF00FFF2FCF5
        51CC795BD8835CD8845BD6835BD6835BD6835BD6835BD683FFFFFFFFFFFFFFFF
        FFFFFFFF5BD6835BD6835BD6835BD6835BD7845CD8845CD9854DCB76D7F4E1FF
        00FFFF00FFFF00FF92E0AD4DCD7A5CDA885CD8875BD7865BD6865BD6865BD686
        FFFFFFFFFFFFFFFFFFFFFFFF5BD6865BD6865BD7865BD8875CD9875CDA8852D1
        7E71D794FF00FFFF00FFFF00FFFF00FFECFAF155D28354D5835BDA8A5BD98A5B
        D8895BD8895BD789CDF3DBFFFFFFFFFFFFCDF3DB5BD7895BD8895BD88A5BDA8A
        5BDC8B59DA894DD07DD5F4E1FF00FFFF00FFFF00FFFF00FFFF00FFC8F1D84DD1
        8157DA8A5BDC8E5BDA8D5BD98D5BD88C5BD88C5BD88C5BD88C5BD88C5BD88C5B
        D98D5BDA8D5BDD8E5BDF8F4DD281A7E9C1FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB1EDC94FD58653D8895BDF915BDC8F5BDB8F5BDA8F5BDA8F5BDA
        8F5BDB8F5BDB8F5BDD905BDF9157DD8E4DD48491E5B4FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCF4DD59DA904CD68659E0925BE194
        5BE0945BDF935BE0945BE0945BE2945BE3944DD78850D88AB1EECBFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4FDF89E
        EABF57DB904CD8894CD7884DD88A4FDA8C4CD7884CD88950DA8C8FE7B6EAFAF1
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFBFEFCCFF5E0B7F1D19AEBBE94EABBB7F1D1C8F4DCF2
        FCF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 397
    Width = 910
    Height = 75
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 4
    object suiDBGrid1: TDBAdvGrid
      Left = 4
      Top = 4
      Width = 902
      Height = 67
      Cursor = crDefault
      Hint = 'Mostra os Produtos Similares'
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 6
      FixedColor = 15717318
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssBoth
      ShowHint = True
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      Version = '2.3.3.4'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SEQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Seq'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 20
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SEQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Seq'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 64
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_BARRAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'C'#243'd Barras Prod'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 94
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'CODIGO_SIMILAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Cod. Prod. Similar'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 107
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'REFERENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'C'#243'd. F'#225'b/Ref.'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 110
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = 14609391
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Descri'#231#227'o do Produto Similar / Compat'#237'vel'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 486
        end>
      DataSource = DM.dts_similares2
      InvalidPicture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000777777777777000000000000000000777788FFFF887777
        000000000000007778F8887117788F877700000000000778F87111111111178F
        877000000000778871111111111999178877000000077F811111111111199999
        18F7700000778811111111111119999991887700007881111111111111119199
        99188700077F711111811111111198719997F7700788111118FF111111118FF7
        1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
        911918777881111118888FF1188888811111188778811111118888FF88888811
        111117877F7111111118888888888111111117F77F7999111111888888881111
        111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
        111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
        11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
        71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
        1117F77000788879978799999999787111188700007788879999999999999999
        1188770000077F88799999999999999778F77000000077888879999999999778
        8877000000000778F88877799777788F877000000000007778F8888878888F87
        7700000000000000777788FFFF88777700000000000000000077777777777700
        00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
        C000000380000001800000010000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000080000001
        80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
        FFC003FF}
      ShowUnicode = False
      ColWidths = (
        20
        64
        94
        107
        110
        486)
    end
  end
  object ACBrLCB4: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB4LeCodigo
    Left = 710
    Top = 1
  end
end
