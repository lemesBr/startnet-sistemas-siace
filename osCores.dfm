inherited FormOsCores: TFormOsCores
  Left = 279
  Top = 224
  Caption = 'Cadastro de Cores dos Bens'
  ClientHeight = 352
  ClientWidth = 676
  Constraints.MinWidth = 130
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 692
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 676
    Height = 297
    ExplicitWidth = 676
    ExplicitHeight = 297
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
      Width = 139
      Height = 13
      Caption = 'Descri'#231#227'o da Cor do Bem'
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
      Width = 298
      Height = 33
      Caption = 'Cadastro de Cores dos Bens'
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
      DataField = 'ID_OS_EQUIPAMENTO_COR'
      DataSource = DMOS.DTS_OSCOR
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
      Top = 83
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'COR'
      DataSource = DMOS.DTS_OSCOR
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
      Left = 25
      Top = 107
      Width = 640
      Height = 182
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.DTS_OSCOR
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
          FieldName = 'ID_OS_EQUIPAMENTO_COR'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Title.Caption = 'Descri'#231#227'o da Cor'
          Width = 434
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
    Top = 297
    Width = 676
    ExplicitTop = 297
    ExplicitWidth = 676
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
      DataSource = DMOS.DTS_OSCOR
    end
    inherited btnLocalizar: TAdvGlowButton
      Enabled = False
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Top = 40
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
