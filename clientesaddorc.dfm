object FormClientesaddorc: TFormClientesaddorc
  Left = 428
  Top = 319
  Caption = 'Informa'#231'oes FDicionais do cliente'
  ClientHeight = 204
  ClientWidth = 491
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 204
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 23
      Width = 81
      Height = 13
      Caption = 'Nome do Cliente:'
    end
    object Label2: TLabel
      Left = 4
      Top = 51
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label3: TLabel
      Left = 3
      Top = 126
      Width = 55
      Height = 13
      Caption = 'CPF/CNPJ:'
    end
    object Label4: TLabel
      Left = 215
      Top = 128
      Width = 34
      Height = 13
      Caption = 'RG/IE:'
    end
    object Label5: TLabel
      Left = 352
      Top = 129
      Width = 27
      Height = 13
      Caption = 'Fone:'
    end
    object Label6: TLabel
      Left = 4
      Top = 81
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label7: TLabel
      Left = 228
      Top = 81
      Width = 50
      Height = 13
      Caption = 'Cidade/uf:'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 21
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_CLIENTE'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 0
      OnEnter = DBEdit1Enter
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 48
      Width = 378
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 1
      OnEnter = DBEdit2Enter
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 126
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 4
      OnEnter = DBEdit3Enter
    end
    object DBEdit4: TDBEdit
      Left = 252
      Top = 126
      Width = 99
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG_IE'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 5
      OnEnter = DBEdit4Enter
    end
    object DBEdit5: TDBEdit
      Left = 382
      Top = 126
      Width = 83
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 6
      OnEnter = DBEdit5Enter
    end
    object BitBtn1: TBitBtn
      Left = 130
      Top = 159
      Width = 90
      Height = 37
      Caption = '  &OK'
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
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 273
      Top = 157
      Width = 90
      Height = 37
      Caption = '&Fechar'
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F809000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0F5F5F1D5D5DCABAA
        BC9493A78F90A58F8FA49593A5B0B1B9DDDCD7C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C09090B237367D11128208099202049603059803
        04970A0A950F0E7F24256A4E5073A5A7A8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A1
        A1C41819860000930000A40101A50B0AAF0707B60405B60909B6080AAE0000A6
        0000A806069910107C48486BBDBCB7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06B69AE0001910000A30405A7
        1D1ECC2120E3201DF41616F41616F51D1DF7282AF52A2AE22323CA0403A60000
        A509099A242467A5A5A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C04A4BA200009B00009F2F30D04343FA2C2CFB1B1CFA0D0D
        F90604F80706F9100FF71C1AF92B28F93E40FC5555FC3534CD00009F0404A719
        186F8B8B90C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C06464
        B400009B0707A44B4BE65050FF3736FA2422F71A19FA0C0CF80302F70402F80E
        0CF71A1BFA2927FA3737F94847F96463FF5252E50406A10503A919186EB6B6B2
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0ACADDD00009500009C6364F25B
        5BF84140F13130F22121F21314F30707EF0909FA0A0BF61112F81617F51E1EF0
        2F2FF23F41F35051F36A6AFA6D6DF200009B0604A8313163DCDCD7C0C0C0C0C0
        C000C0C0C0C0C0C0EEEFFD0C0C9200009C6161E47070FE7272DB9494C77B7AAF
        7879B27273AF7475BC1B1ACB1516FC1716F14949B67D7CB67A7BB37C7EB18283
        AF8586BC7877E56264E50000A008089073738AC0C0C0C0C0C000C0C0C0C0C0C0
        8486CD0000962C2DBA8A8BFF6C6DFA4A4BCBEAEDF4F1F0E9DCDDD7DDDED5D3D5
        CA6464AB1C1BF62425C0DADBE2DFE0D7DDDED8DDDDD7D9D9D48182B86E6DEE94
        94FF292BBA0101A4252575DEDDD5C0C0C000C0C0C0C0C0C01617900000998080
        F58080FA7071F96060F87273BEFFFFFFFBFAFAFBFBFBEBEBE7BDBECD1D1D9F8A
        8AC9F8F9F4FBFAFAFAFAFAF7F9F6DBDBE65150CB7475FC8483FA7E7EF300009C
        0B0B89888894C0C0C000C0C0C0BFBEE80000941414AB999AFF807FF77072FA64
        63FA4242D1B9B9DCFFFFFCF8F8F8F9F9F9DEDEDB9595A9D9D9E3F9FAF8F8F8F8
        F9F9F9F3F5EF7776BC6868F97273F97C7CF69898FF1717AE0000A348477DC0C0
        C000C0C0C07D7BC30000A04E4BCC9392FF7F7CF76C6EF86565F85857FA5454BE
        FFFFFFF9F9F7F9F8F8F6F4F3EDECE9F0F1EEF9F9F9F9F9F9F9F8F5B8B8D35253
        D36C6BFB7272F97F7EF88B8AFD4D4CD00000AA28287CC0C0C000C0C0C05454A9
        0000A07373E78B8BFC7779F66E6FF76564F65D5EFA484BDFB0B2DCFFFFFDF8F8
        F7F9F8F8F9F9F9F9F9F9F8F8F8F8F8F7EFEEEE5E5FBA6567FA6C6DF97272F97A
        7AF88382FC7374F00000A5171980DEDEE400C0C0C044429F0000A07473EB8383
        FA7675F76E6BF96766F86060F6605FFD5655BDF1F0FAFAFAF8F8F7F8F9F8F8F8
        F7F8FAF8FAECEEE99E9DC3605FE16C6CFB7071FA7170F77979F97B7AF77D7BF4
        0101A3161486DCDCE400C0C0C04344A00000A16B6BE9797BF97372F86B6BF867
        67F76567F86464FB5556BEE0E1EDFBFCF8F7F7F8F7F8F7F8F7F8F9F9F9E5E5DF
        7A7AA4706FF17171F96F6FF76F70F77171F77576F87876F40103A3141587DBDB
        E400C0C0C044439F0000A16768EB7274F96E6EF96768F66767F76967F86967EE
        9999CAFCFBF6F8F8F8F8F8F8F7F8F7F7F8F7F9F9F9ECE9E8BFC0C36668BE797A
        FE7070F86F6FF87070F86F71F77573F30102A5151587DFDFE800C0C0C06967B9
        0000A05656E06D6DF96767F76667F76667F77171FD6564C3E8E7EDF7F7F4F8F8
        F8F7F7F7FAFBFAF9F9F9F8F8F8F6F6F6DBDCD78A8CAB7273E47677FB706FF771
        70F87272F96B6BED0000A31F2086C0C0C000C0C0C08F8DCF00009B3535C56F70
        FE6867F86767F86A6BFA696AE3A0A1C7F8F8F2FAFAF9F8F8F8FCFCFADCDEE5EC
        ECF2F7FAF9FAF9FAF2F2F1C5C6C47070B27E7DFD7374F9706DF8706FFA494BD2
        0000A3414092C0C0C000C0C0C0EBE9FF00008E0000A27B79FF6766F96667F870
        6FFC7171BDF8F8F6FBFAF8F9F7F7F8F8F7F0F2F38B8BB2B3B2CDFFFFFFF8F8F7
        FBFBFAE4E4E1A3A5B36D6FDD7777FB6D6EF87C7EFF1111AB00009A8585B7C0C0
        C000C0C0C0C0C0C04040AD00009B5354E26563F86869F96564DEDCDCEBFFFFFF
        FFFFFFFFFFFFFFFFFFC1C2D0BBB9F0A3A3D1EAE9EFFFFFFFFFFFFFFFFFFFFCFD
        F78485BE7775F67172F96A6AF000009D100E89E9EAF3C0C0C000C0C0C0C0C0C0
        FDABE20000911212AC7B7BFF6667F87174EA8A89C78A8ABC9896BE9F9FBEA4A4
        BFB5B7D8D0CEFDCBC9F9A3A3CAA09FC09898BF9192BD8C8BBE8483D07876F480
        80FF2323B900009B6D6CB9C0C0C0C0C0C000C0C0C0C0C0C0FFFFFF4A48B30000
        9A292AC07A7AFF7879F88D8EFA9FA0FAB3B3FBC2C4FAD3D1FBD7D8FBD6D5F9CF
        CFF7CACBFBC0BFFBB6B4FCA4A6FA9898FA8786FB7F7FFF4445D300009E151596
        F1EFFDC0C0C0C0C0C000C0C0C0C0C0C0C0C0C0F3F3FF08089100009B4142D47C
        7DFF8C8DFBA0A0F8B0B1F9C0C0F7D1D1F9DBDBF9D9DAF7D3D3F9C7C8F8BBBAF8
        AFAFF7A2A3F89596FE7D7DFC5859E700009C00008FBBBCE2C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0CCCBF000009100009D2829C07777FD8E8EFC
        B1B1FCC6C6FBCFCEFAD7D7FAD8D9FAD0CFF8C5C6F9BCBCFAB1B0FD9091FC7978
        FA4143D600009E0000959092CEC0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0D0CDF106069200009C1213B24E4FE07A7AFC8A89F8A5A3
        F4B9B8F8BEBDFAB6B6F9A4A5F58987F77B78FD5D5CEC2624C00000A100009392
        91D1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0E5E5FC3939A90000920000A01515B34242D65253E65959EB5B5AEC5B
        5AEC5959E94847DB1E1FBC0000A200009819189AB7B6E5C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF
        FFFFA8A8E22A2AA000009000009C0000A30403A80000A40101A40000A40000A1
        0000980D0F928383CEF8F9FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF
        CBCBF08081C84D4DAD2727A22223A12424A04344A8706FBCB6B7E3C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
      TabOrder = 8
      OnClick = BitBtn2Click
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 80
      Width = 133
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 2
      OnEnter = DBEdit6Enter
    end
    object DBEdit7: TDBEdit
      Left = 309
      Top = 79
      Width = 157
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = formVendas.dts_orcamentos
      TabOrder = 3
      OnEnter = DBEdit7Enter
    end
    object RadioButton1: TRadioButton
      Left = 90
      Top = 105
      Width = 50
      Height = 17
      Caption = 'Cpf'
      Checked = True
      TabOrder = 9
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 137
      Top = 105
      Width = 49
      Height = 17
      Caption = 'Cnpj'
      TabOrder = 10
    end
  end
end
