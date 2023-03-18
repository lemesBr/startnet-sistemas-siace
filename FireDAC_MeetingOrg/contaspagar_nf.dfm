object frmcontaspagar_nf: Tfrmcontaspagar_nf
  Left = 271
  Top = 126
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NF - Visuzalia'#231#227'o de Itens da Nota Fiscal'
  ClientHeight = 479
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 980
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 383
    Width = 980
    Height = 3
    Align = alBottom
  end
  object Panel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.5.4.1'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 41
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 272
      Top = 12
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 57
      Height = 21
      DataField = 'NUM_NOTA'
      DataSource = dsnota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 81
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = dsnota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 344
      Top = 8
      Width = 601
      Height = 21
      DataField = 'fornecedor'
      DataSource = dsnota
      TabOrder = 2
    end
  end
  object wwDBGrid1: TXDBGrid
    Left = 0
    Top = 44
    Width = 980
    Height = 339
    Align = alClient
    DataSource = dsitem
    GridStyle.VisualStyle = vsXPStyle
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
    TabOrder = 1
    OnDblClick = wwDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_PRODUTO'
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
        Width = 71
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BARRAS'
        Title.Caption = 'C'#243'd. de Barras'
        Visible = True
        Width = 104
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
        Width = 250
      end
      item
        Expanded = False
        FieldName = 'DESC_UNIDADE'
        Title.Caption = 'Un.'
        Visible = True
        Width = 35
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Qtde'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNI'
        Title.Caption = 'Vlr Compra'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_DESC'
        Title.Caption = 'Desconto'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Title.Caption = 'Total do Item'
        Visible = True
        Width = 86
      end
      item
        Expanded = False
        FieldName = 'NCM_SH'
        Title.Caption = 'Ncm'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Caption = 'P. Venda'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA2'
        Title.Caption = 'P. Venda 2'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMS'
        Title.Caption = 'P. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS'
        Title.Caption = 'B. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ICMS'
        Title.Caption = 'V. Icms'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_IPI'
        Title.Caption = 'P. Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_IPI'
        Title.Caption = 'Base Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_IPI'
        Title.Caption = 'V. Ipi'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'DATA_VALIDADE'
        Title.Caption = 'D. Validade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_FABRICACAO'
        Title.Caption = 'Data Fabrica'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE_MED'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARG_LUCRO'
        Title.Caption = 'Margem de Lucro'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'ALIC_ICMS_ST'
        Title.Caption = 'A. Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_ICMS_ST'
        Title.Caption = 'Base Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_ICMS_ST'
        Title.Caption = 'V. Icms ST'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'IMOBILZ'
        Title.Caption = 'Imob.'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_PIS'
        Title.Caption = 'Base Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_PIS'
        Title.Caption = 'Perc. Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_PIS'
        Title.Caption = 'V. Pis'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'BASE_COFINS'
        Title.Caption = 'Base Cofins'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'PERC_COFINS'
        Title.Caption = 'Perc. Cofins'
        Visible = True
        Width = 64
      end
      item
        Expanded = False
        FieldName = 'VALOR_COFINS'
        Title.Caption = 'Valor Cofins'
        Visible = True
      end>
  end
  object Panel2: TAdvPanel
    Left = 0
    Top = 386
    Width = 980
    Height = 93
    Align = alBottom
    BevelOuter = bvNone
    Color = 16445929
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.5.4.1'
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 93
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Base C. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 88
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 159
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Base C. Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 238
      Top = 3
      Width = 58
      Height = 13
      Caption = 'Valor Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 316
      Top = 27
      Width = 90
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 30
      Top = 45
      Width = 26
      Height = 13
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 100
      Top = 45
      Width = 34
      Height = 13
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 164
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 243
      Top = 45
      Width = 41
      Height = 13
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 535
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 16
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_CALCULO_ICMS'
      Alignment = taLeftJustify
      TabOrder = 0
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 88
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS'
      Alignment = taLeftJustify
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit3: TRzDBNumericEdit
      Left = 160
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_CALC_ICMS_SUBST'
      Alignment = taLeftJustify
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit4: TRzDBNumericEdit
      Left = 232
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS_SUBST'
      Alignment = taLeftJustify
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit5: TRzDBNumericEdit
      Left = 312
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_TOTAL_PRODUTOS'
      Alignment = taLeftJustify
      TabOrder = 4
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit6: TRzDBNumericEdit
      Left = 16
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_FRETE'
      Alignment = taLeftJustify
      TabOrder = 5
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit7: TRzDBNumericEdit
      Left = 88
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SEGURO'
      Alignment = taLeftJustify
      TabOrder = 6
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit8: TRzDBNumericEdit
      Left = 160
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_OUTRAS_DESPESAS'
      Alignment = taLeftJustify
      TabOrder = 7
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit9: TRzDBNumericEdit
      Left = 232
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_IPI'
      Alignment = taLeftJustify
      TabOrder = 8
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit10: TRzDBNumericEdit
      Left = 520
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_NOTA'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit11: TRzDBNumericEdit
      Left = 424
      Top = 44
      Width = 81
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_DESCONTO'
      Alignment = taLeftJustify
      TabOrder = 10
      DisplayFormat = '###,###,##0.00'
    end
  end
  object bcancelar: TAdvGlowButton
    Left = 821
    Top = 409
    Width = 124
    Height = 48
    Caption = 'ESC | Retornar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D0000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A3730373643394131453238323131453238424631414239324639
      3531323732392220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A373037364339413245323832313145323842463141423932463935313237
      3239223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3730373643393946453238323131
      453238424631414239324639353132373239222073745265663A646F63756D65
      6E7449443D22786D702E6469643A373037364339413045323832313145323842
      4631414239324639353132373239222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E85C699DD000004694944415478DABC99
      7D6855651CC7CFBD5397F992D82A6F6BE83F41D636415BBE4DD9302C16B39AD5
      1F2DDA1688CC22D4105F10054551D0A58822FEA1992ECA556CAB940AC5AD65A5
      942EC531342DA76C922FB8ADE6FBFCFEC6F7C08F67E7DC7BEE3967FBC287FB3C
      E7EDFEEE739EE7F7F2DC8855FD971540D9E069900ED2C0201EBF092E834BE024
      38EFF70B06F8B8E729500C5E02F91EAEEF04874035A862DFB322498CE0F3E043
      1A1775387F07DCEA79A6653DCC4F53D7C16EF031B810A6819B699CD6DFA016FC
      0E8E82AB7CB5B6813130158C07AF8311EADEFBE023B029A881326A9F80E7D4B1
      2F380A0792785362F01BA00CE4A9E3DF82F7C0BF7E0C2C00DFA9FE1FA09CA315
      446FF215A7B32F23FF0238E77471D4E5216F1BC6AD02134230CEE2429195FF29
      FB8F824690E5D54031A452F5DF052BAD70D5054AC07AF6878223E0A14406CA44
      AE53FDD9608FD5775A02D62823EB1319F81918C2F652F0B5D5F75A0E6AD8CE01
      CBDC16C98BE047B5BA0A3D7EC140FAC0A092683386ED2741AB39823B8D79E755
      8F80EFE9178F287E063393784EA96A579823385DCDBD0A3AD164348DAB7E98C3
      B9F7C1368FCF3946DF6BD1D1B7D923384F79783F2BF6272EB0C30EE7B69AF32A
      8E161AFEB2E7150F06AF2A1FD5E9730EDD67F2B0DBE1DC1A630AC5FBA167D92E
      B60DCC57FEE7700893BD94B1DB5419175F22D5A8303B326AC4D9BA905CC77CF0
      0EB8671C7F85D168449C7B4FF33305E44A3E98C10312B09BD485299CA87E7487
      D16834586D788B1C1A3119FCE370EF29D54E170347B2D3665C380AB4041C49B7
      FB631C8C19E017E35C13F3CA543130CA1023FAAF57A6135C19711292C1F497E5
      C63512A73BEC1F2227BA5D1ED06DF58F4A8CC1D0DFDB1D556E65A84308EB6B49
      CA35C9584C62C770B65B650E5E51F14FEB1AD3A188CFD1BCC64A6F814B71268B
      6785C3F14C551DB6C88D17D991C5328EC9A3A89DE9501055D21B985A0436B8DC
      3356B52F0E5006D931B5318457F70C38E8F056446F3162B9294BB9AA8628A387
      BD826786605C2E38E1605C170BA6AA04F717F153DC4FBB187817ECE341C9011F
      0F605C11E369AA833FCCF610A90AB83160D999BCED7FB61B05921F893FFBCA25
      7465AA24209ED6A976B53650E26333DB73D5AFF02289ABDFB8E47CB534AEDDC3
      730AD5FCDB617B179DF24F04BFB2DDC005E3453116DF1754EA1F61FBCB24CA86
      5696A0F7F879C3A970DF6BE7612CAE17F65334A9570352AEA79C1927E7D0C15A
      74B0A5FD605C8532AECE580FBD0CEC62E8B1B5AB8F47712707C2E25E629E979D
      8533DCFBB3B59175C5A0100D8B71F3A9CC8EB9DC09F3BC37F30347F2B62AAA64
      95CF0AC1B80FE8725E560392E992BCBA1A28FA0D3CCB52D062515DC3E2BED0A5
      C474D328AE7409A35BB81D671769996ADE27BD3F686B31586BFC20492AF7735B
      EE3847A083D70C633C96E83185BB163A6990F24236443F0FBA81A9355A154369
      7192DC78997833331C99D7FF7BF9D2888F5D7E793DB2A5FB1ADDC31309AE3FC7
      F8BC8F239E942201FF86788C656B0689B1806F619E29AFFD4F877AC7B31E0830
      00629EF941A5EB70210000000049454E44AE426082}
    Transparent = True
    TabOrder = 3
    OnClick = bcancelarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Layout = blGlyphLeftAdjusted
  end
  object qrnota: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from notasfiscais')
    Left = 88
    Top = 248
    object qrnotaCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrnotaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Origin = 'NUM_NOTA'
      Required = True
    end
    object qrnotaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Origin = 'SERIE_NF'
      Size = 15
    end
    object qrnotaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Origin = 'CFOP_NOTA'
      Size = 5
    end
    object qrnotaDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qrnotaCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
    end
    object qrnotaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 70
    end
    object qrnotaDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrnotaTOTAL_NOTA: TBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = 'TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object qrnotaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qrnotaUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
      Origin = 'USUARIO_CADASTRO'
    end
    object qrnotaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qrnotaOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object qrnotaMES: TStringField
      FieldName = 'MES'
      Origin = 'MES'
      Size = 2
    end
    object qrnotaANO: TStringField
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 4
    end
    object qrnotaCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 44
    end
    object qrnotaPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Origin = 'PROTOCOLO_NFE'
      Size = 30
    end
    object qrnotaBASE_CALCULO_ICMS: TBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaBASE_CALC_ICMS_SUBST: TBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Origin = 'BASE_CALC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_ICMS_SUBST: TBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Origin = 'VALOR_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_OUTRAS_DESPESAS: TBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Origin = 'VALOR_OUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_PRODUTOS: TBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Origin = 'VALOR_TOTAL_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_TOTAL_ITENS_NOTA: TBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Origin = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVLR_ICMS_GARANTIDO: TBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Origin = 'VLR_ICMS_GARANTIDO'
      Precision = 18
      Size = 2
    end
    object qrnotacod_pagto: TIntegerField
      FieldName = 'cod_pagto'
      Origin = '"cod_pagto"'
    end
    object qrnotaTP: TStringField
      FieldName = 'TP'
      Origin = 'TP'
      Size = 1
    end
    object qrnotaENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Origin = 'ENDERECO_CLI_FORN'
      Size = 44
    end
    object qrnotaEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
      Origin = 'END_NUM_CLIENTE'
    end
    object qrnotaCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 7
    end
    object qrnotaCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      Origin = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object qrnotaBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Origin = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object qrnotaTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Size = 1
    end
    object qrnotaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrnotaCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Origin = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object qrnotaUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Origin = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object qrnotaDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Origin = 'DESC_PAGTO'
      Size = 70
    end
    object qrnotaVALOR_AVISTA: TBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PRAZO: TBCDField
      FieldName = 'VALOR_PRAZO'
      Origin = 'VALOR_PRAZO'
      Precision = 18
      Size = 2
    end
    object qrnotapagamento: TStringField
      FieldName = 'pagamento'
      Origin = '"pagamento"'
      Size = 30
    end
    object qrnotaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object qrnotaEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Origin = 'EMITENTE'
      Size = 1
    end
    object qrnotaVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_PIS_ST: TBCDField
      FieldName = 'VALOR_PIS_ST'
      Origin = 'VALOR_PIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaVALOR_COFIS_ST: TBCDField
      FieldName = 'VALOR_COFIS_ST'
      Origin = 'VALOR_COFIS_ST'
      Precision = 18
      Size = 2
    end
    object qrnotaPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qrnotaCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qrnotaSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Origin = 'SUB_SERIE'
      Size = 10
    end
  end
  object qritem: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT'
      '    CODIGO_ITEM          ,'
      '    CODIGO_PRODUTO,'
      '    CODIGO_BARRAS  ,'
      '    CODIGO_NOTA     ,'
      '    DESCRICAO        ,'
      '    NCM_SH            ,'
      '    CST                ,'
      '    CFOP        ,'
      '    DESC_UNIDADE ,'
      '    QUANTIDADE    ,'
      '    (VALOR_UNI / FRACAO) AS VALOR_UNI     ,'
      '    VALOR_DESC      ,'
      '    TOTAL_ITEM       ,'
      '    DATA              ,'
      '    BASE_ICMS          ,'
      '    VALOR_ICMS          ,'
      '    VALOR_IPI            ,'
      '    PERC_ICMS             ,'
      '    PERC_IPI               ,'
      '    PRECO_VENDA             ,'
      '    PRECO_VENDA2             ,'
      '    DATA_VALIDADE             ,'
      '    DATA_FABRICACAO            ,'
      '    FRACAO                      ,'
      '    QUANT_FRACIONADA             ,'
      '    LOTE_MED                      ,'
      '    MARG_LUCRO                     ,'
      '    ATIVO                           ,'
      '    BASE_ICMS_ST                     ,'
      '    ALIC_ICMS_ST                      ,'
      '    VALOR_ICMS_ST                      ,'
      '    COD_EMPRESA                         ,'
      '    IMOBILZ                              ,'
      '    BASE_PIS                              ,'
      '    PERC_PIS                               ,'
      '    VALOR_PIS                               ,'
      '    BASE_COFINS                              ,'
      '    PERC_COFINS                               ,'
      '    VALOR_COFINS                               ,'
      '    BASE_IPI                                    ,'
      '    UN_FRACAO                                    ,'
      '    ITEM                                          ,'
      '    CODFORNECEDOR                                  ,'
      '    NUM_NOTA                                        ,'
      '    ICMS_RETIDO                                      ,'
      '    SUBTOTAL        ,'
      '    DESCONTO_P       ,'
      '    ICMS_REDUCAO      ,'
      '    ICMS_VALORRETIDO   ,'
      '    ICMS_ISENTO          ,'
      '    ICMS_NAOTRIBUTADO     ,'
      '    IPI_TIPO            ,'
      '    TIPO                  ,'
      '    FRETE                ,'
      '    OUTRAS                  ,'
      '    SEGURO                 ,'
      '    CLASSIFICACAO_FISCAL  ,'
      '    SUB_PRODUTOS           ,'
      '    ITEM_ESPECIAL_VALOR     ,'
      '    ICMS_OUTRAS              ,'
      '    ALTERA_ITEM               ,'
      '    CREDITO_ICMS               ,'
      '    CREDITO_ICMS_BASE           ,'
      '    PMARGEM                      ,'
      '    PRECO_CUSTO                   ,'
      '    CODLANCAMENTO'
      'FROM NOTASFISCAIS_ITENS')
    Left = 120
    Top = 248
    object qritemCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qritemCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object qritemCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 13
    end
    object qritemCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Origin = 'CODIGO_NOTA'
      Required = True
    end
    object qritemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object qritemNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object qritemCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 3
    end
    object qritemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object qritemDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object qritemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
    end
    object qritemVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      currency = True
      Precision = 18
    end
    object qritemVALOR_DESC: TBCDField
      FieldName = 'VALOR_DESC'
      Origin = 'VALOR_DESC'
      currency = True
      Precision = 18
      Size = 2
    end
    object qritemTOTAL_ITEM: TBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      currency = True
      Precision = 18
      Size = 2
    end
    object qritemDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qritemBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object qritemPERC_ICMS: TBCDField
      FieldName = 'PERC_ICMS'
      Origin = 'PERC_ICMS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_IPI: TBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PERC_IPI'
      Precision = 18
      Size = 2
    end
    object qritemPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qritemPRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      currency = True
      Precision = 18
      Size = 2
    end
    object qritemDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DATA_VALIDADE'
    end
    object qritemDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object qritemFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qritemQUANT_FRACIONADA: TBCDField
      FieldName = 'QUANT_FRACIONADA'
      Origin = 'QUANT_FRACIONADA'
      Precision = 18
    end
    object qritemLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object qritemMARG_LUCRO: TBCDField
      FieldName = 'MARG_LUCRO'
      Origin = 'MARG_LUCRO'
      Precision = 18
      Size = 2
    end
    object qritemATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qritemBASE_ICMS_ST: TBCDField
      FieldName = 'BASE_ICMS_ST'
      Origin = 'BASE_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemALIC_ICMS_ST: TBCDField
      FieldName = 'ALIC_ICMS_ST'
      Origin = 'ALIC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_ICMS_ST: TBCDField
      FieldName = 'VALOR_ICMS_ST'
      Origin = 'VALOR_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qritemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qritemIMOBILZ: TStringField
      FieldName = 'IMOBILZ'
      Origin = 'IMOBILZ'
      Size = 1
    end
    object qritemBASE_PIS: TBCDField
      FieldName = 'BASE_PIS'
      Origin = 'BASE_PIS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_PIS: TBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PERC_PIS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object qritemBASE_COFINS: TBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemPERC_COFINS: TBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object qritemBASE_IPI: TBCDField
      FieldName = 'BASE_IPI'
      Origin = 'BASE_IPI'
      Precision = 18
      Size = 2
    end
  end
  object qrfornecedor: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from fornecedores')
    Left = 152
    Top = 248
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 184
    Top = 248
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 216
    Top = 248
  end
  object qrproduto: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 248
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 128
    object A1: TMenuItem
      Caption = 'Alterar Pre'#231'o Venda'
      OnClick = A1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
