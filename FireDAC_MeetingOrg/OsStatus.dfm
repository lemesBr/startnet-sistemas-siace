inherited FormOsStatus: TFormOsStatus
  Left = 203
  Top = 161
  Caption = 'Cadastro de Status da OS'
  ClientHeight = 339
  ClientWidth = 675
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 675
    Height = 283
    ExplicitWidth = 675
    ExplicitHeight = 283
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
    object myLabel3d1: TsLabelFX
      Left = 211
      Top = 13
      Width = 287
      Height = 33
      Caption = 'Cadastro de status da O.S.'
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
      DataField = 'ID_OS_STATUS'
      DataSource = DMOS.Dts_status
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object DBEdit2: TsDBEdit
      Left = 24
      Top = 86
      Width = 638
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'STATUS'
      DataSource = DMOS.Dts_status
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
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
    end
    object suiDBGrid1: TsDBGrid
      Left = 24
      Top = 116
      Width = 638
      Height = 157
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.Dts_status
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
          FieldName = 'ID_OS_STATUS'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Descri'#231#227'o do Status da OS'
          Width = 359
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERCAD'
          Title.Caption = 'Usu'#225'rio (Cad)'
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
    Top = 283
    Width = 675
    Height = 56
    ExplicitTop = 283
    ExplicitWidth = 675
    ExplicitHeight = 56
    inherited btnNovo: TsBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TsBitBtn
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TsBitBtn
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TsBitBtn
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TsBitBtn
      OnClick = btnExcluirClick
    end
    inherited btnLocalizar: TsBitBtn
      Enabled = False
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    Left = 360
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
