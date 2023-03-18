object FormDesbloquearCliente: TFormDesbloquearCliente
  Left = 461
  Top = 94
  Caption = 'Desbloqueio e/ou Desbloqueio de Clientes !'
  ClientHeight = 449
  ClientWidth = 492
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
      Height = 31
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
      Text = ''
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
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton2Click
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
      DataSource = dsCliente
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
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object suiDBEdit2: TsDBEdit
        Left = 130
        Top = 5
        Width = 348
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'NOME_RS'
        DataSource = dsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
      object DBDateEdit1: TDBDateEdit
        Left = 130
        Top = 30
        Width = 93
        Height = 19
        DataField = 'DATACAD'
        DataSource = dsCliente
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
        DataSource = dsCliente
        DragCursor = -26568
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
      end
    end
    object DBMemo2: TDBMemo
      Left = 5
      Top = 288
      Width = 478
      Height = 49
      Color = 15263976
      DataField = 'OBSERVACOES'
      DataSource = dsCliente
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
      DataSource = dsCliente
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
      DataSource = dsCliente
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
      DataSource = dsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
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
      ParentFont = False
      TabOrder = 1
      OnClick = suiButton4Click
    end
  end
  object qrCliente: TFDQuery
    Connection = DM.Coneccao
    SQL.Strings = (
      'SELECT * FROM CLIENTES WHERE CODIGO = :CODIGO')
    Left = 384
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrClienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Origin = 'NOME_RS'
      Required = True
      Size = 70
    end
    object qrClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 44
    end
    object qrClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object qrClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qrClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 15
    end
    object qrClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object qrClienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
      Origin = 'NASCIMENTO_IA'
    end
    object qrClienteSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object qrClienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Origin = 'FOTO_LOGOMARCA'
    end
    object qrClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object qrClienteRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      FixedChar = True
    end
    object qrClienteFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object qrClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qrClienteUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qrClienteDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qrClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 18
    end
    object qrClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
    end
    object qrClienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Origin = 'CREDIARIO'
      Size = 3
    end
    object qrClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 10
    end
    object qrClienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Origin = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object qrClientePAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 70
    end
    object qrClienteMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 70
    end
    object qrClienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Origin = 'NOME_CONJUGE'
      Size = 70
    end
    object qrClienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      Origin = 'CPF_CONJUGE'
      FixedChar = True
      Size = 18
    end
    object qrClienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
      Origin = 'NASCIMENTO_CONJUGE'
    end
    object qrClienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Origin = 'TRABALHO_CONJUGE'
      Size = 70
    end
    object qrClientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Origin = 'PROFISSAO_CONJUGE'
      Size = 70
    end
    object qrClienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Origin = 'LOCALTRABALHO'
      Size = 70
    end
    object qrClientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Origin = 'PROFISSAO_RA'
      Size = 70
    end
    object qrClienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Origin = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object qrClienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Origin = 'FAX_TRABALHO'
      Size = 15
    end
    object qrClienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Origin = 'OBSERVACOES_TRABALHO'
    end
    object qrClienteBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 70
    end
    object qrClienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 70
    end
    object qrClienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      Size = 10
    end
    object qrClienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
    end
    object qrClienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Origin = 'NOME1_REFERENCIA'
      Size = 70
    end
    object qrClienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Origin = 'NOME2_REFERENCIA'
      Size = 70
    end
    object qrClienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Origin = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object qrClienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Origin = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object qrClienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Origin = 'BANCO_REFERENCIA'
      Size = 70
    end
    object qrClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Origin = 'APELIDO'
      Size = 30
    end
    object qrClienteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qrClienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Origin = 'OBSERVACOES_COMERCIAIS'
    end
    object qrClienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Origin = 'OBSERVACOES_BANCO'
    end
    object qrClientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      Origin = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object qrClientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      Origin = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object qrClientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      Origin = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object qrClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object qrClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object qrClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrClienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 10
    end
    object qrClienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
      Origin = 'DATA_EMISSAO_RG'
    end
    object qrClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 40
    end
    object qrClienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Origin = 'NATURALIDADE_UF'
      Size = 2
    end
    object qrClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qrClienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = 'COD_BAIRRO'
    end
    object qrClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = 'DATA_ALTERACAO'
    end
    object qrClienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
      Origin = 'COD_ZONA'
    end
    object qrClientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = 'PONTO_REFERENCIA'
      Size = 200
    end
    object qrClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qrClienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Origin = 'CONTATO1'
      Size = 60
    end
    object qrClienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Origin = 'CONTATO2'
      Size = 60
    end
    object qrClienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Origin = 'CX_POSTAL'
      Size = 10
    end
    object qrClienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Origin = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object qrClienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
      Origin = 'NUMERO_DEPENDENTES'
    end
    object qrClienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Origin = 'ENDERECO_REFERENCIA1'
      Size = 44
    end
    object qrClienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Origin = 'ENDERECO_REFERENCIA2'
      Size = 44
    end
    object qrClienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
      Origin = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object qrClienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
      Origin = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object qrClienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Origin = 'RG_CONJUGUE'
    end
    object qrClienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
      Origin = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object qrClienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Origin = 'FONE_CONJUGUE'
      Size = 15
    end
    object qrClienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Origin = 'ENDERECO_COBRANCA'
      Size = 44
    end
    object qrClienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      Origin = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object qrClienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
      Origin = 'COD_CIDADE_COBRANCA'
    end
    object qrClienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      Origin = 'CX_POSTAL_COBRANCA'
      FixedChar = True
    end
    object qrClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object qrClientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Origin = 'PRODUTOR_RURAL'
      Size = 1
    end
    object qrClienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Origin = 'INSC_PRODUTOR_RURAL'
    end
    object qrClienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
      Origin = 'COD_BAIRRO_COBRANCA'
    end
    object qrClienteCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Origin = 'CIDADE_COBRANCA'
      Size = 40
    end
    object qrClienteBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Origin = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object qrClienteUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Origin = 'UF_COBRANCA'
      Size = 2
    end
    object qrClienteCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
      Origin = 'CONTA_BANCARIA'
    end
    object qrClienteNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = 'NOME_PROPRIEDADE'
      Size = 70
    end
    object qrClienteNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Origin = 'NOME_VETERINARIO'
      Size = 70
    end
    object qrClienteSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Origin = 'SOCIO1'
      Size = 40
    end
    object qrClienteCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Origin = 'CPFSOCIO1'
      Size = 11
    end
    object qrClienteDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
      Origin = 'DATANASCSOCIO1'
    end
    object qrClienteSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Origin = 'SOCIO2'
      Size = 40
    end
    object qrClienteCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Origin = 'CPFSOCIO2'
      Size = 11
    end
    object qrClienteDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
      Origin = 'DATANASCSOCIO2'
    end
    object qrClienteSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Origin = 'SOCIO3'
      Size = 40
    end
    object qrClienteCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Origin = 'CPFSOCIO3'
      Size = 11
    end
    object qrClienteDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
      Origin = 'DATANASCSOCIO3'
    end
    object qrClienteSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Origin = 'SOCIO4'
      Size = 40
    end
    object qrClienteCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Origin = 'CPFSOCIO4'
      Size = 11
    end
    object qrClienteDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
      Origin = 'DATANASCSOCIO4'
    end
    object qrClienteDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
      Origin = 'DATAFUNDACAO'
    end
    object qrClienteREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Origin = 'REGJUNTACOM'
      Size = 12
    end
    object qrClienteENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Origin = 'ENDSOCIO1'
      Size = 40
    end
    object qrClienteRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
      Origin = 'RGSOCIO1'
    end
    object qrClienteENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Origin = 'ENDSOCIO2'
      Size = 40
    end
    object qrClienteRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
      Origin = 'RGSOCIO2'
    end
    object qrClienteENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Origin = 'ENDSOCIO3'
      Size = 40
    end
    object qrClienteRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
      Origin = 'RGSOCIO3'
    end
    object qrClienteENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Origin = 'ENDSOCIO4'
      Size = 40
    end
    object qrClienteRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
      Origin = 'RGSOCIO4'
    end
    object qrClienteAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Origin = 'AUTORIZADO1'
      Size = 70
    end
    object qrClienteAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Origin = 'AUTORIZADO2'
      Size = 70
    end
    object qrClienteAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Origin = 'AUTORIZADO3'
      Size = 70
    end
    object qrClienteCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      Origin = 'CPF_AUT1'
      FixedChar = True
      Size = 18
    end
    object qrClienteCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      Origin = 'CPF_AUT2'
      FixedChar = True
      Size = 18
    end
    object qrClienteCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      Origin = 'CPF_AUT3'
      FixedChar = True
      Size = 18
    end
    object qrClienteFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 1
    end
    object qrClienteCTPS: TStringField
      FieldName = 'CTPS'
      Origin = 'CTPS'
      Size = 15
    end
    object qrClienteTESTA_CREDITO: TStringField
      FieldName = 'TESTA_CREDITO'
      Origin = 'TESTA_CREDITO'
      Size = 1
    end
    object qrClienteTESTA_LIMITE: TStringField
      FieldName = 'TESTA_LIMITE'
      Origin = 'TESTA_LIMITE'
      Size = 1
    end
    object qrClienteCOD_CONV: TIntegerField
      FieldName = 'COD_CONV'
      Origin = 'COD_CONV'
    end
    object qrClienteFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object qrClienteDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object qrClienteFUNC_DATA_ADMISSAO: TDateField
      FieldName = 'FUNC_DATA_ADMISSAO'
      Origin = 'FUNC_DATA_ADMISSAO'
    end
    object qrClienteFUNC_SITUACAO: TStringField
      FieldName = 'FUNC_SITUACAO'
      Origin = 'FUNC_SITUACAO'
      Size = 1
    end
    object qrClienteFUNC_DEMISSAO: TDateField
      FieldName = 'FUNC_DEMISSAO'
      Origin = 'FUNC_DEMISSAO'
    end
    object qrClienteFUNC_CARGO: TStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'FUNC_CARGO'
      Size = 30
    end
    object qrClienteDOCUMENTOS: TBlobField
      FieldName = 'DOCUMENTOS'
      Origin = 'DOCUMENTOS'
    end
    object qrClienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Origin = 'REMUNERACAO'
      Precision = 18
      Size = 2
    end
    object qrClienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Origin = 'VALOR_ALUGUEL'
      Precision = 18
      Size = 2
    end
    object qrClienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Origin = 'RENDA_CONJUGUE'
      Precision = 18
      Size = 2
    end
    object qrClienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Origin = 'LIMITE_DE_CREDITO'
      Precision = 18
      Size = 2
    end
    object qrClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      FixedChar = True
    end
    object qrClientePARENTESCO_AUT1: TStringField
      FieldName = 'PARENTESCO_AUT1'
      Origin = 'PARENTESCO_AUT1'
      Size = 100
    end
    object qrClientePARENTESCO_AUT2: TStringField
      FieldName = 'PARENTESCO_AUT2'
      Origin = 'PARENTESCO_AUT2'
      Size = 100
    end
    object qrClientePARENTESCO_AUT3: TStringField
      FieldName = 'PARENTESCO_AUT3'
      Origin = 'PARENTESCO_AUT3'
      Size = 100
    end
    object qrClientePOSSUE_LAUDO: TStringField
      FieldName = 'POSSUE_LAUDO'
      Origin = 'POSSUE_LAUDO'
      FixedChar = True
      Size = 1
    end
    object qrClienteVENCIMENTO_LAUDO: TDateField
      FieldName = 'VENCIMENTO_LAUDO'
      Origin = 'VENCIMENTO_LAUDO'
    end
    object qrClienteCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'CAPITALSOCIAL'
      Precision = 18
      Size = 2
    end
    object qrClienteFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Origin = 'FATURAMENTOBRUTO'
      Precision = 18
      Size = 2
    end
    object qrClienteFUNC_SALARIO: TFMTBCDField
      FieldName = 'FUNC_SALARIO'
      Origin = 'FUNC_SALARIO'
      Precision = 18
      Size = 2
    end
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 384
    Top = 288
  end
end
