object FormRelVeiculos: TFormRelVeiculos
  Left = 476
  Top = 243
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o de Veiculos'
  ClientHeight = 216
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 137
    Align = alTop
    Color = 16710131
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 12
      Top = 51
      Width = 66
      Height = 16
      Caption = 'Ve'#237'culo de:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 26
      Top = 103
      Width = 44
      Height = 16
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 182
      Top = 51
      Width = 66
      Height = 16
      Caption = 'Ve'#237'culo de:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 264
      Top = 48
      Width = 81
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 72
      Top = 48
      Width = 73
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 69
      Top = 101
      Width = 241
      Height = 21
      KeyField = 'COD_CIDADE'
      ListField = 'NOME'
      ListSource = DM.DTS_cidades
      TabOrder = 2
      OnExit = DBLookupComboBox1Exit
    end
    object Edit3: TEdit
      Left = 69
      Top = 101
      Width = 276
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 393
    Height = 79
    Align = alClient
    Color = 16710131
    TabOrder = 1
    object blocalizar: TAdvGlowButton
      Left = 112
      Top = 7
      Width = 169
      Height = 61
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
        DE0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C000008B34944415478DAEC5B5D6814471CFFEFDE5D2E1F26D18B
        A9A9D5C460D55629A60D2D488B81821445106D293E15F1A5F44D506AE84B29F6
        29E0A30D7DB1D0A7580A45E84B0B966AE98335A2A95469ADA8316D62CF5C2E21
        97DCD7EEF6FF9BDB39C7CDEEDD26D9E44CE2E030B33B7333F3FBCDFF6B668D66
        5916ADE4A4D30A4FCF087846C00A4FE1851AF8F0E1C36F73F125E7172B80EB6F
        CE1FF6F5F5FD543102D8BB7CC5456B853616A463FEB64A12D05A61E96EADA80A
        B4B5B591611834323242070E1CA01D3B765028140A64EC5C2E47894482CE9C39
        E3DABE71E346DF732D180158E0F8F838757676D2EEDDBBA9A5A585344D0B6CEC
        D6D6563A71E204F5F4F4CC18777070901A1B1B2B4B40329914656D6DADD80D2C
        321E8F0732F6AA55AB44B96DDB363A7EFC389D3E7DDA73FE8AB941D334455643
        6D5DD703C9A3A3A3148944281A8DD2F6EDDBA9BBBB5BCC23E79479D912801C0E
        878B246CD9B2854E9E3C2924EDA92100C0655E080200502501EA70ECD8B122E9
        7E0F79E185940049844A4020D11B03BF7BF72E653219F15C5D5D2DDEC9796763
        6C179580A0BC40555515AD5EBD5AB859496C4D4D8D70B98113D0D17B634E8B7C
        DE4504B1D0C9C9499A9E9E16F5542A55F4D7D841D4B1AB2891D7AE5DEB0A46DA
        009558A801D4C1497A5902CAB1B5F38BDF035581868606DF3EDA2F1015836AFC
        FC48822F153814FFAE8B0B441C6FF0B054185723921388855A85824B547E0940
        05FCF697FDA42B0CFC34C883F6F12C2D621A9D453614260DD9366A162CAF9117
        99CCFC130B590823E8570202238041B4881D67F07AB88AF4680DE955D5A4715D
        B4E7B36466D36466A6C9CCB12430095E4610EF1F3D7A44F97C5E182E1832E9BA
        A48B431DF13E741ABF91C60E75D80FE83B7E8F32168B3D41ECBC09387AF46835
        C7D99FF2A01FF084EB69F43C656059F50201148992565D4FA1BA464184989481
        5BA971CC5E90847CCE930018B7E6E6E6E23B8093C6CB2D9052E30769E14BA986
        4AC0A953A72C7B0DFFF2FBAFF98CF0D9D9B367D3A508D0376CD8F0395BDFE36B
        D6AC295ADA8181019E9417C199C251D26B1B683C3545B72FFD28DAB774BE45F5
        FCCE6029B034960245059C3B022B8FDD05707577B1A3200273A6D3E9E2DC7827
        9FD11F44A0C419C38D0875BEAD5BB7CAB1D78F8D8D75731B98FE18DDBC08E079
        C247E06325E3C5E042B748837DD3F927916A4A0E5EA57DEF1DA06CDEA0DF2E5E
        A2FA57BB441B36DCF4B00148105B64B50D40D4BA3CECC8545757270892A25ECA
        96A804A812044C7C8A3CC28F9F70CE7A12C00B68927AA88A29240022AED900F7
        BCFB3E8DE53294E2DD797DEF7E1A1D9E2083DB0CEE23F5DA8D0000E1DD107D30
        0F761875ECB0FC1DEA28A12EF83DF41EF642C60C527A901114A1CD8D00A70106
        361B73D6EB2CA0ABFA3733F30259C70DDE75ADFE059A8ED452D20C53C3739BC5
        3BB4893ECA6F9C04E01D40438491B13084B22801108050AA220F8028A13A9218
        E726396D875B76C31C2E274645C6F9771680F322F2BCF38383FF50FBCBAF502B
        FB87BBB76E887706DA4004E752410C168F31B3D9AC000760E82F7718F3CBA069
        2E87B0D97884D91100B1E51DD619E0583249136C1C45FBD484900083DB841897
        5001ECAA3470EA2E4A3BA086C6789E4DF0E40C848225C0B60186C122C88B1A1B
        79400F067E2DDCC1ED7C936AAA22A20DBF354C6F0220FE6E6E2FE843D8BC0890
        AE690601284DB06C517AE826EDB7BDC0E59F2F5274F36B0CDC127D4B19C1854E
        2A68278E391320DC20B200C6463097A53D870E5192CB49F6029DEFEC653BF040
        B4A9E2EFA59F688737C0335C22ACBC6AD8643F18C4F99C19E644809B75356DF0
        ACE8A46533944F4F51DAACA1543E4D89549ADAD7ACE7777F7220C486D02890E0
        45000C1F2E4765E82BDF4B8B8F76004746983B9BF3809308270EB7F821EC3690
        7307C54070251CE21A0C9E4209FA6BE03A6D7E693BAD6EACA33B37FFA0DC6442
        B4A18FA5B83F447E1313130210C0C9C0C62BC125CA8478C12F784810EE1A4A79
        0137497195003702004A6391276D4A3CFF77FF36C587EE15DA8D5CE12094C561
        28FB0401106F1C7EF00C32400280C1F5E1C243053C9FD320BC06C62D45802F09
        70EB2498C33F8B81E5D222D841A9E921FB386CD8C7E19CE883BE384BE0FA7A6A
        6A4A883C80CB3B3C24EC98DF1DF67B4D86F924E8A6A626F2836D06016E9F941E
        8B4E4115C8CA0AB0967A212233F7C1DB8E8E0EEAEFEF171280BB3A5C7FA90404
        7D1F00D70A0250470085F9FD600BBBDDB896371E12B073218F6F8A001CDF0391
        AE5CB9B2686E70D7AE5D45D573E250EF114B12E0D49DA03E6A2E76721A3DDF12
        0003558EB9A548802F09802E3925602143D7854CCE1D77C3E14A00A2B4154BC0
        BD7BF7C4777D350DD8A7BEA5969C92ECF63DC255B99D1230DB9BD6C54E8801E0
        FA1071CA68D30D87EFC3D052230009019773AD81118038C0CF60954A3803C8EF
        08326681C59F3301CE63E4BA75EB687878F8A926411A3879A98A3507761F8003
        4B7B7BFB9233828111B09C53D8C5752438868E2D3712ECFF3F94284780C9A7B6
        73B158EC23F9017359EC32DB04DC2E31B66F49F92CE646407EDFBE7D8FAE5DBB
        76857FB09963E9D8722080253A515F5F7F874F8AA19E9E9E2776D57947A45FBD
        7A75249D4E37CB9B9AA5FE2735F240840FACEC290C3E2637767575A53C556068
        68E816836F4638BC1402203F497E76E360E9FAC18307A74B1A41D6FDEF376DDA
        B47BA91E814BA5783CFE8DD306CCB824EBEFEF3FCF626F2E37F0ECD526CE9D3B
        D737433A145B80ACF7F6F6DE67F1BFBCDC0878F8F0E10F172E5C18814754F03E
        AE2884A0032EF362765DB75525623FCBBA2CD58CF62ABB2D6C3F8794717449B4
        97C1B645D4B4EB79BB8EA024679779BB2ECB9CCBBBBCD2DFB0C718E27CC73187
        2701BA63F1111B5844A9CB1C55EA11FB5925C54984A610E105DE54169FB77356
        29DD72C62E2529B2BF4A9EE920B8B808CDA10A6AD64B10A34A885B1FCD65E735
        17376C394A759196B278C3418EE1D86567DD7219CB54E7F2FAF8AE793C972BFD
        D6CBC62E259E2D9F65B9710A8B7AF6B7C32B3C3D2360A513F0BF00030074CAB8
        6E15956C540000000049454E44AE426082}
      TabOrder = 0
      OnClick = suiButton7Click
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Qry_RelIpva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM V_VEICULOS;')
    SQLConnection = DM.SQLC
    Left = 8
    Top = 1
    object Qry_RelIpvaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Qry_RelIpvaCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object Qry_RelIpvaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object Qry_RelIpvaCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object Qry_RelIpvaANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object Qry_RelIpvaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object Qry_RelIpvaUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object Qry_RelIpvaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object Qry_RelIpvaCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object Qry_RelIpvaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Qry_RelIpvaISENTO_IPVA: TStringField
      FieldName = 'ISENTO_IPVA'
      Size = 1
    end
    object Qry_RelIpvaFJ_CLI: TStringField
      FieldName = 'FJ_CLI'
      FixedChar = True
      Size = 1
    end
    object Qry_RelIpvaENDRES_CLI: TStringField
      FieldName = 'ENDRES_CLI'
      Size = 50
    end
    object Qry_RelIpvaBAIRES_CLI: TStringField
      FieldName = 'BAIRES_CLI'
      Size = 30
    end
    object Qry_RelIpvaCIDRES_CLI: TStringField
      FieldName = 'CIDRES_CLI'
      Size = 30
    end
    object Qry_RelIpvaESTRES_CLI: TStringField
      FieldName = 'ESTRES_CLI'
      FixedChar = True
      Size = 2
    end
    object Qry_RelIpvaCEPRES_CLI: TStringField
      FieldName = 'CEPRES_CLI'
      FixedChar = True
      Size = 9
    end
    object Qry_RelIpvaTELRES_CLI: TStringField
      FieldName = 'TELRES_CLI'
      FixedChar = True
      Size = 13
    end
    object Qry_RelIpvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_RelIpvaRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object Qry_RelIpvaNUMRES_CLI: TStringField
      FieldName = 'NUMRES_CLI'
      Size = 10
    end
    object Qry_RelIpvaEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 100
    end
    object Qry_RelIpvaCOR: TStringField
      FieldName = 'COR'
    end
    object Qry_RelIpvaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object Qry_RelIpvaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object Qry_RelIpvaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object Qry_RelIpvaCNPJ_CLI: TStringField
      FieldName = 'CNPJ_CLI'
      Size = 18
    end
    object Qry_RelIpvaATIVO_CLI: TStringField
      FieldName = 'ATIVO_CLI'
      FixedChar = True
      Size = 1
    end
    object Qry_RelIpvaNASCIMENTO_CLI: TDateField
      FieldName = 'NASCIMENTO_CLI'
    end
    object Qry_RelIpvaINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 30
    end
    object Qry_RelIpvaCELULAR_CLI: TStringField
      FieldName = 'CELULAR_CLI'
      Size = 13
    end
  end
  object cds_relIpva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 8
    Top = 33
    object cds_relIpvaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cds_relIpvaCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
    end
    object cds_relIpvaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 60
    end
    object cds_relIpvaCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 15
    end
    object cds_relIpvaANO: TStringField
      FieldName = 'ANO'
      Size = 10
    end
    object cds_relIpvaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cds_relIpvaUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object cds_relIpvaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cds_relIpvaCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
    object cds_relIpvaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cds_relIpvaISENTO_IPVA: TStringField
      FieldName = 'ISENTO_IPVA'
      Size = 1
    end
    object cds_relIpvaFJ_CLI: TStringField
      FieldName = 'FJ_CLI'
      FixedChar = True
      Size = 1
    end
    object cds_relIpvaENDRES_CLI: TStringField
      FieldName = 'ENDRES_CLI'
      Size = 50
    end
    object cds_relIpvaBAIRES_CLI: TStringField
      FieldName = 'BAIRES_CLI'
      Size = 30
    end
    object cds_relIpvaCIDRES_CLI: TStringField
      FieldName = 'CIDRES_CLI'
      Size = 30
    end
    object cds_relIpvaESTRES_CLI: TStringField
      FieldName = 'ESTRES_CLI'
      FixedChar = True
      Size = 2
    end
    object cds_relIpvaCEPRES_CLI: TStringField
      FieldName = 'CEPRES_CLI'
      FixedChar = True
      Size = 9
    end
    object cds_relIpvaTELRES_CLI: TStringField
      FieldName = 'TELRES_CLI'
      FixedChar = True
      Size = 13
    end
    object cds_relIpvaRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Size = 30
    end
    object cds_relIpvaNUMRES_CLI: TStringField
      FieldName = 'NUMRES_CLI'
      Size = 10
    end
    object cds_relIpvaEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 100
    end
    object cds_relIpvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_relIpvaCOR: TStringField
      FieldName = 'COR'
    end
    object cds_relIpvaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object cds_relIpvaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object cds_relIpvaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object cds_relIpvaCNPJ_CLI: TStringField
      FieldName = 'CNPJ_CLI'
      Size = 18
    end
    object cds_relIpvaATIVO_CLI: TStringField
      FieldName = 'ATIVO_CLI'
      FixedChar = True
      Size = 1
    end
    object cds_relIpvaNASCIMENTO_CLI: TDateField
      FieldName = 'NASCIMENTO_CLI'
    end
    object cds_relIpvaINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 30
    end
    object cds_relIpvaCELULAR_CLI: TStringField
      FieldName = 'CELULAR_CLI'
      Size = 13
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Qry_RelIpva
    Left = 40
    Top = 1
  end
  object dts_relIpva: TDataSource
    DataSet = cds_relIpva
    Left = 48
    Top = 33
  end
end
