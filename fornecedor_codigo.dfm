object frmfornecedor_codigo: Tfrmfornecedor_codigo
  Left = 466
  Top = 207
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | Refer'#234'ncia com c'#243'digos de Fornecedores'
  ClientHeight = 406
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = uali
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 355
    Width = 846
    Height = 51
    Align = alBottom
    BorderOuter = fsNone
    Color = 15987699
    TabOrder = 0
    VisualStyle = vsGradient
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 90
      Height = 44
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
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
    object balterar: TAdvGlowButton
      Left = 106
      Top = 3
      Width = 85
      Height = 44
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
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
    object bexcluir: TAdvGlowButton
      Left = 201
      Top = 3
      Width = 85
      Height = 43
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
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
    object bgravar: TAdvGlowButton
      Left = 305
      Top = 3
      Width = 85
      Height = 44
      Caption = 'F4 | Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 10
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 3
      OnClick = bgravarClick
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
    object bretornar: TAdvGlowButton
      Left = 409
      Top = 3
      Width = 85
      Height = 43
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Transparent = True
      TabOrder = 4
      OnClick = bretornarClick
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
  object ppagina: TPageView
    Left = 0
    Top = 0
    Width = 846
    Height = 355
    ActivePage = PageSheet5
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = clSilver
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgCloseButton, pgTopBorder]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 1
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = ppaginaChange
    object PageSheet5: TPageSheet
      Left = 0
      Top = 21
      Width = 846
      Height = 334
      Caption = 'Listagem'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object BitBtn19: TBitBtn
        Left = 465
        Top = 20
        Width = 25
        Height = 21
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
          9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
          C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
          A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
          E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
          F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
          DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
          F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
          D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
          F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
          DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
          F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
          E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 0
      end
      object BitBtn20: TBitBtn
        Left = 465
        Top = 44
        Width = 25
        Height = 21
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
          9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
          C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
          A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
          E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
          F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
          DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
          F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
          D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
          F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
          DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
          F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
          E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 846
        Height = 41
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object Label8: TLabel
          Left = 8
          Top = 12
          Width = 197
          Height = 16
          Caption = 'Pesquisa por c'#243'digo de barras:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 646
          Top = 4
          Width = 197
          Height = 33
          Caption = 'Localizar Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Glyph.Data = {
            C6070000424DC607000000000000360000002800000016000000160000000100
            20000000000090070000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEBBB600BAB8
            B500FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00F8F8F7005850410050493A00BBB9B500FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00F8F8F700625C4E004E4533005F594A00C2C0BC00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00625A4C004E45
            330067615300FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00CECFD000A8ACB1009CA2A900B8BABE00EAEA
            EA00FFFFFF00FFFFFF00FFFFFF00777164004C422E0067615400FCFCFB00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AEB0
            B10056606E00696561008A796200947E62007D7261004F56610080868F00C9C9
            C8009D9D9E005B595300837E7300FCFCFB00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0070757C004D556100BA956300FCBB
            6400FFC26400FFC36400FFC16400DDAA64008474620044516100616060009E9F
            A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF008083870052586100DCA86400FFC96500FCB86400F6B56400F6B5
            6400F7B56400FFC16400FFC96400A083620044516100DDDDDC00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1D0004551
            6100CA9B6300FFCA6500F5B36400F6B56400F6B56400F6B56400F6B56400F5B4
            6400FBB86400FFC965008374620079808900FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00EEEEEE00747980007F716200FFC46400F9B5
            6400F6B56400F6B56400F6B56400F6B56400F6B56400F6B56400F5B46400FFC1
            6400E4AA64004E566100EDEDEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B9BABA0044516000BD956300FFC66400F5B46400F6B56400F6B5
            6400F6B56400F6B56400F6B56400F6B56400F6B56400F8B56400FFC064007F72
            6200B3B6BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A5
            A8004B556100CF9F6300FFC06400F6B56400F6B56400F6B56400F6B56400F6B5
            6400F6B56400F6B56400F6B56400F6B56400FFC36400947E62009CA1A800FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABADAF0047536000C79B
            6300FFC26400F6B56400F6B25D00F6B56400F6B56400F6B56400F6B66600F6B2
            5D00F6B25D00F6B66600FFC264008C796200A4A8AE00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00CFD0D0004D586600A6886200FFC96500F5B5
            6700F7BE7800F5AE5500F5B05900F6B25D00F5AC5100F7BB7100F7C07C00FCB5
            5E00FFBB640069656100CCCDCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FDFDFD009FA1A3005F606100F9B76300FFBB5D00F9D6AC00FAD5
            A800F8C17E00F7BE7800F8C78A00FBE1C100F7C38500FFC45800BD956300505B
            6800FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FEFEFE0049536100766C6200FFC36100FFBB5C00F8CA9400FAD9B200FBDB
            B400FAD6AB00F9B96C00FFC45700DDA966004C556100B1B3B400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDB
            DB0046526100786D6300F4B76300FFC25600FFBD5800FFBC5B00FFBF5500FFC1
            5E00C39B6500525861006F747A00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7D600535D
            6A0061606100A2886200C69A6300CC9F6300BA9562007D726200465161008689
            8C00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA009FA1A3005962
            7000475260004B546100455160007F848B00CCCCCC00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00D1D1D100B2B3B500A6A8
            AB00BCBDBE00ECECEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00}
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object edtPesquisaCodProduto: TEdit
          Left = 208
          Top = 8
          Width = 345
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtPesquisaCodProdutoKeyPress
        end
      end
      object Grid: TDBGrid
        Left = 0
        Top = 41
        Width = 846
        Height = 293
        Align = alClient
        DataSource = dsfornecedor_codigo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODFORNECEDOR'
            Title.Caption = 'C'#243'd. Forn.'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Title.Caption = 'C'#243'd Barras'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fornecedor'
            Title.Caption = 'Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'Pre'#231'o'
            Visible = True
          end>
      end
    end
    object PageSheet6: TPageSheet
      Left = 0
      Top = 21
      Width = 846
      Height = 334
      Caption = 'Cadastro'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pcadastro: TRzPanel
        Left = 0
        Top = 0
        Width = 846
        Height = 334
        Align = alClient
        Color = 15987699
        Enabled = False
        TabOrder = 0
        VisualStyle = vsGradient
        object Label1: TLabel
          Left = 6
          Top = 33
          Width = 62
          Height = 13
          Caption = 'Fornecedor :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 6
          Top = 57
          Width = 59
          Height = 13
          Caption = 'Refer'#234'ncia :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 6
          Top = 81
          Width = 34
          Height = 13
          Caption = 'Pre'#231'o :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 6
          Top = 9
          Width = 45
          Height = 13
          Caption = 'Produto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 6
          Top = 201
          Width = 45
          Height = 13
          Caption = 'Produto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label6: TLabel
          Left = 6
          Top = 228
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label7: TLabel
          Left = 66
          Top = 182
          Width = 76
          Height = 13
          Caption = 'Produto na xml:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object ereferencia: TRzDBEdit
          Left = 68
          Top = 57
          Width = 120
          Height = 21
          DataSource = dsfornecedor_codigo
          DataField = 'CODIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = ereferenciaKeyPress
        end
        object epreco: TRzDBNumericEdit
          Left = 68
          Top = 81
          Width = 65
          Height = 21
          DataSource = dsfornecedor_codigo
          DataField = 'PRECO'
          Alignment = taLeftJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = eprecoExit
          OnKeyPress = ereferenciaKeyPress
          IntegersOnly = False
          DisplayFormat = ',0.00;(,0.00)'
        end
        object RzDBEdit3: TRzDBEdit
          Left = 192
          Top = 33
          Width = 313
          Height = 21
          DataSource = dsfornecedor_codigo
          DataField = 'fornecedor'
          Enabled = False
          TabOrder = 3
        end
        object ECODFORNECEDOR: TRzDBButtonEdit
          Left = 68
          Top = 34
          Width = 121
          Height = 21
          DataSource = dsfornecedor_codigo
          DataField = 'CODFORNECEDOR'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 0
          OnKeyPress = ECODFORNECEDORKeyPress
          ButtonGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
            9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
            C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
            A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
            E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
            F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
            DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
            F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
            D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
            F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
            DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
            F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
            E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ButtonNumGlyphs = 1
          ButtonKind = bkCustom
          AltBtnShortCut = 113
          ButtonShortCut = 117
          AltBtnWidth = 15
          ButtonWidth = 24
          OnButtonClick = ECODFORNECEDORButtonClick
        end
        object Edit2: TEdit
          Left = 328
          Top = 64
          Width = 105
          Height = 21
          TabOrder = 4
          Visible = False
        end
        object EdtCodPro1: TAlignEdit
          Left = 328
          Top = 40
          Width = 105
          Height = 21
          Hint = 'Pressione F2 para Consultar ou F3 para Cadastrar Produto'
          TabStop = False
          Alignment = taRightJustify
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
        end
        object edtcodpro: TRzButtonEdit
          Left = 68
          Top = 6
          Width = 121
          Height = 21
          Text = ''
          CharCase = ecUpperCase
          TabOrder = 6
          OnChange = edtcodproChange
          OnEnter = edtcodproEnter
          OnExit = OD
          OnKeyDown = edtcodproKeyDown
          OnKeyPress = edtcodproKeyPress
          ButtonGlyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
            9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
            C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
            A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
            E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
            F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
            DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
            F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
            D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
            F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
            DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
            F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
            E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ButtonNumGlyphs = 1
          ButtonKind = bkCustom
          AltBtnWidth = 15
          ButtonWidth = 24
          OnButtonClick = edtcodproButtonClick
        end
        object EdtNomePro: TEdit
          Left = 193
          Top = 6
          Width = 311
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 70
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 7
        end
        object Edit1: TEdit
          Left = 63
          Top = 224
          Width = 441
          Height = 21
          TabOrder = 8
          Visible = False
        end
        object Edit3: TEdit
          Left = 64
          Top = 200
          Width = 169
          Height = 21
          TabOrder = 9
          Visible = False
        end
      end
    end
  end
  object dsfornecedor_codigo: TDataSource
    DataSet = qrfornecedor_codigo
    OnDataChange = dsfornecedor_codigoDataChange
    Left = 288
    Top = 152
  end
  object pop1: TPopupMenu
    Left = 216
    Top = 88
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = Incluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 115
      OnClick = Gravar1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = Excluir1Click
    end
    object Retornar1: TMenuItem
      Caption = 'Retornar'
      ShortCut = 27
      OnClick = Retornar1Click
    end
  end
  object qrfornecedor: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from fornecedores')
    Left = 248
    Top = 88
    object qrfornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrfornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 70
    end
    object qrfornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 70
    end
    object qrfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qrfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qrfornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object qrfornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrfornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrfornecedorFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object qrfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object qrfornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Origin = 'HOMEPAGE'
      Size = 50
    end
    object qrfornecedorTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object qrfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qrfornecedorIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qrfornecedorREPRESCELULAR: TStringField
      FieldName = 'REPRESCELULAR'
      Origin = 'REPRESCELULAR'
      Size = 15
    end
    object qrfornecedorUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qrfornecedorDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
    end
    object qrfornecedorOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object qrfornecedorREPRESNOME: TStringField
      FieldName = 'REPRESNOME'
      Origin = 'REPRESNOME'
      Size = 70
    end
    object qrfornecedorREPRESFONEFAX: TStringField
      FieldName = 'REPRESFONEFAX'
      Origin = 'REPRESFONEFAX'
      Size = 15
    end
    object qrfornecedorREPRESEMAIL: TStringField
      FieldName = 'REPRESEMAIL'
      Origin = 'REPRESEMAIL'
      Size = 50
    end
    object qrfornecedorREPRESOBSERVACOES: TBlobField
      FieldName = 'REPRESOBSERVACOES'
      Origin = 'REPRESOBSERVACOES'
    end
    object qrfornecedorPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object qrfornecedorINSC_PRODUTOR: TStringField
      FieldName = 'INSC_PRODUTOR'
      Origin = 'INSC_PRODUTOR'
    end
    object qrfornecedorCOD_LINHA: TIntegerField
      FieldName = 'COD_LINHA'
      Origin = 'COD_LINHA'
    end
    object qrfornecedorLINHA: TStringField
      FieldName = 'LINHA'
      Origin = 'LINHA'
      Size = 70
    end
    object qrfornecedorCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrfornecedorcodigo_ibge: TStringField
      FieldName = 'codigo_ibge'
      Origin = '"codigo_ibge"'
      Size = 7
    end
    object qrfornecedorNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qrfornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qrfornecedorTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object qrfornecedorVALOR_LEITE: TFMTBCDField
      FieldName = 'VALOR_LEITE'
      Precision = 18
      Size = 2
    end
  end
  object qrfornecedor_codigo: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from FORNECEDOR_CODIGO')
    Left = 200
    Top = 168
    object qrfornecedor_codigoCODFORNECEDOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object qrfornecedor_codigofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrfornecedor_codigoCODPRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
    end
    object qrfornecedor_codigoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 30
    end
    object qrfornecedor_codigoPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = qrProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object qrfornecedor_codigoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object query: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      '')
    Left = 312
    Top = 248
  end
  object qrProduto: TFDQuery
    Active = True
    Connection = DM.Coneccao
    SQL.Strings = (
      'select CODIGO, DESCRICAO from PRODUTOS')
    Left = 248
    Top = 120
    object qrProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
  end
end
