unit compra_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, aDvPreviewMenu, aDvPreviewMenuStylers, aDvToolBar,
  aDvToolBarStylers, aDvOfficeStatusBar, aDvOfficeStatusBarStylers,
  StdCtrls, DBCtrls, Mask, RzEdit, RzDBEdit, RzDBBnEd, wwdblook, RzCmboBx,
  RzDBCmbo, Buttons, DB,  ImgList, Menus,
  ExtCtrls, RzDBNav, TFlatPanelUnit, RXDBCtrl, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, wwdbedit,
  Wwdotdot, Wwdbcomb, System.ImageList, RxToolEdit, RxCurrEdit,
  AdvGlowButton;

type
  Tfrmcompra_item = class(TForm)
    FDvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    FDvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    FDvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    FDvPreviewMenu1: TAdvPreviewMenu;
    FDvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    FDvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    dscompra_item: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    AlterarPrecodeVenda1: TMenuItem;
    Panel1: TPanel;
    Label21: TLabel;
    Label1: TLabel;
    ecodproduto: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    eun_compra: TDBEdit;
    efracao: TRzDBNumericEdit;
    Label28: TLabel;
    Label29: TLabel;
    Bevel1: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    ecfop: TRzDBButtonEdit;
    DBEdit6: TDBEdit;
    ecst: TRzDBButtonEdit;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label15: TLabel;
    Label30: TLabel;
    eitem: TDBEdit;
    Label31: TLabel;
    eqtde: TRxDBCalcEdit;
    FlatPanel1: TFlatPanel;
    esubtotal: TRzDBNumericEdit;
    FlatPanel2: TFlatPanel;
    FlatPanel3: TFlatPanel;
    edperc: TRzNumericEdit;
    edesconto: TRzDBNumericEdit;
    FlatPanel4: TFlatPanel;
    etotal: TRzDBNumericEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape9: TShape;
    Label37: TLabel;
    Shape1: TShape;
    Shape8: TShape;
    combo_retido: TRzDBComboBox;
    Label32: TLabel;
    Shape10: TShape;
    ealiquota: TRzDBNumericEdit;
    Shape11: TShape;
    Label38: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Label39: TLabel;
    Label40: TLabel;
    ereducao: TRzDBNumericEdit;
    ebase_icms: TRzDBNumericEdit;
    Shape14: TShape;
    Label33: TLabel;
    evalor_icms: TRzDBNumericEdit;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape20: TShape;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    emargem_sub: TRzDBNumericEdit;
    eprod_sub: TRzDBNumericEdit;
    ebase_sub: TRzDBNumericEdit;
    evalor_sub: TRzDBNumericEdit;
    Shape19: TShape;
    Label7: TLabel;
    Shape21: TShape;
    Label8: TLabel;
    Shape22: TShape;
    Label10: TLabel;
    eisento: TRzDBNumericEdit;
    enao_trib: TRzDBNumericEdit;
    Shape23: TShape;
    Label9: TLabel;
    Shape24: TShape;
    Label11: TLabel;
    Shape25: TShape;
    Label12: TLabel;
    combo_ipi: TRzDBComboBox;
    ealiquota_ipi: TRzDBNumericEdit;
    Shape26: TShape;
    Label26: TLabel;
    ebase_ipi: TRzDBNumericEdit;
    Shape27: TShape;
    evalor_ipi: TRzDBNumericEdit;
    Label43: TLabel;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Efrete: TRzDBNumericEdit;
    eseguro: TRzDBNumericEdit;
    eoutras: TRzDBNumericEdit;
    eespecial: TRzDBNumericEdit;
    rpreco: TCheckBox;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    bitbtn1: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    bitbtn4: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    qrproduto: TFDQuery;
    check_atualiza: TCheckBox;
    AtualizarNota1: TMenuItem;
    eproduto: TRzEdit;
    DBEdit1: TDBEdit;
    ed_cod_fornecedor: TRzEdit;
    Label19: TLabel;
    bserial: TAdvGlowButton;
    codigofornecedor1: TMenuItem;
    limparcodigoproduto1: TMenuItem;
    Label20: TLabel;
    bfornecedor_codigo: TAdvGlowButton;
    Shape33: TShape;
    Label24: TLabel;
    Shape35: TShape;
    Label27: TLabel;
    evalor_outras: TRzDBNumericEdit;
    bvalor_outras: TBitBtn;
    rlote_fabricacao: TRzPanel;
    elote: TDBEdit;
    evalidade: TDBDateEdit;
    Label25: TLabel;
    Label44: TLabel;
    qrgrade_entrada: TFDQuery;
    ecLASSIF: TRzDBComboBox;
    qrfiscal_cst: TFDQuery;
    Qtributacao: TFDQuery;
    QtributacaoCODIGO: TIntegerField;
    QtributacaoCODIGO_BARRAS: TStringField;
    QtributacaoCOD_GRUPO: TIntegerField;
    QtributacaoDESCRICAO: TStringField;
    QtributacaoFLAG_SUBSTITUICAO_TRIB: TStringField;
    QtributacaoPERC_SUBST_TRIBUTARIA: TBCDField;
    QtributacaoFLAG_SERVICO: TStringField;
    QtributacaoPERC_ALIQUOTA_ISS: TBCDField;
    QtributacaoFLAG_FABRICACAO_PROPRIA: TStringField;
    QtributacaoPERC_ALIQUOTA_IPI: TBCDField;
    QtributacaoFLAG_PIS_COFINS: TStringField;
    QtributacaoPERC_ALIQUOTA_PIS: TBCDField;
    QtributacaoPERC_ALIQUOTA_COFINS: TBCDField;
    QtributacaoFLAG_ICMSGARANTIDO_INTEGRAL: TStringField;
    QtributacaoPERC_ICMS_GARANTIDO_INTEGRAL: TBCDField;
    QtributacaoCFOP_ESTADUAL_DEV: TStringField;
    QtributacaoCFOP_INTERESTADUAL_DEV: TStringField;
    QtributacaoCFOP_EST_COMPRA: TStringField;
    QtributacaoCFOP_INTER_COMPRA: TStringField;
    QtributacaoCFOP_EST_VENDA: TStringField;
    QtributacaoCFOP_INTER_VENDA: TStringField;
    QtributacaoCFOP_EST_TRANSF: TStringField;
    QtributacaoCFOP_INTER_EST_TRASNF: TStringField;
    QtributacaoCST_VENDA: TStringField;
    QtributacaoCST_COMPRA: TStringField;
    QtributacaoFLAG_ICMS: TStringField;
    QtributacaoPERC_ICMS_ESTADUAL: TBCDField;
    QtributacaoPERC_ICMS_INTER_ESTADUAL: TBCDField;
    QtributacaoSIT_PIS_VENDA_EST: TStringField;
    QtributacaoSIT_COFINS_VENDA_EST: TStringField;
    QtributacaoSIT_PIS_VENDA_INTER_EST: TStringField;
    QtributacaoSIT_COFINS_VENDA_INTER_EST: TStringField;
    QtributacaoSIT_PIS_COMPRA: TStringField;
    QtributacaoSIT_COFINS_COMPRA: TStringField;
    QtributacaoCST_VENDA_INTER: TStringField;
    QtributacaoCST_COMPRA_INTER: TStringField;
    QtributacaoPERC_RED_ICMS: TBCDField;
    QtributacaoCST_IPI_ENTRADA: TStringField;
    QtributacaoCST_IPI_SAIDA: TStringField;
    QtributacaoCFOP_REV_EST: TStringField;
    QtributacaoCFOP_REV_INTER: TStringField;
    QtributacaoPERC_LUCRO_ST: TBCDField;
    qrgrade_entradaCODIGO: TIntegerField;
    qrgrade_entradaCODPRODUTO: TIntegerField;
    qrgrade_entradaLOTE: TStringField;
    qrgrade_entradaESTOQUE: TBCDField;
    qrgrade_entradaCODCLIENTE: TIntegerField;
    qrgrade_entradaPRECOCUSTO: TBCDField;
    qrgrade_entradaPRECOVENDA: TBCDField;
    qrgrade_entradaDATAVENDA: TDateField;
    qrgrade_entradaSITUACAO: TIntegerField;
    qrgrade_entradaCLIENTE: TStringField;
    qrgrade_entradaCODNOTA: TIntegerField;
    qrgrade_entradaCODITEM: TIntegerField;
    qrgrade_entradaDATACOMPRA: TDateField;
    qrgrade_entradaNUMERONOTA: TStringField;
    qrgrade_entradaCODFORNECEDOR: TIntegerField;
    qrgrade_entradaCODVENDA_ITEM: TIntegerField;
    qrgrade_entradaFILTRO: TIntegerField;
    qrgrade_entradaCODVENDA: TIntegerField;
    BtnAddPro: TSpeedButton;
    Label45: TLabel;
    Button1: TButton;
    G1: TMenuItem;
    FDvGlowButton1: TAdvGlowButton;
    f1: TMenuItem;
    eunitario: TRxDBCalcEdit;
    procedure ecodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodprodutoButtonClick(Sender: TObject);
    procedure eun_compraKeyPress(Sender: TObject; var Key: Char);
    procedure eun_compraEnter(Sender: TObject);
    procedure eun_compraExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ecstButtonClick(Sender: TObject);
    procedure eqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_retidoKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaExit(Sender: TObject);
    procedure combo_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure combo_ipiExit(Sender: TObject);
    procedure evalor_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquota_ipiExit(Sender: TObject);
    procedure AlterarPrecodeVenda1Click(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure ebase_icmsExit(Sender: TObject);
    procedure ebase_subExit(Sender: TObject);
    procedure edpercExit(Sender: TObject);
    procedure eitemEnter(Sender: TObject);
    procedure eitemExit(Sender: TObject);
    procedure eunitario1Exit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ecodprodutoEnter(Sender: TObject);
    procedure ebase_ipiExit(Sender: TObject);
    procedure eprod_subExit(Sender: TObject);
    procedure ecstExit(Sender: TObject);
    procedure efracaoKeyPress(Sender: TObject; var Key: Char);
    procedure esubtotalExit(Sender: TObject);
    procedure etotalExit(Sender: TObject);
    procedure ecodprodutoExit(Sender: TObject);
    procedure AtualizarNota1Click(Sender: TObject);
    procedure ed_cod_fornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure bserialClick(Sender: TObject);
    procedure codigofornecedor1Click(Sender: TObject);
    procedure limparcodigoproduto1Click(Sender: TObject);
    procedure evalor_outrasKeyPress(Sender: TObject; var Key: Char);
    procedure bvalor_outrasClick(Sender: TObject);
    procedure evalidadeExit(Sender: TObject);
    procedure btnloteClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure bfornecedor_codigoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure paint_edit;
  public
    vcusto_anterior: double;
    { Public declarations }
    
  end;

var
  frmcompra_item: Tfrmcompra_item;
  vfra_ant, vqde_ant: double;
  mostra: boolean;
  continua_paint: boolean;
  fechar_tela: boolean;

implementation

uses compra, principal, xloc_cfop, xloc_cst,
  compra_menu, produto_preco, produto_gradeF, Math, produto_rentabilidade,
  produto_serial_entrada,  ModulodeDados, ConsProdutos, produto_serial,
  Produtos;//, entrada_lote;

{$R *.dfm}

procedure tfrmcompra_item.paint_edit;
var
  i: Integer;
begin
  continua_paint := true;
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TcustomEdit) then
    begin
      if (tedit(Components[i]).Name = 'ecodproduto') or
        (tedit(Components[i]).Name = 'eun_compra') or
        (tedit(Components[i]).Name = 'ecst') or
        (tedit(Components[i]).Name = 'ecfop') or
        (tedit(Components[i]).Name = 'eqtde') or
        (tedit(Components[i]).Name = 'esubtotal') or
        (tedit(Components[i]).Name = 'eunitario') or
        (tedit(Components[i]).Name = 'etotal') then
      begin
        if (tedit(Components[i]).Text = '') or (tedit(Components[i]).Text = '0,00') or (tedit(components[i]).text = '0,000000')
          or (tedit(components[i]).text = '0,000') then
        begin
          tedit(Components[i]).color := $00BBBBFF;
          continua_paint := false;
        end;
      end;
    end;

