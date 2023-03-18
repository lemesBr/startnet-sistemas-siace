object FrmTransfMesa: TFrmTransfMesa
  Left = 376
  Top = 94
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfer'#234'ncia de Mesa'
  ClientHeight = 477
  ClientWidth = 699
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Mesa Origem'
    end
    object Label2: TLabel
      Left = 144
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Mesa Destino'
    end
    object EdtOrigem: TAlignEdit
      Left = 32
      Top = 24
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Alignment = taRightJustify
      ColorOnFocus = clWindow
      ColorOnNoFocus = clWindow
      FontOnFocus.Charset = DEFAULT_CHARSET
      FontOnFocus.Color = clWindowText
      FontOnFocus.Height = -11
      FontOnFocus.Name = 'MS Sans Serif'
      FontOnFocus.Style = []
      FontOnNoFocus.Charset = DEFAULT_CHARSET
      FontOnNoFocus.Color = clWindowText
      FontOnNoFocus.Height = -11
      FontOnNoFocus.Name = 'MS Sans Serif'
      FontOnNoFocus.Style = []
    end
    object EdtDestino: TAlignEdit
      Left = 144
      Top = 24
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = EdtDestinoEnter
      OnExit = EdtDestinoExit
      Alignment = taRightJustify
      ColorOnFocus = clWindow
      ColorOnNoFocus = clWindow
      FontOnFocus.Charset = DEFAULT_CHARSET
      FontOnFocus.Color = clWindowText
      FontOnFocus.Height = -11
      FontOnFocus.Name = 'MS Sans Serif'
      FontOnFocus.Style = []
      FontOnNoFocus.Charset = DEFAULT_CHARSET
      FontOnNoFocus.Color = clWindowText
      FontOnNoFocus.Height = -11
      FontOnNoFocus.Name = 'MS Sans Serif'
      FontOnNoFocus.Style = []
    end
    object BtnSair: TBitBtn
      Left = 352
      Top = 24
      Width = 81
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
      OnClick = BtnSairClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA64308C25E03AA4707FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA13E08C66203C86402A54207FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA13E07C05B03C86402A54207FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA13E07
        BD5B09D16C03A74407FF00FFFF00FFA44108AC4906AC4906AC4906AC4906AC48
        06AC4806AC4906A33F07FF00FFAD4C0DE0831DB3510AFF00FFFF00FFFF00FFB7
        5305CF6A01CD6701CD6801CC6701CC6701CD6801C66102A33F079E3A05D47B28
        D67C259E3906FF00FFFF00FFFF00FFA64307AE4A06AD4A06AB4806B34F06CE69
        01CF6A01C56102A33F07A5420AF1A444BD621CFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF9F3D08C45F03C96402BD5804C76201A23F07A9470DF4AA49
        B55818FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA13E08C05B03D06B01AB47
        07B45005C96401A23F07A6440CF4AB49C76D24983301FF00FFFF00FFFF00FFFF
        00FFA13E07C25D03D26C00B24E069C3909B65205C96401A23F079D3805DE8C36
        F5AA48AA490E9B36039B36039B3603AB490CCE6F12D16E05B44F05FF00FFFF00
        FFB65205C96401A23F07FF00FFAA480EF2A746F9B04CCA7026C16620D6812EF3
        A139DB8121AA490AFF00FFFF00FFFF00FFB75205C96401A23F07FF00FFFF00FF
        A9470CCF7A2CF1A344F8AB4AEEA143C86D23A4410AFF00FFFF00FFFF00FFFF00
        FFB55105C86301A23F07FF00FFFF00FFFF00FF9F3C06A8460CAF5012A7450C9D
        3905FF00FFFF00FFFF00FFFF00FFFF00FFA54208AA4707A23F07FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BtnOK: TBitBtn
      Left = 256
      Top = 24
      Width = 81
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = BtnOKClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 699
    Height = 393
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnTransfItem: TBitBtn
      Left = 224
      Top = 361
      Width = 113
      Height = 25
      Caption = '&Transferir Item'
      TabOrder = 0
      OnClick = BtnTransfItemClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 695
      Height = 351
      Align = alTop
      Color = clGradientInactiveCaption
      DataSource = DSQBuscaItensOrigem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ORDEM'
          Title.Alignment = taCenter
          Title.Caption = 'ITEM'
          Width = 34
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_PRO'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 52
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'PRODUTO'
          Width = 324
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'QUANT'
          Title.Alignment = taCenter
          Title.Caption = 'QUANT.'
          Width = 57
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'UNIT'#193'RIO'
          Width = 63
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL'
          Width = 58
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_VEND'
          Title.Alignment = taCenter
          Title.Caption = 'GAR'#199'ON'
          Width = 210
          Visible = True
        end>
    end
    object BtnTransfTudo: TBitBtn
      Left = 369
      Top = 361
      Width = 113
      Height = 25
      Caption = '&Transferir Tudo'
      TabOrder = 2
      OnClick = BtnTransfTudoClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 458
    Width = 699
    Height = 19
    Panels = <
      item
        Text = 'ESC p/Sair'
        Width = 70
      end
      item
        Text = '[F10] Menu Fiscal'
        Width = 50
      end>
  end
  object IBSPTransf: TIBStoredProc
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    StoredProcName = 'SP_JUNTA_CONTAS_CLIENTES'
    Left = 512
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEWCOD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLDCOD'
        ParamType = ptInput
      end>
  end
  object QTransf: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'UPDATE MESAS'
      'SET MESA = :MESA, MESA_ORIGEM = :ORIGEM'
      'WHERE CODIGO = :COD')
    Left = 592
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORIGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
  end
  object IBTRItensMesa: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 40
    Top = 232
  end
  object QBuscaItensOrigem: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRItensMesa
    OnCalcFields = QBuscaItensOrigemCalcFields
    SQL.Strings = (
      
        'SELECT I.*, P.DESCRICAO AS NOME_PRO, P.DESCRICAO AS DESC_CUPOM, ' +
        'V.USUARIO, FD.descricao MESA_ORIGEM'
      'FROM ITENS_CONTA_CLIENTE I'
      'INNER JOIN PRODUTOS P'
      'ON (I.COD_PRO = P.CODIGO)'
      'INNER JOIN USUARIOS V'
      'ON (I.COD_VEND = V.CODIGO)'
      'left outer join MESAS_ADICIONAIS FD'
      'on ( FD.cod = I.conta_origem )'
      'WHERE I.CODIGO = :COD'
      'ORDER BY I.ORDEM')
    Left = 40
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object QBuscaItensOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ITENS_CONTA_CLIENTE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItensOrigemORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"ITENS_CONTA_CLIENTE"."ORDEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItensOrigemCOD_PRO: TIntegerField
      FieldName = 'COD_PRO'
      Origin = '"ITENS_CONTA_CLIENTE"."COD_PRO"'
      Required = True
    end
    object QBuscaItensOrigemCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"ITENS_CONTA_CLIENTE"."COD_VEND"'
      Required = True
    end
    object QBuscaItensOrigemVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ITENS_CONTA_CLIENTE"."VALOR"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensOrigemCONTA_ORIGEM: TIntegerField
      FieldName = 'CONTA_ORIGEM'
      Origin = '"ITENS_CONTA_CLIENTE"."CONTA_ORIGEM"'
    end
    object QBuscaItensOrigemCANCELADO: TIntegerField
      FieldName = 'CANCELADO'
      Origin = '"ITENS_CONTA_CLIENTE"."CANCELADO"'
      Required = True
    end
    object QBuscaItensOrigemCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = '"ITENS_CONTA_CLIENTE"."COD_EMP"'
      Required = True
    end
    object QBuscaItensOrigemQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = '"ITENS_CONTA_CLIENTE"."QUANT"'
      Required = True
      Precision = 18
      Size = 3
    end
    object QBuscaItensOrigemNOME_PRO: TIBStringField
      FieldName = 'NOME_PRO'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object QBuscaItensOrigemDESC_CUPOM: TIBStringField
      FieldName = 'DESC_CUPOM'
      Origin = '"PRODUTOS"."DESCRICAO"'
      Size = 70
    end
    object QBuscaItensOrigemUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIOS"."USUARIO"'
    end
    object QBuscaItensOrigemMESA_ORIGEM: TIBStringField
      FieldName = 'MESA_ORIGEM'
      Origin = '"MESAS_ADICIONAIS"."DESCRICAO"'
      Size = 50
    end
    object QBuscaItensOrigemCALC_DESCRICAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_DESCRICAO'
      Size = 100
      Calculated = True
    end
  end
  object DSQBuscaItensOrigem: TDataSource
    AutoEdit = False
    DataSet = QBuscaItensOrigem
    Left = 40
    Top = 336
  end
  object QInsMesa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT *'
      
        'FROM SP_INSERT_CONTA_CLIENTE(:DATA, :HORA, :CONTA, :CODCAI, :COD' +
        'EMP)'
      '')
    Left = 248
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object QInsMesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SP_INSERT_CONTA_CLIENTE.CODIGO'
    end
  end
  object QOrdem: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT MAX(ORDEM) ORDEM'
      'FROM ITENS_CONTA_CLIENTE'
      'WHERE CODIGO = :CODIGO')
    Left = 408
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QOrdemORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object QBuscaMesa: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    Left = 336
    Top = 240
  end
end
