inherited frmPostoTanqueCreatedEdit: TfrmPostoTanqueCreatedEdit
  Caption = 'Cadastro e Altera'#231#227'o de Tanques'
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
    object Label1: TLabel
      Left = 15
      Top = 120
      Width = 54
      Height = 19
      Anchors = [akTop, akRight]
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
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
    object lbe_VolumeAtual: TLabeledEdit
      Left = 126
      Top = 76
      Width = 139
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 102
      EditLabel.Height = 19
      EditLabel.Caption = '* Volume Atual:'
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
    object lbe_Capacidade: TLabeledEdit
      Left = 279
      Top = 76
      Width = 139
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      EditLabel.Width = 92
      EditLabel.Height = 19
      EditLabel.Caption = '* Capacidade:'
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
    object lbe_Descricao: TLabeledEdit
      Left = 432
      Top = 76
      Width = 295
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
      TabOrder = 4
    end
    object comboedit1: TComboEdit
      Left = 15
      Top = 143
      Width = 98
      Height = 27
      Alignment = taCenter
      CharCase = ecUpperCase
      ClickKey = 120
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = ''
      OnButtonClick = comboedit1ButtonClick
      OnChange = comboedit1Change
      OnExit = comboedit1Exit
    end
    object Panel6: TPanel
      Left = 126
      Top = 143
      Width = 601
      Height = 27
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 6
      object RxLabel7: TRxLabel
        Left = 6
        Top = 3
        Width = 587
        Height = 20
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
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
