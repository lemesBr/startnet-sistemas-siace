object frmFarmaciaPopular: TfrmFarmaciaPopular
  Left = 378
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Farm'#225'cia Popular'
  ClientHeight = 540
  ClientWidth = 610
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 10
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'CPF Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 34
    Width = 95
    Height = 13
    Alignment = taRightJustify
    Caption = 'CRM do M'#233'dico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 82
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Receita:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 87
    Top = 58
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 315
    Top = 34
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object Label6: TLabel
    Left = 320
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label7: TLabel
    Left = 280
    Top = 10
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ Emitente:'
  end
  object Label8: TLabel
    Left = 11
    Top = 290
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nro Autoriza'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 446
    Top = 34
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vendedor/Cpf:'
  end
  object Label10: TLabel
    Left = 482
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label11: TLabel
    Left = 10
    Top = 502
    Width = 94
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Solicitado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 201
    Top = 502
    Width = 123
    Height = 13
    Alignment = taRightJustify
    Caption = 'Autorizado Ministerio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 372
    Top = 502
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor para o Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo3: TMemo
    Left = 245
    Top = 360
    Width = 257
    Height = 153
    TabOrder = 19
    Visible = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 312
    Width = 481
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
  end
  object cbHomologacao: TCheckBox
    Left = 368
    Top = 80
    Width = 105
    Height = 17
    Caption = 'Homologa'#231#227'o'
    TabOrder = 7
  end
  object edtCpf: TEdit
    Left = 112
    Top = 6
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 3
  end
  object edtCRM: TEdit
    Left = 112
    Top = 30
    Width = 121
    Height = 21
    MaxLength = 7
    TabOrder = 4
  end
  object edtUF: TEdit
    Left = 112
    Top = 54
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 2
    TabOrder = 5
  end
  object edtUsuario: TEdit
    Left = 358
    Top = 30
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 358
    Top = 54
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edtCNPJ: TEdit
    Left = 358
    Top = 6
    Width = 121
    Height = 21
    Enabled = False
    MaxLength = 14
    TabOrder = 0
  end
  object btnEnviarSolicitacao: TButton
    Left = 496
    Top = 312
    Width = 105
    Height = 89
    Caption = 'Enviar Solicita'#231#227'o'
    TabOrder = 8
    OnClick = btnEnviarSolicitacaoClick
  end
  object edtChave: TEdit
    Left = 111
    Top = 286
    Width = 186
    Height = 21
    MaxLength = 19
    TabOrder = 9
  end
  object edtVendedor: TEdit
    Left = 520
    Top = 30
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object edtSenhaVendedor: TEdit
    Left = 520
    Top = 54
    Width = 81
    Height = 21
    MaxLength = 8
    TabOrder = 12
  end
  object Memo2: TMemo
    Left = 320
    Top = 160
    Width = 297
    Height = 121
    Color = clYellow
    Lines.Strings = (
      'OBSERVACAO:'
      ''
      'Quando erros estranhos de violation estiverem acontecendo'
      'verifique se formulario esta sendo criado junto com o projeto'
      'se sim -> entao tire'
      'em Project -> Options -> Auto Create Forms')
    TabOrder = 11
    Visible = False
  end
  object edtDataReceita: TRzDateTimeEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    EditType = etDate
    FlatButtons = True
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 115
    Width = 601
    Height = 169
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_BARRAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNDADES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_SOLICITADA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_PRESCRITA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_SOLICITACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_CUPON'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 496
    Top = 360
    Width = 105
    Height = 89
    Caption = 'Consultar'
    TabOrder = 15
    Visible = False
    OnClick = Button1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 8
    Top = 515
    Width = 113
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 200
    Top = 516
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 366
    Top = 517
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object FDvGlowButton9: TAdvGlowButton
    Left = 511
    Top = 434
    Width = 75
    Height = 65
    Caption = 'Reimprime Comprovante'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    Picture.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F8000000097048597300000B1300000B1301009A9C1800000A4D694343505068
      6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
      F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
      561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
      7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
      1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
      01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
      C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
      00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
      00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
      CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
      4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
      48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
      223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
      560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
      2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
      FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
      F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
      4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
      79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
      812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
      0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
      170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
      48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
      90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
      5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
      5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
      8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
      272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
      48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
      6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
      A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
      2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
      1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
      192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
      3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
      09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
      46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
      EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
      4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
      EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
      79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
      3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
      67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
      6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
      A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
      5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
      D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
      743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
      4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
      D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
      C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
      3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
      FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
      0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
      15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
      476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
      BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
      F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
      A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
      6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
      68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
      949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
      F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
      DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
      772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
      A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
      955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
      EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
      CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
      26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
      8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
      B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
      7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
      EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
      E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
      5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
      EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
      EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
      FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
      CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
      ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
      CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
      F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
      0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
      003A980000176F925FC546000003E14944415478DA9C95CB6B5D551487BF7DCE
      BEC97D24B979104CF001295A8C2212B08A6D2045456B05C5418D5810FA273828
      4227CE0D384941F031D081084A87B5D652EC408AD854DB34606D828DB4370F1B
      F3BA8F9CBDD7DEDBC1C94D937AD3A62E3883B3F739BF6FAFB5F65A4B8510B8D3
      4E9F3A1B00CF7DDACB075E88EF5CD38D3E744E78E5D597A246F046A694E2FBEF
      CE34DC6B081011AC159C931D01E25823223B07582B38118C311B27DCEC8D526A
      EB0F1910713B07186BB0D69224668B601D1245D19677A514CEBB7514F6DE3910
      871521491294522940010152D63A900001621DE3520FEA7A1B90E8C8B7CBFFF1
      CA8AE0ACC3240663D2C71A8B588B35165B5F4B2C263188159CDBF0406F3EB87A
      F7EB7F5A800F8137819E3856440A62ADD03168AD88228823C5E6D0072078F03E
      200E4402CE059C0342F8433CA35F0C771CD7E2FC672FF6E7869FEDCFD2948DA8
      A7AAFBC42E22BB80D2A0B44245EB9151B709C1030E3C456EBD3E4D583FFACA8A
      DBFDF3D5B5D1C35F2D38DD966578DF409E8A83950A780711D06A9AE979ED4108
      69E0D516F57A060204C5DCD9261657C02B8834645B639E7AAC991F7FAF1CD5F9
      2C2C0A94CB9018F0029182EE1543587C1896D37C05A5D20C6FF20080B626D696
      4B2C55D3D25731642DB41435565C9F4E9C67B90AAB35A8AD818807029D0BED3C
      64BBC91805B24D456722929A65763EA1B4EA502A22A315390F12A7B5A113EB58
      355036B066405CDA824A3D6F20A31F139BD5BB56B164BB98DD73948A0D8023E3
      352E82A8292D589D58A19240394943542FC8C981634C0E1CDB79A73370283F84
      FFE5017E78EE045102260578CA162AB6EE41E0FFDAFB23ED28E3D83300CA8015
      8736D651B5503550B33077EE1B962F9DB92FE17AAF2A3E7D98DEFDEF50B5A065
      3D44561C264012C004284F4FB03A3B8D5DEF8EFD8F3F7117E9C0E4D424622D5A
      6BE2F609920031A996B5822E570D3E8210838FA1363B452E9743DBF47A767474
      72F0E08186F2274F9E42C77FA2E3984C26436D762AD589A06A042BEE6F7D6BBE
      72FEEAC4CCF38FECEE4507106BE9EDECC24A0A28168B74757535046CDECBE80C
      334B657433E86698F8B58488FB5C8B736F5F383FFDE5A5B11B432D6D599A5CC4
      8D9B37F0DEE3BD677070884221BF2DA0542A11C51AAF6242731B3F9D1E6769A1
      4A08E113E003ED9CFF0BD8EF6ABEB856B38FF2E47B00EC9BFFF4C2F4F5EBB4B6
      1529140A0D01AD6D45148A5D7D7D9CEB3CF20C0073AB00BF5D1BD99BF66FEF36
      66FB3230767B2E3BF2B93C854281D2CC5C4340A150209FCB932409D746F68E35
      9C68531F0D36FCF9AD43C7C9E6725C19BFCC95F1CBDBDEA36C2EB731F9763C32
      818D797CF1E2D83DEBC099ED01FF0E00862F0C039E13738C0000000049454E44
      AE426082}
    Transparent = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 20
    OnClick = FDvGlowButton9Click
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Layout = blGlyphTop
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 56
    Top = 384
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 72
    Top = 168
  end
  object Qry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select P.* from PRODUTOS P')
    SQLConnection = DM.SQLC
    Left = 176
    Top = 128
    object QryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QryDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object QryABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 29
    end
    object QryPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object QryMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 15
      Size = 2
    end
    object QryCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object QryUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object QryFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 15
      Size = 2
    end
    object QryICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 15
      Size = 2
    end
    object QryIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Precision = 15
      Size = 2
    end
    object QryOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Precision = 15
      Size = 2
    end
    object QryDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 15
      Size = 2
    end
    object QryCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object QrySIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QryCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object QryPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object QryDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
      Size = 2
    end
    object QryCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object QryCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object QryCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object QryNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object QryNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object QryNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object QryNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object QryCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object QryFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object QryESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object QryESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
      Size = 2
    end
    object QryESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object QryVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
      Size = 6
    end
    object QryVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object QryESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object QryESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object QryDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QryUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QryVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object QryULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object QryVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object QrySECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object QryCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object QryLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object QryAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 250
    end
    object QryESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object QryGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object QryBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object QryETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object QryATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object QryREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object QryCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object QryPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object QryPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
      Size = 3
    end
    object QryFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object QryDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object QryCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
      Size = 2
    end
    object QryPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Precision = 15
      Size = 2
    end
    object QryPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Precision = 15
      Size = 2
    end
    object QryFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object QryDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object QryDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object QryCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object QryLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 70
    end
    object QryPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object QryMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object QryQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 15
      Size = 2
    end
    object QryQTD_CAIXA: TFMTBCDField
      FieldName = 'QTD_CAIXA'
      Precision = 15
      Size = 0
    end
    object QryMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object QryLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object QryVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object QryCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object QryPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object QryMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 15
      Size = 2
    end
    object QryVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object QryPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object QryUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object QryDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object QryQUANT_SAIDA: TFMTBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 15
    end
    object QryQUANT_ENTRADA: TFMTBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 15
    end
    object QryESTOQUE_FRACAO: TFMTBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 15
    end
    object QryDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object QryFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object QryNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object QryCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object QryCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object QryPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object QryTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object QryCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object QryCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object QryLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object QryGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object QryCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object QryCOR: TIntegerField
      FieldName = 'COR'
    end
    object QryENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object QryID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object QryCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 144
    Top = 168
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 168
    object ClientDataSet1COD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd Prod.'
      DisplayWidth = 10
      FieldName = 'COD_PRODUTO'
    end
    object ClientDataSet1COD_BARRAS: TStringField
      DisplayLabel = 'Cod. Baras'
      DisplayWidth = 13
      FieldName = 'COD_BARRAS'
      Size = 13
    end
    object ClientDataSet1DESCRICAO: TStringField
      DisplayLabel = 'Nome Produtos'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object ClientDataSet1UNDADES: TStringField
      DisplayLabel = 'Und'
      DisplayWidth = 2
      FieldName = 'UNDADES'
      Size = 2
    end
    object ClientDataSet1QUANT_SOLICITADA: TFMTBCDField
      DisplayLabel = 'Qtde Sol'
      DisplayWidth = 10
      FieldName = 'QUANT_SOLICITADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSet1QUANT_PRESCRITA: TFMTBCDField
      DisplayLabel = 'Qtde Presc'
      DisplayWidth = 10
      FieldName = 'QUANT_PRESCRITA'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSet1PRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 14
      FieldName = 'PRECO'
      currency = True
      Precision = 13
      Size = 2
    end
    object ClientDataSet1COD_SOLICITACAO: TStringField
      DisplayLabel = 'Solicitacao'
      DisplayWidth = 6
      FieldName = 'COD_SOLICITACAO'
      Size = 6
    end
    object ClientDataSet1N_CUPON: TStringField
      DisplayLabel = 'Cupon'
      DisplayWidth = 6
      FieldName = 'N_CUPON'
      Size = 6
    end
  end
  object QUpdAce: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'UPDATE PEDIDOS SET  CHAVE_FP =:CHAVE'
      'WHERE CODIGO = :CODVEN;')
    Left = 240
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
  end
  object QUpdAce1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'UPDATE PEDIDOS SET  CHAVE_FP_CANCEL =:CHAVE'
      'WHERE CODIGO = :CODVEN;')
    Left = 208
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 6.0 -  C'#243'pia de Demonstra'#231#227'o '
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox PFDr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 296
    Top = 72
  end
end
