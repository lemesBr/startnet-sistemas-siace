object FormConsClientes: TFormConsClientes
  Left = 410
  Top = 182
  BorderStyle = bsDialog
  Caption = 'Localizar Cliente Cadastrado'
  ClientHeight = 435
  ClientWidth = 756
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 158
      Top = 9
      Width = 138
      Height = 13
      Caption = 'Entre Com o Nome - F2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 9
      Top = 5
      Width = 99
      Height = 13
      Caption = 'Tipo de Pesquisa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 158
      Top = 21
      Width = 309
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TsBitBtn
      Left = 477
      Top = 12
      Width = 87
      Height = 32
      Caption = '&Buscar'
      TabOrder = 1
      OnClick = BitBtn1Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 158
      Images = FormPrincipal.sAlphaImageList1
    end
    object cbxpesquisa: TComboBox
      Left = 7
      Top = 21
      Width = 143
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Qualquer Parte do Nome'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Qualquer Parte do Nome'
        'Nome de Fantasia'
        'Cpf/Cnpj'
        'Fone'
        'C'#244'njugue'
        'Celular'
        'RG/IE'
        'Pai'
        'M'#227'e'
        'Endereco '
        'Local de trabalho'
        'Tabela')
    end
    object BitBtn2: TsBitBtn
      Left = 665
      Top = 11
      Width = 87
      Height = 32
      Caption = '&Cadastro'
      TabOrder = 3
      OnClick = BitBtn2Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 0
      Images = FormPrincipal.sAlphaImageList1
    end
    object BitBtn3: TsBitBtn
      Left = 571
      Top = 11
      Width = 87
      Height = 32
      Caption = '&Hit'#243'rico'
      TabOrder = 4
      OnClick = BitBtn3Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 106
      Images = FormPrincipal.sAlphaImageList1
    end
  end
  object Edit2: TEdit
    Left = 352
    Top = 0
    Width = 97
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 756
    Height = 160
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 2
    TabStop = True
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 748
      Height = 152
      Align = alClient
      Color = clWhite
      DataSource = DM.DTS_Clientes
      DefaultDrawing = False
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
      OnDblClick = suiDBGrid1DblClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyDown = XDBGrid1KeyDown
      OnKeyPress = suiDBGrid1KeyPress
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 47
        end
        item
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Caption = 'Nome/Raz'#227'o Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 239
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          QuickDraw = False
          ShowBlob = False
          ShowEdit = False
          Title.Caption = 'Cpf/Cnpj'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          ToolTips = False
          Visible = True
          Width = 104
        end
        item
          Expanded = False
          FieldName = 'APELIDO'
          Title.Caption = 'Apelido/ Nome Fantasia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 161
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'TP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 20
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Telefone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 83
        end
        item
          ButtonStyle = cbsEllipsis
          CheckBox = True
          CheckBoxStyle = cbLoweredGray
          CheckBoxValues = 'A;I'
          Color = clWindow
          Expanded = False
          FieldName = 'ATIVO'
          ReadOnly = True
          Title.Caption = 'Ativo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 37
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 209
    Width = 756
    Height = 226
    Align = alBottom
    TabOrder = 3
    object RxLabel6: TRxLabel
      Left = 6
      Top = 9
      Width = 28
      Height = 13
      Caption = 'R.G.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel32: TRxLabel
      Left = 214
      Top = 11
      Width = 62
      Height = 13
      Caption = 'Org. Emisor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 400
      Top = 59
      Width = 51
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 400
      Top = 5
      Width = 39
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 400
      Top = 31
      Width = 25
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 400
      Top = 85
      Width = 34
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel16: TRxLabel
      Left = 592
      Top = 82
      Width = 21
      Height = 13
      Caption = 'Cel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 216
      Top = 35
      Width = 24
      Height = 13
      Caption = 'Fax:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel20: TRxLabel
      Left = 6
      Top = 36
      Width = 61
      Height = 13
      Caption = 'Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel57: TRxLabel
      Left = 6
      Top = 106
      Width = 54
      Height = 13
      Caption = 'Ponto Ref:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel75: TRxLabel
      Left = 693
      Top = 59
      Width = 18
      Height = 13
      Caption = 'N'#186':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 6
      Top = 83
      Width = 34
      Height = 13
      Caption = 'E-mail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel25: TRxLabel
      Left = 6
      Top = 132
      Width = 52
      Height = 13
      Caption = 'C'#244'njugue:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel26: TRxLabel
      Left = 400
      Top = 104
      Width = 46
      Height = 13
      Caption = 'Cpf conj:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel76: TRxLabel
      Left = 6
      Top = 155
      Width = 67
      Height = 13
      Caption = 'Autorizado 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel77: TRxLabel
      Left = 6
      Top = 178
      Width = 67
      Height = 13
      Caption = 'Autorizado 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel78: TRxLabel
      Left = 6
      Top = 201
      Width = 67
      Height = 13
      Caption = 'Autorizado 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel79: TRxLabel
      Left = 399
      Top = 131
      Width = 52
      Height = 13
      Caption = 'Cpf Aut 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel80: TRxLabel
      Left = 399
      Top = 152
      Width = 52
      Height = 13
      Caption = 'Cpf Aut 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel81: TRxLabel
      Left = 399
      Top = 171
      Width = 52
      Height = 13
      Caption = 'Cpf Aut 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 402
      Top = 200
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiDBEdit3: TDBEdit
      Left = 90
      Top = 9
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'RG_IE'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 289
      Top = 7
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ORGAO_EMISSOR'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit4: TDBEdit
      Left = 459
      Top = 56
      Width = 229
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ENDERECO'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object suiDBEdit8: TDBEdit
      Left = 459
      Top = 6
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CIDADE'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object suiDBEdit7: TDBEdit
      Left = 459
      Top = 30
      Width = 285
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CEP'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
    end
    object suiDBEdit11: TDBEdit
      Left = 626
      Top = 78
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CELULAR'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 5
    end
    object suiDBEdit10: TDBEdit
      Left = 289
      Top = 32
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'FAX'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 6
    end
    object DBDateEdit1: TDBDateEdit
      Left = 90
      Top = 34
      Width = 118
      Height = 21
      DataField = 'NASCIMENTO_IA'
      DataSource = DM.DTS_Clientes
      Color = 15263976
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 89
      Top = 104
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'PONTO_REFERENCIA'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 459
      Top = 80
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'BAIRRO'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit30: TDBEdit
      Left = 709
      Top = 54
      Width = 35
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NUMERO'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 10
    end
    object suiDBEdit12: TDBEdit
      Left = 89
      Top = 80
      Width = 306
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'EMAIL'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object suiDBEdit13: TDBEdit
      Left = 89
      Top = 128
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NOME_CONJUGE'
      DataSource = DM.DTS_Clientes
      TabOrder = 12
    end
    object suiDBEdit16: TDBEdit
      Left = 459
      Top = 102
      Width = 285
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_CONJUGE'
      DataSource = DM.DTS_Clientes
      MaxLength = 14
      TabOrder = 13
    end
    object DBEdit31: TDBEdit
      Left = 88
      Top = 152
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO1'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit32: TDBEdit
      Left = 88
      Top = 175
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO2'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit33: TDBEdit
      Left = 88
      Top = 198
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO3'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit34: TDBEdit
      Left = 459
      Top = 124
      Width = 285
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT1'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit35: TDBEdit
      Left = 459
      Top = 147
      Width = 284
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT2'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit36: TDBEdit
      Left = 459
      Top = 169
      Width = 285
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT3'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 328
    Top = 145
  end
end
