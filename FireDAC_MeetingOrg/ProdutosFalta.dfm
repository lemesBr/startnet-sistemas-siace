object FormProdutosFalta: TFormProdutosFalta
  Left = 338
  Top = 266
  Caption = 'Inclusao de produtos em Falta no Estoque'
  ClientHeight = 213
  ClientWidth = 592
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 41
    Align = alTop
    TabOrder = 0
    object myLabel3d1: TmyLabel3d
      Left = 153
      Top = 7
      Width = 324
      Height = 25
      Caption = 'Inclus'#227'o de produtos em Falta '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 168
    Width = 592
    Height = 45
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TsuiButton
      Left = 248
      Top = 4
      Width = 100
      Height = 37
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Confirmar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFDFDFDFDFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F2F2F2EDEDEDE4E4E4C8C9C9
        92B9A3CFD0CFEAEAEAEFEFEFF2F2F2F4F4F4F7F7F7F9F9F9FCFCFCFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFC
        FCFCFBFBFB98D9B315BE5DB7E3CAFCFCFCFCFCFCFDFDFDFDFDFDFEFEFEFEFEFE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA2E0BC18C05F18C46133C470F5FBF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFBFEFC7ED6A311C05B10C25B11C25B10C15A74D3
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F5EA49C87F0CC0580CC15812BE5A
        52C9840CC1580EBF58B1E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8E7CC1BBF600CC1580C
        C1580CC15863CF90D9F2E411BE5A0CC1581ABF60D2EFDEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F4
        E955CB8713C05C17C36014BF5CD8F1E2FFFFFF63D09117C36018C4612CC26CDC
        F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBEE9D047C87D6DD197FFFFFFFFFFFFDEF3E729C4
        6B34CC7533CB7439C775CBEDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFF
        FFFFFFFFFFFF87D8A94AD08457D48D53D38A43CB7D97DDB4F9FDFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBF756CD896BD99A71DB9F6FDB9D5CD590
        68CF94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCEDDA56D08A7A
        DDA57DDEA774DCA183D8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA6E2BF61D49381DFA96EDA9DACE3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93DBB163D59458D18CDEF2E6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2E0BC3FC377
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8F6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnSalvarClick
      ResHandle = 0
    end
    object btnCancelar: TsuiButton
      Left = 366
      Top = 4
      Width = 100
      Height = 37
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Fechar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3DADE94A4ABB9BEC1D2D3
        D4E7E3DFF6F0ECFFFBF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFED0E3EED3E6F1E1EEF60F69A000579E005491005389005384
        045683205F833168884D788F8F9FA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF95BCD5003D76004174004076005B962281D62285D41F81D21D7ECE1879CB12
        74C60C70BD0062B21B5F86FFFDF9FFFFFFFFFFFFFFFFFFFFFFFFB4BEAC8AB8D4
        003B6D142C5E09333A0563952B90DD278ED62990D7288ED7268CD5258BD5268A
        D61B80D420618BFFFBF5FFFFFFFFFFFFFFFFFF509B53197C157991C700224E00
        4B1E5BC063116CA72E94DE288ED72E95DA2A92D8278ED62B92D8278ED6228CD9
        1D5E88FBF5F0FFFFFFF2EBF018882020C33323AA30249B294CC05282E69479D6
        8A04619D3699E32891D9349BDE2F94DA2C93D92F96DB2A91D82791DB0E5C8DF8
        F0EDFFFEFF0C8A110ABA1D2BBC3C3EC65057D16D6DD98376E1830B5C230A64AD
        3DA5EA298AC93A9DDD359DE22D94DA359ADD2D94D92E95DF0C5D90F3EDE9FFFF
        FFDDEBDC139B1D21BD3438C54B43C64E3AAB460950300D2D5F1174B62A7CBB0B
        579E1147753596D33299DF3AA1E32E95DA359DE3085D94ECE7E4FFFFFFFFFFFF
        FFF8FD40AD471B861417607E082A631331620E3861187BBB0F65B5218BDB0E62
        AF2678AB379FE43FA5E53197DC39A1E60D63A0E5E1DCFFFFFFFFFFFFFFFFFFFF
        FFFFBADDAE0D60A00F355E13365E0D39601982C33E7FB5D7E9FB3E79AD3294D0
        39A0E344A9E73399DE3EA6E90B66A1DDDAD7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF004F8913355E13365E093B662086C53FA7E73E92CB40A5E144ACEB3AA1E24A
        AFEC389DE043ABEB0F6FAFD2D3D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004680
        0C2B4413325D083F6B278CCE44B2F42DA0E840B2F532A5EC2A9DE73CAEF22699
        E434A7F00F71B3C9CBCDFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF00336C12861002
        25270436682491DA98CCDFBCDCD9C7E2DCC6DDD9D1E3D4D7ECDAD4E4D6D1DCD7
        0775BEBFC3C4FFFFFFFFFFFFFFFFFFB6C4B4448D4B198C1F6BD47C53BD590046
        442898E3E6CDDD7A6EF3837BF0CFC7F87D74F4736CF6A49EFCFDECEA147CC1B2
        B8BCFFFFFFFFFFFF73A9730DA91C3CC9505AD37069D37E87E5973D9B91379FE0
        A897E47F7CF7E5E3FD2721EDFAF9FE9391F7918DF8F9EEF71885C6A7B1B6FFFF
        FFADC5AC00AC1225C13934C1434DC65869D27D88E79420827540A9E9AC99E34D
        48F3B9B7F93A34F0AEAAF8544FF4726AEDC5B6A71A89D09CA8AFFFFFFF39AC40
        00A70A54A85573AA99003D524BBD4F1F762A003F6E50B3ECE2CFE88986F9B0AD
        FAFCF9FCD4CEF7E5DDF7FFE8DB82CDF11E91D98F9FA6FFFFFF008302BFCDBEFF
        FFFFA2C3E300346700492504255900487D48B1F4FFF8CDFFFFDFFFF5DAE9E8DD
        CFE3E0B5D9E68DC9E845B6F81787D07F939EFAFEFA7BA97CFFFFFFFFFFFFD9E7
        EE478BB55592C15B9ABF146C9F2C96DE2E99DD1C8CD20E81CC0074C30069B400
        5EA10461A0216FA3307AA7D6DDE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7FADC9216D9B548EAF81ABC4ACC3D1C0D3DBD5DFE3EEF2F4FEFD
        FBFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btnCancelarClick
      ResHandle = 0
    end
    object suiButton1: TsuiButton
      Left = 8
      Top = 4
      Width = 100
      Height = 37
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Novo'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F8090000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF7F9F8F8F8F4FAF5E7F7EAD9ED
        DBCFE5D1CDE5D1CFE5D0D9EDDBE8F7E9F4FAF5F9F8F8F9F8F8F9F8F8F9F8F8F8
        F8F8F8F7F9F8F8F8F8F8F8F8F8F8F8F8F849F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F9F8F8F7F9F8EAF8EBB2D5B579AE7D448E4A287F311A7A241A7A231C
        7A242A8031458E4B79B07EB5D8B8EBF9EBF7F8F8F8F7F9F9F8F8F8F8F8F8F7F9
        F8F8F8F8F8F8F8F8F849F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8EDF8EDAF
        D7B4448E4B15761E0E77190E7A1D0D81260B84290B84290D85290F81250D7A1C
        0D781816771D4A9251B8DCBDEEF8F0F8F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F849F8F8F8F8F8F8F8F8F8F8F8F7F7F9F7E4F5E666A46C1B77230E771B13842A
        23A44D24B55A20BA5E1DBD5F1CBD5E21BE5F27BC622BB55F27A54E1484290E76
        1A1D78256CA870E6F5E6F7F8F7F6F8F7F8F8F8F8F8F8F8F8F849F8F8F8F8F8F8
        F9F8F8F7F9F7D3EBD54F975611771A1682272FA75636BE6E29BF691EC06217BE
        5F14BC5A15BC5B1BBC6020BD6427BF6A34C17142C17536A656157E2511761A52
        9858D5ECD8F7F8F8F9F8F8F9F8F8F8F8F849F9F8F8F8F8F8F7F8F8E7F8EA4791
        4E11761A1B842F47BA713FC17733C06F28BF6A20BD633CAE6A49A26D49A06E4A
        A06F3CA56A28B96733C17041C0774CC17F4DB9741A832D12761A4C9251E8F7EB
        F7F8F8F8F8F8F8F8F849F9F8F8F8F8F8ECF6ED68A56E11761A20883555BF7D4B
        BF8040C17735C17128BE6A25B86593C7A8D9DDDBCFD0D1C4C9C782AA942AB365
        33C0703FC0774BC07F56C1845BC08020863213771C6EA975EDF7EEF8F8F8F8F8
        F849F8F8F8F7F8F8B1D6B51C772219802B58BC7B58C2864DC08043C07938C073
        2DBF6C29B8679BCDB0F5F8F7F3F3F3DCDEDE8AAD9930B36A38C07441C0794BC0
        7F55C08562C68D5ABB7B177F291B7722B4D8B8F7F8F7F8F8F849F8F8F8ECFAEE
        4A924F11761A48AA6467C98F5CC58950C08246C07B3BC17533C06F2FB96B9ECE
        B3F6F9F7F7F7F7DFE0E08DAE9A37B46C3DC07544C0794CC07E56C08562C78D6B
        C89047A86410761B4E9454EDF9EEF7F8F849F7F8F8B5D8B816761D1A7F286CC7
        8F69C88F5EC68A51C08148C07D3FC07839C07437B970A0CEB4F6F9F7F7F7F7DF
        E0E08CAE993CB37141C07948C07D4FC08158C18662C78C69C8906BC58B1A8029
        18771FB7D9BBF8F8F849F3FAF477AE7B10761942A05B71CA9568C78F5FC68B52
        C1824AC17F45C07A40C0783FBA75A3CDB5F7F9F7F7F7F7E0E0E08FAD9A42B374
        46C07C4CC27F52C18259C38862C88C68C8906FC9923E9F5910771A75AC7BF3FB
        F449E5F4E6408C4713791F65B98171C89468BD8B60AB8158A67C53A6774FA572
        4CA2704E9F71A6C4B3F6F7F7F8F7F7E3E4E399ADA04F9A6F52A57855A67A5AA6
        7B5DA67D61A88066BA8A6DC79160BB7E137B21428D4AE7F6E949D4E9D6257F2C
        177D256AC28A6CC79270B28BC8D9CFBDC9C2B9C3BEB7C2BEB8C4BEBDC9C3DBDE
        DCF6F6F6F8F8F8EFEFEFD3D5D3BEC7C1B9C3BEB8C3BEB9C2BEB9C2BEAEBAB46D
        A9886AC79166C5881A812B267F2ED8ECD949CEE5D11A7A241980286AC58A6AC7
        9173B18DEFF5F1EFEFF0EFEEEEEFEEEEEEEEEFEFEFEFF5F3F4F8F8F8F9F8F8F8
        F7F7F4F2F4EEEEEEEEEEEEEFEDEFEFEEEFEAE8E9C8CAC870AA8769C79068C78C
        208232197823CFE6D049CDE5D11A7A2419802863C58665C88F6EB18DEEF7F2F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F8F7
        F8F8F8F8F8F8F8F8F8F4F5F5D0D4D26EAB8764C88F65C88B208333197923CEE6
        D149CFE5D21C79261880285EC48261C78B6BB48CEBF8F2F4F9F6F4F9F6F4F9F6
        F5F9F7F5F9F7F8F8F8F8F8F8F9F8F8F8F8F8F7F8F8F6F9F7F5F9F7F4F9F7F5F9
        F7F3F9F7E8F0EC75B49062C78B62C8881F83321A7923CFE6D249DBEEDD308437
        167C2258BD7D5BC2885CBA8570B58E75B38F78B5927AB59480B69883B198C2D1
        C7F7F8F8F8F8F8ECEDEDBFCBC684AD9685B69A83B6997FB69779B69477B79365
        BB8A61C7895DC38119802A277F2FD9ECDB49ECF8EE54985B11781B4BB06C59C1
        8758C08758BF8760C58B67C78F6FC79378C8997EC19AB9CEC1F7F9F7F7F7F7E3
        E2E2A3B2A980BB9881C89E7AC79A72C7956AC79166C78F60C78A5EC48855B977
        12791F49914FEAF8EC49F5F9F792C09711761B2890405AC28658C08659C08761
        C78C6AC89075C8977EC89D86C39FBCCDC4F8F8F8F8F7F7E0E0E0A1ADA486BD9D
        87C8A17EC89D76C8986BC79165C89060C88A5FC48833994D10771A7DB282F4FA
        F549F8F8F8D2EAD421782811791E55BD7B57C1855AC18764C78F6EC8937CC89C
        88C8A291C2A5BFCDC6F7F8F8F8F7F7DFE0E0A2ADA68BBDA08CC8A584C8A07AC8
        9A70C89567C89061C78B5EC282167D26197621C0E0C4F7F8F849F8F8F8F3FAF4
        73AD7812761A2D95465CC4875CC28968C89073C89680C99F8DC9A697C2AAC1CD
        C7F7F8F8F7F8F7E2E3E3A4AFA992BDA490C8A888C8A27CC99C72C99668C89062
        C88D39A05311761A589B5FEFFAF1F8F8F849F9F8F8F8F8F8D3EBD62F82370F78
        1C3DA65A60C58969C88F76C99984C9A190C8A89CC2ACC3CDC8F7F8F8F8F8F8F2
        F3F3B3BDB893BDA491C8A889C9A37CC89D71C99665C98F4AB26B127B20237A2B
        C1E1C6F7F8F7F7F8F849F9F8F8F8F8F8F6F9F5A9D1AC1B7823127A1F44AD6365
        C88B74C99784C8A192C8A99EC6AEABBDB2BDC5C0BCC6C1BAC6C0A7BDB296C1A9
        90C8A888C8A279C99B69C89150B87418802817761F88BA8EF1F8F3F8F8F8F9F8
        F849F7F8F8F8F8F8F8F8F8F5FAF58EBE911B78220F791E3BA55964C68A76C898
        8CC9A49BC9ADA7C8B4ADC7B8ACC8B7A8C8B49FC8B096C8AC8BC9A579C79968C7
        8C47AD63137C2313761B6CA872F1FAF2F8F8F8F8F8F8F8F8F849F9F8F8F8F8F8
        F8F8F8F8F8F8F0F8F098C49A207A2711781C248C394AAF6B66C48A76C59685C5
        A191C8AA93C9AA8DC8A582C6A074C49667C48C51B5752D944412781E18762076
        AE7CE5F3E6F8F8F8F8F8F8F8F8F8F8F8F849FAF8F8F7F8F8F7F8F8F8F8F8F7F8
        F7F5FAF5B7DCBC3B894314761D0E761A1E87323AA35849B06C52B87653B87753
        B8764CB36E40A85E248D3B0F791D11761A31833799C69DF1FAF2F7F8F7F7F8F8
        F8F8F8F8F8F8F8F8F849F8F9F7F8F8F8F8F8F8F9F8F8F8F8F8F8F9F7F5F9F7E0
        F2E295C5993E894317771F1177190F781B127B1F147C1E147B1E10781B107819
        14761D2D7E347FB784D5ECD8F4F9F6F8F8F8F9F8F8F9F8F8F8F8F8F8F8F8F8F8
        F849F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F8F8F8F7F8F8F8F8F8F6F9F7E8F8E9
        BADCBD83B5875E9F65438D4A3F8C463E8B46579A5D78AD7DADD3B2DFF5E3F5F9
        F5F8F8F8F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F849F8F8F8F8F8F8
        F8F8F8F8F8F8F8F7F9F7F8F8F9F7F9F7F7F8F8F8F8F8F8F8F7F8F8F5F9F6F0FA
        F1E8F5E9E5F4E7E5F4E7EEF9EFF5FAF5F6F8F7F7F8F8F8F8F8F7F8F8F9F7F9F8
        F7F9F8F8F8F8F9F7F8F8F8F8F8F8F8F8F849}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 481
      Top = 4
      Width = 100
      Height = 37
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Imprimir'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        18000000000030090000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F9F8F8F5F4F3EBE9E7F9F7F5F9F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F9F8F8F8
        F8F8F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F2EDF1E7DE
        C6BAAC91785A9D8872B7AA9CD6CFC7ECE7E2F5F4F0F8F8F7F8F8F8F8F8F8F9F8
        F8F8F8F8F8F8F8F6F8F8F8F8F8F7F8F8F8F8F8F9F8F8F9F8F8F9F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F7F8F8FAF4EED0B099A87B5EA18061C09E7CBD9979B99572
        A987649F8367A28D75AE9D8CC4B9ABE0D8CFF4F1F0F8F8F8F7F8F8F7F8F8F8F8
        F8F8F8F8F8F8F7F7F6F6F7F4F4F7F6F4F8F7F6F8F8F8F8F8F8F8F8F8FBF7F4DB
        BEA9C69576A7856CD9C4AFD4BDA7D0B79FCCB198CBAD91C7A88CC5A587C19E7C
        B39573A18565957E64AD9C8AEFE8E1F8F8F8F8F8F8F8F8F8F2F0EFCCB9B1C4A6
        96CDBBB0DFD7D3E5E0DEECE9E8F4F0EEEAD3C6DCA084DCA58BEBDCD1F6F1ECF4
        EDE7F0E8E2ECE2D9E7DBCFE3D5C6DDCCBCDBC5B4D5C0AAD2B9A1D2B499C0A88E
        EEE9E1F8F8F8F8F8F8F7F7F6DBD1CBA16D4EBD7C4EC5814EB97D4FB3835EBF95
        78C4A48FE7AF96F2B095EBBCA5F4ECE6F8F8F8F9F8F7F8F9F7F9F8F8F9F8F7F9
        F8F6F7F6F3F5F2F0F4EFEAF2EAE1D6C0ACE5D4C3F8F8F7F8F8F8F8F8F8EEEDED
        BD9D89B17244D29A68E8B075E9AA6CE4A164DA985DD99D75EAAD93EBBCA6EFDD
        D1FAF8F6F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F9F8F7E2
        CEBCCE9D80ECD6C9F8F8F8F8F8F8F6F6F6DBD2CCAF7D58C08350E4CAB3FDF2DE
        F6E6CFF2D7B7E6BC91CF9F7CDBB098ECDACBFBF8F5F8F8F7F8F8F8F8F8F8F8F8
        F7F8F8F8F8F8F8F8F8F8F8F8F8FAF8F6E6D3C5E0AC92E9BBA3F0E0D6F8F8F8F8
        F8F8F1EFEEBD9F8DC4844FD0A079E3D3CBFAF8F4FAF8F7D2BDB2874E2FBE8F6E
        DDB593F8DFC8FBE7D7FBEDE0FCF1E9FCF5EEFCF6F2FBF7F4FBF8F6F9F8F8FAF9
        F6E7D8CADCB195E9BA9FEAD8CDFAF8F6F8F7F9F8F8F8E5DCD8B28260DE9E65DA
        BEA7E3D2CAF8F2EAFAF3ECC8A8989B5432A7734D9B6F4AB1855EC2966ED2A57B
        E0B187E9BC98EFC6A7F2CFB4F5D6C1F8E1CEDFCAB7CCAA91DDB494C78A5EDDCC
        C2F9F8F8F8F8F8F8F8F8DED3CCC6936AE8BF94D5C2B6E4D5C8F9EFDFFBEFE2D3
        A995B35B35BA76508C5F437B583B7351367251367C58398A603F996C47A97951
        B8845ABE8D63C89D7DE7D6C7FCF4E6E5BFA1D1BDB1F8F7F7F8F8F8F7F8F8DED3
        CBD0A27AF6E2C9D0C0B8E9D5C2F8E8D4F9E7D5DAA78FC75D36D77143E08355E0
        8B5FD88D66D08F69C48966B27E5C99674980533B7649317C482AB67657FCF7EF
        FBF8F3E6CEBCD3BFB2F7F6F6F8F8F8F8F8F8DFD6CED4B89FF8F2E6CCB8ABF3DA
        BCF7DFC3FBE1C8DA9D82D76339E86F3FED7441ED7743EB7845EC7A48EE7F4DEE
        8655EF8F60ED9566DF8A5DCF784FC8714FFAF3E9FBF0E9E7CBB6D4BFB1F7F6F6
        F8F8F8F8F8F8DAD5D2E6DBD5EDE5E0DBBFA7F8D6B2F8D9B4FAD9B8D78768E267
        3BEE7444F47E4DF58353F68356F37E4EF47844F57743F57744F47843EF7543E2
        6B3FD48161FAECDDFAEEE0E4C4ABD4C3BCF9F8F8F8F8F8F8F8F8D9D6D5E4DFDD
        E2D2C6EDC79FF8D0A0F7D2A3F1C39EC75C36E06F44EA8258F08F69F09774F09A
        77EF946CEF8458EB7344EB713FE9713FE46B3CD35F35DFA488FAE6D0F9E5CED7
        B499E8E0DBF8F8F8F8F8F8F8F8F8DCD8D7E7DEDAE2C6A8F5C893F9C992F7CA98
        C98461C2633ED47A55DD8C69E39779E59F80E59F80E59C7CE28E68DC7B51D76D
        3FD3683BCC6034BC5F3AF3CBADFADFC3F7D8BAD6B5A1F3EEECF8F8F8F8F8F8F8
        F8F8EFECECD2C6BCEAC79FF7CB93F7C68DE3AA81B76F4FBF7251C47D5ACA8868
        D19173D19476CF9678CD9374CB8968C37852BA653BB35A30A64F28D29773F8D5
        AFF9D7B1E8C4A2E2D1C6F8F7F7F8F8F8F8F8F8F8F8F8F8F7F7F2ECE8DDCBBAE0
        C4A8E8C19EBD7F5FE7A284ECA686E8A182DB9779CE8C6DC68667C08465BC7F60
        B67959B0724DA5613D974E28BF855EF8CC9EF9CFA0EFC9A1DDC8B6F9F5F4F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F6F9F4F0F2E9E0C3A391B07D5FB9
        7C5CBF8064C5876FCF9179DB997EE2A082E39F81DE9B7ED49272C48161C78F67
        F5C796F7C997E9C195E5D4C1F7F4F1F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F9F6F4B69585CB896BD89777C18E73DFCBBDB5
        8E79B9795ABF7D60C78E75D09985CB9884E0BEA1EAC8A6E1C3A6EBDED3F9F7F6
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8ECE8E7B2836FF0AB8DF1AB8DDBB6A5ECE4DEAB7F6CE0997CC8896CF3E3D8F9
        F4F3F8F5F4F8F6F4F1EFEDF8F6F5F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F9F7F8F8F8D9CFCAB27F69E1A488DDA1
        83E7CFC2B8A399CC8D72F3AC8EDCA891FBF8F6F9F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F9F8F8
        F9F8F8F8F8F8F8F8F8E0D5CEA27A64BB8D6FC09173AE866EB08168CF9375CD90
        72DDC1B1FAF8F7F9F8F9F8F8F8F8F7F8F7F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F5F5
        DFCEC2C8AD9CBFA08EB89682B48E7BB58C79CAAA98F6EDE8F8F7F9F8F8F8F8F8
        F8F8F8F8F8F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F8F8F7F8F8F7F8F8F7F9F8F6FBF8F2
        FBF6F1FBF7F2F9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F7F9F7F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F9F8
        F8F8F8F8F8F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F7F9F8F8F8F8F8F8F8F9F7
        F8F8F8F7F8F8F9F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object suiButton3: TsuiButton
      Left = 130
      Top = 4
      Width = 100
      Height = 37
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F7F9F6F6FCE5E5F3C0C0D5BDBD
        D4E0DFF0F6F5FCF8F7F9F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F9F7F7FAD8D9E88483AF434384
        2424711F1D751E1E752423733D3D807978A8CECFE2F5F7FAF7F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E1E1F16C6A9D22
        227515158E0F0FA80A09BD0707C70706C90909BF0E0DAC1515901E1E755C5C92
        D5D4E7F8F7FAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F7F8F9BFC0
        D834337A16158B0A0AB70302D60100E40100E90100EC0201ED0101EA0101E502
        02DA0909BD1313912A2A75ADADCBF7F7FAF8F8F8F7F8F8F9F8F8F8F8F8F7F8F8
        F9F8F9C0BED8262575100F9A0303CF0200E10100EB0100F20000F40000F70100
        F70000F50101F20200EC0100E30302D10F0DA11F1E75A7A6C8F8F6FAF8F8F8F8
        F8F8F8F8F8F8F8F8D8D7E92D2B741111990202CE0100E00200EB0100F00100F7
        0000F80000F70100F80000F80000F80100F20200ED0100E30201D20D0CA22322
        74C3C1DAF8F8F9F8F8F8F8F8F8F7F6FA5E5D9315158B0303C50101DB0000E501
        01EE0100F20000F70000F80000F80000F70000F70000F80100F30101EF0000E8
        0001DC0202C9101194484785F0F1F9F9F8F8F8F8F8C0BFD71D1E760607AE0000
        D00000DE0000E80101EF0000F30000F80000F80000F80000F80000F80000F800
        00F60100EF0000E80100E00000D40405B41B1A7BA09FC1F8F7F9F7F8F96B6BA0
        1214890101BE0100D40001DF0000E80101EE0000F30000F80000F80000F80000
        F80000F80000F80000F50101EF0000E80001E00001D60101C410109053518DF6
        F6FBF4F4FC3534780B0C990101C20B09C61919B81919BD1A19C41A19C61A19CA
        1B19C91B19C91B19C91A1AC91B19C91B19C61B1AC41A19BE1919B80908C60201
        C80908A126256FE9E9F7D7D8E921216F0706A40101C14E4EC8D6D6E2CFCFD9D0
        CFD9CFCFDACFCFD9CFCFD9CFCFD9CFCFD9CFCFD9CFCEDBD0CFDAD0CFD9D0CFD9
        C8C7D23A3ABB0001C30303AA1F2073C8C8DDBBBBD21F1F740403A70101BE5353
        C4F7F8F9F8F8F8F8F9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F9F7F7F8F8F8F8F8E4E4E43D3DB60101C00202AC1B1C79B7B7CEBABBD11F1F73
        0303A20101B95352C0F7F8F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F7F8
        F8F7F8F8F7F8F8F7F8F8F8F8F8F8F8F8E5E5E53D3CB40101BA0202A71B1C79B5
        B6CED7D7EA21216F05069A0101B45252BEF6F6FBF6F6FAF6F6FAF7F7FAF6F6FA
        F5F6FAF6F6FAF5F6FAF5F6FAF6F6FAF6F6FAF6F6FAF6F6FAEEEEF2403FB50101
        B50203A0202073C8C8DDF5F4FC3433760B0B900101AF211FB06260B95F5EB958
        58BA5657BD5857C15857C25757C25757C25857C35857C15657BD5858BC5E5DB9
        6261BA1F1EB00201B008099526256EE9E8F6F8F7F96A6A9E1414820101A70303
        B12222C61B1AC70808C50101C90000CD0000D00000D20000D20000D10100CD02
        01C90807C61919C72121C70504B20101A811118651518CF6F6FBF8F8F8BCBBD5
        1F1F730707940101A82E2FC33838C81F1EC20C0BC10302C20100C50000C70100
        C70100C60202C30B0BC11C1DC13637C93031C50302AB03039A1C1C799D9DBFF8
        F8F8F8F8F8F6F7FB5A5A8F14157F01029E1F1FB35857CD494AC92B2CC01717BE
        0A0BBD0606BD0405BD0A0BBD1516BE2A2BC04848C75858CD2426B701019E1010
        84424482F0F0F8F8F8F8F8F8F8F8F8F8D5D5E72A2A7210108605059D4D4DC37E
        7FD87272D25959CB4443C43938C13737C14242C35555C96F70D27E7FD85353C7
        06079E0C0C8A212270BFBFD7F8F8F8F9F7F9F8F8F8F8F7F9F7F8F9BABAD52625
        721110850D0D996260C7A09EE1ABABE5A6A5E2A09FE19E9EDFA5A4E1AAAAE3A0
        A1E36869CC0F109B0D0E87201F72A2A2C4F7F7FAF8F8F8F8F8F8F8F8F8F7F8F8
        F8F8F8F7F7F9BCBBD732307619177D0F0E8B4344AF8C8CD7B4B4E7C4C3EBC6C4
        ECB8B7E7908FDA4848B41212901614802A2973A9A8C8F7F7FAF8F8F8F8F8F8F8
        F8F8F8F8F8F7F8F8F8F8F8F8F8F8F9F8F9DEDDEE66669822227216177D141584
        2929973E3DA33E3EA42C2B9815158515157D21207458568ECECEE3F7F8F9F9F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F9F8F8F8F8F8F8F8F8F7F8F8F6F8FAD4
        D5E77B7CA83F3F7E25256F21207120207223236F39397B7171A2C9C9DFF6F7FB
        F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F7F8F8F8F8
        F8F7F8F8F8F8F8F7F8F8F8F8F8F6F5FCE1E1F1C0BFD5BCBCD3DADBEDF3F4FCF6
        F7F9F8F8F8F9F9F8F8F8F8F8F7F9F8F8F8F8F8F8F8F8F8F8F8F8}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 592
    Height = 127
    Align = alClient
    Enabled = False
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 86
      Height = 13
      Caption = 'C'#243'digo Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 100
      Height = 13
      Caption = 'Data Lancamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 305
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Fra'#231#227'o'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 432
      Top = 56
      Width = 130
      Height = 13
      Caption = 'Quantidade Fracionada'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 140
      Top = 56
      Width = 79
      Height = 13
      Caption = 'Quant. Inteira'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 140
      Top = 8
      Width = 120
      Height = 13
      Caption = 'Descri'#231#227'o do Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit5: TDBEdit
      Left = 304
      Top = 71
      Width = 73
      Height = 21
      TabStop = False
      DataField = 'FRACAO'
      DataSource = DM.dts_produtos_falta
      Enabled = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 432
      Top = 71
      Width = 134
      Height = 21
      DataField = 'QUANT_FRACAO'
      DataSource = DM.dts_produtos_falta
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 140
      Top = 71
      Width = 114
      Height = 21
      DataField = 'QUANT_INTEIRA'
      DataSource = DM.dts_produtos_falta
      TabOrder = 2
      OnExit = DBEdit7Exit
    end
    object DBEdit2: TRxDBComboEdit
      Left = 8
      Top = 22
      Width = 121
      Height = 21
      ClickKey = 113
      DataField = 'COD_PRODUTO'
      DataSource = DM.dts_produtos_falta
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 0
      OnButtonClick = DBEdit2ButtonClick
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBDateEdit1: TDBDateEdit
      Left = 8
      Top = 71
      Width = 120
      Height = 21
      DataField = 'DATA_FALTA'
      DataSource = DM.dts_produtos_falta
      NumGlyphs = 2
      TabOrder = 1
    end
    object Edit1: TDBEdit
      Left = 142
      Top = 24
      Width = 421
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DM.dts_produtos_falta
      Enabled = False
      TabOrder = 5
    end
  end
end
