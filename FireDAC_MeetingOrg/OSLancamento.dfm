object FormOs: TFormOs
  Left = 331
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento de Ordem de Servi'#231'o'
  ClientHeight = 457
  ClientWidth = 813
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
  PopupMenu = PopupMenu2
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = ormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 402
    Width = 813
    Height = 55
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object btnNovo: TsBitBtn
      Left = 88
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Novo Registro'
      Caption = '&Nova -F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
      ImageIndex = 113
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnEditar: TsBitBtn
      Left = 191
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Editar Registro '
      Caption = '&Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnEditarClick
      ImageIndex = 129
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnCancelar: TsBitBtn
      Left = 294
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Caption = '&Cancelar-F5'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCancelarClick
      ImageIndex = 118
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnSalvar: TsBitBtn
      Left = 400
      Top = 7
      Width = 94
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = '&Salvar-F10'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnSalvarClick
      ImageIndex = 122
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnExcluir: TsBitBtn
      Left = 499
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir-F7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnExcluirClick
      ImageIndex = 125
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnLocalizar: TsBitBtn
      Left = 703
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Localizar Registro'
      Caption = '&Localizar F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnLocalizarClick
      ImageIndex = 158
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object btnfaturar: TsBitBtn
      Left = 429
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Faturar'
      Caption = '&Faturar-F6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
      OnClick = vens
      ImageIndex = 149
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object E: TsDBNavigator
      Left = 5
      Top = 8
      Width = 80
      Height = 30
      FullRepaint = False
      TabOrder = 7
      OnClick = EClick
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DMOS.DTS_OS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    end
    object btnReabrir: TsBitBtn
      Left = 191
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = '&Reabrir-F4'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Visible = False
      OnClick = btnReabrirClick
      ImageIndex = 148
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnSolucionar: TsBitBtn
      Left = 601
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = '&Solucionar-F9'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      Visible = False
      OnClick = BtnSolucionarClick
      ImageIndex = 109
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object salvSolucao: TsBitBtn
      Left = 601
      Top = 7
      Width = 100
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = 'Sal&var Sol.-F8'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      OnClick = salvSolucaoClick
      ImageIndex = 122
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Pc: TRzPageControl
    Left = 0
    Top = 0
    Width = 813
    Height = 402
    Hint = ''
    ActivePage = Solucao
    Align = alClient
    Color = 16119543
    FlatColor = 10263441
    ParentColor = False
    TabColors.HighlightBar = 1350640
    TabIndex = 2
    TabOrder = 1
    OnChange = PcChange
    FixedDimension = 19
    object Os: TRzTabSheet
      Color = 16119543
      ImageIndex = 73
      Caption = 'Ordem de Servi'#231'os'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 177
        Height = 49
        Caption = 'Abertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Hora1: TRzDBDateTimeEdit
          Left = 103
          Top = 16
          Width = 66
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'HORA_ENTRADA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = Hora1Enter
          OnExit = Hora1Exit
          EditType = etTime
        end
        object Data1: TDBDateEdit
          Left = 5
          Top = 16
          Width = 97
          Height = 21
          DataField = 'DATA_ENTRADA'
          DataSource = DMOS.DTS_OS
          Color = clWhite
          DialogTitle = 'Digite a Data de Abertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          YearDigits = dyFour
          OnEnter = Data1Enter
          OnExit = Data1Exit
        end
      end
      object GroupBox2: TGroupBox
        Left = 188
        Top = 1
        Width = 409
        Height = 49
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object cliente1: TRxDBComboEdit
          Left = 55
          Top = 25
          Width = 89
          Height = 21
          TabStop = False
          ClickKey = 113
          DataField = 'ID_CLIENTE'
          DataSource = DMOS.DTS_OS
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          TabOrder = 1
          Visible = False
          OnExit = Cliente1Exit
        end
        object cliente2: TDBEdit
          Left = 100
          Top = 15
          Width = 269
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clScrollBar
          Ctl3D = True
          DataField = 'CONSUMIDOR_NOME'
          DataSource = DMOS.DTS_OS
          Enabled = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object suiButton3: TsBitBtn
          Left = 372
          Top = 12
          Width = 29
          Height = 24
          Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = False
          OnClick = suiButton3Click
          ImageIndex = 4
          Images = FormPrincipal.sAlphaImageList1
          SkinData.SkinSection = 'BUTTON'
        end
        object DBComboCliente: TComboEdit
          Left = 4
          Top = 15
          Width = 94
          Height = 21
          Alignment = taCenter
          CharCase = ecUpperCase
          ClickKey = 120
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000F000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFFE00009CE600009CE60000FFFE0000}
          NumGlyphs = 1
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = ''
          OnButtonClick = DBComboClienteButtonClick
          OnChange = DBComboClienteChange
          OnEnter = DBComboClienteEnter
          OnExit = DBComboClienteExit
        end
      end
      object GroupBox3: TGroupBox
        Left = 600
        Top = 1
        Width = 201
        Height = 49
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBEdit1: TDBEdit
          Left = 121
          Top = 18
          Width = 73
          Height = 21
          TabStop = False
          BorderStyle = bsNone
          Color = clScrollBar
          DataField = 'ID_OS_ORDEMSERVICO'
          DataSource = DMOS.DTS_OS
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit1Change
        end
        object suiDBEdit1: TDBEdit
          Left = 4
          Top = 19
          Width = 97
          Height = 19
          TabStop = False
          BorderStyle = bsNone
          Color = clScrollBar
          DataField = 'SITUACAO'
          DataSource = DMOS.DTS_OS
          ReadOnly = True
          TabOrder = 1
          OnChange = suiDBEdit1Change
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 52
        Width = 801
        Height = 72
        Caption = 'Atendimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object RxLabel1: TRxLabel
          Left = 3
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Prioridade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel2: TRxLabel
          Left = 171
          Top = 24
          Width = 60
          Height = 13
          Caption = 'Modalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel3: TRxLabel
          Left = 419
          Top = 24
          Width = 26
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 595
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Satus:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel5: TRxLabel
          Left = 3
          Top = 48
          Width = 47
          Height = 13
          Caption = 'Previs'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel6: TRxLabel
          Left = 235
          Top = 48
          Width = 42
          Height = 13
          Caption = 'T'#233'cnico:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel7: TRxLabel
          Left = 547
          Top = 48
          Width = 73
          Height = 13
          Caption = 'Agendamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object data2: TDBDateEdit
          Left = 59
          Top = 48
          Width = 96
          Height = 21
          DataField = 'CAMPO_DATACHEGADA'
          DataSource = DMOS.DTS_OS
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
        end
        object hora2: TRzDBDateTimeEdit
          Left = 152
          Top = 48
          Width = 65
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'CAMPO_HORACHEGADA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          EditType = etTime
        end
        object data3: TDBDateEdit
          Left = 621
          Top = 43
          Width = 106
          Height = 21
          DataField = 'CAMPO_DATAAGENDA'
          DataSource = DMOS.DTS_OS
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 7
        end
        object hora3: TRzDBDateTimeEdit
          Left = 733
          Top = 45
          Width = 65
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'HORA_INICIO_ATEND'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          EditType = etTime
        end
        object dblookup1: TDBLookupComboBox
          Left = 59
          Top = 19
          Width = 109
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_PRIORIDADE'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_PRIORIDADE'
          ListField = 'PRIORIDADE'
          ListSource = DMOS.Dts_Prioridade
          TabOrder = 0
          OnEnter = dblookup1Enter
          OnExit = dblookup1Exit
        end
        object dblookup3: TDBLookupComboBox
          Left = 445
          Top = 20
          Width = 145
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_TIPOATENDIMENTO'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_TIPO'
          ListField = 'TIPOATENDIMENTO'
          ListSource = DMOS.DTS_TPAtendimento
          TabOrder = 2
          OnEnter = dblookup3Enter
          OnExit = dblookup3Exit
        end
        object dblookup4: TDBLookupComboBox
          Left = 628
          Top = 18
          Width = 164
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_STATUS'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_STATUS'
          ListField = 'STATUS'
          ListSource = DMOS.Dts_status
          TabOrder = 3
          OnEnter = dblookup4Enter
          OnExit = dblookup4Exit
        end
        object dblookup5: TDBLookupComboBox
          Left = 285
          Top = 44
          Width = 252
          Height = 21
          Color = clWhite
          DataField = 'ID_TECNICORESPONSAVEL'
          DataSource = DMOS.DTS_OS
          KeyField = 'CODIGO'
          ListField = 'USUARIO'
          ListSource = DM.DTS_Usuarios
          TabOrder = 6
        end
        object dblookup2: TDBComboBox
          Left = 232
          Top = 19
          Width = 177
          Height = 21
          Color = clWhite
          DataField = 'MODALIDADE'
          DataSource = DMOS.DTS_OS
          Items.Strings = (
            'AVULSO'
            'CONTRATO'
            'EXTRA'
            'GARANTIA DO FRABRICANTE'
            'GARANTIA DE OUTROS'
            'GARANTIA DE VENDA'
            'LOCA'#199#195'O'
            'PREVISAO'
            'TERCEIROS')
          TabOrder = 1
          OnEnter = dblookup2Enter
          OnExit = dblookup2Exit
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 124
        Width = 799
        Height = 107
        Caption = 'Bem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object RxLabel8: TRxLabel
          Left = 3
          Top = 16
          Width = 26
          Height = 13
          Caption = 'Bem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel9: TRxLabel
          Left = 3
          Top = 40
          Width = 68
          Height = 13
          Caption = 'Identifica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel10: TRxLabel
          Left = 3
          Top = 63
          Width = 40
          Height = 13
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel11: TRxLabel
          Left = 379
          Top = 13
          Width = 26
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel12: TRxLabel
          Left = 587
          Top = 12
          Width = 35
          Height = 13
          Caption = 'Marca:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel13: TRxLabel
          Left = 211
          Top = 37
          Width = 30
          Height = 13
          Caption = 'Serie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel14: TRxLabel
          Left = 211
          Top = 64
          Width = 25
          Height = 13
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel15: TRxLabel
          Left = 379
          Top = 37
          Width = 23
          Height = 13
          Caption = 'Cor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel16: TRxLabel
          Left = 379
          Top = 61
          Width = 47
          Height = 13
          Caption = 'Garantia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel17: TRxLabel
          Left = 567
          Top = 39
          Width = 54
          Height = 13
          Caption = 'Localiz'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel36: TRxLabel
          Left = 3
          Top = 87
          Width = 20
          Height = 13
          Caption = 'Km:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel37: TRxLabel
          Left = 211
          Top = 88
          Width = 31
          Height = 13
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel38: TRxLabel
          Left = 379
          Top = 85
          Width = 39
          Height = 13
          Caption = 'Veiculo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object texto1: TDBEdit
          Left = 72
          Top = 36
          Width = 115
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'IDENTIFICADOR'
          DataSource = DMOS.DTS_OS
          TabOrder = 4
        end
        object texto4: TDBEdit
          Left = 72
          Top = 60
          Width = 116
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'MODELO'
          DataSource = DMOS.DTS_OS
          TabOrder = 8
        end
        object texto3: TEdit
          Left = 408
          Top = 10
          Width = 156
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = texto3Change
        end
        object texto7: TEdit
          Left = 624
          Top = 10
          Width = 166
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = texto7Change
          OnEnter = texto7Enter
          OnExit = texto7Exit
        end
        object texto2: TDBEdit
          Left = 249
          Top = 36
          Width = 115
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'EQUIPAMENTO_NSERIE'
          DataSource = DMOS.DTS_OS
          TabOrder = 5
        end
        object texto5: TDBEdit
          Left = 248
          Top = 60
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'OBS'
          DataSource = DMOS.DTS_OS
          ParentCtl3D = False
          TabOrder = 9
        end
        object texto6: TDBEdit
          Left = 428
          Top = 59
          Width = 361
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'GARANTIA'
          DataSource = DMOS.DTS_OS
          TabOrder = 10
        end
        object dblookup6: TDBLookupComboBox
          Left = 328
          Top = 36
          Width = 75
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_EQUIPAMENTO'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_EQUIPAMENTOS'
          ListField = 'MODELO'
          ListSource = DMOS.Dts_bem
          TabOrder = 1
          TabStop = False
          Visible = False
          OnExit = dblookup6Exit
        end
        object dblookup7: TDBLookupComboBox
          Left = 408
          Top = 36
          Width = 156
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_EQUIPAMENTO_COR'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_EQUIPAMENTO_COR'
          ListField = 'COR'
          ListSource = DMOS.DTS_OSCOR
          TabOrder = 6
        end
        object dblookup8: TDBLookupComboBox
          Left = 624
          Top = 36
          Width = 166
          Height = 21
          Color = clWhite
          DataField = 'ID_OS_EQUIP_LOCAL'
          DataSource = DMOS.DTS_OS
          KeyField = 'ID_OS_LOCALEQUIPAMENTO'
          ListField = 'LOCAL'
          ListSource = DMOS.Dts_localizacao
          TabOrder = 7
        end
        object ComboDlg1: TwwDBLookupComboDlg
          Left = 72
          Top = 9
          Width = 95
          Height = 24
          Picture.AllowInvalidExit = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          CharCase = ecUpperCase
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Pesquisar'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'ID_OS_EQUIPAMENTOS'#9'10'#9'Cod. Equip.'#9'F'
            'MODELO'#9'30'#9'Modelo Equip'#9'F'
            'TIPO'#9'30'#9'Tipo Equip.'#9'F'
            'MARCA'#9'30'#9'Marca'#9'F')
          DataField = 'ID_OS_EQUIPAMENTO'
          DataSource = DMOS.DTS_OS
          LookupTable = DMOS.sDS_EQUIPAMENTOS
          LookupField = 'ID_OS_EQUIPAMENTOS'
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          Style = csDropDownList
          Color = 12974332
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          OnExit = Co
          OnKeyPress = ComboDlg1KeyPress
        end
        object texto10: TEdit
          Left = 168
          Top = 10
          Width = 209
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnChange = texto3Change
        end
        object DBEdit4: TDBEdit
          Left = 72
          Top = 84
          Width = 116
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'KM'
          DataSource = DMOS.DTS_OS
          TabOrder = 11
        end
        object DBEdit5: TDBEdit
          Left = 248
          Top = 84
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'PLACA'
          DataSource = DMOS.DTS_OS
          ParentCtl3D = False
          TabOrder = 12
        end
        object DBEdit6: TDBEdit
          Left = 428
          Top = 83
          Width = 361
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'VEICULO'
          DataSource = DMOS.DTS_OS
          TabOrder = 13
        end
      end
      object GroupBox6: TGroupBox
        Left = 3
        Top = 239
        Width = 374
        Height = 142
        Caption = 'Ocorr'#234'ncias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object texto8: TDBMemo
          Left = 8
          Top = 16
          Width = 353
          Height = 121
          Color = clWhite
          DataField = 'OCORRENCIA'
          DataSource = DMOS.DTS_OS
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 390
        Top = 239
        Width = 412
        Height = 142
        Caption = 'Observa'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object texto9: TDBMemo
          Left = 8
          Top = 16
          Width = 393
          Height = 121
          Color = clWhite
          DataField = 'OBSEQUIPAMENTO'
          DataSource = DMOS.DTS_OS
          TabOrder = 0
        end
      end
    end
    object Produtos: TRzTabSheet
      Color = 16119543
      ImageIndex = 2
      OnShow = ProdutosShow
      Caption = 'Produtos/Servi'#231'os'
      OnClick = ProdutosClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxLabel28: TRxLabel
        Left = 417
        Top = 5
        Width = 32
        Height = 13
        Caption = 'Qtde.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel27: TRxLabel
        Left = 641
        Top = 5
        Width = 66
        Height = 13
        Caption = 'Valor Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel26: TRxLabel
        Left = 553
        Top = 5
        Width = 58
        Height = 13
        Caption = 'Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel25: TRxLabel
        Left = 465
        Top = 5
        Width = 60
        Height = 13
        Caption = 'Valor Unit.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel24: TRxLabel
        Left = 120
        Top = 5
        Width = 125
        Height = 13
        Caption = 'Descri'#231#227'o do Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel23: TRxLabel
        Left = 727
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Vend/Tec:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel18: TRxLabel
        Left = 7
        Top = 5
        Width = 91
        Height = 13
        Caption = 'C'#243'digo Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 0
        Top = 78
        Width = 809
        Height = 17
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = 'ITENS DA OS (Produtos/Servi'#231'os)'
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 333
        Width = 809
        Height = 46
        Align = alBottom
        TabOrder = 5
        object RxLabel19: TRxLabel
          Left = 12
          Top = 15
          Width = 74
          Height = 16
          Caption = 'V. Unit'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object RxLabel21: TRxLabel
          Left = 309
          Top = 15
          Width = 75
          Height = 16
          Caption = 'Descontos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel20: TRxLabel
          Left = 582
          Top = 15
          Width = 43
          Height = 16
          Caption = 'Total :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 628
          Top = 8
          Width = 176
          Height = 34
          Brush.Color = clBlack
          Pen.Color = clSilver
          Pen.Width = 3
          Shape = stRoundRect
        end
        object edit60: TCurrencyEdit
          Left = 92
          Top = 11
          Width = 153
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          CheckOnExit = True
          Color = clActiveCaption
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindow
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object Edit61: TCurrencyEdit
          Left = 394
          Top = 10
          Width = 153
          Height = 30
          AutoSize = False
          BeepOnError = False
          BorderStyle = bsNone
          CheckOnExit = True
          Color = clActiveCaption
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindow
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object Edit62: TCurrencyEdit
          Left = 632
          Top = 11
          Width = 165
          Height = 29
          AutoSize = False
          BorderStyle = bsNone
          Color = clBlack
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindow
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object XDBGrid1: TXDBGrid
        Left = 0
        Top = 95
        Width = 809
        Height = 238
        Align = alBottom
        DataSource = DMOS.DTS_OS_PRODUTO
        GridStyle.VisualStyle = vsXPStyle
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        PopupMenu = PopupMenu1
        TabOrder = 6
        OnKeyDown = XDBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_OS_PRODUTOS_SERVICOS'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 51
          end
          item
            Expanded = False
            FieldName = 'COD_PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Prod.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BARRAS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cod. Barras'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 92
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o do Produto/Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 247
          end
          item
            Expanded = False
            FieldName = 'DESC_UNIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Und.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 32
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNITARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Unit'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 69
          end
          item
            Expanded = False
            FieldName = 'VLRDESCONTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Desc.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 67
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
            Width = 77
          end
          item
            Expanded = False
            FieldName = 'ID_OS_TECNICO'
            Title.Caption = 'Tec.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object suiEdit1: TEdit
        Left = 120
        Top = 20
        Width = 289
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object RxDBComboEdit1: TComboEdit
        Left = 3
        Top = 19
        Width = 114
        Height = 21
        CharCase = ecUpperCase
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        TabOrder = 0
        Text = ''
        OnButtonClick = RxDBComboEdit1ButtonClick
        OnChange = RxDBComboEdit1Change
        OnEnter = RxDBComboEdit1Enter
        OnExit = RxDBComboEdit1Exit
        OnKeyPress = text
      end
      object RbPreco2: TRadioButton
        Left = 730
        Top = 43
        Width = 70
        Height = 14
        Caption = 'Pre'#231'os(&2)'
        TabOrder = 8
        TabStop = True
      end
      object RbPreco1: TRadioButton
        Left = 643
        Top = 41
        Width = 74
        Height = 18
        Caption = 'Pre'#231'os (&1)'
        TabOrder = 9
      end
      object Edit2: TEdit
        Left = 600
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 10
        Visible = False
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 416
        Top = 20
        Width = 41
        Height = 21
        AutoSize = False
        DisplayFormat = '0.000; 0.000'
        TabOrder = 1
        OnExit = CurrencyEdit4Exit
        OnKeyPress = CurrencyEdit4KeyPress
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 640
        Top = 20
        Width = 81
        Height = 21
        TabStop = False
        AutoSize = False
        Enabled = False
        TabOrder = 11
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 552
        Top = 20
        Width = 81
        Height = 21
        AutoSize = False
        TabOrder = 3
        OnExit = CurrencyEdit2Exit
        OnKeyPress = CurrencyEdit2KeyPress
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 464
        Top = 20
        Width = 81
        Height = 21
        AutoSize = False
        TabOrder = 2
        OnExit = CurrencyEdit1Exit
        OnKeyPress = CurrencyEdit1KeyPress
      end
      object ComboEdit1: TComboEdit
        Left = 728
        Top = 19
        Width = 70
        Height = 21
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        TabOrder = 4
        Text = ''
        OnButtonClick = ComboEdit1ButtonClick
        OnChange = ComboEdit1Change
        OnExit = ComboEdit1Exit
      end
      object BitBtn1: TsBitBtn
        Left = 4
        Top = 44
        Width = 145
        Height = 31
        Caption = 'Imprimir O.S.'
        TabOrder = 12
        OnClick = BitBtn1Click
        ImageIndex = 110
        Images = FormPrincipal.sAlphaImageList1
        SkinData.SkinSection = 'BUTTON'
      end
      object Edit3: TEdit
        Left = 160
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 13
        Visible = False
      end
    end
    object Solucao: TRzTabSheet
      Color = 16119543
      ImageIndex = 15
      Caption = 'Solu'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 0
        Width = 809
        Height = 209
        Align = alTop
        Caption = 'Solu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object suiDBMemo1: TDBMemo
          Left = 4
          Top = 16
          Width = 799
          Height = 185
          Color = clWhite
          DataField = 'SOLUCAO'
          DataSource = DMOS.DTS_OS
          TabOrder = 0
          OnEnter = suiDBMemo1Enter
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 305
        Width = 809
        Height = 48
        Align = alTop
        Caption = 'Garantia dos Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object RxLabel29: TRxLabel
          Left = 10
          Top = 21
          Width = 73
          Height = 13
          Caption = 'Prazo (dias):'
        end
        object RxLabel30: TRxLabel
          Left = 205
          Top = 18
          Width = 36
          Height = 13
          Caption = 'Lacre:'
        end
        object RxLabel35: TRxLabel
          Left = 381
          Top = 18
          Width = 80
          Height = 13
          Caption = 'Data Revis'#227'o:'
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 16
          Width = 105
          Height = 21
          DataField = 'GARANTIA_CAMPO1'
          DataSource = DMOS.DTS_OS
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 256
          Top = 16
          Width = 105
          Height = 21
          DataField = 'LACRE'
          DataSource = DMOS.DTS_OS
          TabOrder = 1
        end
        object DBDateEdit1: TDBDateEdit
          Left = 465
          Top = 16
          Width = 121
          Height = 21
          DataField = 'DATA_PROXIMAREVISAO'
          DataSource = DMOS.DTS_OS
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 0
        Top = 257
        Width = 809
        Height = 48
        Align = alTop
        Caption = 'Atendimento Externo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object RxLabel31: TRxLabel
          Left = 5
          Top = 21
          Width = 36
          Height = 13
          Caption = 'Saida:'
        end
        object RxLabel33: TRxLabel
          Left = 229
          Top = 21
          Width = 54
          Height = 13
          Caption = 'Chegada:'
        end
        object RxLabel22: TRxLabel
          Left = 457
          Top = 19
          Width = 51
          Height = 13
          Caption = 'Retorno:'
        end
        object DBDateEdit2: TDBDateEdit
          Left = 49
          Top = 17
          Width = 112
          Height = 21
          DataField = 'CAMPO_DATASAIDA'
          DataSource = DMOS.DTS_OS
          NumGlyphs = 2
          TabOrder = 0
        end
        object EvDBTimeEdit4: TRzDBDateTimeEdit
          Left = 163
          Top = 17
          Width = 49
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'CAMPO_HORASAIDA'
          TabOrder = 1
          EditType = etTime
        end
        object TDBDateEdit
          Left = 289
          Top = 17
          Width = 112
          Height = 21
          DataField = 'CAMPO_DATACHEGADA'
          DataSource = DMOS.DTS_OS
          NumGlyphs = 2
          TabOrder = 2
        end
        object EvDBTimeEdit1: TRzDBDateTimeEdit
          Left = 402
          Top = 21
          Width = 49
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'CAMPO_HORACHEGADA'
          TabOrder = 3
          EditType = etTime
        end
        object DBDateEdit4: TDBDateEdit
          Left = 517
          Top = 15
          Width = 112
          Height = 21
          DataField = 'CAMPO_DATARETORNO'
          DataSource = DMOS.DTS_OS
          NumGlyphs = 2
          TabOrder = 4
        end
        object EvDBTimeEdit2: TRzDBDateTimeEdit
          Left = 631
          Top = 15
          Width = 49
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'CAMPO_HORARETORNO'
          TabOrder = 5
          EditType = etTime
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 0
        Top = 209
        Width = 809
        Height = 48
        Align = alTop
        Caption = 'Atendimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RxLabel32: TRxLabel
          Left = 5
          Top = 21
          Width = 96
          Height = 13
          Caption = 'Data da Solu'#231#227'o:'
        end
        object RxLabel34: TRxLabel
          Left = 237
          Top = 21
          Width = 32
          Height = 13
          Caption = 'Hora:'
        end
        object DBDateEdit5: TDBDateEdit
          Left = 105
          Top = 18
          Width = 121
          Height = 21
          DataField = 'DATA_SOLUCAO'
          DataSource = DMOS.DTS_OS
          NumGlyphs = 2
          TabOrder = 0
        end
        object EvDBTimeEdit3: TRzDBDateTimeEdit
          Left = 275
          Top = 20
          Width = 65
          Height = 21
          DataSource = DMOS.DTS_OS
          DataField = 'HORA_SOLUCAO'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          EditType = etTime
        end
      end
    end
    object Laudo: TRzTabSheet
      Color = 16119543
      ImageIndex = 1
      TabVisible = False
      Caption = 'Laudo'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object Imagens: TRzTabSheet
      Color = 16119543
      ImageIndex = 133
      TabVisible = False
      Caption = 'Imagens'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object GroupBox9: TGroupBox
    Left = 256
    Top = 96
    Width = 369
    Height = 147
    BiDiMode = bdLeftToRight
    Caption = 'Dados do Cliente'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 59
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 55
      Height = 13
      Caption = 'Cpf/Cnpj:'
    end
    object Label4: TLabel
      Left = 7
      Top = 90
      Width = 39
      Height = 13
      Caption = 'Rg/IE:'
    end
    object Label5: TLabel
      Left = 208
      Top = 90
      Width = 33
      Height = 13
      Caption = 'Fone:'
    end
    object suiDBEdit2: TDBEdit
      Left = 68
      Top = 15
      Width = 295
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'CONSUMIDOR_NOME'
      DataSource = DMOS.DTS_OS
      ParentCtl3D = False
      TabOrder = 0
    end
    object suiDBEdit3: TDBEdit
      Left = 68
      Top = 39
      Width = 295
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'CONSUMIDOR_ENDERECO'
      DataSource = DMOS.DTS_OS
      ParentCtl3D = False
      TabOrder = 1
    end
    object suiDBEdit4: TDBEdit
      Left = 208
      Top = 63
      Width = 153
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'CONSUMIDOR_CPFCNPJ'
      DataSource = DMOS.DTS_OS
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = suiDBEdit4Enter
    end
    object suiDBEdit5: TDBEdit
      Left = 69
      Top = 87
      Width = 128
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'CONSUMIDOR_RGINSCR'
      DataSource = DMOS.DTS_OS
      ParentCtl3D = False
      TabOrder = 3
    end
    object suiDBEdit6: TDBEdit
      Left = 248
      Top = 87
      Width = 113
      Height = 19
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'CONSUMIDOR_TELEFONE'
      DataSource = DMOS.DTS_OS
      ParentCtl3D = False
      TabOrder = 4
    end
    object suiButton4: TsBitBtn
      Left = 156
      Top = 111
      Width = 85
      Height = 31
      Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
      Caption = 'Con&firma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = suiButton4Click
      ImageIndex = 122
      Images = FormPrincipal.sAlphaImageList1
      SkinData.SkinSection = 'BUTTON'
    end
    object RadioButton2: TRadioButton
      Left = 81
      Top = 65
      Width = 49
      Height = 17
      Caption = 'Cnpj'
      TabOrder = 6
    end
    object RadioButton1: TRadioButton
      Left = 154
      Top = 65
      Width = 50
      Height = 17
      Caption = 'Cpf'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
  end
  object Edit1: TEdit
    Left = 472
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 189
    Top = 238
    object ApagaRegistro1: TMenuItem
      Caption = 'Apaga Registro'
      OnClick = ApagaRegistro1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 385
    Top = 252
    object ReabrirOs1: TMenuItem
      Caption = 'Reabrir Os'
      OnClick = ReabrirOs1Click
    end
  end
end
