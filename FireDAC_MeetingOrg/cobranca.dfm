object FormCobranca: TFormCobranca
  Left = 387
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'a'
  ClientHeight = 412
  ClientWidth = 804
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit2: TDateEdit
    Left = 642
    Top = 155
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Visible = False
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 412
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 802
      Height = 113
      Align = alTop
      Caption = 'Op'#231#245'es de Filtragem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 4
        Top = 51
        Width = 74
        Height = 13
        Caption = 'Data Vencto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 195
        Top = 51
        Width = 12
        Height = 13
        Caption = 'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TRxLabel
        Left = 4
        Top = 18
        Width = 47
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 545
        Top = 20
        Width = 54
        Height = 13
        Caption = 'Portador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 329
        Top = 51
        Width = 70
        Height = 13
        Caption = 'Data Movto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 525
        Top = 49
        Width = 12
        Height = 13
        Caption = 'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 330
        Top = 80
        Width = 44
        Height = 13
        Caption = 'Ordem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 4
        Top = 78
        Width = 45
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 273
        Top = 100
        Width = 97
        Height = 21
        Enabled = False
        TabOrder = 13
        Visible = False
      end
      object DateEdit4: TDateEdit
        Left = 223
        Top = 48
        Width = 93
        Height = 19
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 2
      end
      object suiButton2: TsBitBtn
        Left = 695
        Top = 41
        Width = 97
        Height = 27
        Caption = '&Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = suiButton2Click
        ImageIndex = 158
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object DateEdit3: TDateEdit
        Left = 79
        Top = 48
        Width = 92
        Height = 19
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 170
        Top = 16
        Width = 279
        Height = 22
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 4
        object RxLabel6: TRxLabel
          Left = 4
          Top = 3
          Width = 269
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object Cliente: TComboEdit
        Left = 79
        Top = 16
        Width = 92
        Height = 23
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
        TabOrder = 0
        Text = ''
        OnButtonClick = ClienteButtonClick
        OnChange = ClienteChange
        OnExit = ClienteExit
      end
      object Edit1: TEdit
        Left = 600
        Top = 18
        Width = 49
        Height = 21
        TabOrder = 5
      end
      object DateEdit1: TDateEdit
        Left = 409
        Top = 48
        Width = 92
        Height = 19
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 6
      end
      object DateEdit2: TDateEdit
        Left = 555
        Top = 48
        Width = 93
        Height = 19
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 7
      end
      object suiButton1: TsBitBtn
        Left = 695
        Top = 10
        Width = 97
        Height = 27
        Caption = 'Fec&har'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = suiButton1Click
        ImageIndex = 137
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton3: TsBitBtn
        Left = 695
        Top = 71
        Width = 97
        Height = 27
        Caption = '&Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = suiButton3Click
        ImageIndex = 148
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object Combobox1: TComboBox
        Left = 451
        Top = 17
        Width = 93
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 10
        Text = 'Pendentes'
        Items.Strings = (
          ''
          'Pendentes'
          'Vencidas'
          'A Vencer')
      end
      object ComboBox2: TComboBox
        Left = 409
        Top = 76
        Width = 132
        Height = 21
        TabOrder = 11
        Text = 'CODIGO_CLIENTE'
        Items.Strings = (
          'DATA_VENCIMENTO'
          'CODIGO_CLIENTE'
          'DATA_COMPRA'
          'CODIGO_COMPRA'
          'PORTADOR')
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 79
        Top = 76
        Width = 238
        Height = 21
        KeyField = 'COD_CIDADE'
        ListField = 'NOME'
        ListSource = DM.DTS_cidades
        TabOrder = 12
      end
      object CheckBox2: TCheckBox
        Left = 544
        Top = 68
        Width = 151
        Height = 18
        Caption = 'Excluir N'#227'o Receb'#237'veis'
        TabOrder = 14
      end
      object CheckBox1: TCheckBox
        Left = 544
        Top = 89
        Width = 151
        Height = 13
        Caption = 'Sem Boletos'
        TabOrder = 15
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 114
      Width = 802
      Height = 216
      Align = alClient
      Caption = 'Dados das Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBGrid1: TXDBGrid
        Left = 2
        Top = 15
        Width = 798
        Height = 199
        Align = alClient
        DataSource = DMCOB.dts_cobranca1
        FixedStyle = fsMild
        FixedTheme = ftButtons
        FocusRect = frMild
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GridStyle.VisualStyle = vsXPStyle
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        MarkerStyle = msMild
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Totals.Font.Charset = DEFAULT_CHARSET
        Totals.Font.Color = clWindowText
        Totals.Font.Height = -11
        Totals.Font.Name = 'MS Sans Serif'
        Totals.Font.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            ButtonStyle = cbsNone
            CheckBoxStyle = cbMild
            CheckBoxValues = 'X;Y'
            Expanded = False
            FieldName = 'CHEK_BOX'
            Title.Caption = '.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnFace
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 21
          end
          item
            Expanded = False
            FieldName = 'CODIGO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Visible = True
            Width = 57
          end
          item
            Expanded = False
            FieldName = 'NOME_SACADO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Visible = True
            Width = 220
          end
          item
            Expanded = False
            FieldName = 'CODIGO_COMPRA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Venda'
            Visible = True
            Width = 66
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parc.'
            Visible = True
            Width = 32
          end
          item
            Expanded = False
            FieldName = 'BANCO_PORTADOR'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Visible = True
            Width = 42
          end
          item
            Expanded = False
            FieldName = 'DATA_VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Vecto'
            Visible = True
            Width = 70
          end
          item
            Expanded = False
            FieldName = 'DIAS_VENCIDO'
            Title.Caption = 'Dias Venc'
            Visible = True
            Width = 60
          end
          item
            Expanded = False
            FieldName = 'DT_PREVISAO_PGTO'
            Title.Caption = 'Prev. Pagto'
            Visible = True
            Width = 70
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Titulo'
            Visible = True
            Width = 72
          end
          item
            Expanded = False
            FieldName = 'VALOR_JUROS'
            Title.Alignment = taCenter
            Title.Caption = 'Juros'
            Visible = True
            Width = 57
          end
          item
            Expanded = False
            FieldName = 'VALOR_DESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Visible = True
            Width = 59
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Pago'
            Visible = True
            Width = 77
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Receber'
            Visible = True
            Width = 85
          end
          item
            Expanded = False
            FieldName = 'NUMBOLETO'
            Title.Alignment = taRightJustify
            Title.Caption = 'N'#186' Boleto'
            Visible = True
            Width = 74
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Visible = True
            Width = 205
          end
          item
            Expanded = False
            FieldName = 'DATA_COMPRA'
            Title.Caption = 'Data Compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMESSA'
            Title.Caption = 'Remessa'
            Visible = True
            Width = 62
          end
          item
            CheckBox = True
            CheckBoxStyle = cbMild
            CheckBoxToggle = ctSelectClick
            CheckBoxValues = 'T;F'
            Expanded = False
            FieldName = 'ENVIADO'
            Title.Caption = 'Enviado'
            Visible = True
            Width = 52
          end
          item
            Expanded = False
            FieldName = 'COBRADOR'
            Title.Caption = 'Cobrador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCobrador'
            Title.Caption = 'Nome Cobrador'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 221
        Top = 33
        Width = 433
        Height = 130
        TabOrder = 1
        Visible = False
        object RxLabel8: TRxLabel
          Left = 4
          Top = 41
          Width = 57
          Height = 13
          Caption = 'Cobrador:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object myLabel3d1: TmyLabel3d
          Left = 20
          Top = 13
          Width = 407
          Height = 25
          Caption = 'Lan'#231'amento de Comiss'#227'o de Cobrador '
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
        object RxLabel10: TRxLabel
          Left = 6
          Top = 70
          Width = 137
          Height = 13
          Caption = 'Data Previs'#227'o de Pagto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboEdit1: TComboEdit
          Left = 69
          Top = 38
          Width = 76
          Height = 23
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
          TabOrder = 0
          Text = ''
          OnButtonClick = ComboEdit1ButtonClick
          OnExit = ComboEdit1Exit
        end
        object Panel2: TPanel
          Left = 150
          Top = 37
          Width = 267
          Height = 23
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15263976
          TabOrder = 1
          object RxLabel9: TRxLabel
            Left = 7
            Top = 2
            Width = 249
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
        object suiButton9: TsBitBtn
          Left = 105
          Top = 96
          Width = 110
          Height = 27
          Caption = 'Con&firmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
            FBF2B9EBB885DC8262D25E52CD4D52CD4D5CD0587CD979ACE7AAEBF9EAFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFBFEFBB0E8AF5CD15A52CE5058D4565FDB5C62DE6062DE6060DC5D5AD65752
            CE5055CF539BE39AF4FCF4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFF2FBF27CDA7C52CF525ED95E61D66160D0605FCC5F5FCA5F5FCA
            5F5FCB5F60CF6060D46061DC6152CF526AD56AE7F8E7FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFF7FDF770D87351CF5560D6635ECC625ECB625ECB62
            5ECB625ECB625ECB625ECB625ECB625ECB625ECC6260D36352D05760D363E7F8
            E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF86DF8B51CF575FD1655ECC645E
            CC645ECC6460DD6761E26861E16760DA665ECE645ECC645ECC645ECC645ECC64
            5FCF6552CF596DD872F7FDF8FF00FFFF00FFFF00FFFF00FFCBF1CE51D05B5FCF
            675ECC675ECC675ECD6760DD6A62E66CFFFFFFFFFFFF65E56F60DA695ECF675E
            CE675ECD675ECC675ECC675ECE6751CF5AABE9B0FF00FFFF00FFFF00FFFF00FF
            6FDA7B56CA625ECD695ECD695ECF6A60DD6E60E46FFFFFFFFFFFFFFFFFFFFFFF
            FF64E5735FDB6D5ECF6A5ECF6A5ECE695ECD695ECD695ACC6758D365F2FCF3FF
            00FFFF00FFDAF6DD50CC605ECE6C5ECE6C5ECF6C60DE7160E472FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF60E5735FDD715ECF6D5ECF6D5ECF6C5ECE6C5ECE
            6C50C960B9EDBFFF00FFFF00FFAFEBB950C3625ECF705ECF705FDD7460E275FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60E6775FDD745ED071
            5ED0715ECF705ECF7054C5668CE19AFF00FFFF00FF8FE19E52C5685DD1735DD1
            735ED975FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF60E77A5EDF785DD1735DD1735DD07358CB6E6ED682FF00FFFF00FF83DB96
            54C96E5DD1765DD2775DD277FFFFFFFFFFFFFFFFFFFFFFFF5DD2775DD277FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF60E87E5EDF7B5DD2775DD17659CD7363CF7BFF
            00FFFF00FF86DB9B53CA715CD37A5CD37A5CD37A5CD37AFFFFFFFFFFFF61D47F
            5CD37A5CD37A5CD37AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EE7815EDF7E5CD3
            7A59CF7665CE7FFF00FFFF00FF99E2AD50C8715CD57D5CD47D5CD37D5CD37D5C
            D37D5CD37D5CD37D5CD37D5CD37D5CD37D5CD37DFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF5EDE815CD57D55CE767AD693FF00FFFF00FFC0EECE4DC9735CD7815BD6
            815BD6815BD5815BD5815BD5815BD5815BD5815BD5815BD5815BD5815BD581FF
            FFFFFFFFFFFFFFFFFFFFFF5BD8815CD7814ECA74A1E3B5FF00FFFF00FFF2FCF5
            51CC795BD8835CD8845BD6835BD6835BD6835BD6835BD6835BD6835BD6835BD6
            835BD6835BD6835BD683FFFFFFFFFFFF5BD7845CD8845CD9854DCB76D7F4E1FF
            00FFFF00FFFF00FF92E0AD4DCD7A5CDA885CD8875BD7865BD6865BD6865BD686
            5BD6865BD6865BD6865BD6865BD6865BD6865BD7865BD8875CD9875CDA8852D1
            7E71D794FF00FFFF00FFFF00FFFF00FFECFAF155D28354D5835BDA8A5BD98A5B
            D8895BD8895BD7895BD7895BD7895BD7895BD7895BD7895BD8895BD88A5BDA8A
            5BDC8B59DA894DD07DD5F4E1FF00FFFF00FFFF00FFFF00FFFF00FFC8F1D84DD1
            8157DA8A5BDC8E5BDA8D5BD98D5BD88C5BD88C5BD88C5BD88C5BD88C5BD88C5B
            D98D5BDA8D5BDD8E5BDF8F4DD281A7E9C1FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFB1EDC94FD58653D8895BDF915BDC8F5BDB8F5BDA8F5BDA8F5BDA
            8F5BDB8F5BDB8F5BDD905BDF9157DD8E4DD48491E5B4FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFCCF4DD59DA904CD68659E0925BE194
            5BE0945BDF935BE0945BE0945BE2945BE3944DD78850D88AB1EECBFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4FDF89E
            EABF57DB904CD8894CD7884DD88A4FDA8C4CD7884CD88950DA8C8FE7B6EAFAF1
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFBFEFCCFF5E0B7F1D19AEBBE94EABBB7F1D1C8F4DCF2
            FCF7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 2
          OnClick = suiButton9Click
          SkinData.SkinSection = 'BUTTON'
        end
        object suiButton10: TsBitBtn
          Left = 237
          Top = 96
          Width = 110
          Height = 27
          Caption = '&Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF2
            F6FFB8CCFF82A7FF5E8DFF4D81FF4D81FF5889FF79A0FFAAC3FFEAF0FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFBFCFFAFC6FF5A8AFF5082FF598BFF6294FF6699FF6699FF6296FF5B8EFF50
            82FF5385FF9AB7FFF4F7FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFF2F6FF7BA3FF5085FF6092FF628CFF5F83FF5E7FF95D7DF35D7D
            F35E7FF75E82FF6189FF6595FF5085FF6996FFE7EEFFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFF7FAFF729CFF5386FF638BFF5F80F85E7FF45E7FF4
            5E7FF45E7FF45E7FF45E7FF45E7FF45E7FF45E7FF56288FF5487FF6191FFE7EE
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF89ADFF5486FF648AFF6288FF63
            89FF6289FF6286FF6081F96081F96081F96081F96287FF6389FF6389FF6286FF
            6286FF5786FF719CFFF7FAFFFF00FFFF00FFFF00FFFF00FFCEDDFF588AFF6385
            FF6487FFB5C7FFFFFFFFFFFFFF678DFF6588FF6283F96283F96589FF678DFFFF
            FFFFFFFFFFB5C6FF6486FF6283FB5786FFAFC7FFFF00FFFF00FFFF00FFFF00FF
            78A3FF5D81FF6383F76486FEFFFFFFFFFFFFFFFFFFFFFFFF688FFF678DFF678D
            FF678EFFFFFFFFFFFFFFFFFFFFFFFFFF6587FF6383F76183FE6192FFF3F7FFFF
            00FFFF00FFDDE8FF5B86FF6585F86585F86686FBFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF6C95FF6C93FFF2F5FFFFFFFFFFFFFFFFFFFFFFFFFF6586F96585F86585
            F85A81FFBED3FFFF00FFFF00FFB6CEFF597CF66787F96788FB6788FC6788FCFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6788FC
            6788FB6787F96787F95D7EF296B7FFFF00FFFF00FF9AB7FF5E7FEF698AFB698A
            FC698AFD698AFD698AFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF698AFD698AFD698AFD698AFB6989F96484F47C9EFFFF00FFFF00FF90ACFF
            6282F36C8BFE6C8CFE6C8CFE6C8CFE6C8CFE6C8CFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF6C8CFE6C8CFE6C8CFE6C8CFE6C8CFE6C8BFD6787F77292FFFF
            00FFFF00FF93ADFF6484F56D8EFF6D8EFF6D8EFF6D8EFF6D8EFF6E8FFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E91FF6E91FF6D8EFF6D8EFF6D8EFF6D8E
            FF698AFB7493FBFF00FFFF00FFA6BBFF6385F76F91FF6F90FF7091FF7398FF77
            9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF759BFF7397FF
            6F90FF6F91FF7091FF688AFB88A2FBFF00FFFF00FFC9D7FF6384F77293FF7192
            FF7598FF88A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF779CFF7497FF7292FF7293FF6486F8ADC0FFFF00FFFF00FFF4F7FF
            698AFC7395FF7395FF7598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7394FF7394
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF769AFF7396FF7496FF6588FCDDE6FFFF
            00FFFF00FFFF00FFA2B7FF688AFF7698FF7596FFFFFFFFFFFFFFFFFFFFFFFFFF
            7595FF7595FF7595FF7595FFFFFFFFFFFFFFFFFFFFFFFFFF7799FF7799FF6D8F
            FF86A2FFFF00FFFF00FFFF00FFFF00FFEFF3FF7193FF7194FF789AFFBBCCFFFF
            FFFFFFFFFF7697FF7697FF7697FF7697FF7697FF7697FFFFFFFFFFFFFFBDCDFF
            789BFF769AFF6A8EFFDCE4FFFF00FFFF00FFFF00FFFF00FFFF00FFD2DDFF6C91
            FF769AFF7A9CFF789AFF7899FF7899FF7899FF7899FF7899FF7899FF7899FF78
            99FF799BFF7A9DFF7CA0FF6C91FFB7C9FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFC0D1FF7095FF7498FF7CA0FF7B9DFF7A9CFF7A9BFF7A9BFF7A9B
            FF7A9CFF7A9DFF7C9EFF7DA0FF7A9EFF6F94FFA7BDFFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFD7E1FF7C9EFF7195FF7DA1FF7FA2FF
            7EA0FF7EA0FF7EA0FF7FA1FF7FA2FF7FA4FF7296FF7499FFC1D1FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6F9FFB3
            C8FF7BA0FF7399FF7299FF7399FF759BFF7399FF7399FF769CFFA8C0FFEFF3FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFCFDFFDAE5FFC7D7FFB1C8FFACC4FFC7D7FFD5E1FFF5
            F8FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 3
          OnClick = suiButton10Click
          SkinData.SkinSection = 'BUTTON'
        end
        object Einicio: TDateEdit
          Left = 180
          Top = 65
          Width = 93
          Height = 19
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
      end
      object Panel3: TPanel
        Left = 228
        Top = 40
        Width = 409
        Height = 105
        TabOrder = 2
        Visible = False
        object myLabel3d2: TmyLabel3d
          Left = 34
          Top = 19
          Width = 346
          Height = 25
          Caption = 'Tipo do Formulario de Impress'#227'o'
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
        object suiButton11: TsBitBtn
          Left = 75
          Top = 62
          Width = 110
          Height = 27
          Caption = '&A4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = suiButton11Click
          ImageIndex = 110
          Images = FormPrincipal.sAlphaImageList1
          SkinData.SkinSection = 'BUTTON'
        end
        object suiButton12: TsBitBtn
          Left = 220
          Top = 62
          Width = 110
          Height = 27
          Caption = '&Raz'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = suiButton12Click
          ImageIndex = 72
          Images = FormPrincipal.sAlphaImageList1
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 370
      Width = 802
      Height = 41
      Align = alBottom
      TabOrder = 2
      object suiButton4: TsBitBtn
        Left = 217
        Top = 8
        Width = 110
        Height = 27
        Caption = 'Re&parcelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = suiButton4Click
        ImageIndex = 50
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton5: TsBitBtn
        Left = 335
        Top = 8
        Width = 110
        Height = 27
        Caption = 'Lancar &Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = suiButton5Click
        ImageIndex = 82
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton6: TsBitBtn
        Left = 453
        Top = 8
        Width = 110
        Height = 27
        Caption = 'B&oleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        TabOrder = 2
        OnClick = suiButton6Click
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton7: TsBitBtn
        Left = 688
        Top = 8
        Width = 110
        Height = 27
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = suiButton7Click
        ImageIndex = 110
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object suiButton8: TsBitBtn
        Left = 570
        Top = 9
        Width = 110
        Height = 27
        Caption = 'D&uplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = suiButton8Click
        ImageIndex = 110
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object RadioButton1: TRadioButton
        Left = 2
        Top = 13
        Width = 99
        Height = 17
        Caption = '&Marcar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 103
        Top = 13
        Width = 113
        Height = 17
        Caption = '&Desmarca Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = RadioButton2Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 330
      Width = 802
      Height = 40
      Align = alBottom
      TabOrder = 3
      object Label1: TLabel
        Left = 4
        Top = 14
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel2: TRxLabel
        Left = 153
        Top = 15
        Width = 50
        Height = 13
        Caption = 'Parcelas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 289
        Top = 15
        Width = 37
        Height = 13
        Caption = 'Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 406
        Top = 15
        Width = 35
        Height = 13
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 539
        Top = 15
        Width = 35
        Height = 13
        Caption = 'Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel7: TRxLabel
        Left = 670
        Top = 15
        Width = 34
        Height = 13
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 208
        Top = 13
        Width = 80
        Height = 19
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 324
        Top = 13
        Width = 80
        Height = 19
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 438
        Top = 13
        Width = 80
        Height = 18
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 578
        Top = 13
        Width = 80
        Height = 19
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 709
        Top = 13
        Width = 80
        Height = 19
        AutoSize = False
        Color = 15263976
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object suiButton13: TsBitBtn
        Left = 1
        Top = 8
        Width = 110
        Height = 27
        Caption = 'Remove Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          FA090000424DFA09000000000000360000002800000019000000190000000100
          200000000000C409000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DA
          D900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DA
          D900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D9DAD900E5E5E500E4E4E400E4E4E400E4E4
          E400E4E4E400E4E4E400E4E4E400D7D7D700DCDCDC00E4E4E400E4E4E400E4E4
          E400E4E4E400E4E4E400E4E4E400E4E4E400E5E5E500D9DAD900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900E5E5E500E5E5E500E5E5
          E500E6E6E600E6E6E600E5E5E500CDCDCD0093372300C9C9C900E6E6E600E5E5
          E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E5E5E500D9DAD900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900E7E7E700E7E7
          E700E7E7E700E8E8E800E5E5E500B5ADAD00A7491F0093372300C1C1C100DEDE
          DE00E4E4E400E7E7E700E6E6E600E5E5E500E5E5E500E4E4E400E5E5E500D9DA
          D900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900E9E9
          E900E9E9E900E9E9E900E2E2E2009E6D6D00B9622700B4592600933723008766
          5C00846F6D0098989800BDBDBD00E0E0E000E7E7E700E7E7E700E6E6E600E5E5
          E500D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DA
          D900EBEBEB00EBEBEB00EBEBEB00B95E3800D18C2600C5762400BC672500B55B
          2600B55B2700B75E2800B3582500772F280096969600D8D8D800E9E9E900E8E8
          E800E7E7E700D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D9DAD900EDEDED00EDEDED00EDEDED00ECD49B00DC9A1E00D38D2300CA7E
          2400C16E2300B75E2300B45A2500B45A2600B8602800A7421C0095959500E1E1
          E100E9E9E900E9E9E900D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00D9DAD900EEEEEE00EEEEEE00EFEFEF00EFEFEF00EDE4CD00E1A5
          2600D8952300C9802C00CEB9A400DABBA000C6855800C06C2D00CC813400B459
          2600B7B7B700EBEBEB00EAEAEA00D9DAD900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00D9DAD900F0F0F000F0F0F000F0F0F000F0F0F000F1F1
          F100F1F0EF00E8B53900C9802C00D5D5D500F1F1F100F0F0F000F0F0F000E3BD
          8C00E8AE450093908F00E5E5E500ECECEC00D9DAD900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D9DAD900F2F2F200F1F1F100F2F2F200C9C9
          C900E7E7E700F3F3F300F3F3F300EED48C00EDEDED00F2F2F200F0F0F000F1F1
          F100F1F1F100EDDDBF00C6855100D8D8D800EDEDED00D9DAD900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900F3F3F300F3F3F300F3F3
          F300D67C2A00A6A6A600E9E9E900F4F4F400F4F4F400F4F4F400F4F4F400B3B3
          B300D6D6D600F1F1F100F1F1F100E7C08B00EAEAEA00EFEFEF00D9DAD900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900F4F4F400F3F3
          F300F4F4F400E6A8490093887F00C5C5C500EEEEEE00F5F5F500F5F5F500F4F4
          F40082464300AAAAAA00E7E7E700F2F2F200F1F1F100F0F0F000EFEFEF00D9DA
          D900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900F5F5
          F500F5F5F500F5F5F500EED5AA00E4A5400094483A009A9A9A00C2C2C200D6D6
          D600D7D7D700BB622A00802A1B0098989800DBDBDB00F1F1F100F1F1F100F0F0
          F000D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DA
          D900F6F6F600F6F6F600F6F6F600F7F7F700E2A64200D7943000C7772700983A
          1A009337230093372300B75E2800B55B27009D3E1A008A868600CBCBCB00EFEF
          EF00F1F1F100D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D9DAD900F7F7F700F7F7F700F7F7F700F8F8F800F6F3ED00E0A32C00D591
          2300CD832400C5752500C16F2500B75F2600B4592600B45A2600B2572500896C
          6D00E5E5E500F2F2F200D9DAD900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00D9DAD900F8F8F800F8F8F800F8F8F800F9F9F900F9F9F900F9F9
          F900EBC56B00DE9F2300D48F1F00D0872000C87B2400BF6C2500B65E2500BA66
          3600DBD7D500F3F3F300F3F3F300D9DAD900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00D9DAD900F9F9F900F9F9F900F9F9F900FAFAFA00FAFA
          FA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00D8952100CF862000CE96
          5800E9E9E900F6F6F600F5F5F500F4F4F400D9DAD900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D9DAD900F9F9F900F9F9F900FAFAFA00FAFA
          FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00E8AF1A00D7BE
          8800F3F3F300F8F8F800F8F8F800F6F6F600F3F3F300D9DAD900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900FAFAFA00FAFAFA00FAFA
          FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F0E6
          CC00F8F8F800F5F5F50099999900A9A9A900B9B9B900D5D5D500FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900FAFAFA00FAFA
          FA00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FBFBFB00FBFB
          FB00FAFAFA00FAFAFA00F8F8F800CCCCCC00FFFFFF00EAEAEA00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DAD900FAFA
          FA00FAFAFA00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FBFB
          FB00FBFBFB00FBFBFB00FAFAFA00F8F8F800E2E2E200E8E8E800FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9DA
          D900FAFAFA00FAFAFA00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFC
          FC00FCFCFC00FBFBFB00FBFBFB00FAFAFA00ECECEC00E7E7E700FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DA
          D900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900D9DAD900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentFont = False
        TabOrder = 5
        OnClick = suiButton13Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object SPC_ATUALIZA: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_REMOVE_JUROS'
    Left = 370
    Top = 16
  end
end
