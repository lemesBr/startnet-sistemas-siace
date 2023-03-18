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
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
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
      BoundLabel.ParentFont = False
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
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
      SkinData.SkinSection = 'GROUPBOX'
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
    inherited btnNovo: TsBitBtn
      Left = 96
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
      OnClick = btnNovoClick
      ExplicitLeft = 96
    end
    inherited btnEditar: TsBitBtn
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
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TsBitBtn
      Left = 286
      OnClick = btnCancelarClick
      ExplicitLeft = 286
    end
    inherited btnSalvar: TsBitBtn
      Left = 381
      OnClick = btnSalvarClick
      ExplicitLeft = 381
    end
    inherited btnExcluir: TsBitBtn
      Left = 476
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
      OnClick = btnExcluirClick
      ExplicitLeft = 476
    end
    inherited DBNavigator: TsDBNavigator
      DataSource = DMOS.DTS_TPAtendimento
    end
    inherited btnLocalizar: TsBitBtn
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
