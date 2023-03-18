inherited FormOSAtendimento: TFormOSAtendimento
  Left = 229
  Top = 199
  Caption = 'Cadastro de Tipo de Atendimento'
  ClientHeight = 341
  ClientWidth = 672
  Constraints.MinWidth = 130
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  ExplicitWidth = 688
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 672
    Height = 286
    ExplicitWidth = 672
    ExplicitHeight = 286
    object Label1: TsLabel
      Left = 24
      Top = 30
      Width = 41
      Height = 13
      Caption = 'C'#243'digo:'
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
      Width = 194
      Height = 13
      Caption = 'Descri'#231#227'o do tipo de Atendimento:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object myLabel3d1: TsLabelFX
      Left = 139
      Top = 13
      Width = 356
      Height = 33
      Caption = 'Cadastro de Tipo de Atendimento'
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
    object DBEdit2: TsDBEdit
      Left = 24
      Top = 83
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'TIPOATENDIMENTO'
      DataSource = DMOS.DTS_TPAtendimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
    object DBEdit1: TsDBEdit
      Left = 24
      Top = 48
      Width = 121
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_OS_TIPO'
      DataSource = DMOS.DTS_TPAtendimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
    end
    object suiDBGrid1: TsDBGrid
      Left = 22
      Top = 112
      Width = 635
      Height = 161
      BorderStyle = bsNone
      Color = 14609391
      DataSource = DMOS.DTS_TPAtendimento
      FixedColor = 15717318
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
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
          FieldName = 'ID_OS_TIPO'
          Title.Caption = 'C'#243'digo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOATENDIMENTO'
          Title.Caption = 'Descric'#231#227'o do Atendimento'
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FLAGEXTERNA'
          ReadOnly = False
          Title.Caption = 'Tipo'
          Width = 25
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
    object suiDBRadioGroup1: TsDBRadioGroup
      Left = 470
      Top = 56
      Width = 185
      Height = 49
      Caption = 'Tipo Atendimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Interna'
        'Externa')
      DataField = 'FLAGEXTERNA'
      DataSource = DMOS.DTS_TPAtendimento
      Values.Strings = (
        'I'
        'E')
    end
  end
  inherited Panel2: TsPanel
    Top = 286
    Width = 672
    ExplicitTop = 286
    ExplicitWidth = 672
    inherited btnNovo: TAdvGlowButton
      Left = 96
      OnClick = btnNovoClick
      ExplicitLeft = 96
    end
    inherited btnEditar: TAdvGlowButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TAdvGlowButton
      Left = 286
      OnClick = btnCancelarClick
      ExplicitLeft = 286
    end
    inherited btnSalvar: TAdvGlowButton
      Left = 381
      OnClick = btnSalvarClick
      ExplicitLeft = 381
    end
    inherited btnExcluir: TAdvGlowButton
      Left = 476
      OnClick = btnExcluirClick
      ExplicitLeft = 476
    end
    inherited DBNavigator: TsDBNavigator
      DataSource = DMOS.DTS_TPAtendimento
    end
    inherited btnLocalizar: TAdvGlowButton
      Left = 571
      Enabled = False
      ExplicitLeft = 571
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    Left = 365
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
