inherited FormOsTpBens: TFormOsTpBens
  Left = 329
  Top = 256
  Caption = 'Cadastro de tipo de Bens'
  ClientHeight = 347
  ClientWidth = 682
  Constraints.MinWidth = 130
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 698
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 682
    Height = 292
    ExplicitWidth = 682
    ExplicitHeight = 292
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
      Top = 79
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
    object myLabel3d1: TsLabelFX
      Left = 163
      Top = 21
      Width = 378
      Height = 33
      Caption = 'Cadastro de tipo de  Bens Para O.S.'
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
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_OS_EQUIPAMENTO_TIPO'
      DataSource = DMOS.Dts_TipoBens
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
      Top = 96
      Width = 647
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'TIPO'
      DataSource = DMOS.Dts_TipoBens
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
      Top = 120
      Width = 649
      Height = 165
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.Dts_TipoBens
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
          FieldName = 'ID_OS_EQUIPAMENTO_TIPO'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Descricao'
          Width = 364
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERCAD'
          Title.Caption = 'Usuario'
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
    Top = 292
    Width = 682
    ExplicitTop = 292
    ExplicitWidth = 682
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
    inherited btnLocalizar: TAdvGlowButton
      Left = 581
      Height = 41
      Enabled = False
      ExplicitLeft = 581
      ExplicitHeight = 41
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 384
    Top = 56
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
