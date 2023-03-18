object FormClienteProfissao: TFormClienteProfissao
  Left = 446
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Profiss'#227'o'
  ClientHeight = 399
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    457
    399)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 440
    Height = 383
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object RxLabel4: TRxLabel
    Left = 17
    Top = 19
    Width = 102
    Height = 13
    Caption = 'Profiss'#227'o/Ocupa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel1: TRxLabel
    Left = 16
    Top = 43
    Width = 116
    Height = 13
    Caption = 'Natureza da Ocupa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel2: TRxLabel
    Left = 16
    Top = 67
    Width = 76
    Height = 13
    Caption = 'Nivel do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel3: TRxLabel
    Left = 16
    Top = 91
    Width = 99
    Height = 13
    Caption = 'Descri'#231#227'o do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel5: TRxLabel
    Left = 16
    Top = 115
    Width = 109
    Height = 13
    Caption = 'Empresa/Empregador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel6: TRxLabel
    Left = 16
    Top = 187
    Width = 54
    Height = 13
    Caption = 'CPF/CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel7: TRxLabel
    Left = 16
    Top = 211
    Width = 39
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel8: TRxLabel
    Left = 17
    Top = 236
    Width = 72
    Height = 13
    Caption = 'Data de Inicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel9: TRxLabel
    Left = 16
    Top = 259
    Width = 66
    Height = 13
    Caption = 'Renda Bruta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel10: TRxLabel
    Left = 16
    Top = 283
    Width = 97
    Height = 13
    Caption = 'Gastos com Veiculo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object RxLabel11: TRxLabel
    Left = 16
    Top = 307
    Width = 75
    Height = 13
    Caption = 'Outros Gastos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ShadowColor = clWhite
    ShadowSize = 0
  end
  object db_nome: TDBEdit
    Left = 135
    Top = 16
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'PROFISSAO_OCUPACAO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 135
    Top = 40
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'NATUREZA_OCUPACAO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 135
    Top = 64
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'NIVEL_CARGO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 135
    Top = 88
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'DESCRICAO_CARGO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 135
    Top = 112
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'EMPRESA_EMPREGADOR'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object suiDBRadioGroup2: TDBRadioGroup
    Left = 136
    Top = 137
    Width = 142
    Height = 40
    Hint = 'Selecione Ativo ou Inativo'
    BiDiMode = bdRightToLeft
    Caption = 'Tipo de Pessoa'
    Columns = 2
    DataField = 'TIPO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    TabStop = True
    Values.Strings = (
      'F'
      'J')
  end
  object DBEdit5: TDBEdit
    Left = 135
    Top = 184
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'CPF_CNPJ'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 135
    Top = 208
    Width = 300
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'CIDADE'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBDateEdit5: TDBDateEdit
    Left = 135
    Top = 232
    Width = 122
    Height = 21
    DataField = 'DATA_INICIO'
    DataSource = FormClientes.dsProfissao
    Color = 15263976
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
      8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
      F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
      D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
      BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
      F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
      8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
      CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
      F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
      95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
      E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
      F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
      A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
      FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
      FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
      B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
      FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
      FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
      F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
      F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
      7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 135
    Top = 256
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'RENDA_BRUTA'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 135
    Top = 280
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'GASTOS_VEICULO'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 135
    Top = 304
    Width = 122
    Height = 21
    HelpType = htKeyword
    CharCase = ecUpperCase
    Color = 15263976
    DataField = 'OUTROS_GASTOS'
    DataSource = FormClientes.dsProfissao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object btnSalvar: TAdvGlowButton
    Left = 317
    Top = 345
    Width = 122
    Height = 32
    Caption = 'F10 | Gravar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
      D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
      1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
      A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
      F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
      7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
      7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
      EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
      9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
      C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
      F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
      6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
      A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
      A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
      06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
      0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
      C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
      DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
      7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
      ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
      1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
    Transparent = True
    TabOrder = 12
    OnClick = btnSalvarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object btnCancelar: TAdvGlowButton
    Left = 20
    Top = 345
    Width = 117
    Height = 32
    Caption = 'F5 | Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
      CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
      BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
      54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
      DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
      30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
      0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
      32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
      4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
      406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
      328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
      BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
      F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
      F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
      D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
      85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
      59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
      E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
      F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
      47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
      C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
      C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
      0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
      CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
      CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
    Transparent = True
    TabOrder = 13
    OnClick = btnCancelarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
end
