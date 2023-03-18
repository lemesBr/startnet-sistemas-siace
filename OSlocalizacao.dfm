inherited FormOSlocalizacao: TFormOSlocalizacao
  Left = 218
  Top = 205
  Caption = 'Localiza'#231#227'o de Bens'
  ClientHeight = 335
  ClientWidth = 679
  Constraints.MinWidth = 130
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 695
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 679
    Height = 280
    ExplicitWidth = 679
    ExplicitHeight = 280
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
      Width = 147
      Height = 13
      Caption = 'Descri'#231#227'o das Localidades'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object myLabel3d1: TsLabelFX
      Left = 267
      Top = 21
      Width = 218
      Height = 33
      Caption = 'Cadastro de Locais  '
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
      DataField = 'ID_OS_LOCALEQUIPAMENTO'
      DataSource = DMOS.Dts_localizacao
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
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'LOCAL'
      DataSource = DMOS.Dts_localizacao
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
      Top = 112
      Width = 641
      Height = 161
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.Dts_localizacao
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
          FieldName = 'ID_OS_LOCALEQUIPAMENTO'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCAL'
          Title.Caption = 'Descricao do Local'
          Width = 341
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
    Top = 280
    Width = 679
    ExplicitTop = 280
    ExplicitWidth = 679
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
      Enabled = False
    end
    inherited btnLocalizar: TAdvGlowButton
      Enabled = False
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
