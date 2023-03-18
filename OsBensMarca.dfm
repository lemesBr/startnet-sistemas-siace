inherited FormOsMarca: TFormOsMarca
  Left = 255
  Top = 248
  Caption = 'Cadastro de Marcas dos Bens'
  ClientHeight = 319
  ClientWidth = 683
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 689
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 683
    Height = 264
    ExplicitWidth = 683
    ExplicitHeight = 264
    object Label1: TsLabel
      Left = 24
      Top = 30
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label2: TsLabel
      Left = 24
      Top = 71
      Width = 155
      Height = 13
      Caption = 'Descri'#231#227'o da Marca do Bem'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object myLabel3d1: TsLabelFX
      Left = 211
      Top = 13
      Width = 321
      Height = 33
      Caption = 'Cadastro de Marcas dos Bens '
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
      Left = 24
      Top = 48
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_OS_EQUIPAMENTO_MARCAS'
      DataSource = DMOS.DTS_OSMarcas
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
      Left = 24
      Top = 86
      Width = 729
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'MARCA'
      DataSource = DMOS.DTS_OSMarcas
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
      Left = 24
      Top = 116
      Width = 649
      Height = 139
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.DTS_OSMarcas
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
          FieldName = 'ID_OS_EQUIPAMENTO_MARCAS'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Caption = 'Descricao da Marca'
          Width = 353
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
          Width = 72
          Visible = True
        end>
    end
  end
  inherited Panel2: TsPanel
    Top = 264
    Width = 683
    ExplicitTop = 264
    ExplicitWidth = 683
    inherited btnNovo: TAdvGlowButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TAdvGlowButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TAdvGlowButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TAdvGlowButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TAdvGlowButton
      OnClick = btnExcluirClick
    end
    inherited DBNavigator: TsDBNavigator
      DataSource = DMOS.DTS_OSMarcas
    end
    inherited btnLocalizar: TAdvGlowButton
      Left = 581
      Enabled = False
      ExplicitLeft = 581
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 368
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
