inherited FormBairros: TFormBairros
  Left = 259
  Top = 213
  Caption = 'Cadastro de Bairros'
  ClientHeight = 338
  ClientWidth = 693
  Constraints.MinWidth = 130
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = nil
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TsPanel
    Width = 693
    Height = 283
    ExplicitWidth = 693
    ExplicitHeight = 283
    object PageControl1: TsPageControl
      Left = 4
      Top = 4
      Width = 685
      Height = 275
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      SkinData.SkinSection = 'PAGECONTROL'
      object TabSheet1: TsTabSheet
        Caption = 'Cadastro'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 677
          Height = 29
          Align = alTop
          BevelWidth = 2
          ParentColor = True
          TabOrder = 0
          object Label5: TsLabelFX
            Left = 239
            Top = 3
            Width = 184
            Height = 31
            Caption = 'Cadastro de bairros'
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
        object Panel3: TsPanel
          Left = 0
          Top = 29
          Width = 677
          Height = 218
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object Label3: TsLabel
            Left = 8
            Top = 81
            Width = 37
            Height = 13
            Caption = 'Bairro:'
            ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
          end
          object Label2: TsLabel
            Left = 8
            Top = 131
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
          object Label1: TsLabel
            Left = 8
            Top = 26
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
          object DBLookupComboBox1: TsDBLookupComboBox
            Left = 56
            Top = 128
            Width = 233
            Height = 21
            Color = clWhite
            DataField = 'COD_CIDADE'
            DataSource = DM.Dts_bairro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_CIDADE'
            ListField = 'NOME'
            ListSource = DM.DTS_cidades
            NullValueKey = 113
            ParentFont = False
            TabOrder = 1
            OnEnter = DBLookupComboBox1Enter
            OnExit = DBLookupComboBox1Exit
            OnKeyPress = DBLookupComboBox1KeyPress
            BoundLabel.ParentFont = False
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            SkinData.SkinSection = 'COMBOBOX'
          end
          object DBEdit2: TsDBEdit
            Left = 56
            Top = 78
            Width = 617
            Height = 21
            Color = clWhite
            DataField = 'DESCRICAO'
            DataSource = DM.Dts_bairro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            Left = 56
            Top = 24
            Width = 73
            Height = 21
            Color = clWhite
            DataField = 'COD_BAIRRO'
            DataSource = DM.Dts_bairro
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            SkinData.SkinSection = 'EDIT'
            BoundLabel.ParentFont = False
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
          end
        end
      end
      object TabSheet2: TsTabSheet
        Caption = 'Consulta'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label4: TsLabel
          Left = 8
          Top = 10
          Width = 58
          Height = 13
          Caption = 'Pesquisar:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
        end
        object RxDBGrid1: TsDBGrid
          Left = 8
          Top = 32
          Width = 663
          Height = 177
          Color = clWhite
          DataSource = DM.Dts_bairro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = RxDBGrid1DblClick
          OnKeyPress = RxDBGrid1KeyPress
          SkinData.SkinSection = 'EDIT'
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_BAIRRO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo Bairro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Nome do Bairro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 246
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Nome da Cidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 21
              Visible = True
            end>
        end
        object Edit1: TsEdit
          Left = 72
          Top = 8
          Width = 602
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = Edit1Change
          OnExit = Edit1Exit
          SkinData.SkinSection = 'EDIT'
          BoundLabel.ParentFont = False
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -11
          BoundLabel.Font.Name = 'MS Sans Serif'
          BoundLabel.Font.Style = []
        end
      end
    end
  end
  inherited Panel2: TsPanel
    Top = 283
    Width = 693
    ExplicitTop = 283
    ExplicitWidth = 693
    inherited btnNovo: TsBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TsBitBtn
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TsBitBtn
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TsBitBtn
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TsBitBtn
      OnClick = btnExcluirClick
    end
  end
  inherited MsgInformacao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgAtencao: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
  inherited MsgErro: TAdvSmoothMessageDialog
    TMSStyle = 0
  end
end
