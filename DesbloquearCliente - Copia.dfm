object FormDesbloquearCliente: TFormDesbloquearCliente
  Left = 461
  Top = 94
  Width = 508
  Height = 488
  Caption = 'Desbloqueio e/ou Desbloqueio de Clientes !'
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Top = 0
    Width = 492
    Height = 68
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 9
      Top = 7
      Width = 169
      Height = 13
      Caption = 'Entre com o C'#243'digo do Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 5
      Top = 5
      Width = 178
      Height = 55
    end
    object ComboEdit1: TComboEdit
      Left = 10
      Top = 25
      Width = 168
      Height = 30
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 0
      OnButtonClick = ComboEdit1ButtonClick
      OnEnter = ComboEdit1Enter
      OnExit = ComboEdit1Exit
      OnKeyPress = ComboEdit1KeyPress
    end
    object suiButton2: TsBitBtn
      Left = 193
      Top = 7
      Width = 286
      Height = 54
      Caption = 'Bloquear / Desbloquear'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF95320999320899320899320899320899320899320899
        320899320899320899320899320899320899320899330A953209FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209953209993106B8370BE043
        28F24833F74B36F75039F85B40FA5D43F7533EFB4A37F44B35D041289D340D98
        3209953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209953209
        9A3107C03910E2452AF04C37F85C41FA6D4AFA6E48FA7E60FAA093F66B5AF444
        2FE6462FB73D2098330A953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF9532099532099F320AC93B14E7492EF76444FB7751FB724BF8603FFA9682
        FEFCFFF8B1A5F04B34D94027AF3B1C96340D953209FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF953209A3340DD13F19F25A3CFE7652FB744DFB
        6641FB6E50FCC6BCFFFFFFFFD1C7FA694ED54327A5361796340D953209FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209A03511CC421FFC68
        47FF7B56FF6F46FF6D48FFAB98FFFEFCFFFFFFFFD1C7FF7D5DE65937A63A1893
        310C953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9E350FBF4622E05B35F87041EF643ECC6C58C1B8B7CCDCDEE2E6E2F7B09DFE75
        52F76E49B2441F96310AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFC54A25C04622813425602D41302F5B28396E33406D
        5156768C534CD1532CD8592EA53A12FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF070C5900157300
        167A001172000E6B000E650F114A5E2930FF00FFFF00FFFF00FF000000000000
        000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1117
        500224AA042C9E082C98092D98072A97032392001A8409176CFF00FFFF00FFFF
        00FF000109FF00FF0126FFFF00FF000316FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF01030C03227A0D43C20D37A30C37A30C38A40D36A30D36A00B35A10223
        92001384FF00FFFF00FF0004210125FFFF00FF0126FF00107EFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF020A1D0D3CA60F47C50D3DAA0D40B20D41B40E41B5
        0E41B20F44B70D3EAF092384FF00FFFF00FF00031DFF00FFFF00FFFF00FF0122
        F4FF00FFFF00FFFF00FFFF00FFFF00FF01010105183F145AE91156E01152D310
        4ECA0F4AC1104CC5104BC4114FC91150CA0C35A1FF00FFFF00FF000000000104
        000000000003000E6B0122FEFF00FFFF00FFFF00FFFF00FF000001051C40186C
        FE1869F31358CF1356CC1152CA0C38A41150C6135AD5145AD50F41B0FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF001CDE0120FFFF00FFFF00FFFF00FF
        01000101060D07234C09234E071F41124DA70C38A41762D90C38A4186AE61865
        DD0F3BA4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0303030707060403030000010719311D78D8208EFF1C78F6
        1C78F31F86FE1B78F00C3497FF00FFFF00FF0000000000000000000000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1E1C1B252624080705000F2218
        73D326A0FF2395FF249AFF2396FF1553C5FF00FFFF00FFFF00FF000109FF00FF
        0126FFFF00FF000316FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1F1C1B4547
        465A5957262729051326092F63114C901356A00C3E81091A5AFF00FFFF00FFFF
        00FF0004210125FFFF00FF0126FF00107EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3938375758586A696758534E2F2B280B0C0D030202090708FF00
        FFFF00FFFF00FFFF00FF00031DFF00FFFF00FFFF00FF0122F4FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6C6B77777663605F3B3B3C
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000104000000000003000E
        6B0122FEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF001CDE0120FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 492
    Height = 340
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 1
    object RxLabel2: TRxLabel
      Left = 5
      Top = 264
      Width = 118
      Height = 13
      Caption = 'Observa'#231#245'es do Cliente:'
    end
    object RxLabel6: TRxLabel
      Left = 5
      Top = 208
      Width = 100
      Height = 13
      Caption = 'Limite de Credito R$:'
    end
    object suiDBRadioGroup11: TDBRadioGroup
      Left = 5
      Top = 60
      Width = 478
      Height = 41
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Cheque:'
      Columns = 2
      DataField = 'PG_CHEQUE'
      DataSource = DM.DTS_CLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 0
      TabStop = True
      Values.Strings = (
        'S'
        'N')
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 488
      Height = 54
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      Enabled = False
      TabOrder = 1
      object RxLabel3: TRxLabel
        Left = 5
        Top = 5
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 5
        Top = 30
        Width = 103
        Height = 13
        Caption = 'Data do Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 239
        Top = 30
        Width = 85
        Height = 13
        Caption = 'Usu'#225'rio (Cad.):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object suiDBEdit1: TsDBEdit
        Left = 55
        Top = 5
        Width = 68
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'CODIGO'
        DataSource = DM.DTS_CLI
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
      object suiDBEdit2: TsDBEdit
        Left = 130
        Top = 5
        Width = 348
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'NOME_RS'
        DataSource = DM.DTS_CLI
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
      object DBDateEdit1: TDBDateEdit
        Left = 130
        Top = 30
        Width = 93
        Height = 20
        DataField = 'DATACAD'
        DataSource = DM.DTS_CLI
        Color = 15263976
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object suiDBEdit3: TsDBEdit
        Left = 325
        Top = 30
        Width = 153
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'USERCAD'
        DataSource = DM.DTS_CLI
        DragCursor = -26568
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
    end
    object DBMemo2: TDBMemo
      Left = 5
      Top = 288
      Width = 478
      Height = 49
      Color = 15263976
      DataField = 'OBSERVACOES'
      DataSource = DM.DTS_CLI
      TabOrder = 2
      OnEnter = DBMemo2Enter
      OnExit = DBMemo2Exit
    end
    object suiDBRadioGroup2: TDBRadioGroup
      Left = 5
      Top = 109
      Width = 478
      Height = 41
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Credi'#225'rio Pr'#243'prio:'
      Columns = 2
      DataField = 'PG_CREDIARIO'
      DataSource = DM.DTS_CLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 3
      TabStop = True
      Values.Strings = (
        'S'
        'N')
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
    end
    object suiDBRadioGroup3: TDBRadioGroup
      Left = 5
      Top = 158
      Width = 478
      Height = 41
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Financeira:'
      Columns = 2
      DataField = 'PG_FINANCEIRA'
      DataSource = DM.DTS_CLI
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o')
      ParentFont = False
      TabOrder = 4
      TabStop = True
      Values.Strings = (
        'S'
        'N')
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
    end
    object suiDBEdit4: TsDBEdit
      Left = 6
      Top = 229
      Width = 99
      Height = 28
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'LIMITE_DE_CREDITO'
      DataSource = DM.DTS_CLI
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
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
  object Panel4: TPanel
    Left = 0
    Top = 408
    Width = 492
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object suiButton5: TsButton
      Left = 355
      Top = 5
      Width = 125
      Height = 30
      Caption = 'Cancela'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = suiButton5Click
      SkinData.SkinSection = 'BUTTON'
    end
    object suiButton4: TsBitBtn
      Left = 217
      Top = 5
      Width = 125
      Height = 30
      Caption = 'Confirma'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton4Click
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333330000003333422433333333330000003334222243333333330000003342
        2222243333333300000034222A2222433333330000003222A2A2224333333300
        00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
        243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
        333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
        00003333333333A2224A3300000033333333333A222433000000333333333333
        A224330000003333333333333A223300000033333333333333A333000000}
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
