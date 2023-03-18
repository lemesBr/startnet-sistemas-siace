inherited FormLyBancos: TFormLyBancos
  Left = 312
  Top = 98
  Caption = 'Cadastro de Layout Bancario'
  ClientHeight = 505
  ClientWidth = 756
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 762
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Top = -119
    Width = 756
    Height = 547
    Align = alCustom
    Enabled = False
    TabOrder = 2
    ExplicitTop = -119
    ExplicitWidth = 756
    ExplicitHeight = 547
  end
  inherited Panel2: TsPanel
    Top = 450
    Width = 756
    TabOrder = 0
    ExplicitTop = 450
    ExplicitWidth = 756
    inherited btnNovo: TAdvGlowButton
      Left = 126
      OnClick = btnNovoClick
      ExplicitLeft = 126
    end
    inherited btnEditar: TAdvGlowButton
      Left = 231
      OnClick = btnEditarClick
      ExplicitLeft = 231
    end
    inherited btnCancelar: TAdvGlowButton
      Left = 334
      OnClick = btnCancelarClick
      ExplicitLeft = 334
    end
    inherited btnSalvar: TAdvGlowButton
      Left = 438
      OnClick = btnSalvarClick
      ExplicitLeft = 438
    end
    inherited btnExcluir: TAdvGlowButton
      Left = 542
      OnClick = btnExcluirClick
      ExplicitLeft = 542
    end
    inherited DBNavigator: TsDBNavigator
      Left = 12
      Top = 2
      Width = 108
      DataSource = DM.Dts_lyBancos
      ExplicitLeft = 12
      ExplicitTop = 2
      ExplicitWidth = 108
    end
    inherited btnLocalizar: TAdvGlowButton
      Left = 644
      OnClick = btnLocalizarClick
      ExplicitLeft = 644
    end
  end
  object NxPageControl1: TNxPageControl [2]
    Left = 0
    Top = 0
    Width = 756
    Height = 450
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 1
    Margin = 0
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'Cadastro Cendente'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 429
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object GroupBox4: TGroupBox
          Left = 1
          Top = 338
          Width = 754
          Height = 90
          Align = alBottom
          Caption = 'Instru'#231#245'es: '
          TabOrder = 0
          object Label22: TLabel
            Left = 3
            Top = 74
            Width = 158
            Height = 13
            Caption = 'Quebra de linha: CTRL + ENTER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEDIT13: TsDBMemo
            Left = 8
            Top = 14
            Width = 721
            Height = 54
            Color = clWhite
            DataField = 'OBSERVACAO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEDIT13Enter
            OnExit = DBEDIT13Exit
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            SkinData.SkinSection = 'EDIT'
          end
        end
        object GroupBox2: TsGroupBox
          Left = 1
          Top = 1
          Width = 754
          Height = 109
          Align = alTop
          Caption = 'Dados do Banco:'
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 28
            Width = 38
            Height = 13
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TsLabel
            Left = 245
            Top = 26
            Width = 54
            Height = 13
            Caption = 'Cd. Banco'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label2: TsLabel
            Left = 348
            Top = 28
            Width = 112
            Height = 13
            Caption = 'Descri'#231#227'o do Banco:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label42: TLabel
            AlignWithMargins = True
            Left = 567
            Top = 25
            Width = 36
            Height = 15
            Caption = 'Layout'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TsLabelFX
            Left = 208
            Top = 0
            Width = 341
            Height = 37
            Caption = 'Cadastro de Layout Banc'#225'rio'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -24
            Font.Name = 'BatmanForeverAlternate'
            Font.Style = [fsBold]
            Angle = 0
            Shadow.OffsetKeeper.LeftTop = -3
            Shadow.OffsetKeeper.RightBottom = 5
          end
          object Label43: TLabel
            AlignWithMargins = True
            Left = 87
            Top = 27
            Width = 23
            Height = 15
            Caption = 'Tipo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 11
            Top = 70
            Width = 36
            Height = 13
            Caption = 'Aceite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 109
            Top = 70
            Width = 42
            Height = 13
            Caption = 'Esp'#233'cie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 201
            Top = 70
            Width = 65
            Height = 13
            Caption = 'Modalidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 336
            Top = 72
            Width = 46
            Height = 13
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label47: TLabel
            Left = 577
            Top = 66
            Width = 67
            Height = 13
            Caption = 'Vers'#227'o Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 661
            Top = 65
            Width = 39
            Height = 13
            Caption = 'Versao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit3: TsDBEdit
            Left = 348
            Top = 44
            Width = 213
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'DESCRICAO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit3Enter
            OnExit = DBEdit3Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit1: TsDBEdit
            Left = 11
            Top = 41
            Width = 73
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CODIGO_BOLETO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBLookupComboBox1: TsDBLookupComboBox
            Left = 245
            Top = 43
            Width = 97
            Height = 21
            Color = clWhite
            DataField = 'BANCO_PORTADOR'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'FEBRABAN'
            ListField = 'FEBRABAN;NOME'
            ListSource = DM.DTS_Bancos
            ParentFont = False
            TabOrder = 1
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            SkinData.SkinSection = 'COMBOBOX'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 567
            Top = 43
            Width = 164
            Height = 23
            DataField = 'CNAB'
            DataSource = DM.Dts_lyBancos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Items.Strings = (
              'CNAB 240'
              'CNAB 400')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'CNAB 240'
              'CNAB 400')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object TIPOCOBRANCA: TJvDBComboBox
            Left = 87
            Top = 43
            Width = 152
            Height = 23
            DataField = 'TIPO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object sDBComboBox1: TsDBComboBox
            Left = 11
            Top = 85
            Width = 70
            Height = 21
            Color = clWhite
            DataField = 'ACEITE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'SIM'
              'N'#195'O')
            ParentFont = False
            TabOrder = 5
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            SkinData.SkinSection = 'COMBOBOX'
          end
          object sDBEdit1: TsDBEdit
            Left = 104
            Top = 85
            Width = 73
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'ESPECIE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object sDBEdit2: TsDBEdit
            Left = 200
            Top = 85
            Width = 125
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'MODALIDADE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object sDBEdit3: TsDBEdit
            Left = 331
            Top = 85
            Width = 73
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CARTEIRA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object sDBEdit4: TsDBEdit
            Left = 577
            Top = 80
            Width = 73
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'VERSAO_LOTE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object sDBEdit5: TsDBEdit
            Left = 656
            Top = 80
            Width = 73
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'VERSAO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
        end
        object GroupBox1: TsGroupBox
          Left = 1
          Top = 112
          Width = 754
          Height = 226
          Align = alBottom
          Caption = 'Cedente'
          TabOrder = 2
          object Label8: TsLabel
            Left = 8
            Top = 87
            Width = 48
            Height = 13
            Caption = 'Ag'#234'ncia:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label10: TsLabel
            Left = 96
            Top = 86
            Width = 35
            Height = 13
            Caption = 'Posto:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label9: TsLabel
            Left = 188
            Top = 52
            Width = 36
            Height = 13
            Caption = 'Conta:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label5: TsLabel
            Left = 8
            Top = 15
            Width = 125
            Height = 13
            Caption = 'Descri'#231#227'o do Cedente:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label11: TsLabel
            Left = 270
            Top = 52
            Width = 36
            Height = 13
            Caption = 'Digito:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label6: TsLabel
            Left = 320
            Top = 51
            Width = 56
            Height = 13
            Caption = 'CPF/CNPJ:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label12: TsLabel
            Left = 465
            Top = 84
            Width = 49
            Height = 13
            Caption = 'Carteira:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label13: TsLabel
            Left = 344
            Top = 84
            Width = 55
            Height = 13
            Caption = 'Conv'#234'nio:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label14: TsLabel
            Left = 8
            Top = 186
            Width = 185
            Height = 13
            Caption = 'Local Para Pagamento do Boleto:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label27: TsLabel
            Left = 8
            Top = 51
            Width = 108
            Height = 13
            Caption = 'Codigo do Cedente:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label28: TsLabel
            Left = 134
            Top = 51
            Width = 36
            Height = 13
            Caption = 'D'#237'gito:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label29: TsLabel
            Left = 136
            Top = 86
            Width = 100
            Height = 13
            Caption = 'Nome da Ag'#234'ncia:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label7: TsLabel
            Left = 8
            Top = 119
            Width = 55
            Height = 13
            Caption = 'Endere'#231'o:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label30: TsLabel
            Left = 336
            Top = 119
            Width = 16
            Height = 13
            Caption = 'N'#186':'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label31: TsLabel
            Left = 328
            Top = 151
            Width = 82
            Height = 13
            Caption = 'Complemento:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label32: TsLabel
            Left = 408
            Top = 119
            Width = 37
            Height = 13
            Caption = 'Bairro:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label33: TsLabel
            Left = 8
            Top = 151
            Width = 41
            Height = 13
            Caption = 'Cidade:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label34: TsLabel
            Left = 160
            Top = 151
            Width = 17
            Height = 13
            Caption = 'UF:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label35: TsLabel
            Left = 208
            Top = 151
            Width = 24
            Height = 13
            Caption = 'Cep:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label37: TsLabel
            Left = 326
            Top = 52
            Width = 3
            Height = 13
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object DBEdit6: TsDBEdit
            Left = 8
            Top = 100
            Width = 73
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CODIGOAGENCIA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit7: TsDBEdit
            Left = 96
            Top = 100
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'DIGITOAGENCIA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DBEdit7Enter
            OnExit = DBEdit7Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit8: TsDBEdit
            Left = 189
            Top = 65
            Width = 73
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'NUMEROCONTA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit8Enter
            OnExit = DBEdit8Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit9: TsDBEdit
            Left = 270
            Top = 65
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'DIGITOCONTA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit9Enter
            OnExit = DBEdit9Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit5: TsDBEdit
            Left = 320
            Top = 64
            Width = 409
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CNPJCEDENTE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit5Enter
            OnExit = DBEdit5Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit10: TsDBEdit
            Left = 464
            Top = 100
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CARTEIRA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = DBEdit10Enter
            OnExit = DBEdit10Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit11: TsDBEdit
            Left = 344
            Top = 100
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CONVENIO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = DBEdit11Enter
            OnExit = DBEdit11Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit12: TsDBEdit
            Left = 8
            Top = 200
            Width = 721
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'LOCAL_PAGAMENTO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            OnEnter = DBEdit12Enter
            OnExit = DBEdit12Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit24: TsDBEdit
            Left = 8
            Top = 66
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CEDENTECODIGO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit8Enter
            OnExit = DBEdit8Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit25: TsDBEdit
            Left = 134
            Top = 66
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CEDENTECODIGODIGITO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit9Enter
            OnExit = DBEdit9Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit26: TsDBEdit
            Left = 136
            Top = 100
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'NOME_AGENCIA'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = DBEdit4Enter
            OnExit = DBEdit4Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object suiDBRadioGroup1: TsDBRadioGroup
            Left = 560
            Top = 8
            Width = 169
            Height = 41
            Caption = 'Tipo do Cedente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            Columns = 2
            Items.Strings = (
              'F'#237'sica'
              'Jur'#237'dica')
            DataField = 'TIPOPESSOACEDENTE'
            DataSource = DM.Dts_lyBancos
            Values.Strings = (
              'F'#237'sica'
              'Jur'#237'dica')
          end
          object DBEdit27: TsDBEdit
            Left = 8
            Top = 133
            Width = 321
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'ENDERECO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit28: TsDBEdit
            Left = 336
            Top = 132
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'NUMERO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit29: TsDBEdit
            Left = 328
            Top = 164
            Width = 401
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'COMPLEMENTO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit30: TsDBEdit
            Left = 408
            Top = 132
            Width = 321
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'BAIRRO'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit31: TsDBEdit
            Left = 8
            Top = 164
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CIDADE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit32: TsDBEdit
            Left = 160
            Top = 164
            Width = 33
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'UF'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBEdit33: TsDBEdit
            Left = 208
            Top = 164
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CEP'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
          end
          object DBLookupComboBox2: TsDBLookupComboBox
            Left = 8
            Top = 29
            Width = 545
            Height = 21
            Color = clWhite
            DataField = 'NOMECEDENTE'
            DataSource = DM.Dts_lyBancos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'TITULAR'
            ListField = 'TITULAR'
            ListSource = DM.DTS_Conta_Bancaria
            ParentFont = False
            TabOrder = 0
            OnEnter = DBLookupComboBox2Enter
            OnExit = DBLookupComboBox2Exit
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.ParentFont = False
            SkinData.SkinSection = 'COMBOBOX'
          end
        end
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Complementar'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      object GroupBox3: TsGroupBox
        Left = 0
        Top = 78
        Width = 329
        Height = 351
        Align = alLeft
        Caption = 'Detalhamento'
        TabOrder = 0
        object Label15: TsLabel
          Left = 10
          Top = 23
          Width = 70
          Height = 13
          Caption = 'Abatimento:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label16: TsLabel
          Left = 8
          Top = 47
          Width = 56
          Height = 13
          Caption = 'Desconto:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label17: TsLabel
          Left = 8
          Top = 71
          Width = 61
          Height = 13
          Caption = 'Desp. Cob.:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label18: TsLabel
          Left = 152
          Top = 23
          Width = 86
          Height = 13
          Caption = 'Juros/mora %:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label19: TsLabel
          Left = 153
          Top = 72
          Width = 71
          Height = 13
          Caption = 'Valor Boleto:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label20: TsLabel
          Left = 152
          Top = 96
          Width = 53
          Height = 13
          Caption = 'Creditos.:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label21: TsLabel
          Left = 8
          Top = 95
          Width = 22
          Height = 13
          Caption = 'IOF:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object sLabel1: TsLabel
          Left = 153
          Top = 48
          Width = 51
          Height = 13
          Caption = '% Multa:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object DBEdit14: TRxDBCalcEdit
          Left = 80
          Top = 20
          Width = 65
          Height = 21
          DataField = 'VLRABATIMENTO'
          DataSource = DM.Dts_lyBancos
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          OnEnter = DBEdit14Enter
          OnExit = DBEdit14Exit
        end
        object DBEdit15: TRxDBCalcEdit
          Left = 83
          Top = 42
          Width = 64
          Height = 21
          DataField = 'VLRDESCONTO'
          DataSource = DM.Dts_lyBancos
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnEnter = DBEdit15Enter
          OnExit = DBEdit15Exit
        end
        object DBEdit16: TRxDBCalcEdit
          Left = 80
          Top = 67
          Width = 64
          Height = 21
          DataField = 'VLRDESPESACOBRANCA'
          DataSource = DM.Dts_lyBancos
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEdit16Enter
          OnExit = DBEdit16Exit
        end
        object DBEdit18: TRzDBNumericEdit
          Left = 243
          Top = 68
          Width = 65
          Height = 21
          DataSource = DM.Dts_lyBancos
          DataField = 'VLROUTRASDEPESAS'
          Alignment = taLeftJustify
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit18Enter
          OnExit = DBEdit18Exit
          DisplayFormat = ',0;(,0)'
        end
        object DBEdit19: TRzDBNumericEdit
          Left = 243
          Top = 92
          Width = 65
          Height = 21
          DataSource = DM.Dts_lyBancos
          DataField = 'VLROUTROSCREDITOS'
          Alignment = taLeftJustify
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = DBEdit19Enter
          OnExit = DBEdit19Exit
          DisplayFormat = ',0;(,0)'
        end
        object DBEdit20: TRzDBNumericEdit
          Left = 80
          Top = 91
          Width = 65
          Height = 21
          DataSource = DM.Dts_lyBancos
          DataField = 'VLRIOF'
          Alignment = taLeftJustify
          Color = 15263976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = DBEdit20Enter
          OnExit = DBEdit20Exit
          DisplayFormat = ',0;(,0)'
        end
        object DBEdit17: TRxDBCalcEdit
          Left = 244
          Top = 21
          Width = 64
          Height = 21
          DataField = 'PERC_JUROS'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          ParentFont = False
          TabOrder = 4
        end
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 244
          Top = 42
          Width = 64
          Height = 21
          DataField = 'PERC_MULTA'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GlyphKind = gkCustom
          Glyph.Data = {
            46010000424D460100000000000076000000280000001A0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888800000084444444444888F777777777880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008ECEFEFEFC4888F87F7F7F87880000008ECCCCCCCC48
            88F888888887880000008EC088888C4888F87FFFFF87880000008EC0FFFF8C48
            88F878888F87880000008EC000000C4888F877777787880000008ECCCCCCCC48
            88F888888887880000008EEEEEEEEE4888FFFFFFFFFF88000000888888888888
            88888888888888000000}
          ButtonWidth = 0
          NumGlyphs = 2
          ParentColor = True
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox5: TsGroupBox
        Left = 343
        Top = 78
        Width = 413
        Height = 351
        Align = alRight
        Caption = 'Remessa:'
        TabOrder = 1
        object Label23: TsLabel
          Left = 122
          Top = 23
          Width = 55
          Height = 13
          Caption = 'Remessa:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label24: TsLabel
          Left = 106
          Top = 56
          Width = 94
          Height = 13
          Caption = 'Dias a Protestar:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label25: TsLabel
          Left = 265
          Top = 55
          Width = 110
          Height = 13
          Caption = 'ap'#243's o vencimento:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label26: TsLabel
          Left = 18
          Top = 87
          Width = 133
          Height = 13
          Caption = 'Proximo Nosso N'#250'mero:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label36: TsLabel
          Left = 264
          Top = 87
          Width = 25
          Height = 13
          Caption = 'Ano:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object Label38: TsLabel
          Left = 263
          Top = 26
          Width = 83
          Height = 13
          Caption = 'Tipo Cobran'#231'a:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object suiDBCheckBox1: TsDBCheckBox
          Left = 16
          Top = 24
          Width = 100
          Height = 17
          Caption = 'Gera Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DataField = 'FLAG_GERAR_REMESSA'
          DataSource = DM.Dts_lyBancos
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object suiDBCheckBox2: TsDBCheckBox
          Left = 16
          Top = 56
          Width = 80
          Height = 17
          Caption = 'Protestar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          DataField = 'PROTESTAR_AUTOMATICO'
          DataSource = DM.Dts_lyBancos
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit21: TsDBEdit
          Left = 184
          Top = 20
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NUMERO_REMESSA'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = DBEdit21Enter
          OnExit = DBEdit21Exit
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object DBEdit22: TsDBEdit
          Left = 208
          Top = 52
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'QUANT_DIAS_PROTESTO'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = DBEdit22Enter
          OnExit = DBEdit22Exit
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object DBEdit23: TsDBEdit
          Left = 152
          Top = 84
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NOSSONUMERO'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = DBEdit23Enter
          OnExit = DBEdit23Exit
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object DBEdit34: TsDBEdit
          Left = 296
          Top = 84
          Width = 33
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ANO'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit23Enter
          OnExit = DBEdit23Exit
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
        end
        object DBComboBox1: TsDBComboBox
          Left = 349
          Top = 19
          Width = 41
          Height = 21
          Color = clWhite
          DataField = 'TP_COBRANCA'
          DataSource = DM.Dts_lyBancos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '1'
            '2')
          ParentFont = False
          TabOrder = 6
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
          BoundLabel.ParentFont = False
          SkinData.SkinSection = 'COMBOBOX'
        end
      end
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 750
        Height = 72
        Align = alTop
        Caption = 'Diret'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label40: TLabel
          Left = 324
          Top = 19
          Width = 42
          Height = 15
          Caption = 'Retorno'
        end
        object sbtnGetCert: TSpeedButton
          Left = 295
          Top = 35
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbtnGetCertClick
        end
        object SpeedButton2: TSpeedButton
          Left = 614
          Top = 37
          Width = 23
          Height = 21
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object Label39: TLabel
          Left = 8
          Top = 21
          Width = 49
          Height = 15
          Caption = 'Remessa:'
        end
        object envia: TJvDBMaskEdit
          Left = 5
          Top = 37
          Width = 284
          Height = 21
          DataField = 'DIRENVIA'
          DataSource = DM.Dts_lyBancos
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          EditMask = ''
        end
        object recebe: TJvDBMaskEdit
          Left = 324
          Top = 37
          Width = 284
          Height = 21
          DataField = 'DIRRECEBE'
          DataSource = DM.Dts_lyBancos
          Flat = True
          ParentFlat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          EditMask = ''
        end
      end
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    Left = 464
    Top = 384
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 520
    Top = 376
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    Left = 416
    Top = 376
    TMSStyle = 0
  end
  object OpenDialog1: TOpenPictureDialog
    Ctl3D = False
    Options = [ofHideReadOnly]
    Left = 603
    Top = 16
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Ctl3D = False
    Options = [ofHideReadOnly]
    Left = 683
    Top = 16
  end
  object ErroGravacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o!'
    UIStyle = BlueGlass
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 602
    Top = 384
  end
end
