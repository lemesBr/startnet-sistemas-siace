object SintegraCad_Tributos_Estaduais: TSintegraCad_Tributos_Estaduais
  Left = 69
  Top = 39
  Width = 631
  Height = 472
  Caption = 'Cadastro de Recolhimento de Tributos Estaduais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 225
    Width = 623
    Height = 220
    Align = alBottom
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 601
      Height = 193
      Caption = 'GNRE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 51
        Height = 16
        Caption = 'CGC/MF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 256
        Top = 28
        Width = 110
        Height = 16
        Caption = 'Inscri'#231#227'o Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 379
        Top = 28
        Width = 90
        Height = 16
        Caption = 'Data da GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 289
        Top = 81
        Width = 91
        Height = 16
        Caption = 'UF Contribuinte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 387
        Top = 82
        Width = 90
        Height = 16
        Caption = 'UF Favorecida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 132
        Width = 81
        Height = 16
        Caption = 'Banco GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 169
        Top = 132
        Width = 92
        Height = 16
        Caption = 'Ag'#234'ncia GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 389
        Top = 133
        Width = 32
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 482
        Top = 28
        Width = 115
        Height = 16
        Caption = 'Data de Vencimeto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 16
        Top = 81
        Width = 142
        Height = 16
        Caption = 'M'#234's/Ano de Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 169
        Top = 81
        Width = 82
        Height = 16
        Caption = 'Nro Conv'#234'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 291
        Top = 132
        Width = 64
        Height = 16
        Caption = 'Nro GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 44
        Width = 233
        Height = 24
        DataField = 'CNPJ_SUBST'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 256
        Top = 44
        Width = 116
        Height = 24
        DataField = 'INSC_EST'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit3: TDBEdit
        Left = 379
        Top = 44
        Width = 97
        Height = 24
        DataField = 'DATAHORA_GNRE'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit4: TDBEdit
        Left = 289
        Top = 97
        Width = 89
        Height = 24
        DataField = 'UF_SUBST'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit5: TDBEdit
        Left = 387
        Top = 98
        Width = 98
        Height = 24
        DataField = 'UF_FAVORECIDA'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit6: TDBEdit
        Left = 14
        Top = 148
        Width = 147
        Height = 24
        DataField = 'BANCO_GNRE'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit7: TDBEdit
        Left = 169
        Top = 148
        Width = 112
        Height = 24
        DataField = 'AGENCIA_GNRE'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit8: TDBEdit
        Left = 387
        Top = 148
        Width = 98
        Height = 24
        DataField = 'VALOR_GNRE'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit9: TDBEdit
        Left = 482
        Top = 44
        Width = 97
        Height = 24
        DataField = 'DATA_VENCIMENTO'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 96
        Width = 145
        Height = 24
        DataField = 'MES_ANO_REFERENCIA'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit11: TDBEdit
        Left = 169
        Top = 96
        Width = 113
        Height = 24
        DataField = 'NRO_CONVENIO'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
      end
      object DBEdit12: TDBEdit
        Left = 289
        Top = 148
        Width = 88
        Height = 24
        DataField = 'NRO_GNRE'
        DataSource = DSDstSintegra_Tributos_Estaduais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 623
    Height = 225
    Align = alClient
    DataSource = DSDstSintegra_Tributos_Estaduais
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CNPJ_SUBST'
        Title.Caption = 'CGC/MF do Contribuinte Substituto'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC_EST'
        Title.Caption = 'Insc. Estadual'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nro GNRE'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Caption = 'Data de Vencimento'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_ANO_REFERENCIA'
        Title.Caption = 'M'#234's/Ano de Ref.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA_GNRE'
        Width = 64
        Visible = True
      end>
  end
  object DSDstSintegra_Tributos_Estaduais: TDataSource
    DataSet = DM1.DstSintegra_Tributos_Estaduais
    Left = 136
    Top = 16
  end
end
