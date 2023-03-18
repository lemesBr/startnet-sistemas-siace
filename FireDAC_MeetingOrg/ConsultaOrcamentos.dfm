object FormConsultaOrcamentos: TFormConsultaOrcamentos
  Left = 498
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta - Or'#231'amentos'
  ClientHeight = 522
  ClientWidth = 781
  Color = 15263976
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnpesq: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 77
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15198177
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 2
      Width = 777
      Height = 73
      Align = alClient
    end
    object Label2: TLabel
      Left = 6
      Top = 50
      Width = 70
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 195
      Top = 50
      Width = 63
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 457
      Top = 52
      Width = 59
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 457
      Top = 15
      Width = 66
      Height = 13
      Caption = 'Or'#231'amento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TRxLabel
      Left = 10
      Top = 15
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 77
      Top = 48
      Width = 100
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
    end
    object DateEdit2: TDateEdit
      Left = 262
      Top = 48
      Width = 100
      Height = 19
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
    end
    object suiButton1: TsuiButton
      Left = 673
      Top = 7
      Width = 100
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Consultar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FDFDFDC3C6C9A3A8AFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE6EAED4A85B6124E915A6C88EEEEEEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2D6E971B8EA4A95CE134A8A7F8CA3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F4F6417DB378C5
        F43B85C1164685B6BBC5E8E8E8EDEDEDF3F3F3F7F7F7FBFBFBFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAFAFAACBACA3C82BD75C5F52B73B2395E90F1F2F2F9F9F9FAFAFAFAFAFAFBFB
        FBFBFBFBFBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFDFDFDFDFDA1B4C94D97CF70C2F31C60A18A9FBAFFFFFF
        FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB4CC5BA8DD63
        B5E7145396CBD2DCFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9DB8D466B5E752A1D74373A6FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8C4DE6EC0F03B84C0D9DDE1FFFFFFEFEE
        ECDBD8D5CECAC6D8D5D2ECEAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDDFEFB1C0C8
        A9A19AB2AEA8ABA39FACA59CB3ADA5B0ADA7B4AFA9C2BDB8F1EFEEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFAAA6A1898077A8A387E0DEA3F2F1A1F0EF9BE4E195C8C2A1AEA7A2
        B2ABA5E9E7E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD3D1CF756D669E9686F2EFADFFFDB2FFFDA9FFFDA1FF
        FE9EFCFB8BDCD7829F9890AEA79FF6F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC7A746F8A807AD6CD95FFF9ADFEF8
        A4FEF89CFEF995FEF98DFFFA87FCF77AC4BD60928A85C2BBB6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDEDD645D55958B83
        F9EEA0FEF39FFEF398FEF391FEF38AFDF383FDF37BFEF475F1E65A8F8656A399
        91EEEDEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8
        B5B3706860A59A84FEEE9CFDED95FDEC8EFDEC87FDEC80FDEC78FDEC71FDEC6A
        FDED64B9A93489817BD3CFCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA7A39F746C64ADA087FEE793FCE58BFCE584FCE47EFCE476FC
        E46FFCE468FCE461FDE55EE2CD517D7569C6BFB9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACA8A56F675FA59A8CFBDE8EFBDC82FBDC
        7BFBDB74FBDB6DFBDB67FBDA5FFBDD64FCE78CF7E07D807560C1BAB3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C5C3625B53A1978F
        ECD198FBDA90FAD57BF9D16DFAD167FAD368FBDB7FFCE399FCE59BF4DA868177
        68C6C0B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA
        E9E85E57519A9188C3B297FDDBA1FBDBA2FBDB9FFCDD9EFBDFA4FBE0A5FCE2A6
        FCE3A9D9BD748C847ED1CCC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9B9691817A72AAA098E5C8A4FCDAABFBDBACFBDCADFB
        DEAFFCE0B1FCE2B4FEE6B59C8359AAA198EAE7E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECEB968F88A19991ADA399E8CD
        ACFDDFB7FCDEB9FCE0BCFCE2BFFDE7C7CBA979968D84C7C0B9FEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCD9
        AFA89FADA59DB0A79FC6B5A2EBD6BAF8E2C6F6E1C8D6B994A09488C6BFB9F6F5
        F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEBE8E5CFC8C0B0A89FBBB3ACB4ACA5B0A79FB0A89FBAB3AC
        D5D0CBF7F6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAE0DDDAC1BCB6BFBBB5CA
        C6C1D6D2CFECEAE9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object Edit2: TEdit
      Left = 539
      Top = 10
      Width = 110
      Height = 21
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 139
      Top = 12
      Width = 302
      Height = 21
      Color = clMenu
      Enabled = False
      TabOrder = 4
    end
    object Cliente: TComboEdit
      Left = 57
      Top = 12
      Width = 80
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = ''
      OnButtonClick = ClienteButtonClick
      OnChange = ClienteChange
      OnExit = ClienteExit
    end
    object Edit11: TEdit
      Left = 539
      Top = 47
      Width = 110
      Height = 21
      TabOrder = 6
    end
    object suiButton7: TsuiButton
      Left = 673
      Top = 40
      Width = 100
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Limpar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 7
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFDFDFEFAFBFDF7F8F8F9F0F2F1E7EAE8DFE2E4DEDE
        DEDBDBDAD8DBD9DBDEDCE7E3E8EEEEEDF6FAF7FAFDFCFFFFFFFFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFFFFFFFCFCFCEEF4F2E3E6E8D5D6DAC2C0C8B5AFB29F9B99
        8F8D8982807F7B787B7774767875767B797884847F989698B6B2B6DDD9DAF3F3
        F3FDFDFDFFFFFFFFFFFFFFFFFFFCFCFCE9E9E9C6C6C6ADA5AC8E898B74736E62
        64594B5E4D4A61464B6843516F4750754754764C51704A476240435244444F45
        585A577C797BB0B0B0E9E9E9FDFDFDFFFFFFFDFDFDE4E4E49F9F9F6868684C6A
        4647733A46852F49962B4CA12A50A62E59AF3C63B74B7CBE628DC8789FD18FAA
        D69FA5D3988CB4785A734E414A455F5F5FA2A2A2E8E8E8FEFEFEF4F6F5A2B09D
        3A773B30862D439C3847893967905B6AA76084C36864995073AE555E965062AE
        4E6DB55E7FBD7090C47B98CB8BA3D096A9D49C7DAE724452425F5D5EB5B4B1EF
        F2F3CFDACD3C8E3459AB586EB26B6AAD697AAB739DAA968B9F839DBA95A3B3A6
        77897687A57D87C37677BA686FB56172B56174B86978B86678B76677B76C5B98
        513E514180787ED7D9DA79B56C68B25F94BD8A85C07B7EBE757FB876A3B0A5F1
        F3F4A9ADAA9E9D9D7C7B7959605476937289B58492C98C89C2847BBA7474B469
        61A9564B9B423A9A3032702D5D5A61BCBBBA4EA13F42A02F8EC482ACD2A1A6CF
        9B9BCB8F7E877EDCD6D9A7AAA48C878E8987845D5F5D596156C1D8B9BDE1B4B8
        DDB2B2D9B0A8D4AD8ECE9356AF542A90242A88244D604BB2AFB1A4CB9B6FB24A
        51A32E5DB93288C660A8D886C1E3A9B2C79BBFD7AEC4D7B0C1DAAAB5DA9DB4DC
        9AB4E49CAEDD8CABDD86A2CF669BCB5791C43277BA2244AA183A981E4C7544B9
        B9B9FEF1ECF6E3D2A3A1B328487359A1BF36517436788B519AA2516F88346880
        3E879D53A5B758A1B8284F6F5E759D344E7866B6D577BEDA29636F3977874E81
        9541787A545F62D0C6C8FDFDF6F3D5C8FEF5F242727A2C61782B32512953673C
        6C7823364F2C4F622D606C2D636E2E697A2650633663722A616D5FA4B95B96A6
        2D57553F6C6B3E6F7235666563615EDCCECAFCFEFFF9E7DBF9E2D2D6D9D8FDFA
        F3C7C6C7828F9790A3AC61858F53777F244D5A2E5F73223B4A2B5E6A27616C2A
        616E3B7685245864234C4A215153254B4B254A4B887C70E2D3C6FCFDFEFFFEFF
        F2E3D3FDDCCDFBEFE8FEF1EDFFF3EFFCEEE4FCEFE7FDF1EEEDE8E293A5AA8597
        A35B7E9E2C65753C758F3F86A63B7B9015454C204745204849314F57B8AFAAEA
        DBD3FDFEFDFEFDFDFFF4EAF9D5C5F9F3EDFDF6F2FEF2EBFAE6DAFBDDCFFAF1E9
        FDF5ECF5E9EBCBD0E24F89C34293D054C7F955CCFF55CFFD57C2E731769A194E
        5353737EE4D1D4F3E7DBFEFEFFFEFEFEFDFCF8EFC9B5FCECE1FBF4ECFEF5EEFD
        EBE3F8D9BFF9D7C5F9DCD3BAB7C5748ABC4890D145C0FD49C6FE50C9FC49C8FC
        4BC6FE42C2FE4EAEE24D7EB68C96C0EEE8F1FCFDFFFEFEFEF9FEFDF8D0BBF8D5
        C3F8EADFFDF5F1FFF3F2FDEBE4FDD3BEFBD5BFC2C6D25D96D93BB0F738B6FF44
        BEFE40BFFE4BC1FF45BEFE41BCFD36B3FB51A8EA85A3D3F8FAFAFFFFFDFBFEFF
        FFFFFFF5E8DFF8DAC8F5E6D2FBD9D1FADAC8F9D8CAFCE4D4F0E5E3A6B5D44886
        CC30A8F936AFFF38B4FF38B7FD38B7FE37B5FD36B3FC2DAEFF3093E7769DD3DF
        E0F6FFFFFDFBFFFFFDFFFFFFFFF9F9E5DAF4D8C5F9EBDEFBEDDDFAECE7FCECDE
        F0E5DC8CA0C55897DE2EA6FB37AFFF41B4FD3FB5FF3FB4FF3FB3FF3DB1FF33AB
        FF41A6F15E91D0CBDFECFFFFFFFDFFFFFCFFFFFDFFFEFCFEFCF5D4C3F7EADAF9
        EEE4FFEDE6FAE8E3FDDCC8DFCDD6558AD132A5F94BB3FF5ABBFD5CBBFF5CBAFF
        5BBAFF5AB8FF5AB9FD3993E4AABDE8FBF8FEFAFDFDFFFFFFFFFFFFFFFEFFF9FE
        FEF6DECBFFE7D9FAEEE8FCF0E7F9ECE4F7D8C49D9AB25382C6368DE646ADF781
        C7FE82C8FE82C8FE82C8FE81C7FE49A3F04791E35D88C3EAF1F9FFFFFFFFFFFF
        FFFFFFFFFFFFFDFFFFFFFAF3F2D2C4FBEFDEFEF2E8F9EDE9FAE6DDF4D4BEDDBE
        B13C7EC74BA2F25BAFFC9FD0FEA7D6FD93CEFC6DB4F73995E696B4E7FEFDFCF9
        FEFDFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFAFEFCFCF4EEEFD6C8F7E2D1FCE9DE
        FCE7DCF7DCCCD5BBBE80A0D189B0E33492EF3994E93399EF4E9DED4D92E1A8BF
        E591AAD0FBFDFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFFFCFEFEFD
        FDF6FFF6EBFCF1E8FFF5EEFFF4EEFEFDFCFEFDFAB9CFE68CA6D7ABBFE54D83CF
        C8D5F67196CFFEFEFBFAFEFDFDFFFFFEFFFAFFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FFFFFFFEF9FFFEFEFBFFFCFFFFFDFEFEFDFEFEFCFEFEFCFFFCFCFDFFF0F7FCF4
        F8FBEDF2F9C1D2EBFFFFF9F1F1F9FDFFFDF9FFFFFFFDFFFDFFFD}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton7Click
      ResHandle = 0
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 77
    Width = 781
    Height = 131
    Align = alTop
    Color = 15263976
    TabOrder = 1
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 779
      Height = 4
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = clLime
      TabOrder = 0
    end
    object suiDBGrid1: TDBGrid
      Left = 1
      Top = 5
      Width = 779
      Height = 125
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DM.Dts_orcamento
      FixedColor = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = suiDBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo do Or'#231'amento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data do Or'#231'amento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 261
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Vendedor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXPORTADO'
          Title.Caption = 'Exp'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Edit3: TEdit
      Left = 553
      Top = 84
      Width = 97
      Height = 21
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 208
    Width = 781
    Height = 121
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 15263976
    Enabled = False
    TabOrder = 2
    object RxLabel2: TRxLabel
      Left = 5
      Top = 30
      Width = 108
      Height = 13
      Caption = 'N'#186' do Or'#231'amento: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 5
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 259
      Top = 31
      Width = 70
      Height = 13
      Caption = 'Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 490
      Top = 5
      Width = 92
      Height = 13
      Caption = 'Valor dos Itens:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 490
      Top = 30
      Width = 112
      Height = 13
      Caption = 'Valor do Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 490
      Top = 55
      Width = 69
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel33: TRxLabel
      Left = 5
      Top = 55
      Width = 61
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel41: TRxLabel
      Left = 248
      Top = 58
      Width = 80
      Height = 13
      Caption = 'Q.de Vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel43: TRxLabel
      Left = 490
      Top = 80
      Width = 70
      Height = 13
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 6
      Top = 79
      Width = 29
      Height = 13
      Caption = 'Obs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 2
      Top = 100
      Width = 777
      Height = 19
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object Label9: TLabel
        Left = 2
        Top = 2
        Width = 142
        Height = 13
        Align = alClient
        Alignment = taCenter
        Caption = 'ITENS DO OR'#199'AMENTO'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object suiDBEdit1: TsuiDBEdit
      Left = 108
      Top = 55
      Width = 140
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'USUARIO'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit2: TsuiDBEdit
      Left = 108
      Top = 30
      Width = 71
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit3: TsuiDBEdit
      Left = 181
      Top = 5
      Width = 295
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NOME_CLIENTE'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit4: TsuiDBEdit
      Left = 108
      Top = 5
      Width = 71
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CODIGO_CLIENTE'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit5: TsuiDBEdit
      Left = 331
      Top = 31
      Width = 145
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PAGAMENTO'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit7: TsuiDBEdit
      Left = 605
      Top = 55
      Width = 165
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_TOTAL'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit8: TsuiDBEdit
      Left = 605
      Top = 5
      Width = 165
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_ITENS'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit9: TsuiDBEdit
      Left = 605
      Top = 30
      Width = 165
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VALOR_DESCONTO'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit41: TsuiDBEdit
      Left = 330
      Top = 55
      Width = 146
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COUNT_VENDAS'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit42: TsuiDBEdit
      Left = 605
      Top = 78
      Width = 165
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'SOMAVALOR_TOTAL'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit10: TsuiDBEdit
      Left = 108
      Top = 79
      Width = 368
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OBSERVACOES'
      DataSource = DM.Dts_orcamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      UIStyle = WinXP
      BorderColor = 6842472
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 329
    Width = 781
    Height = 152
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 3
    object suiDBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 779
      Height = 150
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DM.Dts_orcamento_itens
      FixedColor = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = suiDBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_PROD'
          Title.Caption = 'C'#243'd. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo de Barras'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 278
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Qnt'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end>
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 481
    Width = 781
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 4
    DesignSize = (
      781
      41)
    object BitBtn3: TsuiButton
      Left = 859
      Top = 0
      Width = 22
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ShowHint = True
      Caption = 'BitBtn3'
      AutoSize = False
      ParentShowHint = False
      ParentFont = False
      TabStop = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        0E030000424D0E030000000000003600000028000000110000000E0000000100
        180000000000D802000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBF
        BF00BFBFBF000000000000000000000000000000000000000000000000000000
        000000000000000000000000BFBFBF000000BFBFBF00BFBFBF000000BFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF00FFFF00FFFF00FFFFBFBFBFBFBFBF000000
        000000000000BFBFBF00BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF7F7F7F7F7F7F7F7F7FBFBFBFBFBFBF000000BFBFBF000000BFBFBF00BFBF
        BF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000BFBFBFBFBFBF00000000BFBFBF000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BF
        BFBF00000000BFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000000000000000BFBFBF000000BFBFBF00000000000000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00BFBFBF000000BFBFBF00000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000000000000000000000FFFFFF000000000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF000000FFFFFF000000000000000000000000000000FFFFFF000000
        BFBFBFBFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF00BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000BFBFBFBFBFBF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      ResHandle = 0
    end
    object suiButton3: TsuiButton
      Left = 503
      Top = 4
      Width = 130
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Reimprimir F8'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAE
        AC76736EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4
        716E6A1D19111E1B1419151117120DD6D5D3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF97
        97973A39332523192A261D2F2B22332E272D29242B2725514F4B9C9D9992938E
        B1B2ABF7F7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C2
        C4605F6039342D7B6342996A4BBB9D8BC0BFBCA8ABA858565018130D84837FBB
        BCB7ABAAA683827F5E5B560703008D8C89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7B9B92A2C2B695B39BCA64EF7E788DEC152CEA643B0752C5A1B0164402D8984
        7E727471514E4B3D3A38000000807C796D69642B27201D18114C4A45FFFFFFFF
        FFFFFFFFFFFFFFFFC3A38CB07321D5A237D3A839D7B443EBDE96E4CF70D8B65A
        8F471C5F2B123B1502291A12292827110D0C0A070696928E74706B2C29223C38
        2F0A0700FFFFFFFFFFFFEDEBE9673219671C009E5622B87A2DD6A541DFAF45DC
        AF3EDBC97DBFB56B764B1D3317081508030B08061411101915140906059D9995
        726F6A312C2435322A0E0B05FFFFFFFFFFFFFFFFFFFFFFFFFDFBFB622B0CCC81
        33C89536BC953C997C30624312332B1515140D0D0B0C1A17171B181719161519
        1413060302B5B2AE827F7C25211B37332C070400F4F4F4FFFFFFFFFFFFFFFFFF
        FFFFFF2C2E29151013462B15301F081710080C0B0C100E111512121B17161B17
        16191615171413151111050201CCC9C8D8D6D409050024201B3F3C38FFFFFFFF
        FFFFFFFFFFFFFFFFC8C6C56B67650D0A0A1717181413151B17181B1817151312
        1815141B1716171313181514201D1A302C263833296C665CEDE8E7B6B3B10F0B
        086D6B69FFFFFFFFFFFFFFFFFFFFFFFFCFCDCB75716E0D0A091915141A17161A
        17161B17161512121714131F1B192F2B25413C324F493C534C3C706A5CA49F97
        D6D2D0E7E3E3DFDBD9615E5DFFFFFFFFFFFFFFFFFFFFFFFFDCDBD98885820A07
        061815141713131713131C191736312A544D415F584969624F746D5B8F897FC5
        C1BEECE9EADCD8D8DEDAD9C3BFBCD7D4D2F3F3F3FFFFFFFFFFFFFFFFFFFFFFFF
        DFDEDB8A878405020219151425211E39342C4944387E75608D846DA7A08FBBB6
        AFC2BFBDCCC9C7D9D7D4E2E1DEE5E5E3625D52989792FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF2F1F0D5D2D116120B3E392F4C47395B544490897BBDB7AE
        BAB7B5CBC9C7DAD8D6E5E4E2E5E5E2E5E4E1E5E4E1F2F2F0827E7355524CFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DDDCA39E97767164BAB6B0E5
        E2E29E9C9934312FF3F2F0E7E7E4E6E5E2E6E5E3E7E6E4E8E7E5E9E9E6F0F0EE
        C3C0B93A362BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEB
        EBE9E6E6D5D1D0A3A09D6F6C666A6966A7A5A3EFEFECE9E8E6EAEAE7EBEBE8EC
        ECEAEDEDEBF0F0EEFBFBF9362F1FFBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF464342FCFCFAEDED
        EBEEEEECF0EFEDF1F1EFF2F2F0F3F3F1FFFFFF534D40D5D5D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2B2620FFFFFFF2F2F0F2F3F0F3F3F1F3F3F1F3F3F1F3F3F1F6F6F4D7D6D3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF736E64D3D2CEF7F7F6F3F3F1F3F3F1F3F3F1F3F3F1F3F3F1
        F2F2F0F9F9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B3AC949086FBFCFAF3F3F1F3F3F1F3
        F3F1F3F3F1F3F3F1F2F2F0F1F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
        EFF3F3F1F3F3F1F3F3F1F3F3F1F3F3F1F2F2F0F1F1EFFBFBFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF3F3F1F2F2F0F3F3F1F2F2F0F2F2F0F1F1EFF1F1EFF5F5F4FCFC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7F1F1EFF1F1EFF2F2F0F7F7F6FCFCFB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F7FDFDFDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
    object suiButton4: TsuiButton
      Left = 7
      Top = 2
      Width = 202
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Exportar P/ Or'#231'amento - F3'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFF
        FFFFFEFEFEFCFCFCFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAF9F9F9F4F4F3F0EFEDF1EFEDF6F6F5FAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFCFCFCFEFEFEF5F5F5EBEBEBE4E4E4E2E2E2E1E1E1E1E1E1E1E1E1E1
        E1E1E0E0E0E0E0E0E0E0E0DBDBDBCDCBC7C2BDB7C4BFB9D4D1D0DEDDDDE1E1E1
        E1E1E1E1E1E1E1E1E1E4E4E4EBEBEBF4F4F4DFDEDCBCB6AEA79E93A0978D9E96
        8B9E968B9E968B9E968B9E968B9E968B9C9389938A7F6C77683974593F71597F
        7D71968C829C938A9E968B9E968B9E968BA69D92BBB4ADDCDBDAD5CEC6A98D6D
        A5805BA37D54A47D55A47D55A47D55A47D56A37D55A17B5397724C735E3A2063
        4033A0792D96713056337D633E9A744EA27B53A37D54A37C54A6815BA98B6CD4
        CDC6DBD0C2C09C78D5A275D7A06FD7A070D7A171D7A171D7A172D6A071CA9769
        A983583D6C452F9E761CA76E21A9732E8E695A7048B3875BCF996AD59E6FD79F
        6FD5A276BA9773DED4CBE0D1C4CAA583DCA778DFA775DFA877DFA978DFA979DE
        A878D6A173B3895E63754D3A9B7515A86F039F5F039F5F23AB783B8E6876754C
        C69264D8A171DEA675DDA97AC5A27EE3DACEDDD1C2CDAA8BDEAB7FE1AC7EE1AD
        80E1AE81E2AF82DFAC80D3A27774825936956E20AD7B04A46602A26402A2640A
        A76B26AD7E3789639A895ED6A276DFAA7CDEAD80C9A786E1D6CADACEBED2B294
        E5B68CE9B98DEABA8FEABA90EABB91E7B98F9D9B71308F6825B1830AAA7103A7
        6C02A66B02A66B03A66B0DAB732CB18644855EB5A278E7B68CE6B78DCEAF91DD
        D1C4D7CABBD3B69AE1B590E5B892E5B994E5BA96E5BB96D5B6904289604EBA99
        34B18827A77B14B48103AC7403AC741BB28129AC8035B1894CAE8E7C9971DDB5
        8EE1B690D1B398D8CDBFD3C6B9D6BCA3E5BE9CEAC29FEAC3A1EAC4A2EBC4A3E8
        C4A390A47E7C9A7371946D24794C27C09404B17C06B27E2CAF8640815676966E
        8A9E77CCB793EAC19EE5BE9CD5BBA2D5CABCD0C4B7DAC2ACE8C5A6EECAABEECB
        FDEFCCAEEFCCAFEFCEB1EDCDB0EFCEB2E0C4A741895C2AC59D04B78408B98636
        B38D809C75ECC9ABEECBADEECBABEEC9A9E9C5A6D9C1ABD0C5B8CAC0B4DBC6B3
        E5C6ABEACBB0EBCDB2EBCEB4ECCFB5ECD0B7ECD0B7ECD0B7D8C2A8428D612BCB
        A607BE900CC0933AB692819F79E8CBB1EBCDB3EACCB1EACAAFE5C5AADCC6B2CB
        C0B4C8BEB3E0CBBAE8CDB5EFD4BBF0D5BDF0D6BFF0D7C1F0D8C3F1D9C3F0D8C3
        D7C7AF47946844D4B526CAA42BCCA74ABE9C84A580EDD4BDF0D6BEEFD5BCEED3
        BAE9CDB5E1CBB9C6BCB0C3BAB1E4D1C1ECD4BFF2DBC6F3DDC8F3DDCAF3DECBF4
        DFCDF4E0CDF2DDCBCFC5AF4C9C725ADDC342D5B646D7B859C4A589AB88F1DCC8
        F3DDC9F3DCC8F2DAC6ECD4BEE4D1C0C2B9AFC0B8B1E5D5C6E8D3C1EEDAC9EFDB
        CBEFDDCCEFDCCCEFDDCDEDDCCDE6D4C4AEB29756A9835DE0C94BDBC153DDC461
        C3A696B493EFDCCCF0DCCCEFDCCAEEDAC8E7D2BFE6D4C4BEB5AEBDB7B1E8DACC
        EBD9C9F3E1D2F3E2D3F1E1D2ECDCCDE7D7C8E2D2C2D2C1AF7E9C795EBF9F5CE3
        CD53E0C960E3CE65BD9CB2C5AAF4E4D6F4E3D5F4E2D3F2E0D1ECD9C9E9D9CBBF
        B7B1BDBBB6F3EBE3F5ECE4F9EFE8F8F0E8F3EBE4E7DFD4DED4C9D2C6B9ABAB94
        579E7567D7C05CE5D05CE5D073EAD85AAC83E1E6DAFAF2ECFAF2EBF9F1EAF8F0
        E8F5ECE4F4EBE3C2BDBAD2D1D0999897979696A2A2A1A2A2A29099923094614B
        957049936D44A57B6DDBC46CEBD966E9D871EAD962C9AA769E86A7A6A5A5A5A4
        A5A4A3A3A3A2A2A2A1989897969595CDCBCAFEFEFED6D6D6BEBEBEE2E2E2E2E2
        E2C0D1C76EB89964BE9C72CFB586E9DA81EFE17AEEDE75E3D05DC6A545976DB6
        BEB9C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C1C1C1D6D6D6FDFDFDFFFFFFF7F7F7
        B8B8B8E1E1E1EBEBEBEBEBEBD5E2DBB2D4C27CBF9E4EAC7E38A2703CA47264B6
        8EA3D1B9D0DED6E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E5E5E5F7F7F7FF
        FFFFFFFFFFFFFFFFE7E7E7BCBCBCB1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B4B4B4
        CECECEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton4Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 642
      Top = 4
      Width = 130
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = '&Fechar'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000FFFFFFFFFFFFFFFFFFFFFFFFFFF003770FFFFFFFFFFFFFFFFFFFFFFFF0037
        7770FFFFFFFFFFFFFFFFFFFFFF0037777770FFFFFFFFFFFFFFFFFFFF00377777
        7770FFFFFFFFFFFFFFFFFFF0377777333770000FFFFFFFFFFFFFFFF077777733
        3770000FFFFFFFFFFFFFFFF0773337333770000FFFFFFFFFFFFFFFF077333733
        3770000FFFFFFFFFFFFFFFF0773337333780000FFFFFFFFFFFFFFFF077333733
        B780000FFFFFFFFFFFFFFFF077333733B780000FF00FFFFFFFFFFFF077333777
        B780000F070FFFFFFFFFFFF077337733378000007700000FFFFFFFF077777733
        378000077777770FFFFFFFF077333733378000777777770FFFFFFFF077333733
        378000077777770FFFFFFFF077333733378000007700000FFFFFFFF077333733
        3780000F070FFFFFFFFFFFF0773337337780000FF00FFFFFFFFFFFF077333777
        7780000FFFFFFFFFFFFFFFF0773377778870000FFFFFFFFFFFFFFFF077777788
        7000000FFFFFFFFFFFFFFFF0777788700000000FFFFFFFFFFFFFFFF077887000
        0000000FFFFFFFFFFFFFFFF0887000000000000FFFFFFFFFFFFFFFFF00000000
        0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object ExcluirOr: TsuiButton
      Left = 361
      Top = 4
      Width = 130
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = '&Excluir Or'#231'amento'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 4
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        18000000000030090000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F6F6F7F0F0F1E5E4E5D8D6D6CDCC
        CDC7C6C8C6C7C9CBCBCCD4D2D2E3E1E2EFECEEF6F6F6F8F8F8F7F8F8F8F8F8F8
        F8F8F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F7F8F8EFEFEFD7D8DAB3B5C68A8AB46969A657569C53529A5253995A5B9B6E6F
        A09091ABAFAFB6D2D2D3EBEBEBF6F6F6F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F5F5F5DDDCE1A9A9C55657AA25259C
        11119B0A0BA30708A80708A90808A9090AA50E0F9F1A1A9737379B6C6C9CA9A8
        B2D6D6D6F1F1F2F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F9F8F8F8
        F7F8F4F4F4D2D2DF7777B62222A00A0BA4090AAF1111BD1515CC1515D91312D9
        1414D91A1AD41717C50E0EB2090AA81314A04141998A8AA4C7C8CAF0F0F0F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F6F5F6CFCFDF5B5CB20F0FA20A
        0AA82221C82F2EE92422F51515F50E0DF60B0BF61311F61D1CF72B2CF63A39F1
        3032D81010AF0B0AA525249B7B7AA1C3C3C7F2F2F1F9F8F8F9F8F8F9F8F8F8F8
        F8F8F8F8F6F6F7D6D6E65454B10C0CA31818B44443E53F3FF52F2FF81E1EF712
        11F70707F70304F70D0CF71917F82928F93837F84949F75454F12D2DC4090AA4
        1F1F9C7876A1CCCBCEF3F2F2F9F8F8F8F8F8F8F8F8F8F8F7E8E8EF7070BE0E0E
        A41717AF5454ED5150F83D3DF8302FF92120F81414F70C09F80A08F7110FF71A
        19F82828F83836F74A48F95757F76868F83838C60B0AA52A289B9796AEDEDDDE
        F8F8F8F7F8F8F8F8F8F6F5F6ACAAD91515A11313AB6566EE6363F75151F94243
        F93433F82525F81B1BF81515F81414F71919F82021F82C2CF83A3BF84949F857
        57F76969F97677F93232BE090BA345459CB5B6BFEFEFEFF8F8F8F8F8F8E7E6EF
        5051B20B0BA55251D97574F76666F85554F84747F83939F82D2DF82425F71F20
        F81F20F82324F92929F83333F83D3FF84B4BF7585AF86768F87776F77A79F31C
        1CAE15159F8080AADDDCDEF7F7F7F6F7F7BBBCE514159D2221B38281F87877F8
        6867F85959F84B4AF73F3FF73636F73030F72D2CF72D2CF8302FF83533F73D3D
        F74647F85050F85D5CF8696AF87575F88282F85252D60B0BA44546A0C0C0C4F4
        F3F4F5F5F96E6DBD0A0AA65F60D98484EF7573E06667DF595ADE4F4FDE4747DD
        4140DC3E3DDD3C3BDD3B3CDC3E3EDC4343DE4647DD4D4EDE5555DE5E5DDE6768
        E07171E07D7DEA7D7DF31312AC1D1D98A1A2BAECECECEDEDFC3E3EA80D0DA87E
        7FEF8C8ED9B2B2CAA6A6BFA3A3C1A2A2C1A3A1C2A4A2C2A4A2C2A3A2C2A3A3C1
        A2A3C2A4A2C2A2A1C2A3A2C1A4A2C1A4A4BFA6A5BFA5A4BD8282BD8585F32A2A
        BC0F0EA07978AEE4E3E4E2E2F82F2EA41C1BB28787F59595D9F2F2F5E9EAEAEA
        E9EAEAE9EAEAE9EAE9E9E9E9E9EAE9E9EAEAE9EAE9E9EAE9E9E9E9E9E9E9E9EA
        E9E9EAEAE9E9E7E7E7D5D5D58A8AB67F7FEF4A49D30808A85E5EA8DCDCDDDEDE
        F42828A21E1FB48080F69393D9F7F7F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7E0E0E0
        8B8BB97978EE5A5BDE0606A85454A5D9DADDDEDEF42828A21D1DB57678F68C8E
        D8F6F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8
        F9F7F8F8F8F8F8F8F8F8F8F7F7F8F8F8F8E0E0E08688B87374EE5A5ADE0707A7
        5455A7DADBDFDEDFF42828A21C1CB57172F58A8ADAF6F7F9F8F8F8F8F8F8F8F8
        F8F8F8F8F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F9F8F8F8F7F8F8F8
        F8F8F8F8F8ECEBEB8C8DBD6F70EE5858DF0706A75959AADFDFE3E6E8FA3233A8
        1516B06A6AF3797ADCB8B8E0BABADFBCBCDEBDBDDDBEBFDDC2C3DEC6C7DDC7C7
        DCC7C7DDC8C7DDC7C7DDC6C7DDC6C6DEC2C2DEBEBFDEBCBEDEBBBBDF8786D16F
        6EF14647D20808A86766B1E7E6EAF2F1FC4948AC0A09A96061EC6766F16261E2
        6564E26D6CE27777E28080E38C8CE49594E39B9BE49E9DE39F9FE49D9BE39896
        E49190E48887E37D7EE27574E36E6DE26C6BEC706FF72728BD0E0FA18C8CC2EF
        EEEFF7F7F98989CF0A0AA54344D36566F56668F86B6CF87677F78484F89192F8
        9FA0F8AAABF8B2B2F8B6B5F9B6B5F8B2B2F8ACAAF8A0A0F89796F98C8BF9807F
        F87676F76F6FF86B6BF21111AC1F1F9BC7C7E0F6F6F6F8F8F8DCDBF52222A213
        13AD6364F06666F66F6FF97C7DF88B8CF89B9DF7ACADF9B8B8F8C0BEF8C3C1F9
        C1C0F9BCBCF9B5B4F9AAAAF99E9EF89191F88383F87677F77171F84949D70B0B
        A55D5DB8E5E5EBF8F8F8F8F8F8F5F5FA6C6CC40A0BA33A3CCE6A6BF57272F87F
        80F79293F8A4A4F8B6B5F8C3C3F8CBCBF8CFCFF9CBCAF8C5C5F8B9BBF7AFAFF8
        A0A1F79395F88586F97879F86C6CF31817AF1817A2A9A9D5F3F4F4F8F9F7F8F8
        F8F7F8F8D8D8F12727A60B0AA74E4EDE7373F78385F99394F8A7A8F8BDBBF9CA
        C9F8D6D6F9D8D8F8D1D1F9C8C8F8BEBEF8B0B0F8A2A4F99394F88484FA7372F6
        2828BC0A0BA46C6DBDE9E9F1F8F8F8F8F8F8F8F8F8F8F8F8F6F7F9AAAADF1A1A
        A41010AB5252DF7A7BF79194FAA7A8F8BBBCF9CACAF8D8D8FADBD9F9D3D3FAC9
        C8F8BDBCF8B0B0F9A0A0F98A8BFA7171F53132C40A0AA73E3CABD8D7ECF6F6F7
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F6F5FB9796D51514A20E0EA84343D47272
        F39291F8B2B1FBC7C4FAD1D0FAD2D1FBCCCBFAC4C2F9B6B5FD9E9DFA8281F764
        63EC2929BF0B0BA82C2CA8C5C4E7F5F5F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F7F8F3F3FBA7A7DE2222A50A0CA61D1EB54C4CD86E6EEF7B7DF48B8B
        F39494F28F8FF38081F47373F36263EC393ACD1516AF0D0DA33F3FAFCCCCEEF5
        F5F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F6F6FB
        C4C3EB4E4DB61312A10C0CA91B1AB42F2FC53D3DCE3E3DD0403ED13938CC2A29
        C01313B00C0CA71B1BA07777C8E0DFF2F7F6F8F8F7F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F9F7F8F9F0F0FAB4B4E45A5AB5
        2728A61112A40E10A80C0EA80E0FA81010A81515A23636A77373C2CFCFF0F3F3
        F9F8F8F8F8F8F8F8F8F8F7F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F9F8
        F8F8F9F7F9F8F8F8F8F8F8F8F9F7F8F7F9F4F3FCDDDDF4C0C1E9ACADDDA3A4D7
        A4A5D7B1B2E1C9C9EAE7E8F9F6F5FBF8F8F8F8F9F7F7F7F8F8F8F8F7F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = ExcluirOrClick
      ResHandle = 0
    end
    object suiButton5: TsuiButton
      Left = 221
      Top = 4
      Width = 130
      Height = 32
      Hint = 'Insere um novo or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Caption = 'Gerar Venda - F4'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 5
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F9F7F8F8F8F8F8F8F8F8F9FAF8F8F8F8F7F7F8F8F9F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F4F1F9F8F7F7F8F8F7F8F8F8F8F8
        F8F8F8F8F8F8FAF7F8F7F3F1F9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F9F8F8E9DDCF987554CDBDADF9
        F8F7F8F8F8F8F8F8F8F8F8F9F8F8E7DBCF9A7755CDBDACF8F8F7F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F9F8F7E8DDCDAC83
        5C99632E855729D1C0B0F9F8F7F8F8F8F9F8F8E6DBCCAE875F97632E87582BCE
        BDACF9F8F7F8F8F8F8F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        E1D4C7AB825996622C986028986028835324D1C1B0F9F8F8EBE3D9A7825A9862
        2C986127986129845426CEBDAAFAF8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F4EBE3B592709D693498602898612898612986572ACDBDAD
        F8F1EAB593709D6A37986028986128986128855426CFBDACF9F8F7F7F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F7F8F9F8F9F7F8F8F8F2EBE2B694709D693698612898
        612797602886572AD1C1AFF3EAE0B694719C693598612897622697612886582A
        CEBCABF9F9F6F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F2
        EBB3916E9B6834986127986128986129825224D1C0AFF8F1E8B3916D9C693597
        6127966128966128835525CFBEADF9F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F4ECE4B694729D693698612998612898602885582ACEBC
        FDF8F2EBB795729F6B36986128986128986129835426CDBCA9F9F8F8F8F8F9F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F2EBE4B4916E9C6935986128
        98612897602885572AD1BFAEF3E9E1B793719D69359861299861289860298658
        2ACFBCADF9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9
        F2EBB4916D9D6834986128986128976128825223D1BFB1F8F2EAB3906E9C6935
        986028986128976128845626CEBDAAF9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F5EDE3BA957197612998612898612898602A7A522AE2
        D9D0F7F2E9B996709761299861289861289660287B4F23DCD1C6F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7FAF8F7DFCFBDAC81559661299761279861
        288A5724B69F89FCF8F6E2D5C4AC8154976128986227976028895625B19880F9
        F7F4F8F8F8F8F9F7F8F8F8F8F8F8F8F7F9F8F8F8FAF8F7E1D2C1A87D5198612B
        976128986128895625B59E89FCF8F6E3D3C3A97E5498612A9861289861298856
        25B39C85FBF8F6F7F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAF8F8DFD1BFAB
        805397622A986128996128895524B69E88FCF8F6DDCEBEAE815798612B976029
        9761288B5724B49E88FAF8F7F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F9F8
        F8DECFBCAA7F55986229986128976128895725B69F88FBF9F5E2D5C3AB815697
        612B976127976128895724B19980FBF8F4F6F7F8F8F8F8F9F8F9F8F8F8F8F8F8
        F8F8F8FAF8F7E2D4C2A87D5299602A986128996029885625B69E87FCF8F6E3D5
        C5AA805597612A986028986128885625B29983F9F8F7F8F8F8F8F8F8F8F8F8F8
        F8F8F8F9F7F8F8F8F9F8F7E0D0BFAA805497622A986128976128875623B6A088
        FAF9F5DECFBEAB805797612A976128986128895724B6A089FAF9F6F8F8F8F7F8
        F8F8F8F8F8F8F8F8F7F9F8F8F8F8F8F8F1E9E1A37C5697612C98612897612888
        5624B79F88FAF8F6F6F0EAA4805D97612C986128986128895624B29981F9F7F4
        F7F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F7F9F9F8F8F8F8F8F9F8F7DBC9B7AB7D
        5197602A885723B69F88FAF9F6F8F8F8FAF8F7DAC8B6AA7B4F976029895625B2
        9A84FAF8F6F8F8F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8
        F8F8F8FAF8F7DCCAB7926942B59C87FBF8F7F8F8F8F8F8F8F8F8F8FAF8F6DECC
        BB976C45B69F8AFBF8F7F7F8F8F8F8F8F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F7F8F8F8F8F8F8F8F8FBF8F7E3DAD2FAF8F6F8F8F8F9F8F8F8F8F8
        F7F8F9F9F8F8FAF8F6E0D7D0FAF8F5F7F8F8F7F8F8F8F8F7F8F7F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F7F8F8F8
        F8F8F8F8F8F7F8F8F8F8F8F8F8F8F7F9F7F8F8F8F8F8F8F8F8F8F8F7F9F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F7F8F8F8F8
        F8F8F8F8F8F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F9F9F8F7
        F8F8F7F9F7F8F7F9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton5Click
      ResHandle = 0
    end
  end
  object MSG_NR: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Nenhum Registro Foi Localizado !!!'
    Left = 682
    Top = 124
  end
  object MSG_ERRO: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Erro na Consulta'
    Left = 707
    Top = 124
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
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Pr'#233' Visualiza'#231#227'o do Or'#231'amento'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 3
    Margens.Top = 0
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 6.0 -  C'#243'pia de Demonstra'#231#227'o '
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o da Impressao'
    TitulodoRelatorio = 'Or'#231'amento'
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
    TamanhoQteLinhas = 44
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 355
    Top = 376
  end
end
