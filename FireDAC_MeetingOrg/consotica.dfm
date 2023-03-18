object FormConsOtica: TFormConsOtica
  Left = 395
  Top = 254
  BorderStyle = bsDialog
  Caption = 'Consulta Oticas'
  ClientHeight = 343
  ClientWidth = 782
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
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 782
    Height = 298
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    TabStop = True
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 774
      Height = 290
      Align = alClient
      Color = clWhite
      DataSource = DM.DTS_OTICA
      FixedStyle = fsMild
      FixedTheme = ftNone
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      ListBorder = lbMild
      MarkerStyle = msDefault
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking]
      OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgLoadCurrentOrder, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
      TabOrder = 0
      Totals.Color = 10930928
      OnDblClick = XDBGrid1DblClick
      OnKeyPress = XDBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cons.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Pessoa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 213
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESFERA_D'
          Title.Alignment = taCenter
          Title.Caption = 'Esf. Direito'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESFERA_E'
          Title.Alignment = taCenter
          Title.Caption = 'Esf. Esq.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLILINDRICO_D'
          Title.Alignment = taCenter
          Title.Caption = 'Cil. Direito'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLINDRICO_E'
          Title.Alignment = taCenter
          Title.Caption = 'Cili. Esq.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EIXO_D'
          Title.Alignment = taCenter
          Title.Caption = 'Eixo Dir.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EIXO_E'
          Title.Alignment = taCenter
          Title.Caption = 'Eixo Esq.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DP_LONGE'
          Title.Alignment = taCenter
          Title.Caption = 'DP Longe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DP_PERTO'
          Title.Alignment = taCenter
          Title.Caption = 'DP Perto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_ADICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Pert. FDic'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 5
      Top = 5
      Width = 219
      Height = 13
      Caption = 'Entre Com o Nome/Raz'#227'o Social - F2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 8
      Top = 21
      Width = 657
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 680
      Top = 8
      Width = 75
      Height = 33
      Caption = '&Buscar'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    end
  end
  object Edit2: TEdit
    Left = 552
    Top = 8
    Width = 97
    Height = 21
    TabOrder = 2
    Visible = False
  end
end
