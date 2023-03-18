inherited FormCidades: TFormCidades
  Left = 462
  Top = 246
  Caption = 'Cadastro de Cidades'
  ClientHeight = 270
  ClientWidth = 685
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Top = 29
    Width = 685
    Height = 186
    object Label1: TsLabel
      Left = 24
      Top = 16
      Width = 41
      Height = 13
      Caption = 'C'#243'digo:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label2: TsLabel
      Left = 24
      Top = 48
      Width = 41
      Height = 13
      Caption = 'Cidade:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label3: TsLabel
      Left = 24
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Estado:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label4: TsLabel
      Left = 452
      Top = 75
      Width = 17
      Height = 13
      Caption = 'UF:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label6: TsLabel
      Left = 24
      Top = 107
      Width = 23
      Height = 13
      Caption = 'CEP:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object Label7: TsLabel
      Left = 208
      Top = 107
      Width = 56
      Height = 13
      Caption = 'Cod. IBGE:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object DBEdit1: TsDBEdit
      Left = 80
      Top = 11
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = True
      DataField = 'COD_CIDADE'
      DataSource = DM.DTS_cidades
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBEdit2: TsDBEdit
      Left = 80
      Top = 44
      Width = 585
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'NOME'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBLookupComboBox1: TsDBLookupComboBox
      Left = 80
      Top = 72
      Width = 361
      Height = 21
      Color = clWhite
      DataField = 'COD_ESTADO'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'COD_ESTADO'
      ListField = 'DESCRICO'
      ListSource = DM.DTS_Estados
      ParentFont = False
      TabOrder = 2
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
      OnKeyPress = DBLookupComboBox1KeyPress
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
    end
    object DBEdit3: TsDBEdit
      Left = 472
      Top = 72
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'UF'
      DataSource = DM.DTS_cidades
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBEdit4: TsDBEdit
      Left = 80
      Top = 104
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'CEP'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object DBEdit5: TsDBEdit
      Left = 280
      Top = 104
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'COD_IBGE'
      DataSource = DM.DTS_cidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
  end
  inherited Panel2: TsPanel
    Top = 215
    Width = 685
    inherited btnNovo: TsBitBtn
      Left = 98
      OnClick = btnNovoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF529C6B10
        6B10106B10529C6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF529C6B
        106B10106B10106B10106B10106B107BD67321A539106B10106B10106B10106B
        10106B10529C6BFF00FFFF00FF4A8C4A21A53921A53921A53921A53921A53921
        A53921A53921A53921A53921A53921A53921A539106B10FF00FFFF00FF4A8C4A
        7BD6737BD6737BD6737BD6737BD6737BD67321A5397BD6737BD6737BD6737BD6
        737BD673106B10FF00FFFF00FF529C6B4A8C4A4A8C4A4A8C4A4A8C4A4A8C4A7B
        D67321A539106B10106B10106B10106B10106B10529C6BFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF4A8C4A7BD67321A539106B10FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A8C4A7B
        D67321A539106B10FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF529C6B4A8C4A4A8C4A529C6BFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited btnEditar: TsBitBtn
      Left = 195
      OnClick = btnEditarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFC64A00C64A00C64A00C64A00C64A00C64A00C6
        4A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFF7FFF7E7FFEFCEFFE7B5395263CEC69CF7CE9CFFCE9CFFCE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B53952630000009CB5C6ADB5B5ADB5B5ADB5B5FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7E7395263000000000000FFCE9CF7CE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5395263FFEFD6D67321000000A5B5B5ADB5B5FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D67321000000FFCE
        9CFFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5ADB5B5395263FFEFD6D673210000009CA5ADFFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D673210000
        00FFCE9CFFCE9CC64A00FF00FFC64A00FFFFFFADB5B5ADB5B5ADB5B5ADB5B5AD
        B5B5ADB5B5ADB5B5395263FFEFD6D67321000000FFCE9CC64A00FF00FFC64A00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63848CFFEFD6D673
        21000008FFCE9CC64A00FF00FFC64A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF395263000000104AD6000000C64A00FF00FFC64A00
        C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A00C64A008C5210104A
        D6104AD6210010C64A00FF00FFFF00FFC64A00C64A00C64A00C64A00C64A00C6
        4A00C64A00C64A00C64A00C64A00000084000084E7214AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited btnCancelar: TsBitBtn
      Left = 292
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TsBitBtn
      Left = 389
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TsBitBtn
      Left = 486
      OnClick = btnExcluirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADAD9C9C9C849C9C849C
        9C849C846B9C846BAD9C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFEFDED6FFEFBDFFDEB5FFDEADFFDEB5FFEFBDFFF7CEFFDEB59C846BFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFEFDED6FFFFD6FFDEADFFD69CFFCE8C29
        A529FFF7DEFFF7DEFFFFDEFFFFD69C846BFF00FFFF00FFFF00FFFF00FFFF00FF
        DEB584FFDEA5FFF7CEFFD6A5FFCE8C29A529008400008400108C10BDEFB5FFFF
        D69C846BFF00FFFF00FFFF00FFFF00FFF7B573F7AD6BFFBD84FFDEADFFF7BD29
        A52900840039AD39EFFFEF29A529FFDEB5AD9C7BFF00FFFF00FFFF00FFEFDED6
        FFB57BFFB57BFFB57BFFB57BFFD6A529A52929A529108C10D6EFCE73CE73BDCE
        8CAD9C7BFF00FFFF00FFFF00FFEFD6B5FFCE8CFFCE8CFFCE8CFFCE8CFFDEBD6B
        BD63FFF7DE5AB55A29A52929A529D6DEADCEBD9CFF00FFFF00FFFF00FFF7D6AD
        FFD6A5FFD6A5FFD6A5FFD6A5FFDEAD39AD396BBD636BBD6B00840029A529FFDE
        B5CEBD9CFF00FFFF00FFFF00FFFFDEADFFEFB5FFEFB5FFEFB5FFEFB5FFEFB5D6
        EFB5108C1000840000840029A529FFEFCECEBD9CFF00FFFF00FFFF00FFFFDEAD
        FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6FFFFD6EFFFD6ADDEA5BDEFB529A529FFFF
        DED6D6B5FF00FFFF00FFFF00FFFFCE9CFFFFD6FFFFD6FFFFD6FFFFD6FFF7CEFF
        EFB5FFD6A5FFDEA5FFEFBDFFFFD6FFFFD6D6D6B5FF00FFFF00FFFF00FFFFDEBD
        FFCE9CFFCE9CFFCE9CEFBD8CEFA55AEFA552EFA55AF7AD63F7AD63F7B573FFDE
        ADD6D6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        CE9CEFBD8CF7AD6BF7AD6BF7B573F7B573FFD69CFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFCE9CFFB57BFFB5
        7BF7BD8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    inherited DBNavigator: TsDBNavigator
      DataSource = DM.DTS_cidades
    end
    inherited btnLocalizar: TsBitBtn
      Left = 581
      OnClick = btnLocalizarClick
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 685
    Height = 29
    Align = alTop
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 2
    object Label5: TsLabelFX
      Left = 199
      Top = 3
      Width = 297
      Height = 27
      Caption = 'Cadastro de cidades'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
  end
  object Sds_cid: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from cidades'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 249
    object Sds_cidCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Required = True
    end
    object Sds_cidNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object Sds_cidCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Sds_cidCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Required = True
    end
    object Sds_cidCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_cidUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_cidDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object Dts_cid: TDataSource
    DataSet = Sds_cid
    Left = 281
  end
end
