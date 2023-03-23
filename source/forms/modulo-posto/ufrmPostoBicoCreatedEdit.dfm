inherited frmPostoBicoCreatedEdit: TfrmPostoBicoCreatedEdit
  Caption = 'Cadastro e Altera'#231#227'o de Bicos'
  ClientHeight = 520
  ClientWidth = 780
  OnCreate = FormCreate
  ExplicitWidth = 786
  ExplicitHeight = 549
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
    Height = 364
    ExplicitWidth = 746
    ExplicitHeight = 364
    inherited Label3: TLabel
      Left = 263
      Top = 319
      ExplicitLeft = 263
      ExplicitTop = 319
    end
    object Label7: TLabel
      Left = 15
      Top = 109
      Width = 47
      Height = 19
      Caption = 'Tanque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbe_Codigo: TLabeledEdit
      Left = 15
      Top = 76
      Width = 98
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 61
      EditLabel.Height = 19
      EditLabel.Caption = '* Codigo:'
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
    object lbe_Posicao: TLabeledEdit
      Left = 126
      Top = 76
      Width = 139
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 66
      EditLabel.Height = 19
      EditLabel.Caption = '* Posicao:'
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
    object lbe_Descricao: TLabeledEdit
      Left = 280
      Top = 76
      Width = 447
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
      TabOrder = 3
    end
    object cbx_Tanque: TComboBox
      Left = 15
      Top = 132
      Width = 338
      Height = 27
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited Panel2: TAdvPanel
    Top = 469
    Width = 780
    ExplicitTop = 469
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
end
