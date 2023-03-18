object FormCaixa_Ficha: TFormCaixa_Ficha
  Left = 0
  Top = 0
  Caption = 'CAIXA | Ficha de Lan'#231'amento'
  ClientHeight = 321
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 41
    Align = alTop
    TabOrder = 0
    object myLabel3d1: TsLabelFX
      Left = 1
      Top = 1
      Width = 674
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'LAN'#199'AMENTOS NO CAIXA (ENTRADAS E SA'#205'DAS'
      Color = clBtnFace
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
      ExplicitWidth = 513
      ExplicitHeight = 33
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 676
    Height = 49
    Align = alBottom
    TabOrder = 1
    object bgravar: TAdvGlassButton
      Left = 176
      Top = 3
      Width = 100
      Height = 41
      BackColor = clSilver
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = clWhite
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000386494441545809ED964D
        4C135110C7B75B01835F114C8403EA9D50381B831515A35CB8108592486AEC11
        F5A212FCC210A368C2451213E3055A20A90713638C1FF103D09B1C403D18A30D
        8DA28460D4D6D082D4DF6CBAA4BBEDB6949AE881E6FFDFF7E6CDCC9B79F3DEBE
        AEA2ACFCFE71056CD9C46F6969593D3737B70B9F5AB81596401B9C8AC562EF6D
        36DB88AAAA0FFBFAFAC28C2D09E29CD1B0A1A1A1282F2FAF9D001E8CD7C274F8
        81DDAD4824D2E1F7FBBFA733145DC6049A9B9B1B595D0FC61B613698C4B8D5E7
        F3DDA6D5E076BBD74522914E84617D5C45B082CDE5727510DC8741B6C171514A
        79F89B9A9ACED02AF1E0F7E9B7C276A8C1AE3D533C58F9054551CEC38C55C2C6
        126C474D4545856D6161E12C463BE02F1675787C7C3CA0F04B5901567E10A373
        E8FF0642CCF5187E66B29F24B4B7BFBFFF297D0D490970E036A0B90E735A39FE
        82102BDF3F303030C2213E451287BC5EEF4B51E84C4AA0A0A0A00DE526982B66
        58ED4E092EFBCFEBEB43962D30CC6B48C0E974AE22CBA3068BE5092182D5B3DA
        518FC753383B3B7B8769B6430F15CEA75D842181B2B2B26A3445301748F00304
        1F96E0A150E82EC9D4C4272C662BF6C4FB5AA36ACFF883D5D7C6BBCB6DD205D7
        E62419A984D6978739812D32B84C660C2EF3B2C87269751A1260B0149A31CCFD
        BE99C1ABD00A4B0A2ECE54A0585A9DE604CCB282C3047F2E535C9D2771BA0CCD
        90F7BCCE62CFCDB622FF96874E73C04FBA426F29994BBF4E49A20DF9B4AEA3FD
        86ECE462197273CF87C3E147245CC3B825D01B62A826CBA049D6449C2E723B1E
        1781605768A5126182D723BF92D39EF0AAA1B6063E13895AD520A8EA834439A1
        2FB762B79E44BC120E820F4970D3AB96E096DCE56634C43024100C0687709981
        56E8663B4E8892E01FB20D8EDFF4FCFCFC08ED22EC8B3D3A814060C1E170ACA7
        5B0D5382EDD887CD7C5555D534FFED5EE49A9486A907AF0D0E0E3E4954A98982
        F4A3D1A8ECEF57E9A76127A57C9B65F0495EE72EF39C4909F01915C2E8188CC1
        BF0599AB95D7396C9ED0B005BA928F853794398ABC1BE60C4E7E1B67E666AA89
        ECA906658C245E90849CFE6A646969B206B1631D04BF64E56999803890C4B3CA
        CACA77F49D8AA214C26C308DF11182F7D05A226D02E2353636F69A4ADCE0C045
        6139636B603A4CA1ECE2C3A6B1B7B777947E5A64555A3E26ECF9F9F94E12A9A3
        B6DB14452981822FC81FED76FB3D6EC4E71C64C37D2F062BFC6F2BF0079EF572
        AF7BB3E7E40000000049454E44AE426082}
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 0
      Version = '1.3.1.0'
      OnClick = bgravarClick
    end
    object bcancelar: TAdvGlassButton
      Left = 368
      Top = 3
      Width = 100
      Height = 42
      BackColor = clSilver
      Caption = 'Canc&elar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ForeColor = clWhite
      GlowColor = 16760205
      InnerBorderColor = clBlack
      OuterBorderColor = clWhite
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000006624B474400FF00FF00FFA0BDA79300000386494441545809ED974B
        48546114C7BF3B336AAF458A4564E303DDE563511B21E40E812D5A86E51B2108
        7251D12E5C841112EE5A08423B4573B06D482D9C497AEC5A684148EAA850969A
        1B031B1D6FBF233ADC7BE7BBA35342040EFF3FF77CE7F19D73CF77EEF5AAD4C1
        EF1F77C0C8247F5B5BDBA1F5F5F51031B5B0089E828205C330624AA997CBCBCB
        919191915FC87B82B117AFBABABABCACACAC0E92DCC0FF184C8755FC7A373737
        BB06070757D2398A6DD7029A9B9B1B2CCBEAC1391766821F38B70F0C0C84B97A
        C2EF6951CA686A6AEAC4FE181E86994262AE545454A889898931AF60CF02B8F3
        4704754003FE29380DC3A4882C8A18D56DA2DD9C3BBF86F353A8B5A3CF141601
        57398E675C1D48492003979D9D3D85D771B89F5861964ADD83E9736720F95D74
        5EC9A3F47411BB16DBB6A8D2FF72B1DF719B1C0598A619C0E1264C01D58FD2C2
        90CFE73B8F711ABA31BDB1B1714E7C304495FED74E871D73E72820180CD61097
        075340F5E5F5F5F5C1BEBEBE39BFDF1FC26106EE604674434343F3E283B21CEA
        901F08042ED80D8E02B8CB5ABBD1259F2438C2809E9122F09522624AA919CBB2
        42A293E4E2832E1F6A41072FD90DEE020AED46B74CA2527491D6D6D602866936
        914884D0854496C2E8C2286BF1C14D0F3AE9C821679EF4C4789A0D926B0FA18C
        C46F5B5A5ACCFEFEFEAD63402EE1D51B554A3936679D02F62FB02BDD1D30ECC6
        74723C1E4FC6DAE574313A5B721331D2812F72DD8531CED10C87C3539C797163
        636391C8A2236E16EE06470E4701B4676E97E819CBB2B65A2F8939F308454744
        96E3E0684CC550C2747014E9B37B72172FEC6B97BC404253068E212C94C4D88B
        9552258661C86016F218C6C407DD37A805B3E2C8E128607E7E7E8C28F933CA25
        059FE45193E4DC69046B09DC4189E83892ADF704CA49A8C3122FABD77683615F
        88CCE3F4906B07D4E11D775BC6319CD019B12D62FB8CAD1AEAF08037E57DBBC1
        675F88CC44CB9F61AF165693409B5C62B76D5EC9BF72C4DDE267674A01C3C3C3
        AB38DC8616DC2FC85EB718D49FEE0DFD6E85ACF978F85859591947BE08FF1A74
        E61EC3FB44B7915FA7141D45BCA10899911AD672E59231C86D7592BCCB2BD2B3
        0009A088685555D524B2A9943A0233C112CED749DEC3D513690B90A8F1F1F10F
        74A297098FC3B3E88EC274F88EB13B2727A781C7F63D725A64D45AF998E08BC9
        A490CBF4B6582995FCC784B57C133C5F5B5B7BC52027B01DE0FFE8C06FD49053
        0B7E5AE6AF0000000049454E44AE426082}
      ParentFont = False
      ShineColor = clWhite
      TabOrder = 1
      Version = '1.3.1.0'
      OnClick = bcancelarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 676
    Height = 231
    Align = alClient
    TabOrder = 2
    object sLabel1: TsLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object sLabel2: TsLabel
      Left = 16
      Top = 64
      Width = 100
      Height = 13
      Caption = 'Tipo de Lan'#231'amento:'
    end
    object sLabel3: TsLabel
      Left = 16
      Top = 101
      Width = 82
      Height = 13
      Caption = 'Plano de Contas:'
    end
    object sLabel4: TsLabel
      Left = 16
      Top = 139
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object sLabel5: TsLabel
      Left = 16
      Top = 176
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object DBEdit1: TEdit
      Left = 128
      Top = 136
      Width = 465
      Height = 21
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
    end
    object DateEdit1: TsDateEdit
      Left = 80
      Top = 13
      Width = 86
      Height = 21
      AutoSize = False
      Enabled = False
      MaxLength = 10
      TabOrder = 4
    end
    object plano_desc: TEdit
      Left = 200
      Top = 98
      Width = 393
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object econta: TsComboEdit
      Left = 128
      Top = 98
      Width = 66
      Height = 21
      AutoSize = False
      TabOrder = 0
      OnEnter = econtaEnter
      OnExit = econtaExit
      OnKeyPress = econtaKeyPress
      OnButtonClick = econtaButtonClick
      CheckOnExit = True
      Text = ''
    end
    object ed_valor: TsCurrencyEdit
      Left = 128
      Top = 176
      Width = 129
      Height = 21
      AutoSize = False
      TabOrder = 2
      OnExit = ed_valorExit
    end
    object CheckBox1: TsCheckBox
      Left = 272
      Top = 176
      Width = 82
      Height = 17
      Caption = 'Saldo Inicial'
      TabOrder = 3
    end
    object RadioButton1: TcyRadioButton
      Left = 128
      Top = 63
      Width = 113
      Height = 17
      Caption = 'Entrada'
      TabOrder = 6
    end
    object RadioButton2: TcyRadioButton
      Left = 232
      Top = 63
      Width = 113
      Height = 17
      Caption = 'Sa'#237'da'
      TabOrder = 7
    end
  end
  object qrRelLanc: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      'MD.CODIGO AS CODIGO,'
      'MD.DATA AS PERIDO,'
      'coalesce(MD.TIPO,'#39'#39#39'#39') AS TIPO,'
      'PC.NOME AS NOME_PLANO,'
      'MD.HISTORICO AS HISTORICO,'
      'MD.VALOR_ENTRADA + MD.VALOR_SAIDA AS VALOR,'
      'EP.LOGOMARCA AS LOGO'
      'FROM MOVIMENTO_DIARIO MD'
      'LEFT JOIN PLANOCONTAS PC ON (PC.CODIGO = MD.COD_PLANO)'
      'LEFT JOIN EMPRESA EP ON (EP.CODIGO = 1)'
      'WHERE MD.CODIGO = :CODIGO')
    Left = 368
    Top = 49
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrRelLancCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrRelLancPERIDO: TDateField
      FieldName = 'PERIDO'
      Origin = '"DATA"'
    end
    object qrRelLancTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object qrRelLancNOME_PLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PLANO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object qrRelLancHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 150
    end
    object qrRelLancLOGO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'LOGO'
      Origin = 'LOGOMARCA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrRelLancVALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object drRelLanc: TDataSource
    DataSet = qrRelLanc
    Left = 368
    Top = 105
  end
  object qrRel: TfrxDBDataset
    UserName = 'qrRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PERIDO=PERIDO'
      'TIPO=TIPO'
      'NOME_PLANO=NOME_PLANO'
      'HISTORICO=HISTORICO'
      'VALOR=VALOR'
      'LOGO=LOGO')
    DataSet = qrRelLanc
    BCDToCurrency = False
    Left = 496
    Top = 97
  end
  object frxReport: TfrxReport
    Version = '6.8.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42500.977985636600000000
    ReportOptions.LastChange = 42597.683460636600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 41
    Datasets = <
      item
        DataSet = qrRel
        DataSetName = 'qrRel'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 91.338590000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Gradient1: TfrxGradientView
          AllowVectorExport = True
          Left = 10.118120000000000000
          Top = 45.456710000000000000
          Width = 517.795610000000000000
          Height = 3.779530000000000000
          BeginColor = -4144960
          EndColor = -4144960
          Style = gsHorizontal
          Frame.Typ = []
          Color = clSilver
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 12.118120000000000000
          Top = 21.118120000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha de Lan'#231'amento - [TIPO_LANCAMENTO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 51.574830000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 6.000000000000000000
          Width = 80.000000000000000000
          Height = 80.000000000000000000
          AutoSize = True
          Center = True
          DataField = 'LOGO'
          DataSet = qrRel
          DataSetName = 'qrRel'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = -1
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 550.252320000000000000
          Top = 0.559060000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 219.212740000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = qrRel
        DataSetName = 'qrRel'
        RowCount = 0
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 716.220472440000000000
          Height = 98.267780000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Gradient2: TfrxGradientView
          AllowVectorExport = True
          Left = 1.456710000000000000
          Top = 0.118120000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          BeginColor = -5658199
          EndColor = -4144960
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 11842740
        end
        object Gradient3: TfrxGradientView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 18.897650000000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 18.897650000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Gradient4: TfrxGradientView
          AllowVectorExport = True
          Left = 1.511811020000000000
          Top = 37.929133860000000000
          Width = 715.086614170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 5.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[USUARIO]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 37.795275590000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."HISTORICO"]')
          ParentFont = False
        end
        object Gradient5: TfrxGradientView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 57.590600000000000000
          Width = 397.606094170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 6.488188980000000000
          Top = 57.590600000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Plano de Conta')
          ParentFont = False
        end
        object Gradient6: TfrxGradientView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 77.401613860000000000
          Width = 397.606094170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 6.047248980000000000
          Top = 76.488225590000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."NOME_PLANO"]')
          ParentFont = False
        end
        object Gradient7: TfrxGradientView
          AllowVectorExport = True
          Left = 401.630180000000000000
          Top = 57.692950000000000000
          Width = 314.456434170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          BeginColor = -2302756
          EndColor = -2302756
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = 14474460
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 406.118368980000000000
          Top = 56.692950000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Gradient8: TfrxGradientView
          AllowVectorExport = True
          Left = 401.630180000000000000
          Top = 76.503963860000000000
          Width = 314.456434170000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          EndColor = -1
          Style = gsHorizontal
          Frame.Color = -4144960
          Frame.Typ = []
          Color = clWhite
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 405.677428980000000000
          Top = 75.590575590000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrRel."VALOR"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baCenter
          AllowVectorExport = True
          Left = 88.818955000000000000
          Top = 139.842610000000000000
          Width = 540.472790000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 175.748145000000000000
          Top = 143.622140000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura Respons'#225'vel')
          ParentFont = False
        end
      end
    end
  end
end
