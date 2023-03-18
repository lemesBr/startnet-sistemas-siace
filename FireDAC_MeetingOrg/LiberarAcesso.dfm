object FormLibAcesso: TFormLibAcesso
  Left = 375
  Top = 68
  BorderStyle = bsDialog
  Caption = 'Libera'#231#227'o de Acesso aos Modulos do Sistema'
  ClientHeight = 562
  ClientWidth = 767
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 509
    Align = alClient
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object Panel3: TPanel
      Left = 657
      Top = 0
      Width = 122
      Height = 73
      BevelOuter = bvNone
      Color = 16575452
      Enabled = False
      TabOrder = 0
      object bDesmarcar: TAdvGlowButton
        Left = 4
        Top = 36
        Width = 102
        Height = 28
        Caption = 'Desm. Todos'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360900000000000036000000280000001800000018000000010020000000
          00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          B5390000A8D90101A8EB0000A5A60000B42FFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000009D0C00009C9B00009B580000
          B803FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000A40D0001
          B1E61542F0FF1545E8FF0E2CC8FF0307AAFB0000B18B0000A307FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000B90E00009FC40520C6FF0312ACFF0000
          9BD60000A4A20000AC1BFF00FF00FF00FF00FF00FF00FF00FF000000AC6B0E27
          D8FF1B4FFFFF194AFBFF1948F5FF1643E3FF091CB7FF0000A8CB0000C11EFF00
          FF00FF00FF00FF00FF000000BB1100009FC90A29D6FF0D3EF4FF0B39E6FF072E
          D4FF041CB9FF00009CDA0000AD19FF00FF00FF00FF00FF00FF000000ACC62554
          FCFF2356FFFF1D4FFFFF1C4DFEFF1A4BFBFF1947F0FF102DC6FF0000A9E70000
          BE35FF00FF000000BB110000A1CD0C2DDAFF1142F8FF0E3FF4FF0D3CF2FF0B39
          EEFF0A37E8FF041FBBFF00009DC600008404FF00FF00FF00FF000000BA670405
          B8F42957F9FF2456FFFF2051FFFF1F51FFFF1D4EFDFF1B4BF4FF1338CEFF0101
          A9F20000B1550000A4CC0F31DEFF1446FCFF1243F8FF1040F5FF0E3EF4FF0D3D
          F4FF0B3AEFFF0A36E5FF0212ACFF00009E5EFF00FF00FF00FF00FF00FF000000
          B7C92D5DFEFF2859FFFF2657FFFF2455FFFF2355FFFF2051FFFF1D4CF7FF153D
          D6FF0101A7FE1131DEFF184CFEFF1547F9FF1444F8FF1243F7FF1040F5FF0E3E
          F4FF0C3DF3FF0C3CF2FF072CD5FF00009DA8FF00FF00FF00FF00FF00FF000406
          C4F13C71FFFF2F61FFFF2B5BFFFF295AFFFF2859FFFF2758FFFF2455FFFF1D4E
          F8FF1B4BF3FF1C4EFDFF1B4AFDFF1848FBFF1546F9FF1444F8FF1243F7FF1040
          F5FF0F41F8FF0B34E7FF0104ABF30000AA5BFF00FF00FF00FF0000008D020000
          BBCC2239DAFF4275FFFF3769FFFF2F60FFFF2C5DFFFF2A5AFFFF285AFFFF2657
          FFFF2152FEFF1E4FFFFF1C4DFFFF1A4BFDFF1849FBFF1546F9FF1544F9FF1347
          FBFF0B29D9FF0000A1D50000B72AFF00FF00FF00FF00FF00FF00FF00FF000000
          C2060000BE7F080DBFF83B63F4FF4273FFFF3565FFFF2F60FFFF2B5CFFFF295A
          FFFF2859FFFF2354FFFF1F50FEFF1C4EFEFF1A4BFEFF1949FCFF164AFFFF0920
          CCFF0000A4B60000B90EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000C92C0000B1CA2338D7FF487AFFFF3A6BFFFF3162FFFF2D5E
          FFFF2A5AFFFF2758FFFF2354FFFF1F50FEFF1D4EFEFF1C4FFFFF091BC8FE0000
          B09B00008C04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000DA040000B37F0B10BFFB406CFBFF3768FFFF3262
          FFFF2E5FFFFF2A5BFFFF2758FFFF2455FEFF1D4FFBFF091AC6FF0000B0940000
          0001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000BA100001B6EF4273FFFF3A6AFFFF3565
          FFFF3262FFFF2E5FFFFF2A5AFFFF2657FEFF1E4EF8FF102DCAFF0000ACC10000
          8B04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000BF782740DFFF4576FFFF3D6DFFFF3969
          FFFF3565FFFF3262FFFF2D5EFFFF295BFFFF2555FEFF1C4CEFFF0A1AB8FF0000
          B884FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000EC050000B9E54D7DFFFF4675FFFF406FFFFF3D6E
          FFFF396AFFFF3A6BFFFF3565FFFF2C5CFFFF295AFFFF2252FDFF1947E3FF0308
          B0FC0000C43FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000C7572337D8FF5183FFFF4877FFFF4372FFFF406E
          FFFF3D6FFFFF243FE0FF4375FFFF3364FFFF2A5BFFFF2657FFFF1D4FF9FF143A
          D1FF0000AEE00000C20FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000C6BA4D76F8FF5280FFFF4B79FFFF4877FFFF4374
          FFFF2342E5FF0000AFD6131FC8FE4274FFFF3062FFFF2859FFFF2353FEFF1B4B
          F3FF0C23BFFF0000B99FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000D01D0F17CCFC6091FFFF5280FFFF4D7BFFFF497AFFFF3C69
          FAFF0000B9DF0000C30E0000BF761421CDFE4071FFFF2D5DFFFF2455FEFF1F4F
          FCFF1847E7FF040CB4FE0000C54DFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000D0723750E4FF5E8EFFFF5482FFFF507EFFFF4B7EFFFF0E1A
          CCFE0000D046FF00FF00FF00FF000000CB831729D2FE3B6DFFFF2859FFFF2051
          FFFF1B4AF8FF133AD3FF0000B0E50000C211FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000D0C06893FCFF6491FFFF5885FFFF5281FFFF3252EDFF0000
          C6A7FF00FF00FF00FF00FF00FF00FF00FF000000BF991D35DAFF3367FFFF2454
          FFFF1C4EFDFF1948F2FF0B24C3FF0000B19FFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000DF641D27D3FE719EFFFF6A9AFFFF5485FFFF0305C6F30000
          D61BFF00FF00FF00FF00FF00FF00FF00FF000000DC040000B5B52341E5FF2C60
          FFFF2053FFFF1C52FFFF1032E1FF0000B3EFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000E0540000D0D7202DD6FE2637DAFF0000CE79FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000C60D0000B6CE2246
          EBFF102ADCFF0103BCF10000BD970000C724FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000D23A0000C3960000C307FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000C4190000
          B6C80000B76D0000BB0DFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = bDesmarcarClick
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
      end
      object bMarcar: TAdvGlowButton
        Left = 4
        Top = 8
        Width = 102
        Height = 25
        Caption = 'Marcar Todos'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D06030000000000003600000028000000100000000F000000010018000000
          00000000000000000000000000000000000000000000FFFFFFFAFAFAE5E5E5CF
          CECEBCBDBEADA9AC787974758677C2BEC2CDCFCFE1E1E1F4F4F4FDFDFDFCFCFC
          FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEF9F7F7EFEFEFB4B5B20B66270A711CA4B8
          A8DFDEDFEEEEEEFEFEFEFFFFFFFEFEFEFDFDFDFDFDFDFDFDFDFEFEFEFDFDFDFF
          FFFFFFFFFF43874F138C2F14872F53985FFFFFFFFFFFFFFDFDFDFDFDFDFEFEFE
          FFFFFFFFFFFFFFFFFFFEFEFDFFFEFFFFFFFF649E6C048E291292321393310382
          1DF6F8F7FFFFFFFCFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F634
          8F4A008E2409933109902E0D9331008E256FB583FFFFFFFFFFFCFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFB659E74007F12008D2100902200881C3BA0561694340090
          2E00821BFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8F873B67D3AA4512B
          A64E5AB779E2F2E0FFFFFF1E983403972E008E1F63B177FFFFFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7D4AE0CA9
          32009129008115EBF1EEFFFEFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FDFDFDFDFDFEFEFEFFFFFFFFFFFF48BD610CA4370091212B9749FFFFFFFCFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFEFFF1F7
          EF27C54706982F00851A96CAA6FFFFFFFFFDFFFFFDFFFFFFFFFDFDFDFDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFCFFF8FFFFFFD1EFD627D34500902C008517EBF4F2
          FFFFFFFFFDFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFF
          FCFFFFFFC6EDCD2FDA54008F1F128836FFFFFFFFFEFFFDFDFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFDFFFDFFD5F7DB4AE465009916
          37944EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFFFAFFFCFFFDFFFCFDFA91EDA600A92387B994FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFFFFFFFF
          FFFFFFFFFFFF}
        TabOrder = 1
        OnClick = bMarcarClick
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
      end
    end
    object NxPageControl1: TNxPageControl
      Left = 0
      Top = 88
      Width = 767
      Height = 421
      ActivePage = NxTabSheet1
      ActivePageIndex = 0
      Align = alBottom
      Color = 16575452
      ParentColor = False
      TabOrder = 1
      Margin = 0
      Options = [pgBoldActiveTab, pgScrollButtons, pgTopBorder]
      Spacing = 0
      TabHeight = 25
      object NxTabSheet1: TNxTabSheet
        Caption = 'Cadastros'
        Glyph.Data = {
          76040000424D7604000000000000360000002800000016000000100000000100
          18000000000040040000120B0000120B00000000000000000000D7D6D59A9795
          9E9C9A9796949997959694929896949795949796949694929795949997959593
          929896949795939896949594929896949593929C9998918E8DDADADA0000F5EC
          E793898399908BE3D7D0D1C6BFF4E9E0DED3CCE7DCD4E1D6CFEADFD7E4D8D1D4
          C9C2F1E5DDDCD1CAE9DDD5DFD4CCEEE2DBDCD1CAF2E5DDADA39CDDCEC4C2C2C2
          0000FFFAF4211D1C2A2826CCC4BE393836A69F9B5C59575F5B58575452DDD4CE
          8E8986000000FFFFF847444374706D605D5BFFF7F04D4A48FFFFF90D0D0DD8CC
          C4C5C5C50000FFFCF72C2927353231D7D0CB323130A59F9C5451506C69675F5C
          5AE2DBD69893900E0E0EFFFFFF4A4846807C7A444240E9E2DD4B4847FFFFFF1B
          1B1ADCD0CBC5C5C40000FFFDF92D2A28343231E0D8D4FFFEFAFFFFFFFFFAF6FF
          FFFBFFFFFFD7D1CE9896930F0F0EFFFFFFFFFFFFFFFFFCFFFBF7FFFFFCFFFFFA
          FFFFFF1C1B1ADFD4CDC5C5C50000FFFEFB2D2B293E3C3A7B7775928F8C555352
          B6B1AF84817F101010CDC8C69C9A98181817B5B1AE0D0D0C7A7776B4B1AF403E
          3E6966654F4C4C302F2DE1D7D0C6C4C50000FFFFFD2C2B29403F3D6A68667E7C
          7A373535AAA8A6706E6C000000CECAC79D9C9A1C1A1BA8A5A3000000656462A8
          A8A51E1D1C4E4C4C2C2B29353433E2D8D3C5C5C50000FFFFFE2E2B2A413F3E6E
          6B6A82817E3B3B3AAFACA9737271000000D1CCCA9E9C9C1C1B1AACA8A7000000
          6A6867ABAAAA23222253525131302F363534E3DAD5C5C5C40000FFFFFF2D2C2B
          41403F6E6C6B8281813B3B3BAFADAC737372000000D1CECD9E9D9C1C1B1BACAA
          A8000000696967ABABAA222222545251313030363534E4DCD8C5C5C40000FFFF
          FF2E2D2B4240406F6D6C8282813C3C3BB0AEAD747373000000D2D0CF9D9D9D1C
          1C1BADABAA0000006A6A69ACABAB242322545352313030363535E6E0DAC5C5C5
          0000FFFFFF2E2C2C4241406F6E6D8382823C3C3BB0B0AE747373000000D2D2D0
          9E9E9D1C1C1CADACAB0000006B696AACABAB242323545453303130373635E8E1
          DCC5C6C50000FFFFFF302D2D4241406F6E6F8383823C3C3CB1B0B07474730000
          00D2D2D29F9E9E1C1C1CADADAC0000006B6A69ACACAB24242354545431313137
          3635EAE2DEC5C5C50000FFFFFF2F2E2D424141706E6E8383823C3C3DB2B0B074
          7474000000D3D2D29F9E9E1C1C1CADADAD0000006B6B69ACACAC242424555454
          313131373635EAE3DFC6C5C50000FFFFFF2F2E2D4241416F6E6E8383823C3C3C
          B1B0AF747473000000D2D2D19F9E9E1C1C1CADADAC0000006B6A6AACACAB2424
          23545454313131373635EAE3DFC5C5C50000FFFFFF2321213635346564627B79
          7930302FAAA8A76A696A000000CDCCCA9797960E0E0FA6A4A3000000605F5FA5
          A4A41615154848472323232A2A29E7E1DCC4C4C30000FFFCFAA7A4A1B0ADABC3
          C0BECBC8C7AEACABDDDAD8C5C3C18A8A8AECE7E5D6D4D1A1A09EDDDAD8898988
          C1BFBEDCDAD8A4A2A2B9B6B5AAA8A7ABA8A6EDE5E1D7D6D70000}
        PageIndex = 0
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelA: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox94: TDBCheckBox
            Left = 7
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Cadastro de Produtos'
            DataField = 'S01'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox95: TDBCheckBox
            Left = 7
            Top = 29
            Width = 190
            Height = 17
            Caption = 'Cadastro de Grupos'
            DataField = 'S06'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox96: TDBCheckBox
            Left = 7
            Top = 53
            Width = 190
            Height = 17
            Caption = 'Cadastro de Sub-Grupo'
            DataField = 'S02'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox97: TDBCheckBox
            Left = 7
            Top = 77
            Width = 190
            Height = 17
            Caption = 'Cadastro de Marcas'
            DataField = 'S03'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox98: TDBCheckBox
            Left = 7
            Top = 101
            Width = 190
            Height = 17
            Caption = 'Cadastro de Unidades'
            DataField = 'S05'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox99: TDBCheckBox
            Left = 7
            Top = 125
            Width = 190
            Height = 17
            Caption = 'Cadastro de Clientes'
            DataField = 'S11'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox100: TDBCheckBox
            Left = 7
            Top = 149
            Width = 190
            Height = 17
            Caption = 'Cadastro de Ag'#234'ncias'
            DataField = 'S07'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox101: TDBCheckBox
            Left = 7
            Top = 173
            Width = 190
            Height = 17
            Caption = 'Cadastro de Bancos'
            DataField = 'S09'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox102: TDBCheckBox
            Left = 7
            Top = 197
            Width = 190
            Height = 17
            Caption = 'Cadastro de Conta Banc'#225'ria'
            DataField = 'S08'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox103: TDBCheckBox
            Left = 7
            Top = 221
            Width = 190
            Height = 17
            Caption = 'Cadastro de Motivo Retorno'
            DataField = 'S10'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox104: TDBCheckBox
            Left = 7
            Top = 245
            Width = 190
            Height = 17
            Caption = 'Cadastro de Usu'#225'rios/Vendedores'
            DataField = 'S12'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox105: TDBCheckBox
            Left = 7
            Top = 269
            Width = 190
            Height = 17
            Caption = 'Cadastro de Fornecedores'
            DataField = 'S04'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox106: TDBCheckBox
            Left = 7
            Top = 293
            Width = 190
            Height = 17
            Caption = 'Cadastro de Plano de Contas'
            DataField = 'S13'
            DataSource = DM.DTS_Usuarios
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox107: TDBCheckBox
            Left = 7
            Top = 317
            Width = 190
            Height = 17
            Caption = 'Cadastro de Cond. de Pagto'
            DataField = 'S75'
            DataSource = DM.DTS_Usuarios
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox108: TDBCheckBox
            Left = 239
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Cadastro de Sec'#231#245'es'
            DataField = 'S77'
            DataSource = DM.DTS_Usuarios
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox109: TDBCheckBox
            Left = 239
            Top = 29
            Width = 190
            Height = 17
            Caption = 'Cadastro de Categorias'
            DataField = 'S78'
            DataSource = DM.DTS_Usuarios
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox110: TDBCheckBox
            Left = 239
            Top = 53
            Width = 190
            Height = 17
            Caption = 'Cadastro Grupo Tributac'#227'o'
            DataField = 'S76'
            DataSource = DM.DTS_Usuarios
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox111: TDBCheckBox
            Left = 239
            Top = 75
            Width = 190
            Height = 17
            Caption = 'Cadastro de Produto Similar'
            DataField = 'S79'
            DataSource = DM.DTS_Usuarios
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox112: TDBCheckBox
            Left = 239
            Top = 99
            Width = 190
            Height = 17
            Caption = 'Cadastro de Motivo de Acerto'
            DataField = 'S81'
            DataSource = DM.DTS_Usuarios
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox113: TDBCheckBox
            Left = 239
            Top = 123
            Width = 190
            Height = 17
            Caption = 'Cad. Locais de Estoque'
            DataField = 'S82'
            DataSource = DM.DTS_Usuarios
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox114: TDBCheckBox
            Left = 239
            Top = 147
            Width = 190
            Height = 17
            Caption = 'Cadastro de Cidades'
            DataField = 'S83'
            DataSource = DM.DTS_Usuarios
            TabOrder = 20
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox115: TDBCheckBox
            Left = 239
            Top = 171
            Width = 190
            Height = 17
            Caption = 'Cadastro de Estados'
            DataField = 'S84'
            DataSource = DM.DTS_Usuarios
            TabOrder = 21
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox116: TDBCheckBox
            Left = 239
            Top = 195
            Width = 190
            Height = 17
            Caption = 'Cadastro de Bairros'
            DataField = 'S85'
            DataSource = DM.DTS_Usuarios
            TabOrder = 22
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox117: TDBCheckBox
            Left = 239
            Top = 219
            Width = 190
            Height = 17
            Caption = 'Cadastro de Rotas/Zonas'
            DataField = 'S86'
            DataSource = DM.DTS_Usuarios
            TabOrder = 23
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox118: TDBCheckBox
            Left = 239
            Top = 243
            Width = 190
            Height = 17
            Caption = 'Cadastro Layouts Bancos'
            DataField = 'S87'
            DataSource = DM.DTS_Usuarios
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox119: TDBCheckBox
            Left = 239
            Top = 267
            Width = 190
            Height = 17
            Caption = 'Tela de Temas do Sistema'
            DataField = 'S88'
            DataSource = DM.DTS_Usuarios
            TabOrder = 25
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox120: TDBCheckBox
            Left = 239
            Top = 291
            Width = 190
            Height = 17
            Caption = 'Tela de Transportadoras'
            DataField = 'S89'
            DataSource = DM.DTS_Usuarios
            TabOrder = 26
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox121: TDBCheckBox
            Left = 239
            Top = 315
            Width = 190
            Height = 17
            Caption = 'Tabelas de Cst/Csoson'
            DataField = 'S90'
            DataSource = DM.DTS_Usuarios
            TabOrder = 27
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox122: TDBCheckBox
            Left = 519
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Tabelas de Cfpos'
            DataField = 'S91'
            DataSource = DM.DTS_Usuarios
            TabOrder = 28
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox123: TDBCheckBox
            Left = 519
            Top = 53
            Width = 190
            Height = 17
            Caption = 'Centro de Custos'
            DataField = 'S93'
            DataSource = DM.DTS_Usuarios
            TabOrder = 29
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox124: TDBCheckBox
            Left = 519
            Top = 29
            Width = 190
            Height = 17
            Caption = 'Cadastro de Bens'
            DataField = 'S92'
            DataSource = DM.DTS_Usuarios
            TabOrder = 30
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox125: TDBCheckBox
            Left = 519
            Top = 77
            Width = 190
            Height = 17
            Caption = 'Bens Utiliza'#231#227'o'
            DataField = 'S94'
            DataSource = DM.DTS_Usuarios
            TabOrder = 31
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox126: TDBCheckBox
            Left = 519
            Top = 101
            Width = 190
            Height = 17
            Caption = 'Consulta de Produtos'
            DataField = 'S80'
            DataSource = DM.DTS_Usuarios
            TabOrder = 32
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox148: TDBCheckBox
            Left = 519
            Top = 125
            Width = 190
            Height = 17
            Caption = 'Altera'#231#227'o de Produtos em Lote'
            DataField = 'S142'
            DataSource = DM.DTS_Usuarios
            TabOrder = 33
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox149: TDBCheckBox
            Left = 519
            Top = 149
            Width = 190
            Height = 17
            Caption = 'Lan'#231'amento de Aferi'#231#227'o'
            DataField = 'S143'
            DataSource = DM.DTS_Usuarios
            TabOrder = 34
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet2: TNxTabSheet
        Caption = 'Manut/Finan.'
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFADDE8EDBDDBEB93C8E572B9E599C1D8CBD6DBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFA8D0E369BCE241AD
          E226A7E841BAF854C1FC65C5FF76CFFF0C618B0552726AABC9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0590D11FB8FF33BFFF46C5FF55C8FF61
          CAFF6AC7FF78CDFF186B94205B75007AB7A7CADAFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF159DD82AC7FF33BDEB37A8CD3E9BBC54AFDF6CC9FF78CDFF
          196B941F5C780D91C9007DBAE1E8ECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          16BAE51EC1EA1B65933CB2D34EB8DC4393BD6DCEFF76CDFF176A921F5F7B149A
          D21099D00388C1FFFCFAFFFFFFFFFFFF0000FFFFFFFFFFFF15C6EA28E3FF3EE6
          FF45F1FF54EAFF63DFFF6CCCFF79CFFF1869901F617E1BA4DC1BA2D90299D7DB
          E4E9FFFFFFFFFFFF0000FFFFFFFFFFFF14D0EF27E7FF36EBFF44E9FF53E0FF5E
          D9FF60CFFF5CADDB15678D1E628120ACE621AAE20BA1DFDFE6E9FFFFFFFFFFFF
          0000FFFFFFFFFFFF04CEEC22C5DE31A3B73B82A22A77643B3F4A332C27331F14
          2C30301A5B7727B4EF26B0E811A7E6E0E6EAFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF324269539A2F41D20E3640454D6F85507D955291B53B83AE27B4
          EE29B2EB14AAE9E1E6E9FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFCFF0E96
          9058F1195AEE292DA1114BA8F269D3FF75D1FF479BD126B1E92AB2EA14AAE7E2
          E7EAFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD3E8DA47E20D54E22754E2285A
          EF23237B2164BCFF74CEFF4599CE26ADE42AADE414A5E0E3E8EAFFFFFFFFFFFF
          0000FFFFFFFFFFFFFDF8FF40C61B50DC1B54E32754E22857E82A55EC0A2A7649
          74CAFF469CD023A5DA27A5DB119BD6E6EAEDFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFAF6FF16BA9A58E51B56E62940BF113997954EBDA06CBEF8479DD21F9B
          CF239BD00D91CAE7ECEEFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFE8F6FF18C4
          8C4BD5154AD82334AE053F9DBF6DE3FF75D0FF479CD01990C21F91C40885BCEA
          EEF1FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFE0F8FF09BD8437BD0C37C11A27
          9F013180A14DB5E54BABDC318AC1137AA81686B6027BB0ECF0F2FFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFF5DB17319A30322A9101487004886B366C5FF
          61C0FA62C3FD61BAF53189BE006298EAF0F3FFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFF70B96B007F00008800006D002F699057A8DF6DB0DB7BB4DC91C0
          E2B7D7EFC0D6EAFBFCFCFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFB
          FFD5E1D8BAD6BB7FB081ECE5E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        PageIndex = 1
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelB: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox3: TDBCheckBox
            Left = 270
            Top = 217
            Width = 168
            Height = 17
            Caption = 'Manuten'#231#227'o de Faltas'
            DataField = 'S99'
            DataSource = DM.DTS_Usuarios
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 270
            Top = 240
            Width = 169
            Height = 17
            Caption = 'Cobran'#231'a'
            DataField = 'S100'
            DataSource = DM.DTS_Usuarios
            TabOrder = 25
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 270
            Top = 263
            Width = 188
            Height = 17
            Caption = 'Cob. - Remessa de T'#237'tulos'
            DataField = 'S102'
            DataSource = DM.DTS_Usuarios
            TabOrder = 26
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 270
            Top = 288
            Width = 188
            Height = 17
            Caption = 'Cob. - Retorno de T'#237'tulos'
            DataField = 'S103'
            DataSource = DM.DTS_Usuarios
            TabOrder = 27
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 270
            Top = 310
            Width = 188
            Height = 17
            Caption = 'Cob. - Gera'#231#227'o de Boletos'
            DataField = 'S104'
            DataSource = DM.DTS_Usuarios
            TabOrder = 28
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 270
            Top = 336
            Width = 188
            Height = 17
            Caption = 'Lanc. cheques a Receber'
            DataField = 'S105'
            DataSource = DM.DTS_Usuarios
            TabOrder = 29
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 558
            Top = 10
            Width = 188
            Height = 17
            Caption = 'Entrada de Leite'
            DataField = 'S107'
            DataSource = DM.DTS_Usuarios
            TabOrder = 30
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 558
            Top = 33
            Width = 188
            Height = 17
            Caption = 'Exporta para  Balan'#231'as'
            DataField = 'S108'
            DataSource = DM.DTS_Usuarios
            TabOrder = 31
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 558
            Top = 57
            Width = 188
            Height = 17
            Caption = 'Cad. de Contratos'
            DataField = 'S109'
            DataSource = DM.DTS_Usuarios
            TabOrder = 32
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox10: TDBCheckBox
            Left = 558
            Top = 81
            Width = 195
            Height = 17
            Caption = 'Contratos Gera'#231#227'o de Boletos'
            DataField = 'S110'
            DataSource = DM.DTS_Usuarios
            TabOrder = 33
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 558
            Top = 105
            Width = 188
            Height = 17
            Caption = 'Otica Fichas de Consulta'
            DataField = 'S111'
            DataSource = DM.DTS_Usuarios
            TabOrder = 34
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 558
            Top = 129
            Width = 188
            Height = 17
            Caption = 'Otica Consulta de Fichas'
            DataField = 'S112'
            DataSource = DM.DTS_Usuarios
            TabOrder = 35
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox42: TDBCheckBox
            Left = 7
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Compras - NF-e de Entrada '
            DataField = 'S19'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox43: TDBCheckBox
            Left = 7
            Top = 25
            Width = 202
            Height = 17
            Caption = 'Contas a Pagar - Lan'#231'amentos'
            DataField = 'S14'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox44: TDBCheckBox
            Left = 7
            Top = 49
            Width = 202
            Height = 17
            Caption = 'Contas a Pagar - Autoriza'#231#227'o'
            DataField = 'S16'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox45: TDBCheckBox
            Left = 7
            Top = 73
            Width = 202
            Height = 17
            Caption = 'Contas a Pagar - Baixas'
            DataField = 'S15'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox46: TDBCheckBox
            Left = 7
            Top = 97
            Width = 202
            Height = 17
            Caption = 'Ct. a Receber - Baixa T'#237'tulos'
            DataField = 'S17'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox47: TDBCheckBox
            Left = 7
            Top = 121
            Width = 202
            Height = 17
            Caption = 'Ct. a Receber - Baixa Cheques'
            DataField = 'S18'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox48: TDBCheckBox
            Left = 7
            Top = 145
            Width = 202
            Height = 17
            Caption = 'Ct. Rec.- Lanc. Avulso Credi'#225'rio'
            DataField = 'S101'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox49: TDBCheckBox
            Left = 7
            Top = 169
            Width = 202
            Height = 17
            Caption = 'Cont. Banc - Baixa Cheques Ret.'
            DataField = 'S26'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox50: TDBCheckBox
            Left = 7
            Top = 193
            Width = 202
            Height = 17
            Caption = 'Cont. Banc - Dep'#243'sito em Conta'
            DataField = 'S29'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox51: TDBCheckBox
            Left = 7
            Top = 217
            Width = 202
            Height = 17
            Caption = 'Cont. Banc - Retorno Cheques'
            DataField = 'S27'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox52: TDBCheckBox
            Left = 7
            Top = 241
            Width = 202
            Height = 17
            Caption = 'Cont. Banc - Saque em conta'
            DataField = 'S28'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox53: TDBCheckBox
            Left = 7
            Top = 265
            Width = 202
            Height = 17
            Caption = 'Caixa-Fat. (Caixa Registradora)'
            DataField = 'S25'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox54: TDBCheckBox
            Left = 7
            Top = 289
            Width = 202
            Height = 17
            Caption = 'Caixa - Entrada de Capital'
            DataField = 'S30'
            DataSource = DM.DTS_Usuarios
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox55: TDBCheckBox
            Left = 7
            Top = 313
            Width = 202
            Height = 17
            Caption = 'Caixa - Saida de Capital'
            DataField = 'S31'
            DataSource = DM.DTS_Usuarios
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox56: TDBCheckBox
            Left = 7
            Top = 337
            Width = 202
            Height = 17
            Caption = 'Caixa - Pag. D/ C Pedidos'
            DataField = 'S23'
            DataSource = DM.DTS_Usuarios
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox57: TDBCheckBox
            Left = 270
            Top = 5
            Width = 202
            Height = 17
            Caption = 'Vendas - Frente de Caixa '
            DataField = 'S22'
            DataSource = DM.DTS_Usuarios
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox58: TDBCheckBox
            Left = 270
            Top = 26
            Width = 202
            Height = 17
            Caption = 'Vendas - Or'#231'amentos'
            DataField = 'S20'
            DataSource = DM.DTS_Usuarios
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox59: TDBCheckBox
            Left = 270
            Top = 49
            Width = 202
            Height = 17
            Caption = 'Vendas - Pedidos'
            DataField = 'S21'
            DataSource = DM.DTS_Usuarios
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox60: TDBCheckBox
            Left = 270
            Top = 73
            Width = 202
            Height = 17
            Caption = 'Entrega de Pedidos'
            DataField = 'S32'
            DataSource = DM.DTS_Usuarios
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox61: TDBCheckBox
            Left = 270
            Top = 97
            Width = 202
            Height = 17
            Caption = 'Devol. / Can. de Pedidos'
            DataField = 'S24'
            DataSource = DM.DTS_Usuarios
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox62: TDBCheckBox
            Left = 270
            Top = 121
            Width = 202
            Height = 17
            Caption = 'Lanc. de Invent'#225'rio '
            DataField = 'S95'
            DataSource = DM.DTS_Usuarios
            TabOrder = 20
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox63: TDBCheckBox
            Left = 270
            Top = 145
            Width = 202
            Height = 17
            Caption = 'Acerto de Estoque '
            DataField = 'S96'
            DataSource = DM.DTS_Usuarios
            TabOrder = 21
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox64: TDBCheckBox
            Left = 270
            Top = 169
            Width = 202
            Height = 17
            Caption = 'Tranf. de locais de Estoque '
            DataField = 'S97'
            DataSource = DM.DTS_Usuarios
            TabOrder = 22
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox65: TDBCheckBox
            Left = 270
            Top = 193
            Width = 202
            Height = 17
            Caption = 'Pedido de Produtos em  Falta'
            DataField = 'S98'
            DataSource = DM.DTS_Usuarios
            TabOrder = 23
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox147: TDBCheckBox
            Left = 558
            Top = 153
            Width = 188
            Height = 17
            Caption = 'Resumo de Debitos'
            DataField = 'S141'
            DataSource = DM.DTS_Usuarios
            TabOrder = 36
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet3: TNxTabSheet
        Caption = 'Pesquisas'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007874684E848381DE666666676C6C6C51FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000030
          FF0B1547EFC0A7A5A3FFB4B2B1FF888787FE7070705BFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000027FF0D0A44
          FFC12E7CFFFF58AAEDFFF4F0EBFFB4B3B2FF69696975FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000024FF0E0B46FFC5337F
          FFFF56B6FFFF65D3FFFF6DBDF0FFC1BAB4FF858584BFFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000032FF100C46FFC93481FFFF57B6
          FFFF6BD2FFFF5DC0FFFF3C92FFFF3563DCE787837883FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000026FF130A42EBCD3685FFFF58B9FFFF6BD2
          FFFF5CBFFFFF4193FFFF1657FFE2002DFF26FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0086848065747580F4296CD4FF58B9FFFF6BD3FFFF5BBC
          FFFF3E91FFFF1453FFDF002DFF22FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00606060155C5C5E6457585B925153569C4D4F
          5183525354460000000371717157B2AFACFF9AA5A9FF58B8E7FF59BBFFFF3D8F
          FFFF1451FFDB0033FF1FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF007676760568696B82707278EEA3998BEDCCB490E4D8BD93DFC7B3
          95E4989593EE53555BD1585959E3B6B6B6FFFBF7F4FF92A2ABFF2C76DFFF0F4B
          F4D70031FF1BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007E7E7F076B6D70B79E978CF3EAC383E3F4C780DFF0C887E2F1CB92E4F1CB
          8EE5F1C179E4EACB9CEB6F7276FC9E9FA0FFC3C2C2FFC0BDB7FF5E688EE70029
          FF18FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007C7D8096A49A8CF3F5C982DDEDC684DCEBC582DCEBC381DCEAC17CDDEBC4
          82DFF0CF9DE5F1CD93E7F3C988E86E7074FD5D5E5FEE828181828B8A8475FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008081
          812E868687F8F2CE8BDDEFCC8DDAEDCC8FDAEDCC8FDAEDCB8DDAECC989DBEBC6
          84DCEABF7ADDEECD96E4F0CD94E7E7C99EED4F5256C0FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008182
          848EBAA98BEBF4D595D9EFD399D9EFD49BD8EFD49BD8EFD49AD8EECF96D9EDCC
          8EDAECC888DBEBC27CDCF1D3A5E6F2C57FE38C8C8CFA51515225FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008385
          89CAE0C695DFF5DBA6D8F3DBA7D7F5DCA9D6F3DCA8D7F1DAA3D7F1D6A1D7EFD4
          9AD8EDCC92DAECC888DBEDC98EE0F3CF94E5B8A991F35050535FFF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008687
          8CE0EFD6A1DAF5E3B3D9F6E7BEDAF9ECC5DBF6E8BFD9F5E2B5D7F3DDA9D6F1D7
          A1D7EFD49AD8EDCC8EDAECC885DCF4D49EE5C7B392F054545776FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C8D
          92D3E7D3A3DBF8EBC6DCFBF2D4DFF9EECCDBF9EEC8D8F7E9BFD6F5E5B7D6F3DD
          A9D6F1D69ED7EECF94D9ECC987DBF4D39BE3B9AB8EF157595B69FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C9D
          9FA4C3B797E4FFF3D3DDFBF7E1E4FCFAEEECFDFCEEEAFAEFCCD8F7EBC3D8F5E3
          B1D6F1D9A3D7EFD498D8EDCA8EDBF7D092E0948E87F85C5D5E39FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A3A3
          A54A99978EF5FFF8D2DBFDFBE8E5FFFEF8F0FDFDF5EDFBF4D6DAFAEFCCDAF5E3
          B5D6F3DBA6D6EFD49AD8F1D194DBE7C893E46B6E72DD61616103FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF
          FF01A1A1A4C4BDB6A0E7FFFFE4DFFDFDECE5FEFCEAE4FBF6DDDEFBF1CFDBF5E3
          B5D6F4DDA9D6F2D59AD8F4D291DC918F89F77172725CFF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00CACACB20A2A2A5E4BAB4A2E8FFFFDFDAFFFBDDDCFDF3D4DAF8EABFD6F9E4
          B0D5F8DFA4D7EFD29BDD97928BF56F70729BFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00D2D2D222ABABADC9989691F4BFB89FE2E2D4ACDBEAD9ACDAD7C5
          9EE0B2A891E9818283F67B7C7D8397979802FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0082828202ACADAE55A0A0A1AC8F9094D9898A8EE28486
          8ACA8181848E88898928FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        PageIndex = 2
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelC: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox127: TDBCheckBox
            Left = 7
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Bancos - Controle Anal'#237'tico'
            DataField = 'S33'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox128: TDBCheckBox
            Left = 7
            Top = 29
            Width = 190
            Height = 17
            Caption = 'Bancos - Controle Espec'#237'fico'
            DataField = 'S34'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox129: TDBCheckBox
            Left = 7
            Top = 53
            Width = 190
            Height = 17
            Caption = 'Caixa - Controle Anal'#237'tico'
            DataField = 'S35'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox130: TDBCheckBox
            Left = 7
            Top = 77
            Width = 190
            Height = 17
            Caption = 'Caixa - Controle Espec'#237'fico'
            DataField = 'S36'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox131: TDBCheckBox
            Left = 7
            Top = 101
            Width = 190
            Height = 17
            Caption = 'Cheques - Cheques a Baixar'
            DataField = 'S37'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox132: TDBCheckBox
            Left = 7
            Top = 125
            Width = 190
            Height = 17
            Caption = 'Cheques - Cheques Baixados'
            DataField = 'S38'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox133: TDBCheckBox
            Left = 7
            Top = 149
            Width = 190
            Height = 17
            Caption = 'Cheques - Cheques Retornados'
            DataField = 'S39'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox134: TDBCheckBox
            Left = 7
            Top = 173
            Width = 190
            Height = 17
            Caption = 'Cheques - Cheques Extornados'
            DataField = 'S51'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox135: TDBCheckBox
            Left = 7
            Top = 197
            Width = 190
            Height = 17
            Caption = 'Comiss'#245'es - Pedidos'
            DataField = 'S49'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox136: TDBCheckBox
            Left = 7
            Top = 221
            Width = 190
            Height = 17
            Caption = 'Comiss'#245'es - Extorno de Pedidos'
            DataField = 'S50'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox137: TDBCheckBox
            Left = 7
            Top = 245
            Width = 190
            Height = 17
            Caption = 'Contas a Pagar - Geral'
            DataField = 'S40'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox138: TDBCheckBox
            Left = 7
            Top = 269
            Width = 190
            Height = 17
            Caption = 'Contas a Pagar - Fornecedores'
            DataField = 'S47'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox139: TDBCheckBox
            Left = 7
            Top = 293
            Width = 190
            Height = 17
            Caption = 'Contas a Pagar - Pl. de Contas'
            DataField = 'S48'
            DataSource = DM.DTS_Usuarios
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox140: TDBCheckBox
            Left = 7
            Top = 317
            Width = 190
            Height = 17
            Caption = 'Contas a Receber - Credi'#225'rio '
            DataField = 'S41'
            DataSource = DM.DTS_Usuarios
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox141: TDBCheckBox
            Left = 263
            Top = 5
            Width = 190
            Height = 17
            Caption = 'Contas a Receber - Cheques'
            DataField = 'S37'
            DataSource = DM.DTS_Usuarios
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox142: TDBCheckBox
            Left = 263
            Top = 27
            Width = 190
            Height = 17
            Caption = 'Estoque - Produtos no Estoque'
            DataField = 'S42'
            DataSource = DM.DTS_Usuarios
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox143: TDBCheckBox
            Left = 263
            Top = 51
            Width = 190
            Height = 17
            Caption = 'Vendas - Or'#231'amentos'
            DataField = 'S43'
            DataSource = DM.DTS_Usuarios
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox144: TDBCheckBox
            Left = 263
            Top = 75
            Width = 190
            Height = 17
            Caption = 'Vendas - Pedidos'
            DataField = 'S44'
            DataSource = DM.DTS_Usuarios
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox145: TDBCheckBox
            Left = 263
            Top = 99
            Width = 190
            Height = 17
            Caption = 'Vendas - Registro de Pedidos'
            DataField = 'S45'
            DataSource = DM.DTS_Usuarios
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox146: TDBCheckBox
            Left = 263
            Top = 123
            Width = 190
            Height = 17
            Caption = 'Vendas - Pedidos Cancelados'
            DataField = 'S46'
            DataSource = DM.DTS_Usuarios
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet4: TNxTabSheet
        Caption = 'Relat'#243'rios'
        Glyph.Data = {
          0E060000424D0E06000000000000360000002800000016000000160000000100
          180000000000D805000000000000000000000000000000000000F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9FAFAFAFCFCFCFCFCFCF6F5F4E2E2E3CBCB
          CBAFAFAFC7C7C7FCFCFCF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F80000F7F8
          F7F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDFAFAFAEAEAEAD4D4D4B8B7B7A4A4A49D
          9F9F9FA2A29B9D9DA0A1A1F0F0F0FAFAFAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          0000F8F7F8F8F8F8FBFBFBF8F8F8E6E6E7CBCBCBB1B1B1A1A1A29D9FA0A1A3A4
          9A9D9D83817F73645C795C4A6C5D53CECFD0FCFDFDF7F8F8F8F8F8F8F8F8F8F8
          F8F8F8F80000F8F8F8F9FAF9CCCCCCA7A7A7A0A19F9EA1A19EA1A3908E8F8177
          737A655A85665286614D9D725B9E715884624E999897F1F2F2FAFBF9F7F7F8F8
          F8F8F8F8F8F8F8F80000F8F8F8FDFDFDDFE3E59A9C9B8A88857B706B775E5087
          604DA3765D8A634D3823180000005E4335A5775E9C6E5475655DCED0D1FEFDFE
          F8F8F8F7F8F8F8F8F8F8F8F80000F9F9F9F2F2F08C7E737D6050956D56A5795F
          FD80668F6953321F140F0C0A9396977777780000007D5E4AAA7D638562509C9A
          9BF4F5F5FAF9F9F7F8F8F8F8F8F8F8F80000F8F9F9FBFBFB947461AB775CB17F
          668C68532F2017342E2E808081F1F3F2E1E2E2B3B4B3939595000000A07762AB
          78607C6D65CFD2D3FEFDFDF8F8F8F8F8F8F8F8F80000F8F8F8FFFFFFEDE9E6A1
          77606145372C2523454041ACA9AAFFFFFFFCFCFCFEFEFEF1F0F19E9E9E6D6C6D
          22120CB6866E8A6957A0A0A0F6F6F6F8F8F8F8F8F8F8F8F80000FBFBFBE9E9E9
          8C8B8C413A3A5147487B7676F3F2F2FFFFFFF8F8F8F8F8F7F8F7F8FAFBFAFFFF
          FF969090302C2D67493ABC896E80716AD5D7D9FEFEFEF7F7F7F8F8F80000FFFF
          FF5F5D5D3A3433615B5BDDDBDBFFFFFFF9FBFBF7F7F8F8F8F8F8F8F8F8F8F7F8
          F8F8F9F8F8FFFFFFB3AEAF19110EA07761956F5FA6A8A9F8F8F8F9F9F9F8F8F8
          0000FEFDFEE5E6E5C5C5C5FFFFFFFEFDFEF6F8F8F8F8F7F8F8F8F8F8F8F8F8F8
          F8F8F8F7F8F8F9F8F7F9F8F8FFFFFFAEABAD36231CC8977E7A6F69D9DADCFDFD
          FDF7F7F70000E2E2E2BFBEBFF3F3F3FEFEFEF9FAF9F7F7F7F8F8F8F7F8F8F6F8
          F8F8F8F8F8F8F8F7F8F7F7F7F8F7F8F7F6F8F8FFFFFF8C8A8C7451429E7B69AB
          FDADF9F9F9F9F8F90000FAFAFAFEFEFEDCDCDCCBCACAEBECEBFEFEFEF8F8F8F7
          F8F7F7F8F8F8F8F8F8F8F8F8F8F8F7F8F7F7F8F8F8F8F8F8F8F8FFFFFF68605D
          C2937E79706ADDDFE0FCFCFB0000F8F8F8F8F8F8FBFBFBFBFBFBDFDFDFC5C5C6
          FBFAFAFDFCFDF9F8F7F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8F8F8F8F8FBFB
          FBF5F9FB735548A47F70AEAFB0F9F8F90000F8F8F8F8F8F8F8F8F8F8F8F8FBFB
          FBF7F6F7D0D0D0D8D3D0FFFFFFF6F8F8F7F8F8F8F8F8F8F8F8F7F8F8F5F7F7FA
          F9F9FEFDFDFFFFFFCBC6C2C5947DACA39EFCFEFE0000F8F8F8F8F8F8F8F8F8F8
          F8F8F7F8F8F9F8F8FFFFFFAB9F9AD3C3BCFFFFFFF9F8F8F7F8F8FBFBFBFFFFFF
          FFFFFFFFFFFFD6D6D6A09F9F5C5B5C6B4E42A78475FAFCFC0000F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F7F8F7F8F7F9FFFFFFAA8373D3BFB5FFFFFFFFFFFFE9E8
          E8B8B8B87371713934353731324B43436C64646C605CC0A294ECEAE90000F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F7F8FBFDFEE0D5D0B388767E787644
          4242342D2E474142574F4F6154566F6363B1A6A5B9B2B3FBFBFAFFFFFFF9FAFA
          0000F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F7F7F8F8FFFFFFBEA299
          9B7E768981828982838C8081AFA4A5E9E0E1FFFFFFDED3D4383236FFFFFFF9F9
          F9F7F8F80000F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F8F7F8F7F9F9
          FAF4F1F1EDE2DED0D1D0CFD0D0DDDBDBDFD4D4BCB2B39686868577763F3739D4
          D4D3FCFCFCF8F8F80000F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F7F8F7
          F8F7F7F7F8F8FAF9F9FBFBFCFDFCFDFDFDFFFFFF938E8E9F9595A09898ABA5A5
          AFABABEEEFEEF9F9F9F8F8F80000F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F7F8F8F8F7F8F8F8F8F7F7F8F8F7F8F7F7F8F8F7F8FBFBFBE3E1E1D0CECFEEEF
          EFFDFEFEFFFFFFF9FAF9F7F7F8F8F8F80000}
        PageIndex = 3
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelD: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox66: TDBCheckBox
            Left = 10
            Top = 10
            Width = 168
            Height = 17
            Caption = 'Relat'#243'rios de Bancos'
            DataField = 'S52'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox67: TDBCheckBox
            Left = 10
            Top = 34
            Width = 168
            Height = 17
            Caption = 'Relat'#243'rios de Caixa'
            DataField = 'S53'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox68: TDBCheckBox
            Left = 10
            Top = 58
            Width = 168
            Height = 17
            Caption = 'Relat'#243'rios de Cheques'
            DataField = 'S54'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox69: TDBCheckBox
            Left = 10
            Top = 82
            Width = 168
            Height = 17
            Caption = 'Relat'#243'rios de Comiss'#245'es'
            DataField = 'S60'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox70: TDBCheckBox
            Left = 10
            Top = 106
            Width = 168
            Height = 17
            Caption = 'Relat'#243'rios de Compras'
            DataField = 'S55'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox71: TDBCheckBox
            Left = 10
            Top = 130
            Width = 215
            Height = 17
            Caption = 'Relar'#243'rios de Contas a Pagar'
            DataField = 'S58'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox72: TDBCheckBox
            Left = 10
            Top = 154
            Width = 215
            Height = 17
            Caption = 'Relat'#243'rios de Contas a Receber'
            DataField = 'S59'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox73: TDBCheckBox
            Left = 10
            Top = 178
            Width = 215
            Height = 17
            Caption = 'Relat'#243'rios de Estoque'
            DataField = 'S56'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox74: TDBCheckBox
            Left = 10
            Top = 202
            Width = 215
            Height = 17
            Caption = 'Relatorio de Vendas'
            DataField = 'S57'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox75: TDBCheckBox
            Left = 10
            Top = 226
            Width = 215
            Height = 17
            Caption = 'Relatorio de Vendas'
            DataField = 'S57'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox76: TDBCheckBox
            Left = 10
            Top = 250
            Width = 215
            Height = 17
            Caption = 'Relatorio de Recibos'
            DataField = 'S124'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox77: TDBCheckBox
            Left = 10
            Top = 274
            Width = 215
            Height = 17
            Caption = 'Relatorio do Indea'
            DataField = 'S125'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox78: TDBCheckBox
            Left = 10
            Top = 298
            Width = 215
            Height = 17
            Caption = 'Relatorio Gr'#225'ficos'
            DataField = 'S126'
            DataSource = DM.DTS_Usuarios
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox79: TDBCheckBox
            Left = 10
            Top = 322
            Width = 215
            Height = 17
            Caption = 'Relatorio - Etiquetas Zebra'
            DataField = 'S127'
            DataSource = DM.DTS_Usuarios
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox80: TDBCheckBox
            Left = 10
            Top = 346
            Width = 215
            Height = 17
            Caption = 'Relatorio - Etiquetas geral'
            DataField = 'S128'
            DataSource = DM.DTS_Usuarios
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox81: TDBCheckBox
            Left = 266
            Top = 9
            Width = 215
            Height = 17
            Caption = 'Relatorio - Etiquetas Argox'
            DataField = 'S129'
            DataSource = DM.DTS_Usuarios
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet5: TNxTabSheet
        Caption = 'Configua'#231#245'es'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000000000000000000000000000000000009090908C8C8C
          F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF8586867B7C7CCECECE929292FCFCFB8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF868686989898EEEEEE7B7C7CFAFAFA979797
          FCFCFB959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878888D3D3
          D3FCFCFB9A9A9A808080FFFFFFFFFFFF9E9E9EFCFCFB969696FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF888989D2D2D2FCFCFBC5C5C5808181FFFFFFFFFFFFFFFFFF
          FFFFFF9E9E9EFCFCFB969696FFFFFFFFFFFFFFFFFF898A8AD3D3D3FCFCFBBBBB
          BB828383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EFCFCFB9594949D
          5235888787D3D5D5FCFCFBB6B6B6848585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9D9B9BECD0908C3A13BCB6B0FCFCFBABADAF858686FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5538914018D7
          D7D4CDD1D5B4B4B38A8A89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF1EFEE8485867F7F7FD8D7D7CBCED2AEA9A6721C19D9AD93FFFEFAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB98E7A84432AA5A6A6D3D4D4CED1D4C0
          C1BF6C120E8D4937FFE3BBF1CD7AFFFDFAFFFFFFFFFFFFFFFFFFFFFFFFFEFCFC
          A14913612B015D61667E7E7ED4D5D7838381D5AB94FFE3BBF1CD7AFFE3BBF1CD
          7AFFFEFBFFFFFFFFFFFFFFFFFFC5893D9F642E8E4F02413C38909193B2B2B287
          8888FEFDFCF1CD7AFFE3BBF1CD7AFFE3BBF1CD7AFFFDF7FFFFFFFAECC1E6AD29
          BCA486B18538A36913ADACAC7A7B7BEEEEEFFFFFFFFFFEFBF1CD7AFFE3BBF1CD
          7AFFE3BBFEE29AFBF6F0FCF4DCFDF8EAFFFFFFEFDCB0D2901CA59782797A7BFF
          FFFFFFFFFFFFFFFFFFFEFBF1CD7AFFE3BBF1CD7AEBC579BF8347FFFFFFFEFBF1
          FFECA8DBA131EAC170BA852EDEDFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBF1CD
          7AEBC77EBF7F3D89321BFFFFFFFBEEC9CD962FCC9532CB9436EBE1D2FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF5C48B4B8D3A24D2B4B4}
        PageIndex = 4
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelE: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox29: TDBCheckBox
            Left = 5
            Top = 10
            Width = 183
            Height = 17
            Caption = 'Configura'#231#245'es da Empresa'
            DataField = 'S61'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox30: TDBCheckBox
            Left = 5
            Top = 34
            Width = 183
            Height = 17
            Caption = 'Configura'#231#245'es do Sistema'
            DataField = 'S62'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox31: TDBCheckBox
            Left = 5
            Top = 57
            Width = 183
            Height = 17
            Caption = 'Liberar Acesso a Usuarios'
            DataField = 'S73'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox32: TDBCheckBox
            Left = 5
            Top = 81
            Width = 204
            Height = 17
            Caption = 'Imp. Fiscal - Relat'#243'rios Fiscais'
            DataField = 'S63'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox33: TDBCheckBox
            Left = 5
            Top = 105
            Width = 204
            Height = 17
            Caption = 'Imp. Fiscal - Inicializa'#231#227'o'
            DataField = 'S64'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox34: TDBCheckBox
            Left = 5
            Top = 129
            Width = 228
            Height = 17
            Caption = 'Imp. Fiscal - Leitura da Mem. Fiscal'
            DataField = 'S65'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox35: TDBCheckBox
            Left = 5
            Top = 153
            Width = 204
            Height = 17
            Caption = 'Imp. Fiscal - Infor. da Impressora'
            DataField = 'S66'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox36: TDBCheckBox
            Left = 5
            Top = 177
            Width = 204
            Height = 17
            Caption = 'Imp. Fiscal - Outras Rotinas'
            DataField = 'S67'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox37: TDBCheckBox
            Left = 5
            Top = 201
            Width = 204
            Height = 17
            Caption = 'Reemiss'#227'o - Or'#231'amentos'
            DataField = 'S68'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox38: TDBCheckBox
            Left = 5
            Top = 225
            Width = 204
            Height = 17
            Caption = 'Reemiss'#227'o - Pedidos'
            DataField = 'S69'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox39: TDBCheckBox
            Left = 5
            Top = 249
            Width = 204
            Height = 17
            Caption = 'Reemiss'#227'o - Duplicatas'
            DataField = 'S70'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox40: TDBCheckBox
            Left = 5
            Top = 273
            Width = 228
            Height = 17
            Caption = 'Autoriza'#231#227'o de Venda Para Clientes'
            DataField = 'S72'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox41: TDBCheckBox
            Left = 5
            Top = 297
            Width = 204
            Height = 17
            Caption = 'Hist'#243'rico do Cliente'
            DataField = 'S71'
            DataSource = DM.DTS_Usuarios
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox82: TDBCheckBox
            Left = 5
            Top = 321
            Width = 215
            Height = 17
            Caption = 'Importa'#231#227'o da tabela AbcFarma'
            DataField = 'S130'
            DataSource = DM.DTS_Usuarios
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox87: TDBCheckBox
            Left = 5
            Top = 345
            Width = 215
            Height = 17
            Caption = 'ECF - Outros'
            DataField = 'S135'
            DataSource = DM.DTS_Usuarios
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox88: TDBCheckBox
            Left = 269
            Top = 9
            Width = 215
            Height = 17
            Caption = 'ECF - Outros'
            DataField = 'S135'
            DataSource = DM.DTS_Usuarios
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox89: TDBCheckBox
            Left = 269
            Top = 33
            Width = 215
            Height = 17
            Caption = 'Imp. Fiscal - Download MFD'
            DataField = 'S136'
            DataSource = DM.DTS_Usuarios
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox90: TDBCheckBox
            Left = 269
            Top = 57
            Width = 236
            Height = 17
            Caption = 'Imp. Fiscal - Converte MFD em  MDB'
            DataField = 'S137'
            DataSource = DM.DTS_Usuarios
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox91: TDBCheckBox
            Left = 269
            Top = 81
            Width = 236
            Height = 17
            Caption = 'Configura'#231#227'o do Leitor Serial'
            DataField = 'S138'
            DataSource = DM.DTS_Usuarios
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox92: TDBCheckBox
            Left = 269
            Top = 106
            Width = 236
            Height = 17
            Caption = 'Gerenciamento da NF-e'
            DataField = 'S139'
            DataSource = DM.DTS_Usuarios
            TabOrder = 19
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox93: TDBCheckBox
            Left = 269
            Top = 128
            Width = 236
            Height = 17
            Caption = 'Configura'#231#227'o da NF-e'
            DataField = 'S140'
            DataSource = DM.DTS_Usuarios
            TabOrder = 20
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet6: TNxTabSheet
        Caption = 'Outras Rotinas'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          F7F7F7D7D5D6D4D6D66FAEC6387FAF4B85AE4A86AF4B86AD4B86AE4A85AE4887
          B2BAC4CBCECCCAE9E9E9FFFFFFFFFFFFCBCBCBC7C9C7A6A4A2ACA2A14B8DB24D
          BBD052BBD051BAD050BAD050BAD049BDD373ACB8A69B98A2A3A2FFFFFFFFFFFF
          C0C1C1E1E4E2EFF1F1FAF0F16DA9C555EDF55DF6FB60F5FA60F5FA62F5FA59F5
          FB90EFF2E5D9D9BFBFC0FFFFFFFFFFFFD8D8D4C1C1C2D0D2D5CAD2D73BA2CB29
          E2FB41E6F940E4F933D8F42EE3FD20EFFF77DAE1CABCBBC9C9C9FFFFFFFFFFFF
          E5CA94B58461C7936E6E8B8F1C9BC3339BC34CCBDE35C4DF1B92C51896CE2CCD
          F6D4E0E5EDECEBF8F8F8FFFFFFF3D78FD3A378DBB182CF9556C37B31AB611B2C
          8DB26AC9E794C8DB5C98B93C90C0F9F9FAFFFFFFFFFFFFFFFFFFFDF4D0DDB784
          E4C9A3DAB471D1A250C78929B46C08679A8EE3E1E8F6F2EFC0BBBE837868EEE0
          D3FFFFFFFFFFFFFFFFFFF4DB8FE8D5B6E6C989DFBD67D7AE40CFA236CE9B27BB
          8431D4D5DDE2E3E3B9BFC2A05230CD956EFFFFFFFFFFFFFFFFFFEFD489ECDAAC
          E8D07EE5C959D9B841F0E58ADDBA40B98926B1B7C1D1D8E2DCE3E5A25134AB58
          34FFFFFFFFFFFFFFFFFFEDD58FEEDE9EECD975EAD34AEBDA69FFFFAFFFFFACDC
          BA3FB7831ABA8A48AF672AB97632CE984CFFFDF7FFFFFFFFFFFFF2DC8BEFE095
          F0E16BF2E541EFE155FFFFABF8F486EFDE6FC58700B66900A64D02F3E87FE8D4
          81FFFFFEFFFFFFFFFFFFF9E493EEE08DF3E661F6EF38F5ED6BFDFBA0E1CC52DB
          BA38C99208B46A00C68A27FFFF72D9BB87FFFFFFFFFFFFFFFFFFFFF4CBEEDB75
          F2E55AF2E63CF2E75FE8D52EE3CB4FEBD85CC58D0DD19F27D9AC3AF2D243E4D1
          CAFFFFFFFFFFFFFFFFFFFFFFFFFDEA90ECD952E6D14BF0E25FEAD241F4E166D0
          A414D8AA23F3D23DE0AE2BCEA681FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E2C58AF5E057FEFA73FAE553EFCE37EAC122FFE835F4D02BF0D383FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBDACCE0C07FF4D559FEDF49F5
          D24BE4C16EEBDACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        PageIndex = 5
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object PanelF: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          object DBCheckBox25: TDBCheckBox
            Left = 10
            Top = 18
            Width = 168
            Height = 17
            Caption = 'Inserir Registros'
            DataField = 'INSERIR'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox26: TDBCheckBox
            Left = 10
            Top = 45
            Width = 168
            Height = 17
            Caption = 'Editar Registros'
            DataField = 'EDITAR'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox27: TDBCheckBox
            Left = 10
            Top = 74
            Width = 168
            Height = 17
            Caption = 'Excluir Registros'
            DataField = 'EXCLUIR'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox28: TDBCheckBox
            Left = 10
            Top = 100
            Width = 271
            Height = 17
            Caption = 'Rem. Juros por Atrazo no Pag. do Cred.'
            DataField = 'S74'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox83: TDBCheckBox
            Left = 10
            Top = 125
            Width = 239
            Height = 17
            Caption = 'Sped - Gera'#231#227'o do Invent'#225'rio'
            DataField = 'S131'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox84: TDBCheckBox
            Left = 10
            Top = 149
            Width = 239
            Height = 17
            Caption = 'Sped - Dados da Redu'#231#227'o Z'
            DataField = 'S132'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox85: TDBCheckBox
            Left = 10
            Top = 173
            Width = 239
            Height = 17
            Caption = 'Sped - Informa'#231#245'es do Tatalizador Z'
            DataField = 'S133'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox86: TDBCheckBox
            Left = 10
            Top = 197
            Width = 239
            Height = 17
            Caption = 'Sped - Gera'#231#227'o do Sped Fiscal'
            DataField = 'S134'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object NxTabSheet7: TNxTabSheet
        Caption = 'Ordem de Servi'#231'os'
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00886554FF997766FF967463FF967463FF967463FF967463FF9774
          64FF957462FF957562FF967363FF947461FF937260FF94715FFF92725EFF9170
          5FFF926F5EFF93725FFF7F5F4EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009A7A69FFFEF2E4FFF9EBDDFFF9EBDDFFF9EBDDFFF9EBDDFFF1E4
          D7FFE4D7C9FFEFE3D4FFF9EADBFFF9EADCFFF9EBDBFFF8EAD8FFF8E7D5FFF7E6
          D2FFF7E6CFFFFBE7CEFF906F5DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009B7B6BFFFFFDF3FFFCF6EBFFFCF6EBFFFBF6EBFFFCF6EBFFD6D0
          C8FFC4BEB7FFD9D3CAFFFBF4EAFFFCF4E9FFFCF4E8FFFAF3E8FFFBF3E6FFF9F1
          E2FFFAEFE0FFFBEDD9FF8E6D5BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009B7C6BFFFFFDF4FFFBF6ECFFDEC4B7FFDEC4B7FFDEC4B6FF9F90
          89FF94857EFFCEB5A8FFDDC0AFFFDDBEADFFDDBDAAFFDDBBA8FFDDBBA5FFDEBD
          A7FFFBF2E3FFFCEEDCFF8F6E5CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009C7D6CFFFFFEF6FFFCF7EEFFDBC0B6FFDBC0B6FFE3CFC7FF6E68
          63FF837E7CFFD4C5C0FFE5D0C5FFE0C5B8FFDAB9A7FFDAB7A4FFDAB6A1FFDDB9
          A3FFFAF3E6FFFBF1E1FF906F5EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009F7E6DFFFFFFF8FFFCF8F1FFDBC3BAFFDBC3BAFFE4D2CAFF8E94
          99FF7C8DA8FF426253FF438D48FF7FB373FFE4CDC0FFDAB9A6FFDAB6A3FFDDBB
          A5FFFCF4E8FFFDF1E4FF91705FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009F7F70FFFFFFFAFFFCF9F3FFDBC5BFFFDBC5BFFFE2D0CAFFAEB6
          C4FF56A98EFF26B842FF40C95EFF209A31FF72AC69FFE4CCBEFFDAB8A5FFDDBB
          A7FFFBF5E9FFFCF3E4FF927160FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A38070FFFFFFFCFFFDFAF5FFDBC8C2FFDBC8C3FFE0CEC9FFC3CA
          CFFF27BE4AFF6AFF9EFF56E57FFF3FC25CFF1B912AFF8DB57CFFE2C8B8FFDDBC
          A8FFFBF5EBFFFCF2E5FF93715FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A38171FFFFFFFEFFFDFBF7FFDBC8C5FFDBC8C5FFDDCBC7FFC8D9
          C3FF41DC6BFF69FF9AFF61F691FF52DE78FF3BBC56FF168A23FFA6BD91FFE2C7
          B6FFFBF6ECFFFCF4E6FF957261FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A48372FFFFFFFFFFFDFBF9FFDCC8C3FFDCC8C4FFDCC7C2FFE4D4
          D0FF6CD486FF55EF83FF66FF98FF5FF48FFF4FDA74FF37B650FF188721FFBBC4
          A1FFFBF7EFFFFCF3E7FF947360FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A58473FFFFFFFFFFFEFCFBFFDCC7C2FFDCC7C2FFDCC7C1FFDDC6
          BFFFE0D8CFFF51C971FF5CF68AFF67FF99FF5DEF89FF4AD46EFF31AF49FF2085
          26FFDCEAD4FFFEF6EAFF967362FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A88574FFFFFFFFFFFEFDFDFFEDE2DFFFEDE2DFFFEDE2DEFFEDE1
          DDFFEEE2DDFFDAEAD6FF45D06DFF61FB90FF67FF99FF5BEC86FF48CF69FF2DA7
          41FF2E8E35FFEBEFE0FF997867FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A88675FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
          FEFFFEFDFDFFFEFDFCFFC7F7D5FF44DB6FFF62FC93FF65FD98FF57E882FF42C9
          61FF21A637FF3E9842FFB6A094FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A98776FFFFFFFFFFFFFFFFFFE0CFCEFFE0CFCEFFE0CECCFFE0CD
          CAFFDFCAC6FFDFC8C3FFE6D3CCFF97DEA3FF4CE679FF64FE94FF62FE95FF4EEA
          7CFF598C65FF7B6D78FF8D8280FF00000001FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AC8877FFFFFFFFFFFFFFFFFFDDCBC9FFDDCBCAFFDDCAC8FFDDC8
          C5FFDCC6C1FFDCC4BCFFDCC1B8FFE6D2CAFF71D78AFF52EE7EFF5DFD92FF8E9F
          94FFD1C6CCFFB5B1A7FF76767BFF3D42A879FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AD8978FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFFFFFEFDFCFFFFFDFBFFF4FAF3FF4FD778FFA7B7ACFFFFFD
          FFFFFFFFF9FF7786D2FF1730D3FF0913B5FB0000A844FF00FF00FF00FF00FF00
          FF00FF00FF00AE8978FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFFFFFEFDFCFFFFFFFEFFCDB9AFFFB3B09CFFD6C6CDFFFFFF
          F1FF7890F1FF3565F9FF3354E3FF1625B9FF000097E2FF00FF00FF00FF00FF00
          FF00FF00FF00AE8B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFEFEFDFFFEFDFBFFFFFFFDFFD5C7BEFFD3BFB0FFF9F0DEFF929E
          D3FF3666FCFF4B7AFFFF304FDCFF1522B5FF000096CFFF00FF00FF00FF00FF00
          FF00FF00FF00AF8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFEFEFEFFFEFDFCFFFEFCFAFFFFFEFDFFD9CAC3FFC4A384FFF0D5A8FF7979
          C3FB3B60F0FF3D65EEFF253DCCFF0307A2F70000A839FF00FF00FF00FF00FF00
          FF00FF00FF00AE8979FFFFFFFFFFFEFEFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FDFFFEFDFCFFFEFCFBFFFEFCF9FFFFFFFCFFDACCC4FFBB9369FF9C745BF2DAC9
          C46F101CC3890E19ADF502019BCA0000A73EFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00AF8C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BEB4FF8B6351F19D73603DFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009E7661FFB18F7FFFAF8C7BFFAF8D7BFFAE8B7CFFAD8C7AFFAC8A
          7BFFAB8979FFA98878FFA88777FFA98A78FF967261E59A6B5836FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        PageIndex = 6
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        object Panelg: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 392
          Align = alClient
          ParentColor = True
          TabOrder = 0
          object DBCheckBox13: TDBCheckBox
            Left = 10
            Top = 10
            Width = 168
            Height = 17
            Caption = 'Cad. Tipo de Bens'
            DataField = 'S106'
            DataSource = DM.DTS_Usuarios
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox14: TDBCheckBox
            Left = 10
            Top = 34
            Width = 168
            Height = 17
            Caption = 'Cad. Marca de Bens'
            DataField = 'S113'
            DataSource = DM.DTS_Usuarios
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 10
            Top = 58
            Width = 168
            Height = 17
            Caption = 'Cad. de Bens'
            DataField = 'S114'
            DataSource = DM.DTS_Usuarios
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox16: TDBCheckBox
            Left = 10
            Top = 83
            Width = 168
            Height = 17
            Caption = 'Cad. Localiza'#231#227'o'
            DataField = 'S115'
            DataSource = DM.DTS_Usuarios
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox17: TDBCheckBox
            Left = 10
            Top = 107
            Width = 168
            Height = 17
            Caption = 'Cad. de Cores'
            DataField = 'S116'
            DataSource = DM.DTS_Usuarios
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox18: TDBCheckBox
            Left = 10
            Top = 131
            Width = 199
            Height = 17
            Caption = 'Cad. de Tipos de atendimento'
            DataField = 'S117'
            DataSource = DM.DTS_Usuarios
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox19: TDBCheckBox
            Left = 10
            Top = 156
            Width = 199
            Height = 17
            Caption = 'Cad. de Status do atendimento'
            DataField = 'S117'
            DataSource = DM.DTS_Usuarios
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox20: TDBCheckBox
            Left = 10
            Top = 180
            Width = 199
            Height = 17
            Caption = 'Cad. Prioridade do atendimento'
            DataField = 'S118'
            DataSource = DM.DTS_Usuarios
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox21: TDBCheckBox
            Left = 10
            Top = 204
            Width = 199
            Height = 17
            Caption = 'Cad. da Ordem de Servi'#231'os'
            DataField = 'S120'
            DataSource = DM.DTS_Usuarios
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox22: TDBCheckBox
            Left = 10
            Top = 228
            Width = 199
            Height = 17
            Caption = 'Monitor da Ordem de Servi'#231'os'
            DataField = 'S121'
            DataSource = DM.DTS_Usuarios
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox23: TDBCheckBox
            Left = 10
            Top = 252
            Width = 199
            Height = 17
            Caption = 'Consulta da Ordem de Servi'#231'os'
            DataField = 'S122'
            DataSource = DM.DTS_Usuarios
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox24: TDBCheckBox
            Left = 10
            Top = 279
            Width = 207
            Height = 17
            Caption = 'Relat'#243'rios da Ordem de Servi'#231'os'
            DataField = 'S123'
            DataSource = DM.DTS_Usuarios
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 509
    Width = 767
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 16445929
    TabOrder = 1
    object DBNavigator: TsDBNavigator
      Left = 10
      Top = 6
      Width = 120
      Height = 30
      FullRepaint = False
      TabOrder = 0
      TabStop = True
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DM.DTS_Usuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Novo Rgistro'
        'Excluir Registro'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
    end
    object BtnEditar: TAdvGlowButton
      Left = 147
      Top = 6
      Width = 85
      Height = 41
      Caption = 'E&ditar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00886554FF997766FF967463FF967463FF967463FF967463FF977464FF9574
        62FF957562FF967363FF947461FF937260FF94715FFF92725EFF91705FFF926F
        5EFF93725FFF7F5F4EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009A7A69FFFEF2E4FFF9EBDDFFF9EBDDFFF9EBDDFFF9EBDDFFF1E4D7FFE4D7
        C9FFEFE3D4FFF9EADBFFF9EADCFFF9EBDBFFF8EAD8FFF8E7D5FFF7E6D2FFF7E6
        CFFFFBE7CEFF906F5DFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009B7B6BFFFFFDF3FFFCF6EBFFFCF6EBFFFBF6EBFFFCF6EBFFD6D0C8FFC4BE
        B7FFD9D3CAFFFBF4EAFFFCF4E9FFFCF4E8FFFAF3E8FFFBF3E6FFF9F1E2FFFAEF
        E0FFFBEDD9FF8E6D5BFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009B7C6BFFFFFDF4FFFBF6ECFFDEC4B7FFDEC4B7FFDEC4B6FF9F9089FF9485
        7EFFCEB5A8FFDDC0AFFFDDBEADFFDDBDAAFFDDBBA8FFDDBBA5FFDEBDA7FFFBF2
        E3FFFCEEDCFF8F6E5CFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009C7D6CFFFFFEF6FFFCF7EEFFDBC0B6FFDBC0B6FFE3CFC7FF6E6863FF837E
        7CFFD4C5C0FFE5D0C5FFE0C5B8FFDAB9A7FFDAB7A4FFDAB6A1FFDDB9A3FFFAF3
        E6FFFBF1E1FF906F5EFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009F7E6DFFFFFFF8FFFCF8F1FFDBC3BAFFDBC3BAFFE4D2CAFF8E9499FF7C8D
        A8FF426253FF438D48FF7FB373FFE4CDC0FFDAB9A6FFDAB6A3FFDDBBA5FFFCF4
        E8FFFDF1E4FF91705FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009F7F70FFFFFFFAFFFCF9F3FFDBC5BFFFDBC5BFFFE2D0CAFFAEB6C4FF56A9
        8EFF26B842FF40C95EFF209A31FF72AC69FFE4CCBEFFDAB8A5FFDDBBA7FFFBF5
        E9FFFCF3E4FF927160FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A38070FFFFFFFCFFFDFAF5FFDBC8C2FFDBC8C3FFE0CEC9FFC3CACFFF27BE
        4AFF6AFF9EFF56E57FFF3FC25CFF1B912AFF8DB57CFFE2C8B8FFDDBCA8FFFBF5
        EBFFFCF2E5FF93715FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A38171FFFFFFFEFFFDFBF7FFDBC8C5FFDBC8C5FFDDCBC7FFC8D9C3FF41DC
        6BFF69FF9AFF61F691FF52DE78FF3BBC56FF168A23FFA6BD91FFE2C7B6FFFBF6
        ECFFFCF4E6FF957261FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A48372FFFFFFFFFFFDFBF9FFDCC8C3FFDCC8C4FFDCC7C2FFE4D4D0FF6CD4
        86FF55EF83FF66FF98FF5FF48FFF4FDA74FF37B650FF188721FFBBC4A1FFFBF7
        EFFFFCF3E7FF947360FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A58473FFFFFFFFFFFEFCFBFFDCC7C2FFDCC7C2FFDCC7C1FFDDC6BFFFE0D8
        CFFF51C971FF5CF68AFF67FF99FF5DEF89FF4AD46EFF31AF49FF208526FFDCEA
        D4FFFEF6EAFF967362FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A88574FFFFFFFFFFFEFDFDFFEDE2DFFFEDE2DFFFEDE2DEFFEDE1DDFFEEE2
        DDFFDAEAD6FF45D06DFF61FB90FF67FF99FF5BEC86FF48CF69FF2DA741FF2E8E
        35FFEBEFE0FF997867FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A88675FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFD
        FDFFFEFDFCFFC7F7D5FF44DB6FFF62FC93FF65FD98FF57E882FF42C961FF21A6
        37FF3E9842FFB6A094FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A98776FFFFFFFFFFFFFFFFFFE0CFCEFFE0CFCEFFE0CECCFFE0CDCAFFDFCA
        C6FFDFC8C3FFE6D3CCFF97DEA3FF4CE679FF64FE94FF62FE95FF4EEA7CFF598C
        65FF7B6D78FF8D8280FF00000001FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AC8877FFFFFFFFFFFFFFFFFFDDCBC9FFDDCBCAFFDDCAC8FFDDC8C5FFDCC6
        C1FFDCC4BCFFDCC1B8FFE6D2CAFF71D78AFF52EE7EFF5DFD92FF8E9F94FFD1C6
        CCFFB5B1A7FF76767BFF3D42A879FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AD8978FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFFFFFEFDFCFFFFFDFBFFF4FAF3FF4FD778FFA7B7ACFFFFFDFFFFFFFF
        F9FF7786D2FF1730D3FF0913B5FB0000A844FF00FF00FF00FF00FF00FF00FF00
        FF00AE8978FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFFFFFEFDFCFFFFFFFEFFCDB9AFFFB3B09CFFD6C6CDFFFFFFF1FF7890
        F1FF3565F9FF3354E3FF1625B9FF000097E2FF00FF00FF00FF00FF00FF00FF00
        FF00AE8B7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFFFEFEFDFFFEFDFBFFFFFFFDFFD5C7BEFFD3BFB0FFF9F0DEFF929ED3FF3666
        FCFF4B7AFFFF304FDCFF1522B5FF000096CFFF00FF00FF00FF00FF00FF00FF00
        FF00AF8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
        FEFFFEFDFCFFFEFCFAFFFFFEFDFFD9CAC3FFC4A384FFF0D5A8FF7979C3FB3B60
        F0FF3D65EEFF253DCCFF0307A2F70000A839FF00FF00FF00FF00FF00FF00FF00
        FF00AE8979FFFFFFFFFFFEFEFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFD
        FCFFFEFCFBFFFEFCF9FFFFFFFCFFDACCC4FFBB9369FF9C745BF2DAC9C46F101C
        C3890E19ADF502019BCA0000A73EFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00AF8C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BEB4FF8B6351F19D73603DFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009E7661FFB18F7FFFAF8C7BFFAF8D7BFFAE8B7CFFAD8C7AFFAC8A7BFFAB89
        79FFA98878FFA88777FFA98A78FF967261E59A6B5836FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
      OnClick = btnEditarClick
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
    end
    object btnCancelar: TAdvGlowButton
      Left = 254
      Top = 6
      Width = 85
      Height = 41
      Caption = '&Cancelar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        B5390000A8D90101A8EB0000A5A60000B42FFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000009D0C00009C9B00009B580000
        B803FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000A40D0001
        B1E61542F0FF1545E8FF0E2CC8FF0307AAFB0000B18B0000A307FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B90E00009FC40520C6FF0312ACFF0000
        9BD60000A4A20000AC1BFF00FF00FF00FF00FF00FF00FF00FF000000AC6B0E27
        D8FF1B4FFFFF194AFBFF1948F5FF1643E3FF091CB7FF0000A8CB0000C11EFF00
        FF00FF00FF00FF00FF000000BB1100009FC90A29D6FF0D3EF4FF0B39E6FF072E
        D4FF041CB9FF00009CDA0000AD19FF00FF00FF00FF00FF00FF000000ACC62554
        FCFF2356FFFF1D4FFFFF1C4DFEFF1A4BFBFF1947F0FF102DC6FF0000A9E70000
        BE35FF00FF000000BB110000A1CD0C2DDAFF1142F8FF0E3FF4FF0D3CF2FF0B39
        EEFF0A37E8FF041FBBFF00009DC600008404FF00FF00FF00FF000000BA670405
        B8F42957F9FF2456FFFF2051FFFF1F51FFFF1D4EFDFF1B4BF4FF1338CEFF0101
        A9F20000B1550000A4CC0F31DEFF1446FCFF1243F8FF1040F5FF0E3EF4FF0D3D
        F4FF0B3AEFFF0A36E5FF0212ACFF00009E5EFF00FF00FF00FF00FF00FF000000
        B7C92D5DFEFF2859FFFF2657FFFF2455FFFF2355FFFF2051FFFF1D4CF7FF153D
        D6FF0101A7FE1131DEFF184CFEFF1547F9FF1444F8FF1243F7FF1040F5FF0E3E
        F4FF0C3DF3FF0C3CF2FF072CD5FF00009DA8FF00FF00FF00FF00FF00FF000406
        C4F13C71FFFF2F61FFFF2B5BFFFF295AFFFF2859FFFF2758FFFF2455FFFF1D4E
        F8FF1B4BF3FF1C4EFDFF1B4AFDFF1848FBFF1546F9FF1444F8FF1243F7FF1040
        F5FF0F41F8FF0B34E7FF0104ABF30000AA5BFF00FF00FF00FF0000008D020000
        BBCC2239DAFF4275FFFF3769FFFF2F60FFFF2C5DFFFF2A5AFFFF285AFFFF2657
        FFFF2152FEFF1E4FFFFF1C4DFFFF1A4BFDFF1849FBFF1546F9FF1544F9FF1347
        FBFF0B29D9FF0000A1D50000B72AFF00FF00FF00FF00FF00FF00FF00FF000000
        C2060000BE7F080DBFF83B63F4FF4273FFFF3565FFFF2F60FFFF2B5CFFFF295A
        FFFF2859FFFF2354FFFF1F50FEFF1C4EFEFF1A4BFEFF1949FCFF164AFFFF0920
        CCFF0000A4B60000B90EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000C92C0000B1CA2338D7FF487AFFFF3A6BFFFF3162FFFF2D5E
        FFFF2A5AFFFF2758FFFF2354FFFF1F50FEFF1D4EFEFF1C4FFFFF091BC8FE0000
        B09B00008C04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000DA040000B37F0B10BFFB406CFBFF3768FFFF3262
        FFFF2E5FFFFF2A5BFFFF2758FFFF2455FEFF1D4FFBFF091AC6FF0000B0940000
        0001FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000BA100001B6EF4273FFFF3A6AFFFF3565
        FFFF3262FFFF2E5FFFFF2A5AFFFF2657FEFF1E4EF8FF102DCAFF0000ACC10000
        8B04FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000BF782740DFFF4576FFFF3D6DFFFF3969
        FFFF3565FFFF3262FFFF2D5EFFFF295BFFFF2555FEFF1C4CEFFF0A1AB8FF0000
        B884FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000EC050000B9E54D7DFFFF4675FFFF406FFFFF3D6E
        FFFF396AFFFF3A6BFFFF3565FFFF2C5CFFFF295AFFFF2252FDFF1947E3FF0308
        B0FC0000C43FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000C7572337D8FF5183FFFF4877FFFF4372FFFF406E
        FFFF3D6FFFFF243FE0FF4375FFFF3364FFFF2A5BFFFF2657FFFF1D4FF9FF143A
        D1FF0000AEE00000C20FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000C6BA4D76F8FF5280FFFF4B79FFFF4877FFFF4374
        FFFF2342E5FF0000AFD6131FC8FE4274FFFF3062FFFF2859FFFF2353FEFF1B4B
        F3FF0C23BFFF0000B99FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000D01D0F17CCFC6091FFFF5280FFFF4D7BFFFF497AFFFF3C69
        FAFF0000B9DF0000C30E0000BF761421CDFE4071FFFF2D5DFFFF2455FEFF1F4F
        FCFF1847E7FF040CB4FE0000C54DFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000D0723750E4FF5E8EFFFF5482FFFF507EFFFF4B7EFFFF0E1A
        CCFE0000D046FF00FF00FF00FF000000CB831729D2FE3B6DFFFF2859FFFF2051
        FFFF1B4AF8FF133AD3FF0000B0E50000C211FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000D0C06893FCFF6491FFFF5885FFFF5281FFFF3252EDFF0000
        C6A7FF00FF00FF00FF00FF00FF00FF00FF000000BF991D35DAFF3367FFFF2454
        FFFF1C4EFDFF1948F2FF0B24C3FF0000B19FFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000DF641D27D3FE719EFFFF6A9AFFFF5485FFFF0305C6F30000
        D61BFF00FF00FF00FF00FF00FF00FF00FF000000DC040000B5B52341E5FF2C60
        FFFF2053FFFF1C52FFFF1032E1FF0000B3EFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000E0540000D0D7202DD6FE2637DAFF0000CE79FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000C60D0000B6CE2246
        EBFF102ADCFF0103BCF10000BD970000C724FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000D23A0000C3960000C307FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000C4190000
        B6C80000B76D0000BB0DFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
      OnClick = btnCancelarClick
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
    end
    object btnSalvar: TAdvGlowButton
      Left = 349
      Top = 6
      Width = 85
      Height = 41
      Caption = '&Salvar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DFA0900000000000036000000280000001900000019000000010020000000
        0000C409000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F00FF00FF00FF00FF00FF00
        FF00FF00FF00B0791D00AE771D00AE771D00AF771C00A27B4A00B3B5B500CBCD
        CD00AA9D7B00B3A98E00FBFCFC00FDFEFE00FEFFFF00FFFFFF00F0EEEE00D4CE
        CE00B7AEAF0094857F00906D13008D6C1300AF781F00AE771D0092541F00FF00
        FF00FF00FF0092541F00B06D2000B06D2000B06D2000B16D1F00A27B4A00AEB0
        B100B4B8BC00906B16008A630A00F4F6FB00FAFBFB00FDFDFD00FFFFFF00FEFE
        FE00E5E1E200C9C1C200A39690008F6A13008C6A1400B26E2200B06D20009254
        1F00FF00FF00FF00FF0092541F00B2642300B2642300B2642300B3642200A27B
        4A00B1B3B300B2B6B9008F67170089600D00EDF0F400F6F7F700FAFAFA00FEFE
        FE00FFFFFF00F7F6F600DAD5D600B2A7A1008E6615008C661600B3652500B264
        230092541F00FF00FF00FF00FF0092541F00B45B2600B45B2600B45B2600B55A
        2500A27B4A00B6B8B800B5B8BC008E631800895C0E00E5E8EC00F1F1F100F6F6
        F600FCFCFC00FEFEFE00FFFFFF00ECE9EA00C2B8B2008D6116008B621700B65C
        2800B45B260092541F00FF00FF00FF00FF0092541F00AC582400AC582400AC58
        2400AD572300A27B4A00BFC1C100BBBFC2008D5F190089591000D6DADE00E9E9
        E900EFF0F000F8F8F800FDFDFD00FFFFFF00FDFCFC00D1C9C3008C5D17008A5E
        1800AE592600AC58240092541F00FF00FF00FF00FF0092541F00A3562300A356
        2300A3562300A3552200A27B4A00CECFCF00C6CACC008E5B19008A551000C7CB
        CE00DFDFDF00E7E8E800F3F4F400FAFAFA00FEFEFE00FFFFFF00E0DBD5008B58
        18008B5A1A00A4572500A356230092541F00FF00FF00FF00FF0092541F009A54
        21009A5421009A5421009A532000A27B4A00E8EDF000C7CDD0009F9F9D009D9F
        9F00BBC0C200D5DADD00E0E5E700F1F5F700FCFFFF00FFFFFF00FFFFFF00E3DA
        D1008A5519008A571C009B5422009A54210092541F00FF00FF00FF00FF009254
        1F00915220009152200091522000915220009152200091522000915220009152
        2000915220009152200091522000915220009152200091522000915220009152
        2000915220009152200091522000915220009152200092541F00FF00FF00FF00
        FF0092541F008B511E008B511E00894E1A00894E1A00894E1A00894E1A00894E
        1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E
        1A00894E1A00894E1A00894E1A00894E1A008B511E008B511E0092541F00FF00
        FF00FF00FF0092541F008E561E008E561E00E3DED900E4E5E500E4E5E500E5E6
        E600E9E9E900ECECEC00EEEEEE00EFEFEF00EFF0F000EFEFF000EEEEEF00ECED
        ED00EAEAEA00E6E6E600E4E5E500E4E5E500E3DED9008D551D008E561E009254
        1F00FF00FF00FF00FF0092541F0090591D0090591D00E3DED900E4E4E400E4E4
        E400E7E7E700EBEBEB00EEEEEE00F0F0F000F1F1F100F1F1F100F1F1F100F0F0
        F000EEEEEE00EBEBEB00E8E8E800E4E4E400E4E4E400E3DED9008F581C009059
        1D0092541F00FF00FF00FF00FF0092541F00945E1D00945E1D00E3DED900E4E4
        E400E5E5E500EAEAEA00EDEDED00F0F0F000F3F3F300F4F4F400F4F4F400F4F4
        F400F3F3F300F1F1F100EFEFEF00EBEBEB00E6E6E600E4E4E400E3DED900945D
        1C00945E1D0092541F00FF00FF00FF00FF0092541F0097631C0097631C00E3DE
        D900E4E4E400E9E9E900EDEDED00F1F1F100F4F4F400F6F6F600F8F8F800F8F8
        F800F8F8F800F7F7F700F5F5F500F2F2F200EEEEEE00EAEAEA00E4E4E400E3DE
        D90097631B0097631C0092541F00FF00FF00FF00FF0092541F009B681C009B68
        1C00E3DED900E5E5E500EBEBEB00EFEFEF00F3F3F300F6F6F600F9F9F900FAFA
        FA00FAFAFA00FAFAFA00F9F9F900F7F7F700F4F4F400F0F0F000ECECEC00E7E7
        E700E3DED9009B681B009B681C0092541F00FF00FF00FF00FF0092541F009E6D
        1B009E6D1B00E3DED900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00E3DED9009E6D1A009E6D1B0092541F00FF00FF00FF00FF009254
        1F00A2721B00A2721B00E3DED900E7E7E700EBEBEB00F0F0F000F4F4F400F7F7
        F700F9F9F900FBFBFB00FBFBFB00FBFBFB00FAFAFA00F8F8F800F5F5F500F0F0
        F000ECECEC00E7E7E700E3DED900A2721A00A2721B0092541F00FF00FF00FF00
        FF0092541F00A5761B00A5761B00E3DED900E6E6E600ECECEC00F1F1F100F5F5
        F500F8F8F800FAFAFA00FCFCFC00FCFCFC00FCFCFC00FAFAFA00F8F8F800F5F5
        F500F2F2F200EDEDED00E8E8E800E3DED900A5761A00A5761B0092541F00FF00
        FF00FF00FF0092541F00AE832900AC822600E3DED900E5E5E500EBEBEB00EFEF
        EF00F3F3F300F6F6F600F8F8F800FAFAFA00FAFAFA00FAFAFA00F9F9F900F7F7
        F700F3F3F300EFEFEF00EBEBEB00E5E5E500E3DED900A7791700A77918009254
        1F00FF00FF00FF00FF0092541F00BC994800BC994800E3DED900E8E8E800ECEC
        EC00F0F0F000F3F3F300F5F5F500F7F7F700F9F9F900F9F9F900F9F9F900F8F8
        F800F6F6F600F3F3F300F0F0F000ECECEC00E7E7E700E3DED900BD9A4900BD9A
        4A0092541F00FF00FF00FF00FF0092541F00FF00FF00A4744C003535B3003838
        B3003838B7003939BA003A3ABB003A3ABC003A3ABC003939BA003838B8003838
        B6003737B2003636AE003535AA003434A5003434A10033339E002A2BA300A474
        4C00FF00FF0092541F00FF00FF00FF00FF0092541F00A4744C00A4744C003535
        B3004142BA004343BE004344C1004444C3004445C5004445C4004444C2004343
        BF004243BE004141BA004141B6004040B1003E3EAC003D3DA7003C3CA2003232
        9F00A4744C00A4744C0092541F00FF00FF00FF00FF00FF00FF0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
      OnClick = btnSalvarClick
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
    end
    object btnLocalizar: TAdvGlowButton
      Left = 449
      Top = 6
      Width = 85
      Height = 41
      Caption = '&Localizar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        00000009000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007874
        684E848381DE666666676C6C6C51FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000030FF0B1547
        EFC0A7A5A3FFB4B2B1FF888787FE7070705BFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000027FF0D0A44FFC12E7C
        FFFF58AAEDFFF4F0EBFFB4B3B2FF69696975FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000024FF0E0B46FFC5337FFFFF56B6
        FFFF65D3FFFF6DBDF0FFC1BAB4FF858584BFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000032FF100C46FFC93481FFFF57B6FFFF6BD2
        FFFF5DC0FFFF3C92FFFF3563DCE787837883FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000026FF130A42EBCD3685FFFF58B9FFFF6BD2FFFF5CBF
        FFFF4193FFFF1657FFE2002DFF26FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0086848065747580F4296CD4FF58B9FFFF6BD3FFFF5BBCFFFF3E91
        FFFF1453FFDF002DFF22FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00606060155C5C5E6457585B925153569C4D4F51835253
        54460000000371717157B2AFACFF9AA5A9FF58B8E7FF59BBFFFF3D8FFFFF1451
        FFDB0033FF1FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007676760568696B82707278EEA3998BEDCCB490E4D8BD93DFC7B395E49895
        93EE53555BD1585959E3B6B6B6FFFBF7F4FF92A2ABFF2C76DFFF0F4BF4D70031
        FF1BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007E7E
        7F076B6D70B79E978CF3EAC383E3F4C780DFF0C887E2F1CB92E4F1CB8EE5F1C1
        79E4EACB9CEB6F7276FC9E9FA0FFC3C2C2FFC0BDB7FF5E688EE70029FF18FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007C7D
        8096A49A8CF3F5C982DDEDC684DCEBC582DCEBC381DCEAC17CDDEBC482DFF0CF
        9DE5F1CD93E7F3C988E86E7074FD5D5E5FEE828181828B8A8475FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008081812E8686
        87F8F2CE8BDDEFCC8DDAEDCC8FDAEDCC8FDAEDCB8DDAECC989DBEBC684DCEABF
        7ADDEECD96E4F0CD94E7E7C99EED4F5256C0FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008182848EBAA9
        8BEBF4D595D9EFD399D9EFD49BD8EFD49BD8EFD49AD8EECF96D9EDCC8EDAECC8
        88DBEBC27CDCF1D3A5E6F2C57FE38C8C8CFA51515225FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00838589CAE0C6
        95DFF5DBA6D8F3DBA7D7F5DCA9D6F3DCA8D7F1DAA3D7F1D6A1D7EFD49AD8EDCC
        92DAECC888DBEDC98EE0F3CF94E5B8A991F35050535FFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0086878CE0EFD6
        A1DAF5E3B3D9F6E7BEDAF9ECC5DBF6E8BFD9F5E2B5D7F3DDA9D6F1D7A1D7EFD4
        9AD8EDCC8EDAECC885DCF4D49EE5C7B392F054545776FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C8D92D3E7D3
        A3DBF8EBC6DCFBF2D4DFF9EECCDBF9EEC8D8F7E9BFD6F5E5B7D6F3DDA9D6F1D6
        9ED7EECF94D9ECC987DBF4D39BE3B9AB8EF157595B69FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C9D9FA4C3B7
        97E4FFF3D3DDFBF7E1E4FCFAEEECFDFCEEEAFAEFCCD8F7EBC3D8F5E3B1D6F1D9
        A3D7EFD498D8EDCA8EDBF7D092E0948E87F85C5D5E39FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A3A3A54A9997
        8EF5FFF8D2DBFDFBE8E5FFFEF8F0FDFDF5EDFBF4D6DAFAEFCCDAF5E3B5D6F3DB
        A6D6EFD49AD8F1D194DBE7C893E46B6E72DD61616103FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF01A1A1
        A4C4BDB6A0E7FFFFE4DFFDFDECE5FEFCEAE4FBF6DDDEFBF1CFDBF5E3B5D6F4DD
        A9D6F2D59AD8F4D291DC918F89F77172725CFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CACA
        CB20A2A2A5E4BAB4A2E8FFFFDFDAFFFBDDDCFDF3D4DAF8EABFD6F9E4B0D5F8DF
        A4D7EFD29BDD97928BF56F70729BFF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D2D2D222ABABADC9989691F4BFB89FE2E2D4ACDBEAD9ACDAD7C59EE0B2A8
        91E9818283F67B7C7D8397979802FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0082828202ACADAE55A0A0A1AC8F9094D9898A8EE284868ACA8181
        848E88898928FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
      OnClick = btnLocalizarClick
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
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 71
    Align = alCustom
    BevelOuter = bvNone
    Color = 16575452
    Enabled = False
    TabOrder = 2
    object Bevel1: TBevel
      Left = 16
      Top = 11
      Width = 633
      Height = 50
    end
    object RxLabel4: TRxLabel
      Left = 19
      Top = 39
      Width = 95
      Height = 13
      Caption = 'Nome Completo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 19
      Top = 14
      Width = 46
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 205
      Top = 14
      Width = 50
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 368
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Fun'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbt_codigo: TsDBEdit
      Left = 116
      Top = 14
      Width = 71
      Height = 20
      TabStop = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'CODIGO'
      DataSource = DM.DTS_Usuarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object db_nome: TsDBEdit
      Left = 116
      Top = 39
      Width = 245
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'NOME'
      DataSource = DM.DTS_Usuarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object DBEdit2: TsDBEdit
      Left = 419
      Top = 39
      Width = 222
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'FUNCAO'
      DataSource = DM.DTS_Usuarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object DBEdit1: TsDBEdit
      Left = 261
      Top = 14
      Width = 175
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'USUARIO'
      DataSource = DM.DTS_Usuarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
  end
end
