object DiscadorFrm: TDiscadorFrm
  Left = 254
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Discagem R'#225'pida'
  ClientHeight = 321
  ClientWidth = 449
  Color = clBtnFace
  Constraints.MinHeight = 348
  Constraints.MinWidth = 457
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  DesignSize = (
    449
    321)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 433
    Height = 313
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    DesignSize = (
      433
      313)
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 16
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 16
      Width = 40
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      AutoComplete = False
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      TabOrder = 0
      OnEnter = ComboBox2Enter
      OnExit = ComboBox2Exit
      OnKeyDown = ComboBox2KeyDown
    end
    object Memo1: TMemo
      Left = 184
      Top = 32
      Width = 233
      Height = 265
      Anchors = [akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 64
      Width = 145
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Discar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000C30E0000C30E000000010000000100005A737B006384
        9400738C940039739C001084AD00398CAD003194AD005294AD00297BB500188C
        B500398CB500319CB500429CB5004A9CB500087BBD00188CBD00218CBD00299C
        BD00319CBD00399CBD00429CBD00639CBD0039A5BD0042A5BD0084B5BD00ADB5
        BD00087BC600217BC6000884C6002184C6004294C600299CC600319CC60029A5
        C60039A5C6005AA5C60042ADC6006BADC60094BDC600A5BDC600ADBDC6000884
        CE00108CCE00089CCE00189CCE00319CCE0018A5CE0021A5CE0031ADCE0039AD
        CE0042ADCE0052B5CE006BB5CE0073B5CE007BB5CE0084C6CE0094C6CE001073
        D6000884D6001884D600108CD600188CD600298CD600109CD60000A5D60029AD
        D60031B5D60042B5D60052B5D6006BB5D6005ABDD60063BDD60073BDD6007BBD
        D60084BDD60073C6D6007BC6D600107BDE001084DE001884DE0018ADDE0021AD
        DE0018B5DE0021B5DE0029B5DE0039BDDE0063BDDE005AC6DE006BC6DE008CC6
        DE0094C6DE0094CEDE00009CE700089CE70000ADE70008B5E70018BDE70031BD
        E70042BDE70042C6E70073CEE7008CCEE70063D6E700A5D6E700187BEF000894
        EF001094EF0000BDEF0008BDEF0010C6EF0018C6EF0031C6EF0039CEEF0042CE
        EF004ACEEF005AD6EF007BD6EF008CD6EF007BE7EF0084E7EF0094E7EF001873
        F700187BF7001084F7001884F700108CF7001094F7004294F700109CF70008A5
        F70039A5F70021B5F70031B5F70000BDF70000C6F70008C6F70010C6F70021C6
        F70018CEF70021CEF70031CEF70029D6F70042D6F7005ADEF7005AE7F7006BE7
        F70073E7F70084E7F70094E7F700A5E7F70073EFF70084EFF7008CEFF700FF00
        FF001094FF00089CFF00109CFF00189CFF0008A5FF0008ADFF0021ADFF0000B5
        FF0010B5FF0018B5FF0031B5FF0000BDFF0008BDFF0010BDFF0021BDFF0000C6
        FF0010C6FF0031C6FF0000CEFF0008CEFF005ACEFF0010D6FF0021D6FF0031D6
        FF0039D6FF0042D6FF0031DEFF0039DEFF0042DEFF004ADEFF0052DEFF005ADE
        FF006BDEFF004AE7FF0052E7FF0052EFFF0063EFFF0073EFFF007BEFFF0094EF
        FF009CEFFF0073F7FF007BF7FF0084F7FF008CF7FF0094F7FF00A5F7FF00BDF7
        FF008CFFFF0094FFFF009CFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999991E081D240D999999999999999999999999999999
        9999991E1B687FCB761E239999999999999999999999999999991E4F686882C5
        CBCB771E239999999999999999999999991E6A7D7C68A7B4BCC5CBCC771E2399
        99999999999999991E80807D7C8085405FB0BBC4CBCB971E239999999999991E
        9F817E7C7DA50B02228687ADB5C4CBCB1E99999999991E859F807E7DA1866265
        7121072EA9878DBEC51E9999991E6BA681807E816C05126B6B575B8B50135086
        6E1E9999992D5D5D818080A65049585222416D860C26626B109999153E4F4D39
        6A80833017416E5318462F1631705F099999993F8181817E3AA0733727620613
        558A3327436B10999999995EA9B3BAAA2984C598938F283842111F6F6D099999
        9999992BAFB1B7871A9DAEC6C6C4C0914B19488B04999999999999228EB6B589
        2A1C4142327697C5BF92B83D03009999999999364478C998B87063843B0E1066
        928EA37E3B0099999999999936346478C8C6BFB9AB832C556088B0A22A019999
        9999999999993649477478C7C6C0738F8DB1B25F059999999999999999999999
        365934477595C294937241149999999999999999999999999999365A67363435
        3525369999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999}
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 112
      Width = 145
      Height = 184
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      DesignSize = (
        145
        184)
      object Button2: TButton
        Left = 16
        Top = 16
        Width = 33
        Height = 33
        Anchors = []
        Caption = '1'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 56
        Top = 16
        Width = 33
        Height = 33
        Anchors = []
        Caption = '2'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 96
        Top = 16
        Width = 33
        Height = 33
        Anchors = []
        Caption = '3'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button5: TButton
        Left = 16
        Top = 56
        Width = 33
        Height = 33
        Anchors = []
        Caption = '4'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button6: TButton
        Left = 56
        Top = 56
        Width = 33
        Height = 33
        Anchors = []
        Caption = '5'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button7: TButton
        Left = 96
        Top = 56
        Width = 33
        Height = 33
        Anchors = []
        Caption = '6'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button8: TButton
        Left = 16
        Top = 96
        Width = 33
        Height = 33
        Anchors = []
        Caption = '7'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Button2Click
      end
      object Button9: TButton
        Left = 56
        Top = 96
        Width = 33
        Height = 33
        Anchors = []
        Caption = '8'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button10: TButton
        Left = 96
        Top = 96
        Width = 33
        Height = 33
        Anchors = []
        Caption = '9'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Button2Click
      end
      object Button11: TButton
        Left = 16
        Top = 136
        Width = 33
        Height = 33
        Anchors = []
        Caption = '*'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = Button2Click
      end
      object Button12: TButton
        Left = 56
        Top = 136
        Width = 33
        Height = 33
        Anchors = []
        Caption = '0'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = Button2Click
      end
      object Button13: TButton
        Left = 96
        Top = 136
        Width = 33
        Height = 33
        Anchors = []
        Caption = '#'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = Button2Click
      end
    end
  end
  object SQLCallLog: TIBSQL
    Database = DM1.IBDatabase1
    ParamCheck = True
    Transaction = DM1.IBTransaction1
    Left = 224
    Top = 104
  end
  object Check_Call_Prefix: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 288
    Top = 104
  end
  object QryOperadora: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from OperadoraDDD')
    Left = 256
    Top = 104
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GroupBox1.Caption'
      'Label1.AutoSize'
      'Label2.AutoSize')
    StoredValues = <>
    Left = 320
    Top = 104
  end
end
