object ConsultaGeralListFrm: TConsultaGeralListFrm
  Left = 48
  Top = 116
  BorderStyle = bsSingle
  Caption = 'Consulta de ...'
  ClientHeight = 403
  ClientWidth = 708
  Color = clBtnFace
  Constraints.MinHeight = 430
  Constraints.MinWidth = 716
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 708
    Height = 234
    Align = alClient
    DataSource = DtsQryConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnTitleClick = DBGrid1TitleClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 708
    Height = 19
    Panels = <
      item
        Text = 'Escolha um "Campo", digite o "Texto" e clique em "Localizar"....'
        Width = 450
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 234
    Width = 708
    Height = 150
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    DesignSize = (
      708
      150)
    object GroupBox1: TGroupBox
      Left = 14
      Top = 7
      Width = 561
      Height = 129
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        561
        129)
      object Label1: TLabel
        Left = 16
        Top = 17
        Width = 37
        Height = 16
        Caption = 'Texto:'
      end
      object Label2: TLabel
        Left = 16
        Top = 72
        Width = 47
        Height = 16
        Caption = 'Campo:'
      end
      object Label3: TLabel
        Left = 288
        Top = 72
        Width = 129
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Mostrar registros que:'
      end
      object Edit1: TEdit
        Left = 16
        Top = 33
        Width = 529
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit1KeyDown
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 88
        Width = 257
        Height = 24
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 1
        Text = 'Campo 1'
        OnEnter = ComboBox1Enter
        OnExit = ComboBox1Exit
        OnKeyDown = ComboBox1KeyDown
        Items.Strings = (
          'Campo 1'
          'Campo 2')
      end
      object ComboBox2: TComboBox
        Left = 288
        Top = 88
        Width = 257
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 2
        Text = 'Contenham o "texto" digitado'
        OnEnter = ComboBox1Enter
        OnExit = ComboBox1Exit
        OnKeyDown = ComboBox2KeyDown
        Items.Strings = (
          'Contenham o "texto" digitado'
          'Iniciem com o "texto" digitado'
          'Coincidam com o "texto" digitado')
      end
    end
    object BitBtn1: TBitBtn
      Left = 592
      Top = 95
      Width = 99
      Height = 41
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
        0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
        B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
        0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
        00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
        05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
        00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 592
      Top = 15
      Width = 99
      Height = 41
      Anchors = [akTop, akRight]
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
        CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
        1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
        D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
        A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
        81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
        7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
        A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
        93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
        E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
        BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
        EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
        8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
        55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
        926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object DtsQryConsulta: TDataSource
    DataSet = QryConsulta
    OnDataChange = DtsQryConsultaDataChange
    Left = 672
    Top = 296
  end
  object QryConsulta: TIBQuery
    Database = DM1.IBDatabase1
    Transaction = DM1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 640
    Top = 296
  end
end
