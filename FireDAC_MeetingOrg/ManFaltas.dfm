object FormManFaltas: TFormManFaltas
  Left = 178
  Top = 129
  Width = 816
  Height = 543
  Caption = 'Manutencao de Faltas'
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 800
    Height = 44
    Align = alTop
    TabOrder = 0
    object myLabel3d2: TmyLabel3d
      Left = 3
      Top = 6
      Width = 303
      Height = 33
      Caption = 'Manuten'#231#227'o de Faltas '
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Resit3d
      AShadeLTSet = False
    end
    object RxLabel11: TRxLabel
      Left = 313
      Top = 18
      Width = 90
      Height = 13
      Caption = 'Localizar Falta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 408
      Top = 13
      Width = 241
      Height = 21
      TabOrder = 0
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 731
      Top = 16
      Width = 62
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 658
      Top = 16
      Width = 71
      Height = 17
      Caption = 'Descri'#231#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 44
    Width = 800
    Height = 255
    Align = alClient
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 2
      Top = 15
      Width = 796
      Height = 238
      Align = alClient
      DataSource = DM.dts_produtos_falta
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgRightMoving]
      TabOrder = 0
      OnCellClick = XDBGrid1CellClick
      OnKeyDown = XDBGrid1KeyDown
      OnKeyPress = XDBGrid1KeyPress
      OnKeyUp = XDBGrid1KeyUp
      OnRowSelect = XDBGrid1RowSelect
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_SEQ'
          Title.Alignment = taCenter
          Title.Caption = 'Seq'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 83
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 312
        end
        item
          Expanded = False
          FieldName = 'DATA_FALTA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Falta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT_INTEIRA'
          Title.Alignment = taCenter
          Title.Caption = 'Quant. I.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Fra'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT_FRACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Q. Fracionada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 93
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 450
    Width = 800
    Height = 55
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 576
      Top = 24
      Width = 136
      Height = 13
      Caption = 'Obs: Delete Exclui uma Falta'
    end
    object BitBtn1: TBitBtn
      Left = 314
      Top = 13
      Width = 113
      Height = 34
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 13
      Width = 113
      Height = 34
      Caption = '&Incluir Produto'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        18000000000030090000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F9F7F9F7EFFAF1E0F3E1CEE5
        D0C8E2CDC9E2CCCEE5D0E0F3E2F0FAF2F8F9F7F9F8F8F8F8F8FAF8F8F8F8F8F8
        F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F9F8F8F4F9F5D2EBD590C0955A9B602F82371C7A26167A211879211E7B263083
        375B9C6193C197D6EDD8F5FAF6F8F8F8F8F8F8F8F8F8F8F7F9F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F9F7E0F2E180B986277C2F0F771A
        0D781A10812410892E0E8A2F0E8A2F128A2F0F80240C79191077192A7F328ABE
        91E3F3E5F7F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F9F7F6F9F6BFDEC23C8A4212761C0F7C2120994227B45C22BD601CBE5F19BE5E
        1BBE5F22BE622ABE652EB55F239A43107B1F13761C408C45C2E0C3F6F9F6F6F8
        F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F5FAF5AFD5B22A81320F771A26
        964138B76931BF6E25BF681BBF6117BA5C16B85A19B95E1FBA6125BE672FBF6E
        3EC27643B96C25913D0E771A2D8233B2D6B6F5F9F7F9F8F8F9F8F8F8F8F8F9F8
        F8F8F8F8F7F9F7C3E2C6267D2D11781C329E4F48C17B3BC1742FC06D24BF6829
        B06269B38768A58267A48161A57F2FAB642EC06C3CC17448C17C54C282349C4F
        11781C287D2EC7E3CBF6F9F7F8F8F8F8F8F8F8F8F8F7F8F8DDEFDE3C8A420E76
        1A3BA25756C18348BF7E3EC17631C06F27BE6934A866DCEEE3E0DFE1D6D6D7B5
        C1BB3BA16730BF6E3CC07548C07D52C0835FC4893C9F5510761B408C48DFEFE0
        F8F8F8F8F8F8F8F8F8F5F9F684B88914761C30954862C88A56C1864BC07E41C1
        7836C0722BBF6A38A869E5F7ECF8F8F8EFEFEEC2CBC540A26A37C0723FC17848
        C07C52C0845FC48B68C88E2D924512761C87BC8CF5F9F6F8F8F8F8F8F8D6EEDA
        2B7F31157B225EBD7F65C88E5AC3884DC08043C07A39C07433C0703EA96DE6F7
        EEF8F8F8EFEFEFC2CBC545A16C3CC07642C0794BC07D53C0845FC58A69C7905E
        BB7E147B212D8034DBF0DEF8F8F8F6F9F793C29811761A31934670C99467C88F
        5CC5884EC08046C07C3FC17739C07445A971E6F7EEF8F8F8EFEFEFC1CBC449A1
        6F41C07946C07C4DC08055C18560C78967C88F70C9922F924412761A94C198F7
        F9F7EEF9EF55995B10771C5DB57A6EC89466C58E5EC28853BF824CBE7E47BC79
        44BC784EA774E7F6EDF8F8F8F0F0F0C4CBC5509E724ABC7C4FBF8054BE815ABF
        8662C38A67C68F6DC89259B67810781C57995EF0FBF1DBEEDD2F8335187D2670
        C4916EC7936FB48B7DAD9276A78C72A5896FA48671A6887DA58FE6EDE9F8F8F8
        F4F4F4CFD3D17DA08C74A68A73A68B77A58C79A58C79A58D6AAB876CC6916AC4
        8A1A812B2E8137DEF0E0CAE2CD1B7A231F852E6FC7906BC7918BB99DE5E9E7DA
        DADAD9D7D8D8D7D9D7D8D8DFDFDFF2F1F2F8F8F8F8F7F8EDECEDDEDDDDD8D8D8
        D8D8D8D8D7D8D8D7D8C7C8C77EA78F6AC79168C78C2589381C7A25CEE6CFC8E2
        CD177A221F86306AC88D68C79189BB9EF4FAF7F6F6F6F7F6F6F6F6F6F6F6F6F6
        F6F6F8F8F8F8F8F8F8F8F8F8F8F8F7F7F6F6F6F6F6F7F6F7F6F6F5F4F4D6D7D7
        7EA98F68C79067C88D288B3D177821CAE2CBC9E2CC1879221E862F63C78962C8
        8D86BA9EF4F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8
        F8F8F8F9F8F8F8F8F8F8F8F8F8F8F7F8F8E6E9E883B09763C78E62C88B278B3C
        177821C9E2CCCFE6D2217C2A1C832C5EC5855EC58972B992B1D5C1B4D4C1B5D4
        C3B7D5C4B9D4C6BFD1C7F4F6F5F8F8F8F8F7F7EEF1F0C3D3CABBD4C6BAD4C6B9
        D5C5B6D5C4B5D4C37EBC9A63C78A61C7872389371D7A26CFE6D2E3F3E53B8A42
        147B2058BE7E59C18759BE865AB98463BE8968C08D6FC09277C0967AAB8EEEF5
        F0F8F9F7F1F1F1D1D5D27AA48C7FC19B7AC19773C0936ABF8F67C08D61C2895F
        C7885EC38318802733843AE0F2E2F3FAF46EA97510761A41A75F59C18657C087
        59C08763C88D6BC79075C8977EC89C82B096EFF4F1F8F8F8F1EFEFC7C9C87EA7
        9087C8A27FC89D76C8986CC79267C89061C88B5FC4884CB06C10771B5F9E63F0
        FAF2F7F8F7B0D5B415761D1E87315AC38557C1865BC38866C89070C8947EC89D
        89C9A389B19AEFF4F2F8F8F8EFEFEFC6C9C784A9928DC8A685C8A07BC89A72C8
        9667C89061C88C62C789278D3C11751B9CC8A1F6F9F8F8F8F8E9F7EA48904E12
        781C46AE6559C1875EC38A69C79076C89884C8A090C8A891B19FEFF3F2F8F8F8
        F1F0F0C7CAC889A99692C8A98AC8A57FC89D74C9986AC89062C78E50B5701379
        1F33823BE1F3E3F8F8F8F8F8F8F7F9F7ADD3B219782218812B55BD7B60C58A6C
        C8917AC99B87C8A394C8AA95B1A1F0F4F2F8F8F8F6F7F7D4D8D78CAA9994C8A9
        8CC9A581C99F74C99968C8905DC48521893515761E97C69CF6F9F7F7F8F8FAF8
        F8F8F8F7F1F9F271AC7612761B218A3458C17D6BC9907AC99B89C8A498C8AC9B
        B9A7D0D9D4D4DAD7D4DAD7CDD7D294B4A494C7AA8CC8A57FC99E70C8955FC588
        2C954411761A55995CE8F6EBF7F8F8F9F8F8F7F8F8F8F8F8F8F8F8E6F5E7579A
        5C11771A1A852F59C07D6DC99383C9A094C9AAA1C7AFA7C0B1A8BFB1A5C0B09F
        BFAC9BC6AD91C8A885C9A271C8945FC381258E3B10781A3D8A44DAEEDDF7F8F8
        F8F8F8F8F8F8F9F8F8F8F8F8F8F8F8F8F9F7E1F2E25F9F6315761C167D263BA3
        585EBD8274C79485C7A093C8AB9AC9AF97C9AB8EC8A681C69F72C69461C08644
        AA621B832D12761B458F4BCBE5CDF7F9F7F8F8F8F8F8F8F8F8F8FAF8F8F7F8F8
        F7F8F8F8F8F8F7F8F7E9F6EA84BA8A1E792710761B167F27349D4E4BB26E58BB
        7D5DBE825DBD8158BB7E50B67339A2561B832E0F771B1B782267A56CDDF0DFF6
        F8F7F7F8F8F8F8F8F8F8F8F8F8F8F8F9F7F8F8F8F8F8F8F9F8F8F8F8F8F8F9F7
        F3FAF5C2E1C56AA86F22782812761B0F771A117A1F167E22167D21137C1F1078
        1A10771A197622549A5BB1D7B5F0F9F2F8F8F8F9F8F8F9F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F7F8F8F7F8F8F8F8F8F3F9F4D2ECD4
        9AC69E67A36E48914F398840388840418C485F9F668EBE93C6E5CBEFF9F0F7F8
        F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F7F7F9F7F8F8F9F7F9F7F8F8F8F8F8F8F8F8F6F8F7F3FAF4EBF8ECE3F3E5
        E3F4E5E7F6E8F2FBF2F6F9F6F7F8F8F8F8F8F7F8F8F9F7F9F8F8F8F8F8F8F8F9
        F7F8F8F8F8F8F8F8F8F8}
    end
    object BitBtn3: TBitBtn
      Left = 445
      Top = 13
      Width = 113
      Height = 34
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = BitBtn3Click
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
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 299
    Width = 800
    Height = 151
    Align = alBottom
    TabOrder = 3
    object RxLabel4: TRxLabel
      Left = 9
      Top = 10
      Width = 89
      Height = 13
      Caption = 'Principio Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 9
      Top = 39
      Width = 71
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel27: TRxLabel
      Left = 9
      Top = 63
      Width = 63
      Height = 13
      Caption = 'Aplica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 9
      Top = 94
      Width = 75
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 9
      Top = 118
      Width = 41
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 523
      Top = 11
      Width = 46
      Height = 13
      Caption = 'Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 523
      Top = 38
      Width = 72
      Height = 13
      Caption = 'Estoque Int:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 524
      Top = 93
      Width = 110
      Height = 13
      Caption = 'Pre'#231'o Ult. Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 525
      Top = 119
      Width = 50
      Height = 13
      Caption = 'Usuario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 523
      Top = 64
      Width = 120
      Height = 13
      Caption = 'Estoque Fracionado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 397
      Top = 119
      Width = 33
      Height = 13
      Caption = 'Unid:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo3: TDBMemo
      Left = 100
      Top = 9
      Width = 418
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo4: TDBMemo
      Left = 100
      Top = 34
      Width = 418
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 100
      Top = 60
      Width = 418
      Height = 24
      DataField = 'APLICACAO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 100
      Top = 89
      Width = 418
      Height = 24
      DataField = 'LOCALIZACAO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 168
      Top = 116
      Width = 225
      Height = 24
      DataField = 'NOME_GRUPO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 100
      Top = 115
      Width = 63
      Height = 24
      DataField = 'CODIGO_GRUPO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 646
      Top = 8
      Width = 131
      Height = 24
      DataField = 'FRACAO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 646
      Top = 35
      Width = 131
      Height = 24
      DataField = 'ESTOQUE'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 647
      Top = 90
      Width = 130
      Height = 24
      DataField = 'PRECO_CUSTO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 648
      Top = 116
      Width = 129
      Height = 24
      DataField = 'USERCAD'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 646
      Top = 61
      Width = 131
      Height = 24
      DataField = 'ESTOQUE_FRACAO'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 432
      Top = 116
      Width = 86
      Height = 24
      DataField = 'DESC_UNIDADE'
      DataSource = DM.DTS_PRODUTOS
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
end