end;

procedure Tfrmcompra_item.ecodprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    DM.qrproduto.Close;
    DM.qrproduto.sql.clear;
    DM.qrproduto.sql.add('select * from PRODUTOS where codigo_barras = ''' + ecodproduto.text + '''');
    DM.qrproduto.open;

    If DM.qrproduto.locate('CODIGO_BARRAS', ecodproduto.text,[])=True then
    begin
    Qtributacao.Close;
    Qtributacao.sql.clear;
    Qtributacao.sql.add('select produtos.codigo, produtos.codigo_barras, grupo_tributacao.* from produtos, grupo_tributacao where produtos.grupo_tributacao = grupo_tributacao.cod_grupo');
    Qtributacao.sql.add('and codigo_barras = ''' + ecodproduto.text + '''');
    Qtributacao.open;

    if DM.qrproduto.RecordCount > 0 then
    begin
      vcusto_anterior := DM.qrproduto.fieldbyname('preco_custo').AsFloat;

      if ecodproduto.Text = '' then ecodprodutoButtonClick(frmcompra_item);
      eproduto.text := DM.qrproduto.fieldbyname('descricao').asstring;
      if DM.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;

      if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
      begin
        frmcompra.qrnota_item.FieldByName('codigo_produto').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
        frmcompra.qrnota_item.FieldByName('DESC_UNIDADE').AsString := DM.qrproduto.fieldbyname('DESC_UNID_ENT').AsString;
        if DM.qrproduto.FieldByName('MULTIP_FRACAO').asfloat > 0 then
          frmcompra.qrnota_item.FieldByName('fracao').asfloat := DM.qrproduto.fieldbyname('MULTIP_FRACAO').asfloat
        else
        begin
          frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
          frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := DM.qrproduto.fieldbyname('desc_unidade').asstring;
          frmcompra.qrnota_item.FieldByName('cst').asstring := qtributacao.fieldbyname('cst_compra').asstring;
          frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
          frmcompra.qrnota_item.FieldByName('quantidade').asfloat := 1;
          frmcompra.qrnota_item.fieldbyname('DESCRICAO').asstring := DM.qrproduto.fieldbyname('DESCRICAO').asstring;
        end;
        eun_compra.setfocus;
      end;
    end
    else
    begin
      frmcompra.qrnota_item.FieldByName('codigo_produto').asstring := ecodproduto.Text;
      eproduto.text := DM.qrproduto.fieldbyname('descricao').asstring;
      if frmcompra.qrnota_item.FieldByName('codigo_produto').asstring <> '' then
      begin
        DM.qrproduto.Close;
        DM.qrproduto.sql.clear;
        DM.qrproduto.sql.add('select * from produtos where codigo = ''' + frmcompra.qrnota_item.FieldByName('codigo_produto').asstring + '''');
        DM.qrproduto.open;
        if DM.qrproduto.RecordCount > 0 then
        begin
          vcusto_anterior := DM.qrproduto.fieldbyname('preco_custo').AsFloat;

          if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
          begin
            frmcompra.qrnota_item.FieldByName('codigo_produto').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
            frmcompra.qrnota_item.FieldByName('DESC_UNIDADE').AsString := DM.qrproduto.fieldbyname('DESC_UNID_ENT').AsString;
            eproduto.text := DM.qrproduto.fieldbyname('DESCRICAO').asstring;
            if DM.qrproduto.FieldByName('MULTIP_FRACAO').asfloat > 0 then
              frmcompra.qrnota_item.FieldByName('fracao').asfloat := DM.qrproduto.fieldbyname('MULTIP_FRACAO').asfloat
            else
            begin
              frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
              frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := DM.qrproduto.fieldbyname('desc_unidade').asstring;
              frmcompra.qrnota_item.FieldByName('cst').asstring := qtributacao.fieldbyname('cst_compra').asstring;
              frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
              frmcompra.qrnota_item.FieldByName('quantidade').asfloat := 1;
              frmcompra.qrnota_item.fieldbyname('DESCRICAO').asstring := DM.qrproduto.fieldbyname('DESCRICAO').asstring;
            end;
          end;
          if DM.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;
          eun_compra.setfocus;
        end
        else
        begin

        //  application.messagebox('Produto não cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
        //  ecodproduto.Text := '';
          ecodproduto.setfocus;

        end;
      end
      else
      begin
        ecodprodutoButtonClick(frmcompra_item);
      end;
    end;
  end else
  begin
    //  application.messagebox('Produto não localizado!', 'Aviso', mb_ok + mb_iconwarning);
     ecodprodutoButtonClick(Sender);
  end;
  end;
end;

procedure Tfrmcompra_item.ecodprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  {frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;  }
  
  FormConsProdutos:=TFormConsProdutos.Create(self);
  FormConsProdutos.Tag := 1;
  FormConsProdutos.Showmodal;
  resultado_pesquisa1 := dm.sds_produtosCodigo_barras.text;

  if atualiza_produto_novo then frmcompra_menu.qrproduto.Refresh;

  if resultado_pesquisa1 <> '' then
  begin

  Qtributacao.Close;
  Qtributacao.sql.clear;
  Qtributacao.sql.add('select produtos.codigo, produtos.codigo_barras, grupo_tributacao.* from produtos, grupo_tributacao where produtos.grupo_tributacao = grupo_tributacao.cod_grupo');
  Qtributacao.sql.add('and codigo_barras = ''' + resultado_pesquisa1 + '''');
  Qtributacao.open;


    DM.qrproduto.close;
    DM.qrproduto.sql.clear;
    DM.qrproduto.sql.add('select * from PRODUTOS where codigo_barras = ''' + resultado_pesquisa1 + '''');
    DM.qrproduto.open;
    if DM.qrproduto.RecordCount > 0 then
    begin

      vcusto_anterior := DM.qrproduto.fieldbyname('preco_custo').AsFloat;

      frmcompra.qrnota_item.FieldByName('CODIGO_barras').asstring := DM.qrproduto.fieldbyname('codigo_barras').asstring;
      frmcompra.qrnota_item.FieldByName('CODIGO_PRODUTO').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
      eproduto.text := DM.qrproduto.fieldbyname('descricao').asstring;
      frmcompra.qrnota_item.FieldByName('DESC_UNIDADE').AsString := DM.qrproduto.fieldbyname('DESC_UNID_ENT').AsString;
      frmcompra.qrnota_item.FieldByName('cst').asstring := qtributacao.fieldbyname('cst_compra').asstring;
      frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
      frmcompra.qrnota_item.FieldByName('QUANTIDADE').asfloat := 1;
      frmcompra.qrnota_item.fieldbyname('DESCRICAO').asstring := DM.qrproduto.fieldbyname('DESCRICAO').asstring;

      if DM.qrproduto.FieldByName('usa_serial').asinteger = 1 then bserial.visible := TRUE else bserial.visible := false;

      if (frmcompra_menu.vopcao_nfe = 1) or (frmcompra_menu.vopcao_item = 1) then
      begin
        if DM.qrproduto.FieldByName('MULTIP_FRACAO').asfloat > 0 then
        begin
          frmcompra.qrnota_item.FieldByName('fracao').asfloat := DM.qrproduto.fieldbyname('MULTIP_FRACAO').asfloat;
          frmcompra.qrnota_item.FieldByName('UN_FRACAO').AsString := DM.qrproduto.fieldbyname('desc_unidade').AsString;
          frmcompra.qrnota_item.FieldByName('DESC_UNIDADE').AsString := DM.qrproduto.fieldbyname('DESC_UNID_ENT').AsString;
          frmcompra.qrnota_item.FieldByName('cst').asstring := qtributacao.fieldbyname('cst_compra').asstring;
          frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
          frmcompra.qrnota_item.FieldByName('QUANTIDADE').asfloat := 1;
          frmcompra.qrnota_item.fieldbyname('DESCRICAO').asstring := DM.qrproduto.fieldbyname('DESCRICAO').asstring;

        end
        else
        begin
          frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
          frmcompra.qrnota_item.FieldByName('DESC_UNIDADE').AsString := DM.qrproduto.fieldbyname('DESC_UNID_ENT').AsString;
          frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := DM.qrproduto.fieldbyname('DESC_unidade').asstring;
          frmcompra.qrnota_item.FieldByName('cst').asstring := qtributacao.fieldbyname('cst_compra').asstring;
          frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
          frmcompra.qrnota_item.FieldByName('QUANTIDADE').asfloat := 1;
          frmcompra.qrnota_item.fieldbyname('DESCRICAO').asstring := DM.qrproduto.fieldbyname('DESCRICAO').asstring;
        end;
      end;
      if atualiza_produto_novo then frmcompra_menu.qrproduto.Refresh;
      eun_compra.setfocus;
    end
    else
    begin
      application.messagebox('Produto não cadastrado!', 'Aviso', mb_ok + mb_iconwarning);
      ecodproduto.setfocus;
    end;
  end;
  atualiza_produto_novo := false;

end;

procedure Tfrmcompra_item.eun_compraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra_item.eun_compraEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra_item.eun_compraExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;
  if eun_compra.Text = '' then
  begin
    Showmessage('Não Informado a Unidade de Compra, Verifique...');
    eun_compra.Color := $00A8FFFF;
    eun_compra.SetFocus;
    exit;
  end;

  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra_item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure Tfrmcompra_item.FormShow(Sender: TObject);
begin
   mascara_qtde  := '###,###,##0';
   mascara_valor := '###,###,##0.00';
  //DM.QRCONFIG.OPEN;
  if DM.sds_empresaTIPO_SEGMENTO.AsString = '6' then // FARMACIA
    rlote_fabricacao.Visible := True;

  fechar_tela := true;

  if frmcompra.qrnota_itemICMS_REDUCAO.asfloat > 0 then
    ereducao.Value := frmcompra.qrnota_itemICMS_REDUCAO.asfloat // xreducao;
  else
    ereducao.Value := 0;

  rpreco.Checked := altera_preco;
  if (frmcompra_menu.vopcao_nfe = 2) or (frmcompra_menu.vopcao_item = 2) then
  begin
    vqde_ant := frmcompra.qrnota_item.fieldbyname('quantidade').asfloat;
    vfra_ant := frmcompra.qrnota_item.fieldbyname('fracao').asfloat;
  end;
  if frmcompra_menu.vopcao_nfe = 1 then
  begin
    BitBtn1.Enabled := false;
    BitBtn2.Enabled := false;
    BitBtn3.Enabled := false;
    BitBtn4.Enabled := false;
  end;
  if combo_ipi.ItemIndex > 0 then
  begin
    ealiquota_ipi.enabled := true;
    ebase_ipi.enabled := true;
    evalor_ipi.enabled := true;
  end
  else
  begin
    ealiquota_ipi.enabled := false;
    ebase_ipi.enabled := false;
    evalor_ipi.enabled := false;
  end;

  if frmcompra_menu.qrempresa.fieldbyname('REGIME').asstring = 'S' then
    rpreco.Checked := FALSE
  else
    rpreco.checked := True;

  if frmcompra.qrnota_item.state = dsedit then
  begin
    eun_compra.setfocus;
    ecodproduto.Enabled := false;
  end
  else
    ecodproduto.setfocus;

  eqtde.DisplayFormat := mascara_qtde;
  eunitario.DisplayFormat := mascara_valor;

end;

procedure Tfrmcompra_item.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    if tedit(sender).Text <> '' then
    begin
      DM.qrcfop.close;
      DM.qrcfop.sql.clear;
      DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop = ''' + ecfop.text + ''' and tipo = 1');
      DM.qrcfop.open;
      if DM.qrcfop.recordcount = 0 then
      begin
        application.messagebox('CFOP não cadastrado ou não é de entrada!', 'Aviso', mb_ok + mb_iconwarning);
        ecfop.setfocus;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecfopButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra_item.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 ';
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfOP.close;
    DM.qrcfOP.sql.clear;
    DM.qrcfOP.sql.add('select * from TABELA_CFOP where cfop = ''' + resultado_pesquisa1 + '''');
    DM.qrcfOP.open;
    frmcompra.qrnota_item.fieldbyname('cfOP').asstring := resultado_pesquisa1;
    eqtde.setfocus;
  end;
end;

procedure Tfrmcompra_item.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
    if tedit(sender).Text <> '' then
    begin
      qrfiscal_cst.close;
      qrfiscal_cst.sql.clear;
      qrfiscal_cst.sql.add('select * from cst where CODIGO_CST = ''' + ecst.text + '''');
      qrfiscal_cst.open;
      if qrfiscal_cst.recordcount = 0 then
      begin
        application.messagebox('CST não cadastrada!', 'Aviso', mb_ok + mb_iconwarning);
        ecst.setfocus;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecstButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra_item.ecstButtonClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cst := tfrmxloc_cst.create(self);
  frmxloc_cst.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrfiscal_cst.close;
    qrfiscal_cst.sql.clear;
    qrfiscal_cst.sql.add('select * from cst where CODIGO_cst = ''' + resultado_pesquisa1 + '''');
    qrfiscal_cst.open;
    frmcompra.qrnota_item.fieldbyname('cst').asstring := resultado_pesquisa1;
    ecLASSIF.setfocus;
  end;
end;

procedure Tfrmcompra_item.eqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcompra_item.eqtdeExit(Sender: TObject);
begin


  tedit(sender).color := clwindow;

  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

  frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('quantidade').asfloat *
    eunitario.Value;

  frmcompra.qrnota_item.FieldByName('total_item').asfloat :=
    frmcompra.qrnota_item.FieldByName('subtotal').asfloat -
    frmcompra.qrnota_item.FieldByName('valor_desc').asfloat;

  if frmcompra.qrnota_item.FieldByName('total_item').asfloat > 0 then
  begin

    frmcompra.qrnota_item.FieldByName('FRETE').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    efrete.Value := frmcompra.qrnota_item.FieldByName('FRETE').asfloat;
    eseguro.Value := frmcompra.qrnota_item.FieldByName('SEGURO').asfloat;
    eoutras.Value := frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat;

    if FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').ASFLOAT > 0 then
    begin
      if frmcompra.XDESCONTO.Checked = false then
      begin
        frmcompra.qrnota_item.FieldByName('VALOR_DESC').asfloat :=
          (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat *
          FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('VALOR_DESCONTO').ASFLOAT) /
          FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
      end;
    end;
  end;

end;

procedure Tfrmcompra_item.bgravarClick(Sender: TObject);
var
  vvalor_base_imposto, valiquota, vreducao, vipi, vsubbase, vsubmargem, vsubprodutos: double;
  registro: string;
  lote_anterior: integer;
begin

  // venda lote
  qrgrade_entrada.Close;
  qrgrade_entrada.SQL.Clear;
  qrgrade_entrada.SQL.Add('select * from CONTROLE_LOTES where CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
  qrgrade_entrada.ParamByName('CODPRODUTO').AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring ;
  qrgrade_entrada.ParamByName('LOTE').AsString := elote.Text;
  qrgrade_entrada.Open;
  if qrgrade_entrada.RecordCount > 0 then
  begin
    lote_anterior := qrgrade_entrada.fieldByName('ESTOQUE').Value;
    qrgrade_entrada.Close;
    qrgrade_entrada.SQL.Clear;
    qrgrade_entrada.SQL.Add('update CONTROLE_LOTES set ESTOQUE =:ESTOQUE where CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
    qrgrade_entrada.ParamByName('CODPRODUTO').AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring ;
    qrgrade_entrada.ParamByName('LOTE').AsString := elote.Text;
    qrgrade_entrada.ParamByName('ESTOQUE').Value := lote_anterior + eqtde.Value;
    qrgrade_entrada.ExecSQL;
    DM.Coneccao.Commit;

  end
  else
  begin

    dm.ProxCod.Close;
    dm.ProxCod.SQL.Clear;
    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTROLE_LOTES');
    DM.ProxCod.Open;

    qrgrade_entrada.Insert;
    qrgrade_entrada.fieldbyname('codigo').asinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrgrade_entradaCODPRODUTO.AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
    qrgrade_entradaLOTE.AsString := elote.Text;
    qrgrade_entradaESTOQUE.Value := eqtde.Value;
    qrgrade_entrada.Post;
//    DM.Coneccao.Commit;
  end;


  paint_edit;
  if not continua_paint then
  begin
    application.messagebox('Os campos em vermelho são obrigatório o seu preenchimento!', 'Atenção', mb_ok + mb_iconerror);
    exit;
  end;

  if frmcompra.qrnota_item.FieldByName('total_item').asfloat = 0 then
  begin
    application.messagebox('Valor Total do Item Não Informado! Verifique...', 'Atenção', mb_ok + mb_iconerror);
    eunitario.SetFocus;
    exit;
  end;

  bvalor_outrasClick(frmcompra_item);

  vcredito_icms := 0;
  vpis := 0;
  vcofins := 0;

  valiquota := FRMCOMPRA.qrnota_item.FieldByName('PERC_ICMS').AsFloat;
  vreducao := FRMCOMPRA.qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat;
  vipi := FRMCOMPRA.qrnota_item.FieldByName('PERC_IPI').AsFloat;

  vsubmargem := FRMCOMPRA.qrnota_item.FieldByName('ALIC_ICMS_ST').AsFloat;
  vsubbase := FRMCOMPRA.qrnota_item.FieldByName('BASE_ICMS_ST').AsFloat;
  vsubprodutos := FRMCOMPRA.qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat;

       // BUSCA ESTOQUE
       if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

        try
          with dm.Consulta do
             begin
                close;
                sql.Clear;
                sql.add('SELECT ESTOQUE, PRECO_VENDA, PRECO_CUSTO, CUSTO_MEDIO FROM PRODUTOS WHERE CODIGO = :CODPRO');
                Parambyname('CODPRO').AsInteger:= StrToInt( frmcompra.qrnota_itemCODIGO_PRODUTO.Text);
                ExecQuery;
                estoque:= fieldbyname('ESTOQUE').AsCurrency;
                preco_ant := fieldbyname('PRECO_VENDA').AsCurrency;
                preco_custo_ant := fieldbyname('PRECO_CUSTO').AsCurrency ;
                custo_medio_ant := fieldbyname('CUSTO_MEDIO').AsCurrency  ;
             end;
          dm.IBTransaction.Commit;
        except
          dm.IBTransaction.StartTransaction;
          showmessage('Erro ao buscar o custo do produto');
        end;

  //  ShowMessage('ok ate aki 1');

         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
         DM.ProxCod.Open;

      with DM.logEst do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger         := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger          := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger          := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('ID_PRODUTO').AsInteger         := StrToInt( frmcompra.qrnota_itemCODIGO_PRODUTO.Text);
            Parambyname('ID_LOTE').Value                := null;
            Parambyname('ID_PRODUTO_SERIE').Value       := null;
            Parambyname('DATA').AsDateTime              := date;
            Parambyname('ID_USUARIO').Asinteger         := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger       :=  strtoint(frmcompra_menu.qrnotaCODIGO_NOTA.Text);
            Parambyname('FRACAO').Asfloat               :=  frmcompra.qrnota_itemFRACAO.AsINTEGER;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat     := estoque;
            Parambyname('QUANTIDADE').Asfloat           :=   frmcompra.qrnota_itemQUANTIDADE.AsFloat;
            Parambyname('ESTOQUE_POSTERIOR').Asfloat    := ESTOQUE +  frmcompra.qrnota_itemQUANTIDADE.AsFloat;
            Parambyname('SITUACAO_ESTOQUE').ASINTEGER   := 1; //ENTRADA DE PRODUTOS
            Parambyname('OPERACAO').TEXT                :=  '+';
            Parambyname('ACAO_BD').TEXT                 := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value              :=  null;
            parambyname('COD_COMPRA').AsInteger         :=   strtoint(frmcompra.qrnota_itemCODIGO_NOTA.Text);
            Parambyname('HISTORICO').TEXT               := 'NFE Entrada Nº ' +  frmcompra_menu.qrnotaNUM_NOTA.Text + '- '+ frmcompra_menu.qrnotafornecedor.TEXT;
            Parambyname('HORA').AsString                := TimeToStr(Time);
            ExecSQL;
          end;
          DM.IBTransaction.Commit;

         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
         DM.ProxCod.Open;

          if DM.IBTransaction.Active then
             DM.IBTransaction.Commit;
          DM.IBTransaction.StartTransaction;
          try
            try
              with DM.logpro do
                 begin
                    close;
                    parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                    parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                    Parambyname('ID_PRODUTO').AsInteger     := StrToInt(frmcompra.qrnota_itemCODIGO_PRODUTO.Text);
                    parambyname('ID_OCORRENCIA').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    Parambyname('TIPO_ALTERACAO').AsInteger := 2;    //NOTA ENTRADA de produtos
                    Parambyname('DATA_HORA').Asdatetime     := date;
                    Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.Asinteger;
                    Parambyname('P_COMPRA_ANT').Asfloat     := preco_custo_ant;
                    Parambyname('P_CUSTO_ANT').Asfloat      := preco_custo_ant;
                    Parambyname('P_CUSTO_MEDIO_ANT').Asfloat := custo_medio_ant;
                    Parambyname('P_VENDA_ANT').Asfloat      := preco_ant;
                    Parambyname('P_COMPRA_NOVO').Asfloat    :=  frmcompra.qrnota_itemVALOR_UNI.asfloat;
                    Parambyname('P_CUSTO_NOVO').Asfloat     :=  frmcompra.qrnota_itemVALOR_UNI.asfloat;
                    Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat  :=  (StrToFloatDef( frmcompra.qrnota_itemTOTAL_ITEM.text,0.00) + StrToFloatDef(frmcompra.qrnota_itemVALOR_ICMS_ST.Text,0.00)) / StrToFloatDef(frmcompra.qrnota_itemQUANTIDADE.Text,0.000);
                    Parambyname('P_VENDA_NOVO').Asfloat     := frmcompra.qrnota_itempreco_venda.asfloat;
                    ExecSQL;
                 end;
              DM.IBTransaction.Commit;

            except
              DM.IBTransaction.Rollback;
              showmessage('Erro ao Gravar o log do produto, ' + #13 +
                          'Verifique que já foi lançFDo');
            end;
          finally
            DM.LogPro.Close;
           end;


   IF (frmcompra.combo_tipo.ItemIndex = 0) OR (frmcompra.combo_tipo.ItemIndex = 1) OR (frmcompra.combo_tipo.ItemIndex = 2) or (frmcompra.combo_tipo.ItemIndex = 4)then
   BEGIN
    if alterando = True then
    begin
      IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
      begin
      dm.qrproduto.edit;
      dm.qrprodutoPRECO_CUSTO.AsFloat           := frmcompra.qrnota_itemPRECO_CUSTO.ASFLOAT;
      dm.qrprodutoESTOQUE.AsFloat               := estoque_ant + frmcompra.qrnota_itemQUANTIDADE.ASFLOAT;
      dm.qrprodutoESTOQUE_ATUAL.AsFloat               := estoque_ant + frmcompra.qrnota_itemQUANTIDADE.ASFLOAT;
      dm.qrprodutoESTOQUE_FRACAO.AsFloat        := estoque_antfracao + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);
     // dm.qrprodutoPRECO_VENDA.AsFloat           := frmcompra.qrnota_itemPRECO_VENDA.ASFLOAT;
     // dm.qrprodutoMARGEM_LUCRO.AsFloat          := frmcompra.qrnota_itemPMARGEM.ASFLOAT;
     //  dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := frmcompra.qrnota_itemFRACAO.ASFLOAT;
     //  dm.qrprodutoSITUACAO.Value := 0;
     //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
      dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := frmcompra.ECODFORNECEDOR.Text;
      dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

      if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
        dm.qrprodutoTIPO_ATIVIDADE.Value := frmcompra.qrnota_itemCLASSIFICACAO_FISCAL.AsString;

      dm.qrproduto.Post;
      end ELSE
      begin
      DM.qrproduto.Close;
      DM.qrproduto.sql.Clear;
      DM.qrproduto.sql.add('select * from produtos where CODIGO = ''' + frmcompra.qrnota_itemCODIGO_PRODUTO.AsString + '''');
      DM.qrproduto.open;

      dm.qrproduto.edit;
      dm.qrprodutoPRECO_CUSTO.AsFloat           := frmcompra.qrnota_itemPRECO_CUSTO.ASFLOAT;
      dm.qrprodutoESTOQUE.AsFloat               := estoque_ant + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);
      dm.qrprodutoESTOQUE_ATUAL.AsFloat               := estoque_ant + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);

      //dm.qrprodutoPRECO_VENDA.AsFloat           := frmcompra.qrnota_itemPRECO_VENDA.ASFLOAT;
      //dm.qrprodutoMARGEM_LUCRO.AsFloat          := frmcompra.qrnota_itemPMARGEM.ASFLOAT;
     // dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := frmcompra.qrnota_itemFRACAO.ASFLOAT;
    //  dm.qrprodutoSITUACAO.Value := 0;
    //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
      dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := frmcompra.ECODFORNECEDOR.Text;
      dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

      if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
        dm.qrprodutoTIPO_ATIVIDADE.Value := frmcompra.qrnota_itemCLASSIFICACAO_FISCAL.AsString;

      dm.qrproduto.Post;

      end;
    end else

    begin
      IF DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'S' then
      begin
      dm.qrproduto.edit;
      dm.qrprodutoPRECO_CUSTO.AsFloat           := frmcompra.qrnota_itemPRECO_CUSTO.ASFLOAT;
      dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + frmcompra.qrnota_itemQUANTIDADE.ASFLOAT;
      dm.qrprodutoESTOQUE_ATUAL.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + frmcompra.qrnota_itemQUANTIDADE.ASFLOAT;
      dm.qrprodutoESTOQUE_FRACAO.AsFloat        := dm.qrprodutoESTOQUE_FRACAO.AsFloat + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);
    // dm.qrprodutoPRECO_VENDA.AsFloat           := frmcompra.qrnota_itemPRECO_VENDA.ASFLOAT;
    // dm.qrprodutoMARGEM_LUCRO.AsFloat          := frmcompra.qrnota_itemPMARGEM.ASFLOAT;
    // dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := frmcompra.qrnota_itemFRACAO.ASFLOAT;
    //  dm.qrprodutoSITUACAO.Value := 0;
    //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
      dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := frmcompra.ECODFORNECEDOR.Text;
      dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

      if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
        dm.qrprodutoTIPO_ATIVIDADE.Value := frmcompra.qrnota_itemCLASSIFICACAO_FISCAL.AsString;

      dm.qrproduto.Post;
      end ELSE
      begin
      dm.qrproduto.edit;
      dm.qrprodutoPRECO_CUSTO.AsFloat           := frmcompra.qrnota_itemPRECO_CUSTO.ASFLOAT;
      dm.qrprodutoESTOQUE.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);
      dm.qrprodutoESTOQUE_ATUAL.AsFloat               := dm.qrprodutoESTOQUE.AsFloat + (frmcompra.qrnota_itemQUANTIDADE.ASFLOAT * frmcompra.qrnota_itemFRACAO.ASFLOAT);

    //  dm.qrprodutoPRECO_VENDA.AsFloat           := frmcompra.qrnota_itemPRECO_VENDA.ASFLOAT;
    //  dm.qrprodutoMARGEM_LUCRO.AsFloat          := frmcompra.qrnota_itemPMARGEM.ASFLOAT;
    //  dm.qrprodutoMULTIP_FRACAO.ASFLOAT         := frmcompra.qrnota_itemFRACAO.ASFLOAT;
    //  dm.qrprodutoSITUACAO.Value := 0;
    //  dm.qrprodutoNOTAFISCAL.Value := enota.Text;
      dm.qrprodutoCODIGO_FORNECEDORES.TEXT      := frmcompra.ECODFORNECEDOR.Text;
      dm.qrprodutoDATA_ULTIMA_COMPRA.AsDateTime := date;

      if dm.qrprodutoTIPO_ATIVIDADE.AsString = '' then
        dm.qrprodutoTIPO_ATIVIDADE.Value := frmcompra.qrnota_itemCLASSIFICACAO_FISCAL.AsString;

      dm.qrproduto.Post;
      end;
     end;
   end;



  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('update PRODUTOS set');
  if altera_custo = 1 then qrproduto.sql.add('preco_custo = :preco_custo,');
  qrproduto.sql.add('DATA_ULTIMA_COMPRA = :DATA,');
 // qrproduto.sql.add('notafiscal = :notafiscal,');
  qrproduto.sql.add('TIPO_ATIVIDADE = :TIPO_ATIVIDADE,');
  qrproduto.sql.add('codigo_fornecedores = :codigo_fornecedores');
  qrproduto.sql.add('where codigo = ''' + frmcompra.qrnota_item.FieldByName('codigo_produto').asstring + '''');
  if altera_custo = 1 then
  begin
    if efracao.value > 0 then
      qrproduto.Params.ParamByName('preco_custo').asfloat := frmcompra.qrnota_item.fieldbyname('valor_uni').asfloat / efracao.value
    else
      qrproduto.Params.ParamByName('preco_custo').asfloat := frmcompra.qrnota_item.fieldbyname('valor_uni').asfloat;
  end;
  qrproduto.Params.ParamByName('DATA').asdatetime := frmcompra_menu.qrnota.fieldbyname('data_cadastro').asdatetime;
 // qrproduto.Params.ParamByName('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
  qrproduto.Params.ParamByName('TIPO_ATIVIDADE').asstring := Copy(ECLASSIF.Text,1,2);
  qrproduto.Params.ParamByName('codigo_fornecedores').asstring := frmcompra_menu.qrnota.fieldbyname('cod_fornecedor').asstring;
  qrproduto.execsql;

  try
    if RPRECO.Checked then
    begin
      DM.QRPRODUTO.Close;
      DM.QRPRODUTO.SQL.CLEAR;
      DM.QRPRODUTO.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ''' + frmcompra.qrnota_item.FIELDBYNAME('CODIGO_PRODUTO').ASSTRING + '''');
      DM.QRPRODUTO.OPEN;
      DM.qrproduto.Edit;

      DM.qrpreco.close;
      DM.qrpreco.SQL.clear;
      DM.qrpreco.sql.Add('select * from produto_precos where codproduto = ''' + frmcompra.qrnota_item.FieldByName('codigo_produto').asstring + '''');
      DM.qrpreco.open;


      if DM.qrpreco.RecordCount = 0 then
      begin
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PRODUTO_PRECOS');
        DM.ProxCod.Open;

           // caso produto nao tenha Grade de preco, criar
        DM.qrpreco.insert;
        DM.qrpreco.fieldbyname('codigo').ASinteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
        DM.qrpreco.fieldbyname('codproduto').asstring := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
        if EFRACAO.VALUE > 0 then
        begin
          DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := (etotal.value / eqtde.Value) / (efracao.VALUE);
          DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := ((etotal.value + efrete.Value + eseguro.value + eoutras.value) / eqtde.value) / efracao.value;
          DM.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := ((efrete.Value + eseguro.value + eoutras.value) / eqtde.value) / efracao.value;
          if efrete.Value > 0 then
            DM.qrpreco.fieldbyname('frete').asfloat := efrete.Value / (eqtde.value / efracao.value);
          if eseguro.Value > 0 then
            DM.qrpreco.fieldbyname('seguro').asfloat := eseguro.Value / (eqtde.value / efracao.value);
          if eoutras.Value > 0 then
            DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value / (eqtde.value / efracao.value);

          if ealiquota_ipi.value > 0 then
            DM.qrpreco.fieldbyname('IPI_P').asfloat := ealiquota_ipi.value
          else
          begin
            if evalor_ipi.value > 0 then
            begin
              DM.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
            end;
          end;


        end
        else
        begin
          DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := etotal.value / eqtde.Value;
          DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := (etotal.value + efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
          DM.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := (efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
          if efrete.Value > 0 then
            DM.qrpreco.fieldbyname('frete').asfloat := efrete.Value / (eqtde.value);
          if eseguro.Value > 0 then
            DM.qrpreco.fieldbyname('seguro').asfloat := eseguro.Value / (eqtde.value);
          if eoutras.Value > 0 then
            DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value / (eqtde.value);

          if ealiquota_ipi.value > 0 then
            DM.qrpreco.fieldbyname('IPI_P').asfloat := ealiquota_ipi.value
          else
          begin
            if evalor_ipi.value > 0 then
            begin
              DM.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
            end;
          end;
        end;

        if ereducao.value > 0 then
          DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ereducao.value
        else
          DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.value;

        DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.Value;
        DM.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat := ealiquota.Value;
        DM.qrpreco.fieldbyname('IPI_P').asfloat := ealiquota_ipi.Value;
        DM.qrpreco.fieldbyname('FRETE').asfloat := Efrete.Value;
        DM.qrpreco.fieldbyname('SEGURO').asfloat := eseguro.Value;
        DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value;


        if qtributacao.FieldByName('FLAG_PIS_COFINS').AsString = 'S' then
        begin
          DM.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_PIS').AsFloat;
          DM.qrpreco.fieldbyname('PIS_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_PIS').AsFloat;
          DM.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_COFINS').AsFloat;
          DM.qrpreco.fieldbyname('COFINS_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_COFINS').AsFloat;
        end;

        DM.QRPRODUTO.EDIT;
        frmproduto_preco := tfrmproduto_preco.create(self);
        frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Inclusão';
        frmproduto_preco.showmodal;
      end
      else
      begin
        DM.qrpreco.edit;
       { if DM.qrproduto.FieldByName('PISCOFINS').AsString = 'S' then
        begin
          DM.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat := DM.qrFilialPIS.AsFloat;
          DM.qrpreco.fieldbyname('PIS_P').asfloat := DM.qrFilialPIS.AsFloat;
          DM.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat := DM.qrFilialCOFINS.AsFloat;
          DM.qrpreco.fieldbyname('COFINS_P').asfloat := DM.qrFilialCOFINS.AsFloat;
        end;}
        if qtributacao.FieldByName('FLAG_PIS_COFINS').AsString = 'S' then
        begin
          DM.qrpreco.fieldbyname('PIS_ENTRADA_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_PIS').AsFloat;
          DM.qrpreco.fieldbyname('PIS_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_PIS').AsFloat;
          DM.qrpreco.fieldbyname('COFINS_ENTRADA_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_COFINS').AsFloat;
          DM.qrpreco.fieldbyname('COFINS_P').asfloat := qtributacao.FieldByName('PERC_ALICOTA_COFINS').AsFloat;
        end;

        frmproduto_preco := tfrmproduto_preco.create(self);
        frmproduto_preco.caption := 'Atualização de Preço de Venda  -  Alteração';
        if EFRACAO.VALUE > 0 then
        begin
          DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := (etotal.value / eqtde.Value) / (efracao.VALUE);
          DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := ((etotal.value + efrete.Value + eseguro.value + eoutras.value) / eqtde.value) / efracao.value;
          DM.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := ((efrete.Value + eseguro.value + eoutras.value) / eqtde.value) / efracao.value;
        end
        else
        begin
          DM.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := etotal.value / eqtde.Value;
          DM.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := (etotal.value + efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
          DM.QRPRECO.FIELDBYNAME('FRETE_IPI_OUTRAS').ASFLOAT := (efrete.Value + eseguro.value + eoutras.value) / eqtde.value;
        end;
        if efracao.value = 0 then efracao.value := 1;

        if efrete.Value > 0 then
          DM.qrpreco.fieldbyname('frete').asfloat := efrete.Value / (eqtde.value / efracao.value);
        if eseguro.Value > 0 then
          DM.qrpreco.fieldbyname('seguro').asfloat := eseguro.Value / (eqtde.value / efracao.value);
        if eoutras.Value > 0 then
          DM.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat := eoutras.Value / (eqtde.value / efracao.value);

        if ealiquota_ipi.value > 0 then
          DM.qrpreco.fieldbyname('IPI_P').asfloat := ealiquota_ipi.value
        else
        begin
          if evalor_ipi.value > 0 then
          begin
            DM.qrpreco.fieldbyname('IPI_P').asfloat := (evalor_ipi.value * 100) / etotal.value;
          end;
        end;

        if frmcompra_menu.qrempresa.fieldbyname('OPTANTE_SIMPLES').asstring = 'N' then
        begin
             // qdo a empresa nao for optante pelo simples
          if ereducao.value > 0 then
            DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ereducao.value
          else
            DM.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat := ealiquota.value;
        end;
        frmproduto_preco.showmodal;

      end;

{
    frmcompra.qrnota_item.FieldByName('credito_icms').AsFloat := DM.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('pis').AsFloat := DM.qrpreco.fieldbyname('PIS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('pis_base').AsFloat := DM.qrpreco.fieldbyname('PIS').asfloat;
    frmcompra.qrnota_item.FieldByName('cofins').AsFloat := DM.qrpreco.fieldbyname('COFINS_ENTRADA').asfloat;
    frmcompra.qrnota_item.FieldByName('cofins_base').AsFloat := DM.qrpreco.fieldbyname('COFINS').asfloat;
    if frmcompra.qrnota_item.FieldByName('lote_fabricacao').AsString = null then
      frmcompra.qrnota_item.FieldByName('lote_fabricacao').AsString := '';
}

    end;
  except
  end;

  if DM.qrproduto.FieldByName('usa_grade').asinteger = 1 then
  begin
    frmproduto_gradef := tfrmproduto_gradef.create(self);
    frmproduto_gradef.showmodal;
  end;

  xipi := combo_ipi.ItemIndex;
  xreducao := ereducao.Value;
  altera_preco := rpreco.Checked;

  frmcompra.qrnota_item.FieldByName('ipi_tipo').AsString := combo_ipi.Value;

  vvalor_base_imposto := frmcompra.qrnota_item.FieldByName('total_item').Asfloat;
  vcredito_icms := DM.qrpreco.FieldByName('ICMS_ENTRADA_P').Asfloat;
  vpis := DM.qrpreco.FieldByName('PIS_ENTRADA_P').Asfloat;
  vcofins := DM.qrpreco.FieldByName('COFINS_ENTRADA_P').Asfloat;

  frmcompra.qrnota_item.FieldByName('CREDITO_ICMS').Asfloat := vvalor_base_imposto * vcredito_icms / 100;
  frmcompra.qrnota_item.FieldByName('VALOR_PIS').Asfloat := vvalor_base_imposto * vpis / 100;
  frmcompra.qrnota_item.FieldByName('VALOR_COFINS').Asfloat := vvalor_base_imposto * vcofins / 100;

  frmcompra.qrnota_item.post;

  // produto com rentabilidade animal

  if frmcompra_menu.vopcao_item = 1 then
  begin
    if DM.qrproduto.FieldByName('usa_rentabilidade').asinteger = 1 then
    begin
      frmproduto_rentabilidade := tfrmproduto_rentabilidade.create(self);
      frmproduto_rentabilidade.lproduto.Caption := eproduto.text;
      frmproduto_rentabilidade.showmodal;
    end;
  end;

  //  if frmcompra_menu.vopcao_nfe = 1 then itens := itens + 1;

  if frmcompra_menu.vopcao_item = 1 then itens := itens + 1;

  //// verifica se o codigo do fornecedor existe
  ///////////////////////////////////////////////

  if ed_cod_fornecedor.Text <> '' then
  begin
    DM.qrfornecedor_codigo.Close;
    DM.qrfornecedor_codigo.sql.clear;
    DM.qrfornecedor_codigo.sql.add('select * from fornecedor_codigo where codigo = ''' + ed_cod_fornecedor.text + '''');
    DM.qrfornecedor_codigo.sql.add('and codfornecedor = ''' + frmcompra.ECODFORNECEDOR.Text + '''');
    DM.qrfornecedor_codigo.open;
    if DM.qrfornecedor_codigo.RecordCount = 0 then
    begin
      if application.messagebox('Referência do Fornecedor Não Encontrado! Deseja Grava-lo?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
      begin
        DM.qrfornecedor_codigo.Insert;
        DM.qrfornecedor_codigoCODFORNECEDOR.AsString := frmcompra.ECODFORNECEDOR.Text;
        DM.qrfornecedor_codigoCODIGO.AsString := ed_cod_fornecedor.Text;
        DM.qrfornecedor_codigoCODPRODUTO.AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
        DM.qrfornecedor_codigoPRECO.AsFloat := frmcompra.qrnota_itemVALOR_UNI.AsFloat;
        DM.qrfornecedor_codigo.Post;
      end;
    end;
  end;

  ///////////////////////////////////////////////

  DM.Coneccao.Commit;
  Application.ProcessMessages;

  registro := frmcompra.qrnota_item_lista.fieldbyname('CODLANCAMENTO').asstring;
  frmcompra.qrnota_item_lista.Refresh;
  frmcompra.qrnota_item_lista.locate('CODLANCAMENTO', registro, [loCaseInsensitive]);

  if fechar_tela then
  begin
    (****************** INCLUIR UM NOVO ITEM *********************)

    if frmcompra_menu.vopcao_item = 1 then
    begin

      if check_atualiza.checked then frmcompra.batualiza_itensClick(frmcompra);
       dm.ProxCod.Close;
       dm.ProxCod.SQL.Clear;
       dm.ProxCod.SQL.Add('select max(codigo_item) as N_CODIGO FROM Notasfiscais_itens');
       DM.ProxCod.Open;
      
      FRMCOMPRA.qrnota_item.Insert;
      FRMCOMPRA.qrnota_item.fieldbyname('codigo_item').asstring :=  IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1);// frmprincipal.codifica('000032');
      FRMCOMPRA.qrnota_item.fieldbyname('codlancamento').asstring := IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1);
      FRMCOMPRA.qrnota_item.fieldbyname('data').asdatetime := frmcompra_menu.qrnota.fieldbyname('DATA_CADASTRO').asfloat;

      codigo_it := IntToStr(DM.ProxCodN_CODIGO.ASINTEGER + 1);
      FRMCOMPRA.qrnota_item.fieldbyname('CODIGO_NOTA').asstring := frmcompra_menu.qrnota.fieldbyname('CODIGO_NOTA').asstring;
      FRMCOMPRA.qrnota_item.fieldbyname('num_nota').asstring := frmcompra_menu.qrnota.fieldbyname('num_nota').asstring;
      FRMCOMPRA.qrnota_item.fieldbyname('codfornecedor').asstring := frmcompra.ECODFORNECEDOR.Text;
      FRMCOMPRA.qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP_NOTA').asstring;
      if frmcompra_menu.qrnota.FieldByName('ICMSRETIDO').asfloat > 0 then
        FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'S' else FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'N';
      FRMCOMPRA.qrnota_item.FieldByName('item').Asinteger := itens;

      if frmcompra.rdesconto.Value = 0 then
      begin
        FRMCOMPRA.qrnota_item.FieldByName('VALOR_DESC').AsFloat := 0;
        FRMCOMPRA.qrnota_item.FieldByName('DESCONTO_P').AsFloat := 0;
      end;

      FRMCOMPRA.qrnota_item.FieldByName('ICMS_ISENTO').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('ICMS_NAOTRIBUTADO').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('ICMS_VALORRETIDO').AsFloat := 0;

      FRMCOMPRA.qrnota_item.FieldByName('PERC_ICMS').AsFloat := valiquota;
      FRMCOMPRA.qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat := vreducao;
      FRMCOMPRA.qrnota_item.FieldByName('BASE_ICMS').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('VALOR_ICMS').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('VALOR_ICMS_ST').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('BASE_IPI').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('VALOR_IPI').AsFloat := 0;
      FRMCOMPRA.qrnota_item.FieldByName('PERC_IPI').AsFloat := vipi;
      FRMCOMPRA.qrnota_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';

      FRMCOMPRA.qrnota_item.FieldByName('ALIC_ICMS_ST').AsFloat := vsubmargem;
      FRMCOMPRA.qrnota_item.FieldByName('BASE_ICMS_ST').AsFloat := vsubbase;
      FRMCOMPRA.qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat := vsubprodutos;

    end;
    combo_ipi.ItemIndex := xipi;
    ereducao.Value := xreducao;
    rpreco.Checked := altera_preco;


    if (frmcompra_menu.vopcao_nfe = 1) or (frmcompra_menu.vopcao_item = 1) then
    begin
      if ecodproduto.Enabled = True then
        ECODPRODUTO.SETFOCUS;
    end;

    if (frmcompra_menu.vopcao_item = 2) then
      close;
  end;

  Button1.Click;

  IF alterando = True then
  begin
  Close;
  end;
end;

procedure Tfrmcompra_item.bcancelarClick(Sender: TObject);
begin
  frmcompra_menu.qrnota.Edit;
  frmcompra.qrnota_item.Cancel;

end;

procedure Tfrmcompra_item.combo_retidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then EALIQUOTA.SETFOCUS;
end;

procedure Tfrmcompra_item.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra_item.ealiquotaExit(Sender: TObject);
var
  vdesc_total_nota: double;

begin

  if (ealiquota.value <> 0.00) and
    (ealiquota.value <> 3.00) and
    (ealiquota.value <> 7.00) and
    (ealiquota.value <> 12.00) and
    (ealiquota.value <> 17.00) and
    (ealiquota.value <> 18.00) and
    (ealiquota.value <> 25.00) and
    (ealiquota.value <> 27.00) then
  begin
    application.messagebox('Aliquota fora da faixa!', 'Atenção', mb_ok + mb_iconwarning);
    ealiquota.Value := 0;
    ealiquota.SetFocus;
    exit;
  end;

     //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
  vdesc_total_nota := 0;
  if frmcompra.XDESCONTO.Checked = true then
  begin
    vdesc_total_nota := (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat *
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
  end;

  if frmcompra.etipo_baseicms.Checked = true then
  begin
    frmcompra.qrnota_item.fieldbyname('base_ICMS').asfloat := etotal.Value + efrete.Value + eoutras.Value;
    frmcompra.qrnota_item.fieldbyname('BASE_icms').asfloat := (etotal.Value + efrete.Value + eoutras.Value) - vdesc_total_nota;
    frmcompra.qrnota_item.fieldbyname('VALOR_icms').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_icms').asfloat * ealiquota.Value / 100;
  end
  else
  begin
    frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := etotal.Value - vdesc_total_nota;
    frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat * ealiquota.Value / 100;
  end;

  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
  if (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT = 0) then
  begin
    frmcompra.qrnota_item.fieldbyname('ALIC_ICMS_ST').asfloat := 0;
    frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := 0;
    frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat := 0;
    frmcompra.qrnota_item.fieldbyname('VALOR_ICMS_ST').asfloat := 0;
    frmcompra.qrnota_item.fieldbyname('valor_icms').asfloat := 0;
    frmcompra.qrnota_item.fieldbyname('perc_ICMS').asfloat := 0;
    exit;
  end;

  (********************* SUBSTITUICAO TRIBUTARIA ************************)
  if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

  begin

    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070')
      then // reducao na base de calculo
    begin
      if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 0 then
      begin
        // calcular substituicao tributaria sem informar icms retido


        if (frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT > 0) then
        begin

          if frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat <> 0 then
          begin
          //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
            if frmcompra.etipo_baseicms.Checked = true then
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) *
                (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100)
            else
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat) *
                (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100);

            frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
              (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
          end;


          if eprod_sub.Value > 0 then
          begin

            {
              frmcompra.qrnota_item.fieldbyname('SUB_BASE').asfloat := (etotal.Value*frmcompra.ebase_subst.Value)/
                                                                frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
              frmcompra.qrnota_item.fieldbyname('SUB_VALOR').asfloat := (etotal.Value*frmcompra.evalor_subst.Value)/
              frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
            }
          end;


        end
        else
        begin
          if (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT > 0) then
          begin

            if frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat <> 0 then
            begin
                //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
              if frmcompra.etipo_baseicms.Checked = true then
                frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) *
                  (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                  (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100)
              else
                frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat) *
                  (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                  (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100);

              frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
            end;

          end;
        end;


      end;

      if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 7 then
      begin
        if frmcompra.etipo_baseicms.Checked = true then
          frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) - ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) *
            frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)
        else
          frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat) - ((frmcompra.qrnota_item.fieldbyname('TOTAL_item').asfloat + efrete.Value + eoutras.Value) *
            frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100);

        frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
          (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
      end;
    end
    else
    begin
      if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
      begin
        if emargem_sub.Value = 0 then
        begin
          frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat :=
            (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value + frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat) +
            ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value + frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat) *
            (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat / 100));
        end;
        if eprod_sub.Value > 0 then
        begin
        end;

      end
      else
      begin


        // calcular substituicao tributaria sem informar icms retido

        if (frmcompra.qrnota_item.fieldbyname('ALIC_ICMS_ST').asfloat > 0) and (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT > 0) then

        begin
          if frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat = 0 then
          begin

            if frmcompra.etipo_baseicms.Checked = true then
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value)
            else
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value);

            frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
              (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
          end;


          if emargem_sub.Value = 0 then
          begin
            frmcompra.qrnota_item.FieldByName('BASE_ICMS_ST').asfloat :=
              frmcompra.qrnota_item.FieldByName('total_item').asfloat +
              (frmcompra.qrnota_item.FieldByName('total_item').asfloat * (frmcompra.qrnota_item.FieldByName('alic_icms_st').asfloat / 100));

            frmcompra.qrnota_item.FieldByName('VALOR_ICMS_ST').asfloat :=
              (frmcompra.qrnota_item.FieldByName('BASE_ICMS_ST').asfloat * (frmcompra.qrnota_item.fieldbyname('perc_ICMS').asfLOAT / 100)) -
              frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat;
          end;

        end
        else
        begin


          if frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat = 0 then
          begin
            if frmcompra.etipo_baseicms.Checked = true then
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value)
            else
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat);

            frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
              (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
          end;


        end;
      end;
    end;
  end
  else
  begin
    (*************** ISENTO DE ICMS *********************************)
    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '040') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '030') then
    begin
      frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').asfloat := frmcompra.qrnota_item.fieldbyname('total_item').asfloat;
    end
    else
    begin
      (************** NAO TRIBUTADO *********************************)
      if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '041') or
        (frmcompra.qrnota_item.fieldbyname('CST').asstring = '050') or
        (frmcompra.qrnota_item.fieldbyname('CST').asstring = '090') then
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').asfloat := frmcompra.qrnota_item.fieldbyname('total_ITEM').asfloat;
      end
      else
      (*************** TRIBUTADO INTEGRALMENTE **********************)
      begin
        if frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat > 0 then
          if frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT > 0 then
          begin
                              //if frmcompra_menu.qrnota.FieldByName('BASEICMS_PRODUTOS').AsInteger = 1 then
            if frmcompra.etipo_baseicms.Checked = true then
              frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) *
                (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100)
            else
              frmcompra.qrnota_item.fieldbyname('ICMS_BASE').asfloat := ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat) *
                (frmcompra.qrnota_item.FieldByName('icms_reducao').asfloat / 100)) /
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfloat / 100);

            frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
              (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
          end
          else
            if frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT > 0 then
            begin
              if frmcompra.etipo_baseicms.Checked = true then
                frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value)
              else
                frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat := (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat);

              frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfloat *
                (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT / 100);
            end;

      end;
    end;
  end;


  if (frmcompra.qrnota_item.fieldbyname('PERC_ICMS').asfLOAT = 0) then
    frmcompra.qrnota_item.fieldbyname('BASE_ICMS').asfLOAT := 0;
  bvalor_outrasClick(frmcompra_item);
end;

procedure Tfrmcompra_item.combo_ipiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    if combo_ipi.ItemIndex > 0 then
    begin

      ealiquota_ipi.enabled := true;
      ebase_ipi.enabled := true;
      evalor_ipi.enabled := true;

      ealiquota_ipi.setfocus;

    end
    else
    begin
      ealiquota_ipi.Value := 0;
      ebase_ipi.value := 0;
      evalor_ipi.value := 0;

      ealiquota_ipi.enabled := false;
      ebase_ipi.enabled := false;
      evalor_ipi.enabled := false;


      bgravar.setfocus;
    end;

  end;
end;

procedure Tfrmcompra_item.combo_ipiExit(Sender: TObject);
begin
  if combo_ipi.ItemIndex > 0 then
  begin

    ealiquota_ipi.enabled := true;
    ebase_ipi.enabled := true;
    evalor_ipi.enabled := true;

    ealiquota_ipi.setfocus;

  end
  else
  begin
    ealiquota_ipi.Value := 0;
    ebase_ipi.value := 0;
    evalor_ipi.value := 0;

    ealiquota_ipi.enabled := false;
    ebase_ipi.enabled := false;
    evalor_ipi.enabled := false;


    bgravar.setfocus;
  end;
  bvalor_outrasClick(frmcompra_item);
end;

procedure Tfrmcompra_item.evalor_ipiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra_item.ealiquota_ipiExit(Sender: TObject);
begin
  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

  if frmcompra.qrnota_item.fieldbyname('PERC_IPI').asfloat > 0 then
  begin
    frmcompra.qrnota_item.fieldbyname('base_ipi').asfloat := frmcompra.qrnota_item.fieldbyname('total_item').asfloat;
    frmcompra.qrnota_item.fieldbyname('valor_ipi').asfloat := frmcompra.qrnota_item.fieldbyname('base_ipi').asfloat *
      (frmcompra.qrnota_item.fieldbyname('perc_ipi').asfloat / 100)
  end;


end;

procedure Tfrmcompra_item.AlterarPrecodeVenda1Click(Sender: TObject);
begin
  if rpreco.Checked then rpreco.Checked := false else rpreco.Checked := true;
end;

procedure Tfrmcompra_item.edescontoExit(Sender: TObject);
begin
  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;
  frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('quantidade').asfloat *
    eunitario.value;

  if frmcompra.XDESCONTO.Checked = false then
  begin
    frmcompra.qrnota_item.FieldByName('total_item').asfloat :=
      frmcompra.qrnota_item.FieldByName('subtotal').asfloat -
      frmcompra.qrnota_item.FieldByName('valor_desc').asfloat;
  end;

  if frmcompra.qrnota_item.FieldByName('total_item').asfloat > 0 then
  begin

    frmcompra.qrnota_item.FieldByName('FRETE').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_FRETE').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    frmcompra.qrnota_item.FieldByName('SEGURO').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_SEGURO').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat :=
      (frmcompra.qrnota_item.FieldByName('total_item').asfloat * FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_OUTRAS').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;

    efrete.Value := frmcompra.qrnota_item.FieldByName('FRETE').asfloat;
    eseguro.Value := frmcompra.qrnota_item.FieldByName('SEGURO').asfloat;
    eoutras.Value := frmcompra.qrnota_item.FieldByName('OUTRAS').asfloat;

  end;
end;

procedure Tfrmcompra_item.ebase_icmsExit(Sender: TObject);
begin
  if (frmcompra.qrnota_item.State = dsInsert) or (frmcompra.qrnota_item.State = dsedit) then
    frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').asfloat := ebase_icms.Value * ealiquota.Value / 100;
end;

procedure Tfrmcompra_item.ebase_subExit(Sender: TObject);
begin
  if emargem_sub.Value = 0 then
  begin
    if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
    begin
      frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat :=
        (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value + frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat) +
        ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value) * (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat / 100));
    end
    else
      if eprod_sub.Value = 0 then
      begin
        if ebase_sub.Value > 0 then
          frmcompra.qrnota_item.fieldbyname('VALOR_ICMS_ST').asfloat := (frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat * ealiquota.Value / 100) - evalor_icms.Value;
      end;
  end;
end;

procedure Tfrmcompra_item.edpercExit(Sender: TObject);
begin
  if edperc.Value > 0 then
    frmcompra.qrnota_item.FieldByName('valor_desc').asfloat := frmcompra.qrnota_item.FieldByName('subtotal').asfloat * edperc.Value / 100;

end;

procedure Tfrmcompra_item.eitemEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra_item.eitemExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmcompra_item.eunitario1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  if eunitario.Value = 0 then
  begin
    Showmessage('Valor do Item Não Informado, Verifique...');
    eunitario.Color := $00A8FFFF;
    eunitario.SetFocus;
    exit;
  end;

  frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat :=
    frmcompra.qrnota_item.FieldByName('quantidade').asfloat *
    eunitario.value;

  if FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT > 0 then
  begin
        //if frmcompra.XDESCONTO.Checked =  false THEN
        //BEGIN
       frmcompra.qrnota_item.FieldByName('valor_desc').asfloat :=
      (frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat *
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_DESCONTO').ASFLOAT) /
      FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').ASFLOAT;
       //END;
  end;

  if frmcompra.XDESCONTO.Checked = false then
    frmcompra.qrnota_item.FieldByName('TOTAL_ITEM').asfloat := frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat - edesconto.Value
  else
    frmcompra.qrnota_item.FieldByName('TOTAL_ITEM').asfloat := frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat;



end;

procedure Tfrmcompra_item.ecfopExit(Sender: TObject);
begin
  if (frmcompra.Edit1.Text = frmcompra.Edit2.Text) and (copy(ecfop.Text, 1, 1) = '2') then
  begin
    showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.SetFocus;
    exit;
  end
  else if (frmcompra.Edit1.Text <> frmcompra.Edit2.Text) and (copy(ecfop.Text, 1, 1) = '1') then
  begin
    showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.SetFocus;
    exit;
  end;

end;

procedure Tfrmcompra_item.BitBtn1Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.first;
  frmcompra.qrnota_item.first;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('descricao').asstring;
  with frmcompra do
  begin
    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from notasfiscais_itens where codigo_item = ''' + qrnota_item_lista.fieldbyname('codigo_item').asstring + ''' and codigo_nota = ''' + qrnota_item_lista.fieldbyname('codigo_nota').asstring + '''');
    qrnota_item.open;
    qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn3Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.Prior;
  frmcompra.qrnota_item.Prior;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('descricao').asstring;
  with frmcompra do
  begin
    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from notasfiscais_itens where codigo_item = ''' + qrnota_item_lista.fieldbyname('codigo_item').asstring + ''' and codigo_nota = ''' + qrnota_item_lista.fieldbyname('codigo_nota').asstring + '''');
    qrnota_item.open;
    qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn4Click(Sender: TObject);
begin

  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;

  bgravarclick(frmcompra_item);

  frmcompra.qrnota_item_lista.next;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('descricao').asstring;

  with frmcompra do
  begin
    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from notasfiscais_itens where codigo_item = ''' + qrnota_item_lista.fieldbyname('codigo_item').asstring + ''' and codigo_nota = ''' + qrnota_item_lista.fieldbyname('codigo_nota').asstring + '''');
    qrnota_item.open;
    qrnota_item.Edit;
  end;

  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.BitBtn2Click(Sender: TObject);
begin
  frmcompra_menu.vopcao_item := 2;
  fechar_tela := false;
  bgravarclick(frmcompra_item);
  frmcompra.qrnota_item_lista.last;
  frmcompra.qrnota_item.last;
  eproduto.text := frmcompra.qrnota_item_lista.fieldbyname('descricao').asstring;
  with frmcompra do
  begin
    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from notasfiscais_itens where codigo_item = ''' + qrnota_item_lista.fieldbyname('codigo_item').asstring + ''' and codigo_nota = ''' + qrnota_item_lista.fieldbyname('codigo_nota').asstring + '''');
    qrnota_item.open;
    qrnota_item.Edit;
  end;
  frmcompra.qrnota_item.Edit;
  eun_compra.setfocus;
  fechar_tela := true;
end;

procedure Tfrmcompra_item.ecodprodutoEnter(Sender: TObject);
var key: char;
begin

  ed_cod_fornecedor.Text := '';

  if frmcompra_menu.vopcao_item = 2 then
  begin
    key := #13;
    ecodprodutoKeyPress(frmcompra_item, key);
  end;
end;

procedure Tfrmcompra_item.ebase_ipiExit(Sender: TObject);
begin
  if frmcompra.qrnota_item.State <> dsedit then if frmcompra.qrnota_item.State <> dsinsert then exit;

  if frmcompra.qrnota_item.fieldbyname('perc_ipi').asfloat > 0 then
  begin
    frmcompra.qrnota_item.fieldbyname('valor_ipi').asfloat := frmcompra.qrnota_item.fieldbyname('base_ipi').asfloat *
      (frmcompra.qrnota_item.fieldbyname('perc_ipi').asfloat / 100)
  end;
  bvalor_outrasClick(frmcompra_item);
end;

procedure Tfrmcompra_item.eprod_subExit(Sender: TObject);
begin
  if (combo_retido.ItemIndex = 1) and (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat > 0) then // icms retido
  begin
    if emargem_sub.Value = 0 then
    begin
      frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat :=
        (frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value + frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat) +
        ((frmcompra.qrnota_item.fieldbyname('TOTAL_ITEM').asfloat + efrete.Value + eoutras.Value + frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat) *
        (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat / 100));
    end;
  end
  else

    if eprod_sub.Value > 0 then
    begin
      frmcompra.qrnota_item.fieldbyname('BASE_ICMS_ST').asfloat := (etotal.Value * frmcompra.ebase_subst.Value) /
        frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
      frmcompra.qrnota_item.fieldbyname('VALOR_ICMS_ST').asfloat := (etotal.Value * frmcompra.evalor_subst.Value) /
        frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat;
    end;



end;

procedure Tfrmcompra_item.ecstExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
    (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

  else
    frmcompra.qrnota_item.fieldbyname('SUB_PRODUTOS').asfloat := 0;

end;

procedure Tfrmcompra_item.efracaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecst.setfocus;
end;

procedure Tfrmcompra_item.esubtotalExit(Sender: TObject);
begin
  tedit(sender).color := clbtnface;
end;

procedure Tfrmcompra_item.etotalExit(Sender: TObject);
begin
  tedit(sender).color := clbtnface;

  if frmcompra.XDESCONTO.Checked = false then
   BEGIN
     frmcompra.qrnota_item.FieldByName('VALOR_UNI').asfloat  := (etotal.Value +  edesconto.Value) / frmcompra.qrnota_item.FieldByName('quantidade').asfloat;
     frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat   :=    frmcompra.qrnota_item.FieldByName('quantidade').asfloat * frmcompra.qrnota_item.FieldByName('VALOR_UNI').asfloat
  END
  else
   begin
    frmcompra.qrnota_item.FieldByName('VALOR_UNI').asfloat  := etotal.Value  / frmcompra.qrnota_item.FieldByName('quantidade').asfloat;
    frmcompra.qrnota_item.FieldByName('SUBTOTAL').asfloat   :=  frmcompra.qrnota_item.FieldByName('quantidade').asfloat * frmcompra.qrnota_item.FieldByName('VALOR_UNI').asfloat
   end;

end;

procedure Tfrmcompra_item.ecodprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmcompra_item.AtualizarNota1Click(Sender: TObject);
begin
  if check_atualiza.Checked then check_atualiza.Checked := false else check_atualiza.Checked := true;
end;

procedure Tfrmcompra_item.ed_cod_fornecedorKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
  begin
    if ecodproduto.Text = '' then
    begin
      DM.qrfornecedor_codigo.Close;
      DM.qrfornecedor_codigo.sql.clear;
      DM.qrfornecedor_codigo.sql.add('select * from fornecedor_codigo where codigo = ''' + ed_cod_fornecedor.text + '''');
      DM.qrfornecedor_codigo.sql.add('and codfornecedor = ''' + frmcompra.ECODFORNECEDOR.Text + '''');
      DM.qrfornecedor_codigo.open;
      if DM.qrfornecedor_codigo.RecordCount > 0 then
      begin
        if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
        begin
          ecodproduto.text := DM.qrfornecedor_codigoCODPRODUTO.asstring;
          DM.qrproduto.Close;
          DM.qrproduto.sql.clear;
          DM.qrproduto.sql.add('select * from produtos where codigo = ''' + ecodproduto.text + '''');
          DM.qrproduto.open;
          if DM.qrproduto.RecordCount > 0 then
          begin
            frmcompra.qrnota_item.FieldByName('codigo_produto').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
            frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := DM.qrproduto.fieldbyname('DESC_unidade_ENT').AsString;
            eproduto.text := DM.qrproduto.fieldbyname('descricao').asstring;
            if DM.qrproduto.FieldByName('MULTIP_FRACAO').asfloat > 0 then
              frmcompra.qrnota_item.FieldByName('fracao').asfloat := DM.qrproduto.fieldbyname('MULTIP_FRACAO').asfloat
            else
            begin
              frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
              frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := DM.qrproduto.fieldbyname('DESC_unidade').asstring;
              frmcompra.qrnota_item.FieldByName('cst').asstring := DM.qrproduto.fieldbyname('cst').asstring;
              frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('TIPO_ATIVIDADE').asstring;
              frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
            end;
            eun_compra.setfocus;
          end;
        end;
      end
      else
      begin
        application.messagebox('Referência não Encontrado Para esse Produto!', 'Aviso', mb_ok + mb_iconwarning);
        ecodproduto.Text := '';
        ecodproduto.setfocus;
      end;

    end
    else
    begin
      eun_compra.SetFocus;
    end;

  {
         DM.qrproduto.Close;
         DM.qrproduto.sql.clear;
         DM.qrproduto.sql.add('select * from c000025 where REFERENCIA_FORNECEDOR = '''+ed_cod_fornecedor.text+'''');
         DM.qrproduto.open;
         if DM.qrproduto.RecordCount > 0 then
         begin
           if (frmcompra_menu.vopcao_item = 1) then //or (frmcompra_menu.vopcao_item = 1) then
           begin
             ecodproduto.text := DM.qrproduto.fieldbyname('codigo').asstring;
             frmcompra.qrnota_item.FieldByName('codproduto').asstring := DM.qrproduto.fieldbyname('codigo').asstring;
             frmcompra.qrnota_item.FieldByName('UN_COMPRA').AsString := DM.qrproduto.fieldbyname('unidade').AsString;
             eproduto.text := DM.qrproduto.fieldbyname('produto').asstring;
             if DM.qrproduto.FieldByName('QTDE_EMBALAGEM').asfloat > 0 then
                frmcompra.qrnota_item.FieldByName('fracao').asfloat := DM.qrproduto.fieldbyname('QTDE_EMBALAGEM').asfloat
             else
             begin
               frmcompra.qrnota_item.FieldByName('fracao').asfloat := 1;
               frmcompra.qrnota_item.FieldByName('UN_FRACAO').asstring := DM.qrproduto.fieldbyname('unidade').asstring;
               frmcompra.qrnota_item.FieldByName('cst').asstring := DM.qrproduto.fieldbyname('cst').asstring;
               frmcompra.qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring := DM.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
               frmcompra.qrnota_item.FieldByName('qtde').asfloat := 1;
             end;
           end;
           eun_compra.setfocus;
         end
         else
         begin
           application.messagebox('Produto não cadastrado!','Aviso',mb_ok+mb_iconwarning);
           ecodproduto.Text := '';
           ecodproduto.setfocus;
         end;

  }
  end;
end;

procedure Tfrmcompra_item.bserialClick(Sender: TObject);
begin
  serial_entrada := false;
  frmproduto_serial := Tfrmproduto_serial.create(self);
  frmproduto_serial.showmodal;
  bgravar.setfocus;
end;

procedure Tfrmcompra_item.codigofornecedor1Click(Sender: TObject);
begin
  ed_cod_fornecedor.SetFocus;
end;

procedure Tfrmcompra_item.limparcodigoproduto1Click(Sender: TObject);
begin
  ecodproduto.Text := '';
end;

procedure Tfrmcompra_item.evalor_outrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra_item.bvalor_outrasClick(Sender: TObject);
begin
  frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := 0;

  if (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1152') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1102') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2102') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1403') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2403') then
  begin
    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '010') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '060') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '110') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '210') then

    begin
      if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '020') or
        (frmcompra.qrnota_item.fieldbyname('CST').asstring = '070') then
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').AsFloat := ((esubtotal.Value - edesconto.Value) +
          efrete.Value + eseguro.Value + eoutras.Value) - ebase_icms.Value; //+ evalor_ipi.Value;
      end
      else
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := ((esubtotal.Value - edesconto.Value) +
          efrete.Value + eseguro.Value + eoutras.Value); //+evalor_ipi.Value;
      end;
    end;
  end
  else
  begin
    if (frmcompra.qrnota_item.fieldbyname('CST').asstring = '040') or
      (frmcompra.qrnota_item.fieldbyname('CST').asstring = '030') then
    begin
      frmcompra.qrnota_item.fieldbyname('ICMS_ISENTO').AsFloat := ((esubtotal.Value - edesconto.Value) +
        efrete.Value + eseguro.Value + eoutras.Value) - ebase_icms.Value; //+ evalor_ipi.Value;
    end
    else
    begin
          (************** NAO TRIBUTADO *********************************)
      if(frmcompra.qrnota_item.fieldbyname('CST').asstring = '041') or
        (frmcompra.qrnota_item.fieldbyname('CST').asstring = '050') or
        (frmcompra.qrnota_item.fieldbyname('CST').asstring = '090') then
      begin
        frmcompra.qrnota_item.fieldbyname('ICMS_NAOTRIBUTADO').AsFloat := ((esubtotal.Value - edesconto.Value) +
          efrete.Value + eseguro.Value + eoutras.Value) - ebase_icms.Value; //+ evalor_ipi.Value;
      end
    end;
  end;

  if ((frmcompra.qrnota_item.fieldbyname('CST').asstring = '000') and (frmcompra.qrnota_item.fieldbyname('VALOR_ICMS').AsFloat = 0)) or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1553') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1653') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1556') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2352') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2556') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1407') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2407') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1303') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1253') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '1551') or
    (frmcompra.qrnota_item.fieldbyname('CFOP').asstring = '2551') then
  begin
    frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := ((esubtotal.Value - edesconto.Value) +
      efrete.Value + eseguro.Value + eoutras.Value); //+evalor_ipi.Value;
  end;

  if evalor_ipi.Value > 0 then
  begin
    frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat := frmcompra.qrnota_item.fieldbyname('ICMS_OUTRAS').AsFloat +
      evalor_ipi.Value;
  end;

end;

procedure Tfrmcompra_item.evalidadeExit(Sender: TObject);
begin
  eqtde.SetFocus;
end;

procedure Tfrmcompra_item.btnloteClick(Sender: TObject);
var lote_anterior: integer;
begin
  qrgrade_entrada.Close;
  qrgrade_entrada.SQL.Clear;
  qrgrade_entrada.SQL.Add('select * from CONTROLE_LOTES where CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
  qrgrade_entrada.ParamByName('CODPRODUTO').AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
  qrgrade_entrada.ParamByName('LOTE').AsString := elote.Text;
  qrgrade_entrada.Open;
  if qrgrade_entrada.RecordCount > 0 then
  begin
    lote_anterior := qrgrade_entrada.fieldByName('ESTOQUE').Value;
    qrgrade_entrada.Close;
    qrgrade_entrada.SQL.Clear;
    qrgrade_entrada.SQL.Add('update CONTROLE_LOTES set ESTOQUE =:ESTOQUE where CODPRODUTO = :CODPRODUTO AND LOTE = :LOTE');
    qrgrade_entrada.ParamByName('CODPRODUTO').AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
    qrgrade_entrada.ParamByName('LOTE').AsString := elote.Text;
    qrgrade_entrada.ParamByName('ESTOQUE').Value := lote_anterior + eqtde.Value;
    qrgrade_entrada.ExecSQL;
    DM.Coneccao.Commit;

  end
  else
  begin

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CONTROLE_LOTES');
   DM.ProxCod.Open;


    qrgrade_entrada.Insert;
    qrgrade_entrada.fieldbyname('codigo').ASINTEGER :=DM.ProxCodN_CODIGO.ASINTEGER + 1;
    qrgrade_entradaCODPRODUTO.AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring;
    qrgrade_entradaLOTE.AsString := elote.Text;
    qrgrade_entradaESTOQUE.Value := eqtde.Value;
    qrgrade_entrada.Post;
    DM.Coneccao.Commit;
  end;
end;

procedure Tfrmcompra_item.BtnAddProClick(Sender: TObject);
begin
     FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self); 
      FormProdutos.FormStyle := fsNormal;
      FormProdutos.Visible:= False;
      FormProdutos.btnLocalizar.Enabled :=False;
      FormProdutos.ShowModal;
end;

procedure Tfrmcompra_item.bfornecedor_codigoClick(Sender: TObject);
begin
 if ed_cod_fornecedor.Text <> '' then
  begin
    DM.qrfornecedor_codigo.Close;
    DM.qrfornecedor_codigo.sql.clear;
    DM.qrfornecedor_codigo.sql.add('select * from fornecedor_codigo where codigo = ''' + ed_cod_fornecedor.text + '''');
    DM.qrfornecedor_codigo.sql.add('and codfornecedor = ''' + frmcompra.ECODFORNECEDOR.Text + '''');
    DM.qrfornecedor_codigo.open;
    if DM.qrfornecedor_codigo.RecordCount = 0 then
    begin
      if application.messagebox('Referência do Fornecedor Não Encontrado! Deseja Grava-lo?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
      begin
        DM.qrfornecedor_codigo.Insert;
        DM.qrfornecedor_codigoCODFORNECEDOR.AsString := frmcompra.ECODFORNECEDOR.Text;
        DM.qrfornecedor_codigoCODIGO.AsString := ed_cod_fornecedor.Text;
        DM.qrfornecedor_codigoCODPRODUTO.AsString := frmcompra.qrnota_item.FieldByName('codigo_produto').asstring; 
        DM.qrfornecedor_codigoPRECO.AsFloat := frmcompra.qrnota_itemVALOR_UNI.AsFloat;
        DM.qrfornecedor_codigo.Post;
      end;
    end;
  end;

end;

procedure Tfrmcompra_item.Button1Click(Sender: TObject);
var
  vdesconto: double;
begin

  frmcompra.vbicms := 0;
  frmcompra.vvicms := 0;
  frmcompra.vbst := 0;
  frmcompra.vvst := 0;
  frmcompra.vfrete := 0;
  frmcompra.vseguro := 0;
  frmcompra.voutras := 0;
  frmcompra.vprodutos := 0;
  frmcompra.vtotal := 0;

  //frmcompra.qrnota_item.First;
  frmcompra.qrnota_item_lista.First;

  while not frmcompra.qrnota_item_lista.Eof do
  begin
    frmcompra.vbicms := frmcompra.vbicms + frmcompra.qrnota_item_lista.fieldbyname('BASE_ICMS').asfloat;
    frmcompra.vvicms := frmcompra.vvicms + frmcompra.qrnota_item_lista.fieldbyname('VALOR_ICMS').asfloat;
    frmcompra.vipi := frmcompra.vipi + frmcompra.qrnota_item_lista.fieldbyname('VALOR_IPI').asfloat;
    frmcompra.vbst := frmcompra.vbst + frmcompra.qrnota_item_lista.fieldbyname('BASE_ICMS_ST').asfloat;
    frmcompra.vvst := frmcompra.vvst + frmcompra.qrnota_item_lista.fieldbyname('VALOR_ICMS_ST').AsFloat;
    frmcompra.vfrete := frmcompra.vfrete + efrete.Value;
    frmcompra.vseguro := frmcompra.vseguro + eseguro.Value;
    frmcompra.voutras := frmcompra.voutras + eoutras.Value;
    frmcompra.vespecial := frmcompra.vespecial + eespecial.Value;
    frmcompra.vprodutos := frmcompra.vprodutos + frmcompra.qrnota_item_lista.fieldbyname('SUBTOTAL').asfloat;

    if frmcompra.rdesconto.Value > 0 then
    begin
      if frmcompra.XDESCONTO.Checked = True then
      BEGIN
        frmcompra.vtotal := {frmcompra.vtotal + } (frmcompra.vprodutos + frmcompra.vvst + frmcompra.vfrete + frmcompra.vseguro + frmcompra.voutras + frmcompra.vespecial + frmcompra.vipi) -
          frmcompra.rdesconto.Value;
        vdesconto := vdesconto + frmcompra.qrnota_item_lista.fieldbyname('valor_desc').AsFloat;
       end else
       BEGIN
        frmcompra.vtotal := {frmcompra.vtotal +} (frmcompra.vprodutos + frmcompra.vvst + frmcompra.vfrete + frmcompra.vseguro + frmcompra.voutras + frmcompra.vespecial + frmcompra.vipi);
        vdesconto := vdesconto + frmcompra.qrnota_item_lista.fieldbyname('valor_desc').AsFloat;
        end;
    end
    else
    begin
      vdesconto := vdesconto + frmcompra.qrnota_item_lista.fieldbyname('valor_desc').AsFloat;

    end;
    frmcompra.qrnota_item_lista.next;
  end;


  if vdesconto > 0 then
    frmcompra.vtotal :={ frmcompra.vtotal +} (frmcompra.vprodutos + frmcompra.vvst + frmcompra.vfrete + frmcompra.vseguro + frmcompra.voutras + frmcompra.vespecial + frmcompra.vipi) -
      vdesconto;

  frmcompra.edbicms.Value := frmcompra.vbicms;
  frmcompra.edvicms.Value := frmcompra.vvicms;
  frmcompra.edipi.Value := frmcompra.vipi;
  frmcompra.edbst.Value := frmcompra.vbst;
  frmcompra.edvst.Value := frmcompra.vvst;
  frmcompra.edfrete.Value := frmcompra.vfrete;
  frmcompra.edespecial.Value := frmcompra.vespecial;
  frmcompra.edseguro.Value := frmcompra.vseguro;
  frmcompra.edoutras.Value := frmcompra.voutras;
  frmcompra.edprodutos.Value := frmcompra.vprodutos;
  if frmcompra.rdesconto.Value > 0 then
    frmcompra.eddesconto.Value := frmcompra.rdesconto.Value
  else
    frmcompra.eddesconto.Value := vdesconto;

  frmcompra.edtotal.Value := frmcompra.vtotal;

  frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat := frmcompra.vtotal;
  frmcompra_menu.qrnota.fieldbyname('valor_DESCONTO').asfloat := vdesconto;
 frmcompra.Refresh;
end;

procedure Tfrmcompra_item.G1Click(Sender: TObject);
begin
bgravar.Click;
end;

procedure Tfrmcompra_item.FDvGlowButton1Click(Sender: TObject);
begin
Close;
end;

end.
