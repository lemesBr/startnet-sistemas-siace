object FrmRelConv: TFrmRelConv
  Left = 371
  Top = 326
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Convenio'
  ClientHeight = 189
  ClientWidth = 452
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
    Width = 452
    Height = 129
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 448
      Height = 49
      Align = alTop
      Caption = 'Conv'#234'nio'
      TabOrder = 0
      object BtnConsCon: TSpeedButton
        Left = 61
        Top = 18
        Width = 23
        Height = 21
        Hint = 'Consultar Conv'#234'nio'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
          BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
          2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
          00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF55BDFFB5D6EDA3908EB69B8BF0E7C8FEFDDAFEFDD9FDFCD8EADA
          C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCB7B7D9B8A5FF
          F1C3FFFDD6FFFFDAFFFFDAFFFFDFFFFFEFF6F0EBB48D89FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFC6978FF7E2B5F8DBAAFDF7D0FFFFDAFFFFE1FFFFF2FFFF
          FBFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDBBAA8FCE4AFF2
          C897FCF4CCFFFFDBFFFFE4FFFFF9FFFFFBFFFFECF2EFD0C79C96FF00FFFF00FF
          FF00FFFF00FFFF00FFE4C7AFFBE0ABEFBA86F9E3B6FFFFD9FFFFDEFFFFE8FFFF
          EAFFFFE0FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00FFDFC0ABFEE9B5EF
          BB84F3CC98FBEEC4FFFFDBFFFFDDFFFFDCFFFFDCF6F2D2C8A298FF00FFFF00FF
          FF00FFFF00FFFF00FFCAA098FDF0C2FAE9C5F4D3A6F4D09DF9E4B8FEF6CFFEFA
          D3FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDC4AEFF
          FFFFFFF7E9F3CC98F0BD89F4CE9DFCE6B6FDF6C8BE9D8FFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DCFFF2C0FDE6B1FEE9B5F4DE
          B7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnConsConClick
      end
      object cod_con: TAlignEdit
        Left = 8
        Top = 18
        Width = 49
        Height = 21
        Hint = 'Pressione F2 para Consultar Conv'#234'nio'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = cod_conEnter
        OnExit = cod_conExit
        OnKeyDown = cod_conKeyDown
        OnKeyPress = cod_conKeyPress
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
      object EdtNomeCon: TEdit
        Left = 88
        Top = 18
        Width = 345
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object RDG: TRadioGroup
      Left = 232
      Top = 56
      Width = 201
      Height = 49
      Caption = 'Tipo '
      Columns = 2
      Items.Strings = (
        'Detalhado'
        'Resumido')
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 56
      Width = 217
      Height = 49
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label1: TLabel
        Left = 101
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TMaskEdit
        Left = 8
        Top = 16
        Width = 77
        Height = 21
        Color = clSilver
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnExit = EdtDataIniExit
      end
      object EdtDataFin: TMaskEdit
        Left = 120
        Top = 16
        Width = 77
        Height = 21
        Color = clSilver
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = EdtDataIniExit
      end
    end
    object CheckEmp: TCheckBox
      Left = 8
      Top = 104
      Width = 257
      Height = 17
      Caption = 'Todas as Empresas'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 452
    Height = 41
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnVis: TBitBtn
      Left = 80
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 0
      OnClick = BtnvisClick
    end
    object BtnImp: TBitBtn
      Left = 184
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BtnvisClick
    end
    object BtnSair: TBitBtn
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnsairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 170
    Width = 452
    Height = 19
    Panels = <>
  end
  object QConvDet: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT *'
      
        'FROM REL_CONVENIO_DETALHADO (:CODCON, :CODEMP, :DATAINI, :DATAFI' +
        'N)'
      'ORDER BY NOMECLI, DATACTR')
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCON'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end>
    object QConvDetCODCTR: TIntegerField
      FieldName = 'CODCTR'
      Origin = '"REL_CONVENIO_DETALHADO"."CODCTR"'
    end
    object QConvDetCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"REL_CONVENIO_DETALHADO"."CODCLI"'
    end
    object QConvDetSEQCTR: TIBStringField
      FieldName = 'SEQCTR'
      Origin = '"REL_CONVENIO_DETALHADO"."SEQCTR"'
      Size = 10
    end
    object QConvDetDATACTR: TDateField
      FieldName = 'DATACTR'
      Origin = '"REL_CONVENIO_DETALHADO"."DATACTR"'
    end
    object QConvDetVALORCTR: TIBBCDField
      FieldName = 'VALORCTR'
      Origin = '"REL_CONVENIO_DETALHADO"."VALORCTR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConvDetNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = '"REL_CONVENIO_DETALHADO"."NOMECLI"'
      Size = 60
    end
    object QConvDetDOCCLI: TIBStringField
      FieldName = 'DOCCLI'
      Origin = '"REL_CONVENIO_DETALHADO"."DOCCLI"'
    end
  end
  object DSQConvDet: TDataSource
    AutoEdit = False
    DataSet = QConvDet
    Left = 328
    Top = 8
  end
  object QConvRes: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT *'
      
        'FROM REL_CONVENIO_RESUMIDO (:CODCON, :CODEMP, :DATAINI, :DATAFIN' +
        ')'
      'ORDER BY NOMECLI')
    Left = 144
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCON'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end>
    object QConvResCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = '"REL_CONVENIO_RESUMIDO"."CODCLI"'
    end
    object QConvResNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = '"REL_CONVENIO_RESUMIDO"."NOMECLI"'
      Size = 60
    end
    object QConvResDOCCLI: TIBStringField
      FieldName = 'DOCCLI'
      Origin = '"REL_CONVENIO_RESUMIDO"."DOCCLI"'
    end
    object QConvResTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"REL_CONVENIO_RESUMIDO"."TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DSQConvRes: TDataSource
    AutoEdit = False
    DataSet = QConvRes
    Left = 392
    Top = 112
  end
  object QConsConv: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      'SELECT NOME_CON, DIA_REFERENCIA_CON'
      'FROM CONVENIO'
      'WHERE COD_CON = :CODCON')
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCON'
        ParamType = ptUnknown
      end>
    object QConsConvNOME_CON: TIBStringField
      FieldName = 'NOME_CON'
      Origin = 'CONVENIO.NOME_CON'
      Required = True
      Size = 60
    end
    object QConsConvDIA_REFERENCIA_CON: TIntegerField
      FieldName = 'DIA_REFERENCIA_CON'
      Origin = 'CONVENIO.DIA_REFERENCIA_CON'
    end
  end
end
