object FrmRecConvenio: TFrmRecConvenio
  Left = 619
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recebimento de Conv'#234'nio'
  ClientHeight = 415
  ClientWidth = 523
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 113
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label2: TLabel
      Left = 328
      Top = 86
      Width = 37
      Height = 16
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 391
      Height = 49
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
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = cod_conEnter
        OnExit = cod_conExit
        OnKeyDown = cod_conKeyDown
        OnKeyPress = cod_conKeyPress
      end
      object EdtNomeCon: TEdit
        Left = 88
        Top = 18
        Width = 289
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
    object GroupBox2: TGroupBox
      Left = 2
      Top = 56
      Width = 241
      Height = 47
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label1: TLabel
        Left = 117
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TMaskEdit
        Left = 24
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
        Left = 144
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
    object BtnSair: TBitBtn
      Left = 424
      Top = 40
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
      OnClick = BtnSairClick
    end
    object BtnOK: TBitBtn
      Left = 424
      Top = 8
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = BtnOKClick
    end
    object EdtTotal: TCurrencyEdit
      Left = 368
      Top = 80
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CheckEmp: TCheckBox
      Left = 264
      Top = 56
      Width = 129
      Height = 17
      Caption = 'Todas as Empresas'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 523
    Height = 231
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 519
      Height = 227
      Align = alClient
      Color = clSilver
      DataSource = DSQConsCTR
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODCLI'
          Title.Alignment = taCenter
          Title.Caption = 'CLIENTE'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O DO CLIENTE'
          Width = 301
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCCLI'
          Title.Alignment = taCenter
          Title.Caption = 'RG'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 344
    Width = 523
    Height = 52
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 2
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 104
      Height = 13
      Caption = 'Data do Recebimento'
    end
    object Label7: TLabel
      Left = 128
      Top = 8
      Width = 102
      Height = 13
      Caption = 'Tipo do Recebimento'
    end
    object EdtData: TDateTimePicker
      Left = 8
      Top = 24
      Width = 97
      Height = 21
      Date = 37981.618029594900000000
      Time = 37981.618029594900000000
      TabOrder = 0
    end
    object ComboTipo: TComboBox
      Left = 128
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE'
        'DEP'#211'SITO')
    end
    object BtnRec: TButton
      Left = 336
      Top = 19
      Width = 65
      Height = 25
      Caption = '&Receber '
      TabOrder = 2
      OnClick = BtnRecClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 396
    Width = 523
    Height = 19
    Panels = <>
  end
  object QConsCTR: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      
        'FROM REL_CONVENIO_RESUMIDO (:CODCON, :CODEMP, :DATAINI, :DATAFIN' +
        ')'
      'ORDER BY NOMECLI')
    Left = 88
    Top = 192
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
    object QConsCTRCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'REL_CONVENIO_RESUMIDO.CODCLI'
    end
    object QConsCTRNOMECLI: TIBStringField
      FieldName = 'NOMECLI'
      Origin = 'REL_CONVENIO_RESUMIDO.NOMECLI'
      Size = 60
    end
    object QConsCTRDOCCLI: TIBStringField
      FieldName = 'DOCCLI'
      Origin = 'REL_CONVENIO_RESUMIDO.DOCCLI'
    end
    object QConsCTRTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'REL_CONVENIO_RESUMIDO.TOTAL'
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
  end
  object DSQConsCTR: TDataSource
    AutoEdit = False
    DataSet = QConsCTR
    Left = 96
    Top = 248
  end
  object IBTRBaixa: TIBTransaction
    DefaultDatabase = DM.IBDatabase
    Left = 240
    Top = 256
  end
  object IBSPBaixa: TIBStoredProc
    Database = DM.IBDatabase
    Transaction = IBTRBaixa
    StoredProcName = 'BAIXA_PARCELAS_CONVENIO'
    Left = 240
    Top = 200
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODCON'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODCAI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPOREC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTPAGTO'
        ParamType = ptInput
      end>
  end
end
