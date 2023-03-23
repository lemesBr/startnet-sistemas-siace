inherited frmPostoBombaCreatedEdit: TfrmPostoBombaCreatedEdit
  Caption = 'Cadastro e Altera'#231#227'o de Bombas'
  ClientHeight = 607
  ClientWidth = 780
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 786
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label2: TLabel
    Left = 276
    ExplicitLeft = 276
  end
  inherited lbl_TitleForm: TLabel
    Left = 265
    ExplicitLeft = 265
  end
  inherited pnl_Base: TPanel
    Width = 746
    Height = 451
    ExplicitWidth = 746
    ExplicitHeight = 451
    inherited Label3: TLabel
      Left = 263
      Top = 406
      ExplicitLeft = 263
      ExplicitTop = 319
    end
    object lbe_Numero: TLabeledEdit
      Left = 15
      Top = 76
      Width = 98
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 67
      EditLabel.Height = 19
      EditLabel.Caption = '* N'#250'mero:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object lbe_Modelo: TLabeledEdit
      Left = 126
      Top = 76
      Width = 139
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 65
      EditLabel.Height = 19
      EditLabel.Caption = '* Modelo:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 15
      Top = -2
      Width = 712
      Height = 41
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Caption = 'Dados gerais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Panel3: TPanel
        Left = 0
        Top = 40
        Width = 712
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
    end
    object lbe_Serie: TLabeledEdit
      Left = 279
      Top = 76
      Width = 139
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 48
      EditLabel.Height = 19
      EditLabel.Caption = '* Serie:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 3
    end
    object lbe_Fabricante: TLabeledEdit
      Left = 432
      Top = 76
      Width = 295
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 84
      EditLabel.Height = 19
      EditLabel.Caption = '* Fabricante:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 4
    end
    object lbe_Descricao: TLabeledEdit
      Left = 15
      Top = 132
      Width = 712
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 80
      EditLabel.Height = 19
      EditLabel.Caption = '* Descri'#231#227'o:'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -16
      EditLabel.Font.Name = 'Calibri'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 5
    end
    object DBGrid: TDBGrid
      Left = 15
      Top = 240
      Width = 712
      Height = 145
      DataSource = ds_Bico
      DrawingStyle = gdsClassic
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Calibri'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = baseDBGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_BICO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_BOMBA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BICO'
          Title.Caption = 'Bico'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TANQUE'
          Title.Caption = 'Tanque'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 250
          Visible = True
        end>
    end
    object pnl_BtnRemoveBico: TPanel
      Left = 577
      Top = 185
      Width = 150
      Height = 41
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'Remover Bico -'
      Color = 8421631
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = pnl_BtnRemoveBicoClick
    end
    object pnl_BtnAddBico: TPanel
      Left = 15
      Top = 185
      Width = 150
      Height = 41
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      Caption = 'Adicionar Bico +'
      Color = 4561691
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = pnl_BtnAddBicoClick
    end
  end
  inherited Panel2: TAdvPanel
    Top = 556
    Width = 780
    ExplicitTop = 556
    ExplicitWidth = 780
    FullHeight = 51
    inherited btnSalvar: TAdvGlowButton
      Left = 682
      ExplicitLeft = 682
    end
    inherited btnCancelar: TAdvGlowButton
      ExplicitLeft = 2
    end
  end
  inherited Action: TActionList
    inherited act_Gravar: TAction
      OnExecute = act_GravarExecute
    end
  end
  object fdmt_Bico: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 651
    Top = 345
    object fdmt_BicoID_BICO: TStringField
      FieldName = 'ID_BICO'
      Size = 32
    end
    object fdmt_BicoID_TANQUE: TStringField
      FieldName = 'ID_BOMBA'
      Size = 32
    end
    object fdmt_BicoBICO: TStringField
      FieldName = 'BICO'
      Size = 255
    end
    object fdmt_BicoTANQUE: TStringField
      FieldName = 'TANQUE'
      Size = 255
    end
    object fdmt_BicoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 255
    end
  end
  object ds_Bico: TDataSource
    DataSet = fdmt_Bico
    Left = 651
    Top = 401
  end
end
