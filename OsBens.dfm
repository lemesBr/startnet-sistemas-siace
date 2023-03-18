inherited FormOSBem: TFormOSBem
  Left = 428
  Top = 197
  Caption = 'Cadastro de Bens'
  ClientHeight = 426
  ClientWidth = 681
  Constraints.MinWidth = 130
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 697
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 681
    Height = 371
    ExplicitWidth = 681
    ExplicitHeight = 371
    object Label1: TLabel
      Left = 16
      Top = 30
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TsLabel
      Left = 16
      Top = 71
      Width = 100
      Height = 13
      Caption = 'Descri'#231#227'o do Bem'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label4: TsLabel
      Left = 16
      Top = 111
      Width = 72
      Height = 13
      Caption = 'Tipo do Bem:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label5: TsLabel
      Left = 16
      Top = 159
      Width = 80
      Height = 13
      Caption = 'Marca do Bem'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object myLabel3d1: TsLabelFX
      Left = 235
      Top = 13
      Width = 196
      Height = 33
      Caption = 'Cadastro de Bens '
      Color = 15263976
      ParentColor = False
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object DBEdit1: TsDBEdit
      Left = 16
      Top = 48
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_OS_EQUIPAMENTOS'
      DataSource = DMOS.Dts_bem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
    object DBEdit2: TsDBEdit
      Left = 16
      Top = 87
      Width = 649
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'MODELO'
      DataSource = DMOS.Dts_bem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object suiDBGrid1: TsDBGrid
      Left = 16
      Top = 203
      Width = 649
      Height = 158
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.Dts_bem
      FixedColor = 15717318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = suiDBGrid1DrawColumnCell
      SkinData.SkinSection = 'EDIT'
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_OS_EQUIPAMENTOS'
          Title.Caption = 'C'#243'digo do Bem'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Caption = 'Descricao do Bem'
          Width = 334
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERCAD'
          Title.Caption = 'Usu'#225'rio'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACAD'
          Title.Caption = 'Data Cadastro'
          Width = 78
          Visible = True
        end>
    end
    object DBLookupComboBox1: TsDBLookupComboBox
      Left = 16
      Top = 128
      Width = 449
      Height = 21
      Color = clWhite
      DataField = 'ID_OS_EQUIPAMENTO_TIPO'
      DataSource = DMOS.Dts_bem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'ID_OS_EQUIPAMENTO_TIPO'
      ListField = 'TIPO'
      ListSource = DMOS.Dts_TipoBens
      ParentFont = False
      TabOrder = 3
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
    object DBLookupComboBox2: TsDBLookupComboBox
      Left = 16
      Top = 176
      Width = 449
      Height = 21
      Color = clWhite
      DataField = 'ID_OS_EQUIPAMENTO_MARCA'
      DataSource = DMOS.Dts_bem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'ID_OS_EQUIPAMENTO_MARCAS'
      ListField = 'MARCA'
      ListSource = DMOS.DTS_OSMarcas
      ParentFont = False
      TabOrder = 4
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
  inherited Panel2: TsPanel
    Top = 371
    Width = 681
    ExplicitTop = 371
    ExplicitWidth = 681
    inherited btnNovo: TAdvGlowButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TAdvGlowButton
      Left = 190
      OnClick = btnEditarClick
      ExplicitLeft = 190
    end
    inherited btnCancelar: TAdvGlowButton
      Left = 285
      OnClick = btnCancelarClick
      ExplicitLeft = 285
    end
    inherited btnSalvar: TAdvGlowButton
      Left = 383
      OnClick = btnSalvarClick
      ExplicitLeft = 383
    end
    inherited btnExcluir: TAdvGlowButton
      Left = 479
      OnClick = btnExcluirClick
      Enabled = False
      ExplicitLeft = 479
    end
    inherited btnLocalizar: TAdvGlowButton
      Left = 574
      Enabled = False
      ExplicitLeft = 574
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 376
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
