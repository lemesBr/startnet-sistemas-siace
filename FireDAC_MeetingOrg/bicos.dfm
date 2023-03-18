inherited FormBicos: TFormBicos
  Left = 347
  Top = 178
  Caption = 'Cadastro de Bicos'
  ClientHeight = 286
  OldCreateOrder = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TAdvPanel
    Height = 235
    ExplicitHeight = 235
    FullHeight = 235
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 656
      Height = 64
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 668
      DesignSize = (
        656
        64)
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 122
        Height = 16
        Cursor = crHandPoint
        Caption = 'Selecione a Bomba:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 24
        Width = 423
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'COD_BOMBA'
        DataSource = DMP.DTS_BICOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'COD_BOMBA'
        ListField = 'COD_BOMBA'
        ListSource = DMP.DTS_BOMBA
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 464
        Top = 16
        Width = 121
        Height = 21
        TabStop = False
        TabOrder = 1
        Visible = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 64
      Width = 656
      Height = 171
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 668
      DesignSize = (
        656
        171)
      object Label2: TLabel
        Left = 16
        Top = 112
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 64
        Width = 67
        Height = 16
        Caption = 'N'#186' do Bico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 13
        Width = 87
        Height = 16
        Caption = 'N'#186' do Tanque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 168
        Top = 16
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Produto:'
      end
      object Label6: TLabel
        Left = 168
        Top = 65
        Width = 53
        Height = 16
        Caption = 'Posi'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 128
        Width = 586
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBS'
        DataSource = DMP.DTS_BICOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 24
        DataField = 'COD_TANQUE'
        DataSource = DMP.DTS_BICOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'COD_TANQUE'
        ListField = 'COD_TANQUE'
        ListSource = DMP.DTS_TANQUES
        ParentFont = False
        TabOrder = 0
        OnExit = DBLookupComboBox3Exit
      end
      object comboedit1: TComboEdit
        Left = 170
        Top = 33
        Width = 110
        Height = 24
        Alignment = taCenter
        CharCase = ecUpperCase
        ClickKey = 120
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000F000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFFE00009CE600009CE60000FFFE0000}
        NumGlyphs = 1
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = ''
        OnButtonClick = comboedit1ButtonClick
        OnChange = comboedit1Change
        OnExit = comboedit1Exit
      end
      object Panel6: TPanel
        Left = 292
        Top = 33
        Width = 317
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 15263976
        TabOrder = 3
        object RxLabel7: TRxLabel
          Left = 6
          Top = 3
          Width = 301
          Height = 20
          AutoSize = False
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 24
        DataField = 'ID_BICO'
        DataSource = DMP.DTS_BICOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 81
        Width = 121
        Height = 24
        DataField = 'POSICAO'
        DataSource = DMP.DTS_BICOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  inherited Panel2: TAdvPanel
    Top = 235
    ExplicitTop = 235
    FullHeight = 51
    inherited BtnGravar: TAdvGlowButton
      OnClick = BtnGravarClick
    end
    inherited BtnExcluir: TAdvGlowButton
      Caption = 'ou'
      OnClick = BtnExcluirClick
    end
  end
  object QryBomba: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select COD_BOMBA, ID_BOMBA from BOMBA Order by ID_BOMBA')
    Left = 536
    Top = 128
  end
  object DtsQryBomba: TDataSource
    DataSet = QryBomba
    Left = 544
    Top = 160
  end
end
