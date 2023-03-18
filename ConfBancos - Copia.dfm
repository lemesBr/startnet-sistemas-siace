inherited FormLyBancos: TFormLyBancos
  Left = 357
  Top = 98
  Caption = 'Cadastro de Layout Bancario'
  ClientHeight = 575
  ClientWidth = 774
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 774
    Height = 520
    Enabled = False
    object Label3: TsLabelFX
      Left = 191
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
    object Label22: TLabel
      Left = 16
      Top = 498
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
    object GroupBox1: TsGroupBox
      Left = 16
      Top = 96
      Width = 738
      Height = 226
      Caption = 'Cedente'
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit7Enter
        OnExit = DBEdit7Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit8Enter
        OnExit = DBEdit8Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit9Enter
        OnExit = DBEdit9Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit5Enter
        OnExit = DBEdit5Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnEnter = DBEdit10Enter
        OnExit = DBEdit10Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnEnter = DBEdit11Enter
        OnExit = DBEdit11Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnEnter = DBEdit12Enter
        OnExit = DBEdit12Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit8Enter
        OnExit = DBEdit8Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit9Enter
        OnExit = DBEdit9Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        SkinData.SkinSection = 'GROUPBOX'
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        KeyField = 'TITULAR'
        ListField = 'TITULAR'
        ListSource = DM.DTS_Conta_Bancaria
        ParentFont = False
        TabOrder = 0
        OnEnter = DBLookupComboBox2Enter
        OnExit = DBLookupComboBox2Exit
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object GroupBox2: TsGroupBox
      Left = 16
      Top = 32
      Width = 737
      Height = 65
      Caption = 'Dados do Banco:'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object Label1: TLabel
        Left = 8
        Top = 12
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
        Left = 88
        Top = 12
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
        Left = 192
        Top = 12
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
      object DBEdit3: TsDBEdit
        Left = 192
        Top = 28
        Width = 369
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'DESCRICAO'
        DataSource = DM.Dts_lyBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object DBEdit1: TsDBEdit
        Left = 8
        Top = 28
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
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object DBLookupComboBox1: TsDBLookupComboBox
        Left = 88
        Top = 27
        Width = 97
        Height = 21
        Color = clWhite
        DataField = 'BANCO_PORTADOR'
        DataSource = DM.Dts_lyBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'FEBRABAN'
        ListField = 'FEBRABAN;NOME'
        ListSource = DM.DTS_Bancos
        ParentFont = False
        TabOrder = 1
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object GroupBox3: TsGroupBox
      Left = 16
      Top = 322
      Width = 329
      Height = 117
      Caption = 'Detalhamento'
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
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
        Width = 75
        Height = 13
        Caption = 'Outras Desp.:'
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
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit14Enter
        OnExit = DBEdit14Exit
      end
      object DBEdit15: TRxDBCalcEdit
        Left = 80
        Top = 44
        Width = 64
        Height = 21
        DataField = 'VLRDESCONTO'
        DataSource = DM.Dts_lyBancos
        Color = 15263976
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
        Font.Style = [fsBold]
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
    object GroupBox4: TGroupBox
      Left = 16
      Top = 440
      Width = 737
      Height = 57
      Caption = 'Instru'#231#245'es: '
      TabOrder = 4
      object DBEDIT13: TsDBMemo
        Left = 8
        Top = 14
        Width = 721
        Height = 39
        Color = clWhite
        DataField = 'OBSERVACAO'
        DataSource = DM.Dts_lyBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEDIT13Enter
        OnExit = DBEDIT13Exit
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
      end
    end
    object GroupBox5: TsGroupBox
      Left = 352
      Top = 321
      Width = 401
      Height = 116
      Caption = 'Remessa:'
      TabOrder = 3
      SkinData.SkinSection = 'GROUPBOX'
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
        Left = 120
        Top = 55
        Width = 57
        Height = 13
        Caption = 'Protestar:'
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
        Left = 264
        Top = 23
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
        Width = 94
        Height = 20
        Caption = 'Gera Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
        DataField = 'FLAG_GERAR_REMESSA'
        DataSource = DM.Dts_lyBancos
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object suiDBCheckBox2: TsDBCheckBox
        Left = 16
        Top = 56
        Width = 74
        Height = 20
        Caption = 'Protestar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit21Enter
        OnExit = DBEdit21Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object DBEdit22: TsDBEdit
        Left = 184
        Top = 52
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'QUANT_DIAS_PROTESTO'
        DataSource = DM.Dts_lyBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit22Enter
        OnExit = DBEdit22Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit23Enter
        OnExit = DBEdit23Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit23Enter
        OnExit = DBEdit23Exit
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
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
        ItemHeight = 15
        Items.Strings = (
          '1'
          '2')
        ParentFont = False
        TabOrder = 5
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
  end
  inherited Panel2: TsPanel
    Top = 520
    Width = 774
    inherited btnNovo: TsBitBtn
      Left = 126
      OnClick = btnNovoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF529C6B10
        6B10106B10529C6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF529C6B
        106B10106B10106B10106B10106B107BD67321A539106B10106B10106B10106B
        10106B10529C6BFF00FFFF00FF4A8C4A21A53921A53921A53921A53921A53921
        A53921A53921A53921A53921A53921A53921A539106B10FF00FFFF00FF4A8C4A
        7BD6737BD6737BD6737BD6737BD6737BD67321A5397BD6737BD6737BD6737BD6
        737BD673106B10FF00FFFF00FF529C6B4A8C4A4A8C4A4A8C4A4A8C4A4A8C4A7B
        D67321A539106B10106B10106B10106B10106B10529C6BFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF529C6B4A8C4A4A8C4A529C6BFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited btnEditar: TsBitBtn
      Left = 239
      OnClick = btnEditarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFC64A00C64A00C64A00C64A00C64A00C64A00C6
        4A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFF7FFF7E7FFEFCEFFE7B5395263CEC69CF7CE9CFFCE9CFFCE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B53952630000009CB5C6ADB5B5ADB5B5ADB5B5FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7E7395263000000000000FFCE9CF7CE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5395263FFEFD6D67321000000A5B5B5ADB5B5FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D67321000000FFCE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5ADB5B5395263FFEFD6D673210000009CA5ADFFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D673210000
        00FFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5ADB5B5ADB5B5395263FFEFD6D67321000000FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D673
        21000008FFCE9CC64A00FF00FFC64A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF395263000000104AD6000000C64A00FF00FFC64A00
        C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A008C5210104A
        D6104AD6210010C64A00FF00FFFF00FFC64A00C64A00C64A00C64A00C64A00C6
        4A00C64A00C64A00C64A00C64A00000084000084E7214AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited btnCancelar: TsBitBtn
      Left = 352
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TsBitBtn
      Left = 457
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TsBitBtn
      Left = 562
      OnClick = btnExcluirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADAD9C9C9C849C9C849C
        9C849C846B9C846BAD9C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFEFDED6FFEFBDFFDEB5FFDEADFFDEB5FFEFBDFFF7CEFFDEB59C846BFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFEFDED6FFFFD6FFDEADFFD69CFFCE8C29
        A529FFF7DEFFF7DEFFFFDEFFFFD69C846BFF00FFFF00FFFF00FFFF00FFFF00FF
        DEB584FFDEA5FFF7CEFFD6A5FFCE8C29A529008400008400108C10BDEFB5FFFF
        D69C846BFF00FFFF00FFFF00FFFF00FFF7B573F7AD6BFFBD84FFDEADFFF7BD29
        A52900840039AD39EFFFEF29A529FFDEB5AD9C7BFF00FFFF00FFFF00FFEFDED6
        FFB57BFFB57BFFB57BFFB57BFFD6A529A52929A529108C10D6EFCE73CE73BDCE
        8CAD9C7BFF00FFFF00FFFF00FFEFD6B5FFCE8CFFCE8CFFCE8CFFCE8CFFDEBD6B
        BD63FFF7DE5AB55A29A52929A529D6DEADCEBD9CFF00FFFF00FFFF00FFF7D6AD
        FFD6A5FFD6A5FFD6A5FFD6A5FFDEAD39AD396BBD636BBD6B00840029A529FFDE
        B5CEBD9CFF00FFFF00FFFF00FFFFDEADFFEFB5FFEFB5FFEFB5FFEFB5FFEFB5D6
        EFB5108C1000840000840029A529FFEFCECEBD9CFF00FFFF00FFFF00FFFFDEAD
        FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6EFFFD6ADDEA5BDEFB529A529FFFF
        DED6D6B5FF00FFFF00FFFF00FFFFCE9CFFFFD6FFFFD6FFFFD6FFFFD6FFF7CEFF
        EFB5FFD6A5FFDEA5FFEFBDFFFFD6FFFFD6D6D6B5FF00FFFF00FFFF00FFFFDEBD
        FFCE9CFFCE9CFFCE9CEFBD8CEFA55AEFA552EFA55AF7AD63F7AD63F7B573FFDE
        ADD6D6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        CE9CEFBD8CF7AD6BF7AD6BF7B573F7B573FFD69CFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFCE9CFFB57BFFB5
        7BF7BD8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited DBNavigator: TsDBNavigator
      Width = 108
    end
    inherited btnLocalizar: TsBitBtn
      Left = 665
      OnClick = btnLocalizarClick
    end
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    Left = 272
    Top = 40
  end
  object OpenDialog1: TOpenPictureDialog
    Left = 603
    Top = 168
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 395
    Top = 48
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
    Left = 450
  end
end
