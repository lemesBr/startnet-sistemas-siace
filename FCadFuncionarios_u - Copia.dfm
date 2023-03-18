object FCadFuncionario: TFCadFuncionario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 579
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 538
    Width = 592
    Height = 41
    Align = alBottom
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = clScrollBar
    ParentBackground = False
    TabOrder = 0
    object btnPesquisar: TsBitBtn
      Left = 119
      Top = 6
      Width = 87
      Height = 27
      Caption = 'Pesquisar'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnPesquisarClick
      SkinData.SkinSection = 'BUTTON'
    end
    object BitBtn2: TBitBtn
      Left = 493
      Top = 6
      Width = 75
      Height = 27
      Caption = 'Foto'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 30
      Top = 6
      Width = 73
      Height = 27
      Caption = 'Vales'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object bitbtn: TsBitBtn
      Left = 402
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      OnClick = bitbtnClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnPrimeiro: TsBitBtn
      Left = 233
      Top = 4
      Width = 31
      Height = 27
      Hint = 'Primeiro'
      Caption = '<<'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnPrimeiroClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnAnterior: TsBitBtn
      Left = 270
      Top = 4
      Width = 29
      Height = 27
      Hint = 'Anterior'
      Caption = '<'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnAnteriorClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnProximo: TsBitBtn
      Left = 309
      Top = 4
      Width = 29
      Height = 27
      Hint = 'Pr'#243'ximo'
      Caption = '>'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnProximoClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnUltimo: TsBitBtn
      Left = 343
      Top = 4
      Width = 31
      Height = 27
      Hint = #218'ltimo'
      Caption = '>>'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnUltimoClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 592
    Height = 538
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label2: TLabel
        Left = 16
        Top = 62
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object DBText1: TDBText
        Left = 88
        Top = 62
        Width = 65
        Height = 17
        DataField = 'COD_FUNCIONARIO'
        DataSource = ds_funcionario
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 31
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 129
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 344
        Top = 129
        Width = 32
        Height = 13
        Caption = 'Bairro:'
      end
      object Label21: TLabel
        Left = 450
        Top = 162
        Width = 28
        Height = 13
        Caption = 'Sexo:'
      end
      object Label9: TLabel
        Left = 344
        Top = 162
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object Label8: TLabel
        Left = 16
        Top = 162
        Width = 37
        Height = 13
        Caption = 'Cidade:'
      end
      object Label6: TLabel
        Left = 16
        Top = 197
        Width = 46
        Height = 13
        Caption = 'Telefone:'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 344
        Top = 197
        Width = 37
        Height = 13
        Caption = 'Celular:'
        FocusControl = DBEdit6
      end
      object Label12: TLabel
        Left = 344
        Top = 232
        Width = 59
        Height = 13
        Caption = 'Estado Civ'#237'l:'
      end
      object Label11: TLabel
        Left = 16
        Top = 226
        Width = 59
        Height = 26
        Caption = 'Data de Nascimento:'
        WordWrap = True
      end
      object Label10: TLabel
        Left = 16
        Top = 267
        Width = 23
        Height = 13
        Caption = 'CEP:'
        FocusControl = DBEdit9
      end
      object Label13: TLabel
        Left = 344
        Top = 267
        Width = 65
        Height = 13
        Caption = 'Naturalidade:'
        FocusControl = DBEdit12
      end
      object Label15: TLabel
        Left = 16
        Top = 301
        Width = 23
        Height = 13
        Caption = 'CPF:'
        FocusControl = edtTipoPessoa
      end
      object Label16: TLabel
        Left = 344
        Top = 301
        Width = 18
        Height = 13
        Caption = 'RG:'
        FocusControl = DBEdit15
      end
      object Label17: TLabel
        Left = 16
        Top = 328
        Width = 50
        Height = 26
        Caption = 'Org'#227'o Expeditor:'
        FocusControl = DBEdit16
        WordWrap = True
      end
      object Label26: TLabel
        Left = 344
        Top = 332
        Width = 89
        Height = 13
        Caption = 'Data de Cadastro:'
      end
      object Label20: TLabel
        Left = 16
        Top = 416
        Width = 97
        Height = 18
        AutoSize = False
        Caption = 'Data de FDmiss'#227'o:'
        WordWrap = True
      end
      object dp_cadastro: TDBText
        Left = 450
        Top = 332
        Width = 111
        Height = 17
        DataField = 'CADASTRO_FUNCIONARIO'
        DataSource = ds_funcionario
      end
      object Label28: TLabel
        Left = 14
        Top = 387
        Width = 33
        Height = 13
        Caption = 'Cargo:'
      end
      object Label22: TLabel
        Left = 16
        Top = 451
        Width = 67
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object Label1: TLabel
        Left = 345
        Top = 416
        Width = 90
        Height = 13
        Caption = 'Data de Demiss'#227'o:'
      end
      object Label14: TLabel
        Left = 344
        Top = 62
        Width = 45
        Height = 13
        Caption = 'Situa'#231#227'o:'
      end
      object SpeedButton1: TSpeedButton
        Left = 535
        Top = 126
        Width = 26
        Height = 21
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 292
        Top = 159
        Width = 29
        Height = 21
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 535
        Top = 384
        Width = 26
        Height = 21
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 93
        Width = 473
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 1
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 126
        Width = 233
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 2
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 382
        Top = 126
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME_BAIRRO'#9'30'#9'Nome'#9'F'
          'COD_BAIRRO'#9'10'#9'C'#243'digo'#9'F')
        DataField = 'BAIRRO_FUNCIONARIO'
        DataSource = ds_funcionario
        LookupTable = udmPrincipal.cds_Bairro
        LookupField = 'COD_BAIRRO'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBComboBox2: TwwDBComboBox
        Left = 481
        Top = 159
        Width = 80
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        CharCase = ecUpperCase
        DataField = 'SEXO_FUNCIONARIO'
        DataSource = ds_funcionario
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Masculino'#9'M'
          'Feminino'#9'F')
        Sorted = False
        TabOrder = 6
        UnboundDataType = wwDefault
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Left = 88
        Top = 159
        Width = 198
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME_CIDADE'#9'30'#9'Nome'#9#9)
        DataField = 'CIDADE_FUNCIONARIO'
        DataSource = ds_funcionario
        LookupTable = udmPrincipal.cds_cidade
        LookupField = 'COD_CIDADE'
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 194
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 7
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit6: TDBEdit
        Left = 415
        Top = 194
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CELULAR_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 8
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBComboBox1: TwwDBComboBox
        Left = 415
        Top = 229
        Width = 146
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        CharCase = ecUpperCase
        DataField = 'ESTADOCIVIL_FUNCIONARIO'
        DataSource = ds_funcionario
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Casado(a)'#9'C'
          'Solteiro(a)'#9'S'
          'Vi'#250'vo(a)'#9'V'
          'Desquitado(a)'#9'D'
          'Outro'#9'O')
        Sorted = False
        TabOrder = 10
        UnboundDataType = wwDefault
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit9: TDBEdit
        Left = 88
        Top = 267
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP_FUNCIONARIO'
        DataSource = ds_funcionario
        MaxLength = 9
        TabOrder = 11
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit12: TDBEdit
        Left = 415
        Top = 264
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NATURALIDADE_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 12
        OnKeyDown = comboSituacaoKeyDown
      end
      object edtTipoPessoa: TDBEdit
        Left = 88
        Top = 298
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF_FUNCIONARIO'
        DataSource = ds_funcionario
        MaxLength = 14
        TabOrder = 13
        OnEnter = edtTipoPessoaEnter
        OnExit = edtTipoPessoaExit
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit15: TDBEdit
        Left = 415
        Top = 298
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RG_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 14
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBEdit16: TDBEdit
        Left = 88
        Top = 331
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ORGAOEXPEDITOR_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 15
        OnKeyDown = comboSituacaoKeyDown
      end
      object DBMemo1: TDBMemo
        Left = 88
        Top = 449
        Width = 473
        Height = 48
        DataField = 'OBSERVACAO_FUNCIONARIO'
        DataSource = ds_funcionario
        TabOrder = 18
        OnKeyDown = comboSituacaoKeyDown
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 584
        Height = 41
        Align = alTop
        BorderWidth = 5
        BorderStyle = bsSingle
        Color = clScrollBar
        ParentBackground = False
        TabOrder = 19
        object btnNovo: TsBitBtn
          Left = 3
          Top = 6
          Width = 74
          Height = 25
          Hint = 'Novo'
          Caption = 'Novo'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnNovoClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnExcluir: TsBitBtn
          Left = 84
          Top = 6
          Width = 75
          Height = 25
          Hint = 'Excluir'
          Caption = 'Excluir'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnExcluirClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnAlterar: TsBitBtn
          Left = 165
          Top = 6
          Width = 75
          Height = 25
          Hint = 'Alterar'
          Caption = 'Alterar'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAlterarClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnSalvar: TsBitBtn
          Left = 246
          Top = 6
          Width = 75
          Height = 25
          Hint = 'Salvar'
          Caption = 'Salvar'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnSalvarClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnCancelar: TsBitBtn
          Left = 327
          Top = 6
          Width = 86
          Height = 25
          Hint = 'Cancelar'
          Caption = 'Cancelar'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnCancelarClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnAtualizar: TsBitBtn
          Left = 419
          Top = 6
          Width = 87
          Height = 25
          Hint = 'Atualizar'
          Caption = 'Atualizar'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnAtualizarClick
          SkinData.SkinSection = 'BUTTON'
        end
        object btnSair: TsBitBtn
          Left = 514
          Top = 5
          Width = 62
          Height = 27
          Caption = 'Sair'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 6
          OnClick = btnSairClick
          SkinData.SkinSection = 'BUTTON'
        end
      end
      object dtDemissao: TwwDBDateTimePicker
        Left = 440
        Top = 413
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'Tahoma'
        CalendarAttributes.Font.Style = []
        DataField = 'DEMISSAO_FUNCIONARIO'
        DataSource = ds_funcionario
        Epoch = 1950
        ShowButton = True
        TabOrder = 20
        OnKeyDown = comboSituacaoKeyDown
      end
      object comboSituacao: TwwDBComboBox
        Left = 395
        Top = 59
        Width = 166
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        CharCase = ecUpperCase
        DataField = 'STATUS_FUNCIONARIO'
        DataSource = ds_funcionario
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'ATIVO'#9'A'
          'INATIVO'#9'I')
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnKeyDown = comboSituacaoKeyDown
      end
      object dtNascimento: TwwDBDateTimePicker
        Left = 88
        Top = 229
        Width = 143
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'Tahoma'
        CalendarAttributes.Font.Style = []
        DataField = 'NASCIMENTO_FUNCIONARIO'
        DataSource = ds_funcionario
        Epoch = 1950
        ShowButton = True
        TabOrder = 9
        OnKeyDown = comboSituacaoKeyDown
      end
      object dtAdmissao: TwwDBDateTimePicker
        Left = 119
        Top = 413
        Width = 150
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'Tahoma'
        CalendarAttributes.Font.Style = []
        DataField = 'FDMISSAO_FUNCIONARIO'
        DataSource = ds_funcionario
        Epoch = 1950
        ShowButton = True
        TabOrder = 17
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Left = 382
        Top = 159
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'SIGLA_UF'#9'6'#9'Sigla'#9#9
          'NOME_UF'#9'40'#9'Nome'#9#9
          'COD_UF'#9'10'#9'C'#243'digo'#9#9)
        DataField = 'COD_UF'
        DataSource = ds_funcionario
        LookupTable = udmPrincipal.cds_uf
        LookupField = 'COD_UF'
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = comboSituacaoKeyDown
      end
      object wwDBLookupCombo4: TwwDBLookupCombo
        Left = 88
        Top = 384
        Width = 441
        Height = 21
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOME_CARGO'#9'30'#9'Cargo'#9'F'#9
          'COD_CARGO'#9'10'#9'C'#243'digo'#9'F'#9
          'FUNCOES_CARGO'#9'60'#9'Fun'#231#245'es'#9'F'#9)
        DataField = 'COD_CARGO'
        DataSource = ds_funcionario
        LookupTable = udmPrincipal.cds_cargo
        LookupField = 'COD_CARGO'
        TabOrder = 16
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnKeyDown = comboSituacaoKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 3
        Width = 606
        Height = 118
        Caption = 'Pesquisar:'
        TabOrder = 0
        object edtPesquisar: TEdit
          Left = 11
          Top = 17
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = edtPesquisarChange
        end
        object rgPesquisa: TRadioGroup
          Left = 11
          Top = 44
          Width = 200
          Height = 69
          Caption = 'Op'#231#245'es de Pesquisa:'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Nome'
            'C'#243'digo'
            'Bairro'
            'Cidade')
          TabOrder = 1
        end
        object rgSexo: TRadioGroup
          Left = 333
          Top = 63
          Width = 151
          Height = 48
          Caption = 'Sexo:'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 2
        end
        object btnOrdenar: TBitBtn
          Left = 490
          Top = 74
          Width = 75
          Height = 25
          Caption = 'Listar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnOrdenarClick
        end
        object BitBtn3: TBitBtn
          Left = 223
          Top = 71
          Width = 75
          Height = 25
          Caption = 'Listar Todos'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = BitBtn3Click
        end
        object rgSituacao: TRadioGroup
          Left = 333
          Top = 3
          Width = 151
          Height = 54
          Caption = 'Situa'#231#227'o'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 5
        end
        object BitBtn4: TBitBtn
          Left = 490
          Top = 15
          Width = 75
          Height = 25
          Caption = 'Listar'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 6
          OnClick = BitBtn4Click
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 123
        Width = 590
        Height = 385
        ControlType.Strings = (
          'STATUS_FUNCIONARIO;CustomEdit;comboSituacaoGrid;F'
          'ESTADOCIVIL_FUNCIONARIO;CustomEdit;comboEstadoCivil;F')
        Selected.Strings = (
          'COD_FUNCIONARIO'#9'10'#9'C'#243'digo'
          'NOME_FUNCIONARIO'#9'40'#9'Nome'
          'CPF_FUNCIONARIO'#9'16'#9'CPF'
          'STATUS_FUNCIONARIO'#9'8'#9'Situa'#231#227'o'
          'TELEFONE_FUNCIONARIO'#9'15'#9'Telefone'
          'CELULAR_FUNCIONARIO'#9'15'#9'Celular'
          'NASCIMENTO_FUNCIONARIO'#9'12'#9'Nascimento'
          'nome_cargo'#9'30'#9'Cargo'
          'ENDERECO_FUNCIONARIO'#9'35'#9'Endere'#231'o'
          'nome_bairro'#9'25'#9'Bairro'
          'nome_cidade'#9'30'#9'Cidade'
          'CEP_FUNCIONARIO'#9'10'#9'CEP'
          'sigla_uf'#9'5'#9'UF'
          'ESTADOCIVIL_FUNCIONARIO'#9'15'#9'Estado Civil'
          'NATURALIDADE_FUNCIONARIO'#9'20'#9'Naturalidade'
          'RG_FUNCIONARIO'#9'20'#9'RG'
          'ORGAOEXPEDITOR_FUNCIONARIO'#9'10'#9#211'rg'#227'o Expedidor'
          'FDMISSAO_FUNCIONARIO'#9'12'#9'FDmiss'#227'o'
          'SEXO_FUNCIONARIO'#9'1'#9'Sexo'
          'CADASTRO_FUNCIONARIO'#9'12'#9'Data Cadastro'
          'OBSERVACAO_FUNCIONARIO'#9'50'#9'Observa'#231#227'o'
          'DEMISSAO_FUNCIONARIO'#9'12'#9'Data Demiss'#227'o')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = ds_funcionario
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        OnDblClick = wwDBGrid1DblClick
      end
      object comboSituacaoGrid: TwwDBComboBox
        Left = 168
        Top = 256
        Width = 121
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'ATIVO'#9'A'
          'INATIVO'#9'I')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object comboEstadoCivil: TwwDBComboBox
        Left = 192
        Top = 312
        Width = 121
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Casado(a)'#9'C'
          'Solteiro(a)'#9'S'
          'Vi'#250'vo(a)'#9'V'
          'Desquitado(a)'#9'D'
          'Outro'#9'O')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
  end
  object ds_funcionario: TDataSource
    AutoEdit = False
    DataSet = udmPrincipal.cds_funcionario
    OnStateChange = ds_funcionarioStateChange
    OnDataChange = ds_funcionarioDataChange
    Left = 256
    Top = 96
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 304
    Top = 64
  end
end
