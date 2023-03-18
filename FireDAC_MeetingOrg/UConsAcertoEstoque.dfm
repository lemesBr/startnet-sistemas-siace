object FrmConsAcertoEstoque: TFrmConsAcertoEstoque
  Left = 463
  Top = 147
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Acerto de Estoque'
  ClientHeight = 516
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = Sia
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 16710131
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 257
      Height = 49
      Caption = 'Consultar por'
      TabOrder = 0
      object ComboCons: TComboBox
        Left = 8
        Top = 16
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = ComboConsChange
        Items.Strings = (
          'C'#211'DIGO'
          'DATA')
      end
    end
    object GB2: TGroupBox
      Left = 288
      Top = 8
      Width = 305
      Height = 49
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label1: TLabel
        Left = 120
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TDateTimePicker
        Left = 16
        Top = 18
        Width = 97
        Height = 21
        Date = 37954.412703738400000000
        Time = 37954.412703738400000000
        TabOrder = 0
      end
      object EdtDataFin: TDateTimePicker
        Left = 136
        Top = 18
        Width = 97
        Height = 21
        Date = 37954.412703738400000000
        Time = 37954.412703738400000000
        TabOrder = 1
      end
      object EdtCod: TEdit
        Left = 8
        Top = 16
        Width = 289
        Height = 21
        Color = clSilver
        TabOrder = 2
        OnKeyPress = EdtCodKeyPress
      end
    end
    object CheckEmp: TCheckBox
      Left = 8
      Top = 61
      Width = 153
      Height = 17
      Caption = 'Todas as Empresas'
      TabOrder = 2
    end
    object BtnOk: TButton
      Left = 610
      Top = 24
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = BtnOkClick
    end
    object BtnSair: TButton
      Left = 698
      Top = 24
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 804
    Height = 416
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 16710131
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 802
      Height = 376
      Align = alTop
      Color = clSilver
      DataSource = DSQConsAcerto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'COD_ACE'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo.'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'COD_EMP'
          Title.Alignment = taCenter
          Title.Caption = 'Empresa'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'DATA_ACE'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NOME_MOT'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Motivo'
          Width = 350
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Local do Estoque'
          Width = 260
          Visible = True
        end>
    end
    object BtnLocalizar: TButton
      Left = 380
      Top = 384
      Width = 65
      Height = 25
      Caption = '&Localizar'
      TabOrder = 1
      OnClick = BtnLocalizarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 497
    Width = 804
    Height = 19
    Panels = <>
  end
  object QConsAcerto: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT A.*, M.NOME_MOT, L.DESCRICAO'
      'FROM ACERTO_ESTOQUE A'
      'INNER JOIN MOTIVO_ACERTO M'
      'ON (A.COD_MOT = M.COD_MOT)'
      'INNER JOIN LOCAIS_ESTOQUE L'
      'ON (A.CODIGO_LOCAL_ESTOQUE = L.CODIGO)')
    Left = 192
    Top = 176
    object QConsAcertoCOD_ACE: TIntegerField
      FieldName = 'COD_ACE'
      Origin = 'ACERTO_ESTOQUE.COD_ACE'
      Required = True
    end
    object QConsAcertoDATA_ACE: TDateField
      FieldName = 'DATA_ACE'
      Origin = 'ACERTO_ESTOQUE.DATA_ACE'
      Required = True
    end
    object QConsAcertoCOD_MOT: TIntegerField
      FieldName = 'COD_MOT'
      Origin = 'ACERTO_ESTOQUE.COD_MOT'
      Required = True
    end
    object QConsAcertoCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'ACERTO_ESTOQUE.COD_EMP'
      Required = True
    end
    object QConsAcertoNOME_MOT: TIBStringField
      FieldName = 'NOME_MOT'
      Origin = 'MOTIVO_ACERTO.NOME_MOT'
      Required = True
      Size = 50
    end
    object QConsAcertoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = 'ACERTO_ESTOQUE.OBSERVACAO'
      Size = 200
    end
    object QConsAcertoCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'ACERTO_ESTOQUE.CODIGO_LOCAL_ESTOQUE'
      Required = True
    end
    object QConsAcertoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOCAIS_ESTOQUE.DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object DSQConsAcerto: TDataSource
    AutoEdit = False
    DataSet = QConsAcerto
    Left = 192
    Top = 232
  end
end
