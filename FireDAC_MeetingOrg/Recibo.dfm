object FormRecibo: TFormRecibo
  Left = 255
  Top = 98
  Caption = 'Emiss'#227'o de Rebibos Avulso'
  ClientHeight = 400
  ClientWidth = 760
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 7
      Width = 101
      Height = 24
      Caption = 'Recibo N'#186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 525
      Top = 11
      Width = 67
      Height = 13
      Caption = 'Valor de R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 130
      Top = 5
      Width = 6
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TCurrencyEdit
      Left = 600
      Top = 8
      Width = 132
      Height = 21
      AutoSize = False
      TabOrder = 0
      ZeroEmpty = False
      OnChange = Edit2Change
      OnExit = Edit2Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 760
    Height = 318
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 18
      Width = 89
      Height = 13
      Caption = 'Recebiemos de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 52
      Width = 75
      Height = 13
      Caption = 'A Quantia de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 107
      Width = 70
      Height = 13
      Caption = 'Referente a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 174
      Width = 208
      Height = 13
      Caption = 'Para Maior Clareza Firmo o Presente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 373
      Top = 205
      Width = 30
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 346
      Top = 229
      Width = 54
      Height = 13
      Caption = 'Emitente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 372
      Top = 255
      Width = 28
      Height = 13
      Caption = 'Cnpj:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 107
      Top = 13
      Width = 626
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 106
      Top = 48
      Width = 626
      Height = 41
      TabStop = False
      TabOrder = 1
    end
    object Memo2: TMemo
      Left = 105
      Top = 110
      Width = 626
      Height = 52
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 411
      Top = 199
      Width = 318
      Height = 21
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 411
      Top = 225
      Width = 318
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 412
      Top = 251
      Width = 318
      Height = 21
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 359
    Width = 760
    Height = 41
    Align = alBottom
    TabOrder = 2
    object suiButton7: TsBitBtn
      Left = 520
      Top = 8
      Width = 97
      Height = 27
      Caption = 'Imprimir'
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D805000000000000000000000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F80000F7F8
        F8F8F8F8F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F8F7F8F8FC
        FDFFFFFFFFFDFEFFF9FAFAF7F8F8F7F7F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8
        0000F8F8F8F7F7F8F8F8F8F8F8F7F7F8F8F7F8F7F8F7F7F8F8F8F7F7F8FCFDFD
        FFFFFFCDC7BE9D8B76CAC3BCF1F3F4FFFFFFFFFFFFFEFFFFFBFCFDF9F8F8F8F8
        F8F6F8F80000F7F7F8F7F8F7F8F8F8FAF9FAF9F8F9F8F8F9F8F7F8F7F8F8FBFE
        FFEBD9CAA36F50997753BE9772B087639B764E95795BA5927EBCB2A4E2DCD6FF
        FFFFFCFFFFF7F8F80000F8F7F8F7F9F8FAFBFCF7F3F5F7FBFCF9FCFFFAFDFFFC
        FEFFF9F2EABD8260AF8F75E9D8C9D9C5B1D2BBA5D0B59ACAAD90C9A483BB9973
        9F7D588B6E4FC0B09EFEFEFF0000F8F8F8FBFEFFBAA398A16744B5866ABB9F8E
        D0C1B7E0D7D3E1A88EEDA283F1E5DCFEFFFFFBFBFCFBF9F9F8F4F0F4EEE8ECE5
        DEE8DCD2E7DACDD2B9A0F4EEE3F9FAFB0000FAFBFCEBEAE99B5F38CD8A51E69F
        59DB8F4ACB8041CC8E66F4AF96E9C2AEF9F7F5F8F9F9F8F8F8F7F8F8F8F9F9F8
        F9FAF9FAFBFEFFFFEBE0D1C99879FAF7F7F7F9F90000FAFEFFB8A294BA6F32E2
        CBB6FFFCEDF9EAD4EFCA9FCC9C79DFBCA8FCFDFBF9FDFFF8FAFCF7F9FBF7F9F9
        F7F8F9F7F8F8FBFEFFECE2D8E0A387E8BFA9F8F8F6F8F8F80000EDECEEA8693D
        DCA36FDFD1CFFDFEFDFFFDFE65260AB98864F1C49AFEDBBDFFE3CBFFECDCFFF5
        E8FFF9F3FFFBFAFFFFFFECE4DAD4A485D8A27DF6F6F5F9FAFBF7F8F80000D4C8
        C1C88447E9CFB6D9CBC3FCF6EBF9EEE39E4A269F6A47543A236144257D58309B
        6C3EB57F54CE976AE2AC80E0B58EC3A186EFDFC9CF9466E1D9D7FAFBFCF7F8F8
        0000D5C7BFE3B07CE3DBD8DFCBBBFAEEDBF9E5D5B84F2ADA7546E59164D79069
        BE8869A87C608E684B6C452F5D37217A4421DEBDAAFFFFFFE0C9B6DED0C9FAFC
        FDF7F8F70000D4C7BCF3E4D0D0C2BDF3D7B7F9E1C5F5DCC4CB542CED6E3CF171
        3CF0743EF1763FF77E49FA8A58FE9B68EF9362D46F43DEAF99FFFDF9E1C1A9DE
        D1C9FAFBFDF8F8F70000CECAC8FDFBFDD6BBA7FCD5AAFADDB2E8AF90DA592DF1
        7A4BF6885BF68E67F4885CF47744F5703DF5733DF36F3ED25126EFCFBBFDF6E7
        D9B396E6E2E2FAFAFBF8F7F80000CECAC9F5EEEAE6BB8CFACC95FFD8A8B75B39
        D76F47E48C67EA9D7FEAA384ECA281E88C64E17043DF6D3ED76334B95732FFED
        D6FEE6C9CDA68DFAFCFDF8F8F8F8F8F80000E9E7E7CFB8A4FCCD8EFCCB8CD59B
        75B16142BF7653C68667CE9174CE9578CD9678CA8868BE6F46B45B30993C16E1
        B08FFBDDB7EFC79EDDCDC3FAFDFEF8F8F8F8F8F80000FAFAFBEFEAE6DDCAB9E4
        C2A6AC6849ECA889EDA788E39F83D69171CE8D70C28464B67959A86B468E4823
        C8946CFFD9A4F3C794D8C2AEFDFEFFF7F8F8F8F8F8F8F8F80000F8F8F8F9FAFA
        FBFCFEFEFFFFE0D3CA9E6A4CBA7B5BB0775DC69B89C48568D69274D78E71D487
        6BC58A66FFD49EE3B689E3D3C3FDFFFFF7F8F8F8F8F7F8F8F8F8F8F80000F8F7
        F8F7F8F7F8F7F8FBFCFDE0DEDEC58166FFB391DBB7A4E3E4E0B67458C17958ED
        DDD2F1E9E8F8F5F2E6E2DEF5F3F1FAFCFEF7F8F8F8F8F8F8F8F7F8F8F8F8F8F8
        0000F7F8F7F8F7F8F8F8F7FEFFFFB6A59DD39073E4A282EDDDD3A17F70FBAD8D
        DC9E84FFFFFFF8FAFCF9FAFAF9FAFAF8F8F9F7F8F8F8F8F8F8F8F7F8F8F8F8F8
        F8F8F8F80000F7F8F7F8F7F8F7F7F8FBFDFED7CBC39A6C4FAA7B5A95654AAD73
        57B57453D4B8A7FDFFFFF8F8F8F8F8F7F6F7F8F8F8F7F8F8F8F7F7F7F8F8F8F8
        F8F8F8F8F8F8F8F80000F8F7F8F7F7F7F8F8F8F7F7F8FDFEFFFAF7F3EEE8E4EB
        DED2E3D3C7EADED6FFFFFFF7F7F9F8F8F7F7F7F8F7F8F7F8F7F8F7F7F7F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F80000F8F8F8F8F7F7F7F8F8F8F8F8F7F8F7F8F9F9
        F9FBFBFAFCFCFBFCFEFAFBFCF7F8F7F8F8F8F7F7F8F9F7F8F7F8F7F8F7F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F80000}
      TabOrder = 0
      OnClick = suiButton7Click
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton1: TsBitBtn
      Left = 633
      Top = 7
      Width = 97
      Height = 27
      Caption = 'Fechar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D8DAA7B0
        B4BEC1C3D2D3D4E4E5E4EDEDECF5F5F5FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7FAFB1A6EA302619B065E920E5F8F1A618A2D698B3D72905C7F946C8A9C8C9E
        A7A5AEB2DCDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E1EC30
        7AA72775A32876A42775A305649E1975C41877C21676BE1472BA0F6EB20E6CB0
        0B69AD0867A60863A202629C718B9BFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFDA9C8DC065385113B64113B64103E680864A12283D1258AD42488D323
        87D32385D22284D12082D02080D01F7ECE1270B65D8297FCFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFD9E2D973987497B7CB07528313386012365A105F390B68A9298D
        D6298FD72A90D82A91D8278ED7288ED6278ED6268CD62489D41877C3567B92FA
        FBFAFFFFFFFFFFFFFFFFFFB7CAB730A0373688397394A90A40680A4A32268938
        65C18B0C69A82D91D92B91D82D94DA2E95DB2A90D82B91D92C92D9298FD7288F
        D71C7EC44E768EF8F8F8FFFFFFFCFDFC94B59519A52830BF4222A12D2A9A3538
        A64560C7707EDA9556B682106CAD3194DC2B91D83198DC3298DC2C92D92E95DA
        2F96DB2C92D92B92D92082C83F718FF6F6F6FFFFFF79B07912AA1F21BA322FBD
        403EC45151CA655FCF746DD38269CC7B0F5E381172B63498DD2E93D9369BDE37
        9DE02E95DB3097DC3399DD2F96DB2E94DA2687D0376C8BF4F4F5FFFFFFA6D1A8
        1DA92721BA322FBD403EC4514FCA635ECF7352BB601465330E416B1475B53796
        D51D6AA71C61962F88C23298DD339ADE389DE03299DE3197DC298CD4306A8AF2
        F2F2FFFFFFFFFFFFCEE1CE2DA5352FBE412AAC362198361B6C410D4846133860
        0E4370197AB91A6DB41872BF156DB919547F3296D8379DE03BA1E3379DE03198
        DD2E92D72B688EEEEEEEFFFFFFFFFFFFFFFFFFE9F4E951AD563A8C3C2A709D0E
        43701338601338600D46731C7CC0166BB6348FD52D89CF0F59973495D43AA0E2
        3FA5E53AA1E2349ADE3397DE276891EAEAE8FFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FCB8DABC1E6FA0113D661338601338600B48752285C5337FB6B4D1ED97BEDE1F
        70AD389FE13DA3E542A8E63FA5E5349ADE389CE0236892E4E5E4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F8FA12679A113B64133860133860094B79278ACA3EA2
        E24596CD4099D349ACE83CA2E440A6E647ACEB45ABE9369BDF3CA3E4206B9BDF
        E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1F6055E9213375D13375D133860
        084F7F2E90D14BB1EE389FE24EB4F04BB1EE3DA4E542A9E84AB0ED49AEEC369B
        DF42A8E7196AA0DADADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EBF205588F06
        5A250A323512365A0751823497D953B5EF44A4E160B9EC60BAEC59ACE269B6E2
        6FBDE771BCE564AEDB53AEE8186CA4D2D3D4FFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCB5BFC4064D50258F32349A42082E2D095081369BDFD0DBD5F9F1E1FBF0E1F9
        F0E2F9F1E4E9E2E5E0DCE7F4EFE8E4DCE6B3D0DA136DA9CCCECEFFFFFFFFFFFF
        FFFFFFD3DCD3559B572EA0373CB74A5DC96E75D68C48B156065F7745A4E1C1BB
        E0453FF16B66F35B56F28D89F68480F64D49F2D7D5FB8883F2B9D8E11370ADC3
        C5C6FFFFFFFFFFFFC8DAC824A22D31BE4343C55651CA6562D07772D58881DB97
        1A769851ADE7B8B3E3726EF4C9C7FBA7A3F85651F2EDECFD827FF6DBD9FB8783
        F5BDDCE51475B3B9BEC0FFFFFFF0F1F1279D2E26BB3731C14441C55451CA6563
        D07874D58A78D58C12719355B1EBBAB4E35651F2B3B0F98784F65752F2CCCAFB
        6662F39B98F78880C295B4C7187AB8AFB6BAFFFFFF9DC99F17B5271DB42C2CA1
        35469D6411654D349D4462C775186A3006619461B7ECC7C0E5524CF27B77F48D
        8AF6D2D1FAA5A3F7A8A6F7B9B4F2E2DED060BDF31B7EBBA3ADB1FFFFFF53AE55
        20A128A2C3A3F6F6F68CB4CF094C7D127826105B3413386009639A66B9EEFEF0
        DCFFFBF2FFF9EEFFF7EBFFF5E7FEF4E2FBF0E1F2E9DC80C0E552B8F51D7FBD9A
        A7ACFFFFFF49A04BADC1AEFFFFFFFFFFFF8CB4CF055587055073094C7B094C7B
        0A669F4EB2F2B2D0D9B5D2DCA7CEE093C7E57DC0E963B7EB4DACE83FA2E23599
        D93092D01070AFA5AFB5FFFFFFA6CCA6F9F9F9FFFFFFFFFFFFE9F2F5A4C5D9A4
        C5D9A4C5D9A2C3D80C69A02B8DCD2587C71E81BE1A7AB51774B10D6CAA0B68A0
        11679B307AA7518BB075A6C295BAD1F2F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE3F85AE3B7FA85D97B885B0C9AECADDC5
        D7E1DAE4E7E9EFF2F9FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      OnClick = suiButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object SPC_RECIBO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'INSERECOD_RECIBO'
    Left = 34
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 220
    Top = 4
    object ClientDataSet1RECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 10
    end
    object ClientDataSet1VALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object ClientDataSet1VALOR_EXT: TStringField
      FieldName = 'VALOR_EXT'
      Size = 150
    end
    object ClientDataSet1EMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 50
    end
    object ClientDataSet1HISTORICO: TStringField
      DisplayWidth = 500
      FieldName = 'HISTORICO'
      Size = 500
    end
    object ClientDataSet1DATA: TStringField
      DisplayWidth = 50
      FieldName = 'DATA'
      Size = 50
    end
    object ClientDataSet1CNPJ_EMITENTE: TStringField
      DisplayWidth = 20
      FieldName = 'CNPJ_EMITENTE'
    end
    object ClientDataSet1DESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 251
    Top = 6
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fsrecibo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RECIBO=RECIBO'
      'VALOR=VALOR'
      'VALOR_EXT=VALOR_EXT'
      'EMITENTE=EMITENTE'
      'HISTORICO=HISTORICO'
      'DATA=DATA'
      'CNPJ_EMITENTE=CNPJ_EMITENTE'
      'DESTINATARIO=DESTINATARIO')
    DataSet = ClientDataSet1
    BCDToCurrency = False
    Left = 192
    Top = 256
  end
  object fxrecibo: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39212.600885046300000000
    ReportOptions.LastChange = 42502.679421018520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 256
    Top = 249
    Datasets = <
      item
        DataSet = fscontasreceber
        DataSetName = 'fsrecibo'
      end
      item
        DataSet = DM.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = DM.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 514.016080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Shape7: TfrxShapeView
          Left = 22.677180000000000000
          Top = 1.779530000000000000
          Width = 687.874460000000000000
          Height = 487.181195120000000000
        end
        object Memo24: TfrxMemoView
          Left = 327.700990000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 24.677180000000000000
          Top = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' [fxemitente."NOME_FANTASIA"]  ')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = -62.000000000000000000
          Top = 493.338900000000000000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line3: TfrxLineView
          Align = baCenter
          Left = 188.976500000000000000
          Top = 454.441250000000000000
          Width = 340.157700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Align = baCenter
          Left = 188.976500000000000000
          Top = 455.220780000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Funcion'#225'rio')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 223.716760000000000000
          Top = 394.527830000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsrecibo."DATA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 26.456710000000000000
          Top = 345.953000000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Para maior clareza firmamos o presente.')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 27.236240000000000000
          Top = 102.047310000000000000
          Width = 627.401980000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020204120696D706F72745C2765326E6369612064653A205C6220
            5B667372656369626F2E2256414C4F525F455854225D5C6230202E5C7061720D
            0A7D0D0A00}
        end
        object Memo23: TfrxMemoView
          Left = 461.102357320000000000
          Top = 37.795207240000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 531.638220000000000000
          Top = 37.795207240000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsrecibo."VALOR"]')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 26.456710000000000000
          Top = 166.299320000000000000
          Width = 627.401980000000000000
          Height = 177.637910000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020205265666572656E746520613A20205C625C66733234205B66
            7372656369626F2E22484953544F5249434F225D5C62305C6673323020202E5C
            7061720D0A7D0D0A00}
        end
        object Memo1: TfrxMemoView
          Left = 30.236240000000000000
          Top = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'RECIBO:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 83.149660000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsrecibo."RECIBO"]')
          ParentFont = False
        end
        object fsreciboCNPJ_EMITENTE: TfrxMemoView
          Align = baCenter
          Left = 294.803340000000000000
          Top = 466.882190000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ_EMITENTE'
          DataSet = fscontasreceber
          DataSetName = 'fsrecibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsrecibo."CNPJ_EMITENTE"]')
          ParentFont = False
        end
        object Rich5: TfrxRichView
          Left = 26.456710000000000000
          Top = 56.692950000000000000
          Width = 627.401980000000000000
          Height = 34.015770000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            202020202020202052656365626928656D6F73292064653A205C62205B667372
            656369626F2E2244455354494E41544152494F225D5C6230202E5C7061720D0A
            7D0D0A00}
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 514.016080000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 1.779530000000000000
          Width = 687.874460000000000000
          Height = 483.401665120000000000
        end
        object Memo6: TfrxMemoView
          Left = 327.700990000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 24.677180000000000000
          Top = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 22.677170240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            ' [fxemitente."NOME_FANTASIA"]  ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -62.000000000000000000
          Top = 493.338900000000000000
          Width = 812.598950000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line4: TfrxLineView
          Align = baCenter
          Left = 188.976500000000000000
          Top = 454.441250000000000000
          Width = 340.157700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          Left = 188.976500000000000000
          Top = 455.220780000000000000
          Width = 340.157700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Funcion'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 223.716760000000000000
          Top = 394.527830000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsrecibo."DATA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 37.795300000000000000
          Top = 353.512060000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Para maior clareza firmamos o presente.')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 29.236240000000000000
          Top = 105.826840000000000000
          Width = 627.401980000000000000
          Height = 60.472480000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020204120696D706F72745C2765326E6369612064653A205C6220
            5B667372656369626F2E2256414C4F525F455854225D5C6230202E5C7061720D
            0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          Left = 30.236240000000000000
          Top = 168.299320000000000000
          Width = 627.401980000000000000
          Height = 181.417440000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            20202020202020205265666572656E746520613A20205C625C66733234205B66
            7372656369626F2E22484953544F5249434F225D5C62305C6673323020202E5C
            7061720D0A7D0D0A00}
        end
        object Memo3: TfrxMemoView
          Left = 457.322827320000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 527.858690000000000000
          Top = 41.574830000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsrecibo."VALOR"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 26.456710000000000000
          Top = 41.574922760000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'RECIBO:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 75.590600000000000000
          Top = 41.574922760000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = DM.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsrecibo."RECIBO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baCenter
          Left = 292.913575000000000000
          Top = 466.882190000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = fscontasreceber
          DataSetName = 'fsrecibo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsrecibo."CNPJ_EMITENTE"]')
          ParentFont = False
        end
        object Rich6: TfrxRichView
          Left = 30.236240000000000000
          Top = 64.252010000000000000
          Width = 627.401980000000000000
          Height = 34.015770000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302056657264616E613B7D7D0D0A7B5C2A
            5C67656E657261746F722052696368656432302031302E302E32323030307D5C
            766965776B696E64345C756331200D0A5C706172645C66305C66733230202020
            202020202020202052656365626928656D6F73292064653A205C62205B667372
            656369626F2E2244455354494E41544152494F225D5C6230202E5C7061720D0A
            7D0D0A00}
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 304
    Top = 284
  end
  object frxRichObject1: TfrxRichObject
    Left = 256
    Top = 284
  end
end
