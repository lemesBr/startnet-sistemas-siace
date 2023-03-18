object FormAgencias: TFormAgencias
  Left = 423
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Cadastro de Ag'#234'ncias Banc'#225'rias'
  ClientHeight = 336
  ClientWidth = 662
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 283
    Width = 662
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 2
    Color = 15263976
    TabOrder = 0
    object btnNovo: TsBitBtn
      Left = 108
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Novo Registro'
      Caption = '&Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      OnClick = btnNovoClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnEditar: TsBitBtn
      Left = 196
      Top = 5
      Width = 85
      Height = 40
      Hint = 'Editar Registro '
      Caption = '&Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 1
      OnClick = btnEditarClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnCancelar: TsBitBtn
      Left = 284
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Cancelar Inser'#231#227'o / Altera'#231#227'o '
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0000B50000B5FF00FF0000B50000B5FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000B50000B5FF00FFFF00FF0000B5
        0000B50000B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        B50000B5FF00FFFF00FFFF00FF0000B50000B50000B50000B5FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0000B50000B5FF00FFFF00FFFF00FFFF00FFFF00FF
        0000D60000BD0000B50000B5FF00FFFF00FFFF00FFFF00FF0000B50000B5FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000B50000B50000B5FF
        00FF0000B50000B50000B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0000B50000C60000C60000CE0000B5FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000C600
        00C60000DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0000B50000D60000CE0000DE0000EFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000E70000DE0000D6FF
        00FFFF00FF0000E70000EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0000FF0000DE0000EFFF00FFFF00FFFF00FFFF00FF0000FF0000F7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F70000F70000FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0000F70000F7FF00FFFF00FFFF00FFFF00FF0000F7
        0000F70000F7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0000F7FF00FFFF00FF0000F70000F70000F7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000F70000F7
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelarClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnSalvar: TsBitBtn
      Left = 372
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Salvar Inser'#231#227'o / Altera'#231#227'o'
      Caption = '&Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        9C42399439398C3131947B7BB5BDB5BDBDBDC6BDBDBDBDB5B5BDBDA584848429
        29842929943131FF00FFFF00FFAD5A52C64A4AC64A4AA54242846363AD8C8CDE
        C6C6FFF7F7FFFFFFEFF7F7C69C9C7B1818841818B542429C3939FF00FFAD5A52
        BD4A4AC64A4AA54242846363842929A55A5AE7D6D6FFFFF7FFFFFFCEA5A57B18
        18841818AD42429C3939FF00FFAD5A52BD4A4AC64A4AA54242946B6B84212184
        2121BDADADEFEFEFFFFFFFDEB5B57B1818841818AD42429C3939FF00FFAD5A52
        BD4A4AC64A4AA542429C73738C29297B1818948484CED6CEFFFFFFDEBDBD7B18
        187B1818AD39399C3939FF00FFAD5A52BD4A4AC64A4AAD4242B57373B57B7B9C
        6B6B947373A58C8CDEBDBDD694948C21218C2121B542429C3939FF00FFAD5A52
        BD4A4ABD4A4ABD4A4ABD4A4ABD4A4ABD4A4ABD4A4ABD4242BD4242BD4242BD4A
        4ABD4A4AC64A4A943939FF00FFAD5A52A539319C4239B56B6BC68C8CCE9494CE
        9494CE9494CE8C8CCE9494CE9494CE9C94C68484BD4A4A943939FF00FFAD5A52
        9C3131DEBDBDFFF7F7F7F7EFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFF
        FFD6ADADB542429C3939FF00FFAD5A529C3131E7CECEFFFFFFF7EFEFF7EFEFF7
        EFEFF7EFEFF7EFEFF7EFEFF7EFEFFFF7F7D6ADADB542429C3939FF00FFAD5A52
        9C3131E7CEC6EFEFEFCECEC6CECECECECECECECECECECECECECECECECECEE7E7
        E7D6ADADB542429C3939FF00FFAD5A529C3131E7CECEEFEFEFD6CECED6D6D6D6
        D6D6D6D6D6D6D6D6D6D6D6D6CECEEFEFEFD6ADADB542429C3939FF00FFAD5A52
        9C3131E7CECEF7F7EFDED6D6DEDED6DEDED6DEDED6DEDED6DEDED6DED6D6EFEF
        EFD6ADADB542429C3939FF00FFAD5A529C3131E7CECEEFEFEFCECECECECECECE
        CECECECECECECECECECECECECECEE7E7E7DEADADB542429C3939FF00FFAD5A52
        9C3131E7CEC6FFFFFFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFFF
        F7D6ADADB542429C3939FF00FFFF00FF943131BDA5A5C6CEC6C6C6C6C6C6C6C6
        C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6BD9C9C8C3131FF00FF}
      ParentFont = False
      TabOrder = 3
      OnClick = btnSalvarClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnExcluir: TsBitBtn
      Left = 460
      Top = 6
      Width = 85
      Height = 40
      Hint = 'Excluir Registro'
      Caption = 'E&xcluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 4
      OnClick = btnExcluirClick
      SkinData.SkinSection = 'BUTTON'
    end
    object DBNavigator: TsDBNavigator
      Left = 5
      Top = 6
      Width = 100
      Height = 30
      FullRepaint = False
      TabOrder = 6
      TabStop = True
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DM.DTS_Agencias
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        'Novo Rgistro'
        'Excluir Registro'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
    end
    object btnLocalizar: TsBitBtn
      Left = 549
      Top = 6
      Width = 102
      Height = 40
      Hint = 'Localizar Registro'
      Caption = '&Localizar F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C0D4EEB4D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7CCC724576EB511F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C1F7C1F7CEA7E4676EC4D1F7C836A907F717F4F7B2B770977E876
        E772836A1F7C1F7C1F7C1F7CEA7E466EED498A6216671767336F4E7B2A770977
        E876836A1F7C1F7C1F7C1F7C1F7C0E7B964E5C5BFF6BFF6B9E6714674C7B2A7B
        0977836A1F7C1F7C1F7C1F7C1F7C915E5E57DF63FF6FFF73FF7F7D6FD25E4C7B
        4B7B836A1F7C1F7C1F7C1F7C1F7CBA4E5F537F57FF6FFF77FF7BFF6F1A5B6E7B
        6D7B836A1F7C1F7C1F7C1F7C1F7CBA527F531E47DF67FF73FF73FF6F1A5B8F7F
        8F7F836A1F7C1F7C1F7C1F7C1F7C72529D63BF673E4F7E5BFF67BE631463B07F
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7CB756BE6F9F5B5F537E571863917FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C6C5A39635B67596BB67FB17FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AF67FFB7FFB7FD77FB27FB07F
        B17F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836AD67FB77F957B727B6E7B6E7B
        B07F836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A2E772F774F774F772D772B77
        2A77836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A7277D77FD57FD47FD27FB17F
        6E7B836A1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C836A836A836A836A836A836A
        836A1F7C1F7C}
      ParentFont = False
      TabOrder = 5
      OnClick = btnLocalizarClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    Color = 14211288
    TabOrder = 1
    object RxLabel4: TRxLabel
      Left = 11
      Top = 11
      Width = 51
      Height = 16
      Caption = 'Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 265
      Top = 7
      Width = 384
      Height = 19
      Alignment = taCenter
      Color = 15263976
      DataField = 'NOME'
      DataSource = DM.DTS_Bancos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 184
      Top = 7
      Width = 79
      Height = 19
      Alignment = taCenter
      Color = 15263976
      DataField = 'CODIGO'
      DataSource = DM.DTS_Bancos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BANCO: TComboEdit
      Left = 92
      Top = 8
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 0
      Text = 'BANCO'
      OnButtonClick = BANCOButtonClick
      OnEnter = BANCOEnter
      OnExit = BANCOExit
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 35
    Width = 662
    Height = 248
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 10
      Top = 4
      Width = 639
      Height = 241
      TabOrder = 0
      object RxLabel1: TRxLabel
        Left = 9
        Top = 10
        Width = 46
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel3: TRxLabel
        Left = 221
        Top = 10
        Width = 106
        Height = 13
        Caption = 'Data do Cadastro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 327
        Top = 10
        Width = 77
        Height = 20
        Alignment = taCenter
        Color = 15263976
        DataField = 'DATACAD'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 11
        Top = 35
        Width = 39
        Height = 13
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel6: TRxLabel
        Left = 11
        Top = 60
        Width = 52
        Height = 13
        Caption = 'Gerente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel16: TRxLabel
        Left = 408
        Top = 60
        Width = 71
        Height = 13
        Caption = 'N'#176' Agencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel7: TRxLabel
        Left = 11
        Top = 85
        Width = 61
        Height = 13
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel8: TRxLabel
        Left = 11
        Top = 110
        Width = 40
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel12: TRxLabel
        Left = 409
        Top = 110
        Width = 31
        Height = 13
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel10: TRxLabel
        Left = 504
        Top = 135
        Width = 46
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel9: TRxLabel
        Left = 11
        Top = 135
        Width = 46
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel14: TRxLabel
        Left = 11
        Top = 160
        Width = 57
        Height = 13
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel15: TRxLabel
        Left = 355
        Top = 160
        Width = 27
        Height = 13
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel17: TRxLabel
        Left = 11
        Top = 185
        Width = 41
        Height = 13
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel11: TRxLabel
        Left = 11
        Top = 210
        Width = 72
        Height = 13
        Caption = 'Home-Page:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbt_codigo: TsDBEdit
        Left = 91
        Top = 10
        Width = 102
        Height = 20
        TabStop = False
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'CODIGO'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
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
      object db_nome: TDBEdit
        Left = 91
        Top = 35
        Width = 535
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NOME'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = db_nomeEnter
        OnExit = db_nomeExit
      end
      object suiDBEdit3: TDBEdit
        Left = 91
        Top = 60
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'GERENTE'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = suiDBEdit3Enter
        OnExit = suiDBEdit3Exit
      end
      object suiDBEdit11: TDBEdit
        Left = 485
        Top = 60
        Width = 141
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'NUM_AGENCIA'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = suiDBEdit11Enter
        OnExit = suiDBEdit11Exit
      end
      object suiDBEdit4: TDBEdit
        Left = 91
        Top = 85
        Width = 535
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnEnter = suiDBEdit4Enter
        OnExit = suiDBEdit4Exit
      end
      object suiDBEdit6: TDBEdit
        Left = 91
        Top = 110
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'BAIRRO'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnEnter = suiDBEdit6Enter
        OnExit = suiDBEdit6Exit
      end
      object suiDBEdit7: TDBEdit
        Left = 446
        Top = 110
        Width = 180
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CEP'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 6
        OnEnter = suiDBEdit7Enter
        OnExit = suiDBEdit7Exit
      end
      object suiDBEdit8: TDBEdit
        Left = 91
        Top = 135
        Width = 392
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'CIDADE'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnEnter = suiDBEdit8Enter
        OnExit = suiDBEdit8Exit
      end
      object suiDBComboBox5: TDBComboBox
        Left = 553
        Top = 135
        Width = 74
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'UF'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'FN'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        ParentFont = False
        TabOrder = 8
        OnEnter = suiDBComboBox5Enter
        OnExit = suiDBComboBox5Exit
      end
      object suiDBEdit9: TDBEdit
        Left = 91
        Top = 160
        Width = 240
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentFont = False
        TabOrder = 9
        OnEnter = suiDBEdit9Enter
        OnExit = suiDBEdit9Exit
      end
      object suiDBEdit10: TDBEdit
        Left = 386
        Top = 160
        Width = 240
        Height = 21
        CharCase = ecUpperCase
        Color = 15263976
        DataField = 'FAX'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentFont = False
        TabOrder = 10
        OnEnter = suiDBEdit10Enter
        OnExit = suiDBEdit10Exit
      end
      object suiDBEdit12: TDBEdit
        Left = 91
        Top = 185
        Width = 535
        Height = 21
        CharCase = ecLowerCase
        Color = 15263976
        DataField = 'EMAIL'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnEnter = suiDBEdit12Enter
        OnExit = suiDBEdit12Exit
      end
      object suiDBEdit1: TDBEdit
        Left = 91
        Top = 210
        Width = 535
        Height = 21
        CharCase = ecLowerCase
        Color = 15263976
        DataField = 'SITE'
        DataSource = DM.DTS_Agencias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = suiDBEdit1Enter
        OnExit = suiDBEdit1Exit
      end
    end
  end
end
