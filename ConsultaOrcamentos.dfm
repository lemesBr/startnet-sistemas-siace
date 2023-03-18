object FormConsultaOrcamentos: TFormConsultaOrcamentos
  Left = 498
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta - Or'#231'amentos'
  ClientHeight = 589
  ClientWidth = 910
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
    Width = 910
    Height = 77
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15198177
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 2
      Width = 906
      Height = 73
      Align = alClient
      ExplicitWidth = 777
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
      Left = 577
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
      Left = 577
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
      Left = 7
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
    object Label1: TLabel
      Left = 381
      Top = 51
      Width = 41
      Height = 13
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
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
    object suiButton1: TAdvGlowButton
      Left = 780
      Top = 7
      Width = 113
      Height = 30
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 20
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 2
      OnClick = suiButton1Click
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
    object Edit2: TEdit
      Left = 659
      Top = 10
      Width = 110
      Height = 21
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 197
      Top = 12
      Width = 374
      Height = 21
      Color = clBtnHighlight
      Enabled = False
      TabOrder = 4
    end
    object Cliente: TComboEdit
      Left = 77
      Top = 12
      Width = 102
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
      OnKeyPress = ClienteKeyPress
    end
    object Edit11: TEdit
      Left = 659
      Top = 47
      Width = 110
      Height = 21
      TabOrder = 6
    end
    object suiButton7: TAdvGlowButton
      Left = 780
      Top = 40
      Width = 113
      Height = 30
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 35
      Images = FormPrincipal.sAlphaImageList3
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 7
      OnClick = suiButton7Click
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
    object ComboBox1: TComboBox
      Left = 426
      Top = 48
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 8
      Text = 'ABERTO'
      Items.Strings = (
        'ABERTO'
        'FECHADO')
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 77
    Width = 910
    Height = 131
    Align = alTop
    Color = 15263976
    TabOrder = 1
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 908
      Height = 4
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = clLime
      TabOrder = 0
    end
    object suiDBGrid1: TXDBGrid
      Left = 1
      Top = 5
      Width = 908
      Height = 125
      Align = alClient
      BorderStyle = bsNone
      Color = 16776176
      DataSource = DM.Dts_orcamento
      FixedColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
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
          Title.Caption = 'N.'#186' Or'#231'.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 78
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 85
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
          Visible = True
          Width = 278
        end
        item
          Expanded = False
          FieldName = 'VALOR_ITENS'
          Title.Caption = 'V. Itens'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTO'
          Title.Caption = 'V. Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 79
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
          Visible = True
          Width = 97
        end
        item
          Expanded = False
          FieldName = 'EXPORTADO'
          PickList.Strings = (
            'S'
            'N')
          PickText.Strings = (
            'SIM'
            'N'#195'O')
          Title.Caption = 'Exp'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          PickList.Strings = (
            '0'
            '1')
          PickText.Strings = (
            'ABERTO'
            'FECHADO')
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 71
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
          Visible = True
          Width = 90
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
    Width = 910
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
      Left = 376
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
      Left = 614
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
      Left = 614
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
      Left = 614
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
      Left = 340
      Top = 57
      Width = 105
      Height = 13
      Caption = 'Q.de Or'#231'amentos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel43: TRxLabel
      Left = 614
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
      Width = 906
      Height = 19
      Align = alBottom
      BevelInner = bvRaised
      Color = 15263976
      TabOrder = 0
      object Label9: TLabel
        Left = 2
        Top = 2
        Width = 902
        Height = 15
        Align = alClient
        Alignment = taCenter
        Caption = 'ITENS DO OR'#199'AMENTO'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 142
        ExplicitHeight = 13
      end
    end
    object suiDBEdit1: TDBEdit
      Left = 108
      Top = 55
      Width = 140
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit2: TDBEdit
      Left = 108
      Top = 30
      Width = 140
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit3: TDBEdit
      Left = 185
      Top = 5
      Width = 408
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit4: TDBEdit
      Left = 108
      Top = 5
      Width = 71
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit5: TDBEdit
      Left = 448
      Top = 31
      Width = 145
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit7: TDBEdit
      Left = 729
      Top = 55
      Width = 165
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit8: TDBEdit
      Left = 729
      Top = 5
      Width = 165
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit9: TDBEdit
      Left = 729
      Top = 30
      Width = 165
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit41: TDBEdit
      Left = 448
      Top = 55
      Width = 145
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit42: TDBEdit
      Left = 729
      Top = 78
      Width = 165
      Height = 18
      TabStop = False
      BevelKind = bkSoft
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
    end
    object suiDBEdit10: TDBEdit
      Left = 108
      Top = 79
      Width = 485
      Height = 18
      TabStop = False
      BevelInner = bvNone
      BevelKind = bkSoft
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
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 329
    Width = 910
    Height = 207
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 3
    object suiDBGrid2: TXDBGrid
      Left = 1
      Top = 1
      Width = 908
      Height = 205
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DM.Dts_orcamento_itens
      FixedColor = 10930928
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridStyle.VisualStyle = vsXPStyle
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
          Width = 89
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
          Visible = True
          Width = 112
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
          Visible = True
          Width = 288
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
          Visible = True
          Width = 46
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
          Visible = True
          Width = 110
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desconto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
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
          Visible = True
          Width = 122
        end>
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 536
    Width = 910
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 4
    DesignSize = (
      910
      53)
    object BitBtn3: TAdvGlowButton
      Left = 988
      Top = 0
      Width = 22
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'BitBtn3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object suiButton3: TAdvGlowButton
      Left = 596
      Top = 5
      Width = 130
      Height = 43
      Caption = '&Reimprimir F8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 26
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 1
      OnClick = suiButton3Click
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
    object suiButton4: TAdvGlowButton
      Left = 7
      Top = 4
      Width = 202
      Height = 43
      Caption = 'Exportar P/ Or'#231'amento - F3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 17
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 2
      OnClick = suiButton4Click
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
    object suiButton2: TAdvGlowButton
      Left = 763
      Top = 5
      Width = 130
      Height = 41
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 8
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 3
      OnClick = suiButton2Click
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
    object ExcluirOr: TAdvGlowButton
      Left = 423
      Top = 5
      Width = 130
      Height = 42
      Caption = '&Excluir Or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 4
      OnClick = ExcluirOrClick
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
    object suiButton5: TAdvGlowButton
      Left = 246
      Top = 5
      Width = 130
      Height = 42
      Hint = 'Insere um novo or'#231'amento'
      Caption = 'Gerar Venda - F4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 13
      Images = FormPrincipal.sAlphaImageList2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Spacing = 4
      TabOrder = 5
      OnClick = suiButton5Click
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
    OpcoesPreview.MostrarSETUP = True
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
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    Margens.Left = 10
    Margens.Right = 3
    Margens.Top = 0
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'STARTNET PROVEDOR'
    RegistroUsuario.SerieProduto = 'SITE 7.0 - 2241/0722 (DX104)'
    RegistroUsuario.AutorizacaoKey = 'MG3VT-Y2EA8-TW1F6-D7VUY-XNKH5-D1HWC-FT6NO'
    About = 'RDprint 7.0a'
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
