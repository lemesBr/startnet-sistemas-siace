unit Lista_comissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, aDvGlowButton, ExtCtrls, StdCtrls, Mask,  DB, frxClass, frxDBSet,
  frxDesgn, aDvReflectionImage, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit;

type
  TFormComissaoCategoria = class(TForm)
    lmarca: TLabel;
    combo_marca: TComboBox;
    Label2: TLabel;
    combo_grupo: TComboBox;
    Label9: TLabel;
    Bevel3: TBevel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    relABC: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsABC: TfrxDBDataset;
    query: TFDQuery;
    img: TAdvReflectionImage;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DataSource1: TDataSource;
    queryCODIGO_ID: TIntegerField;
    queryCODIGO_PROD: TIntegerField;
    queryCODIGO_PRODUTO: TStringField;
    queryCOMIS_AV: TBCDField;
    queryCOMIS_AP: TBCDField;
    queryDESCRICAO_PRODUTO: TStringField;
    queryVENDEDOR: TIntegerField;
    queryDATA_PEDIDO: TDateField;
    queryCATEGORIA: TIntegerField;
    queryCODIGO: TIntegerField;
    queryDESCRICAO: TStringField;
    queryUSERCAD: TStringField;
    queryDATACAD: TDateField;
    queryITEN: TIntegerField;
    queryCODIGO_CLIENTE: TIntegerField;
    queryNOME_CLIENTE: TStringField;
    queryPERC_AVISTA: TFMTBCDField;
    queryPERC_PRAZO: TFMTBCDField;
    queryPRECO_TOTAL: TFMTBCDField;
    queryDESCONTO: TFMTBCDField;
    querySUB_TOTAL: TFMTBCDField;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combo_marcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_marcaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComissaoCategoria: TFormComissaoCategoria;
  rtotal: real;
  VEND, CAT: string;

implementation

uses  principal, ModulodeDados, ConsUsuarios, ConsCategoria;

{$R *.dfm}

procedure TFormComissaoCategoria.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormComissaoCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  FormComissaoCategoria:= nil;
  
end;

procedure TFormComissaoCategoria.combo_marcaChange(Sender: TObject);
begin
  if combo_marca.Text = 'SELECIONAR' then
  begin

    FormConsUsuarios := tFormConsUsuarios.create(self);
    FormConsUsuarios.showmodal;
     RESULTADO_PESQUISA1 := dm.sds_usuarioscodigo.text;
     RESULTADO_PESQUISA2 := dm.SDS_UsuariosUSUARIO.text;
     VEND:= dm.sds_usuarioscodigo.text;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_marca.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    end
    else
      combo_marca.ItemIndex := 0;
  end;
end;

procedure TFormComissaoCategoria.FormShow(Sender: TObject);
begin
  combo_marca.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;
  rtotal := 0;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;
end;

procedure TFormComissaoCategoria.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormComissaoCategoria.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bimprimir.setfocus;
end;

procedure TFormComissaoCategoria.combo_grupoChange(Sender: TObject);
begin
 dm.sds_categoria.open;

  if combo_grupo.Text = 'SELECIONAR' then
  begin

    FormConsCategoria := tFormConsCategoria.create(self);
    FormConsCategoria.showmodal;

    RESULTADO_PESQUISA1 := dm.SDS_CATEGORIACODIGO.text;
    RESULTADO_PESQUISA2 := dm.SDS_CATEGORIADESCRICAO.text;
    CAT :=  dm.sds_categoriacodigo.text;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_grupo.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_grupo.ItemIndex := combo_grupo.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  end;
end;

procedure TFormComissaoCategoria.combo_marcaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormComissaoCategoria.combo_grupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormComissaoCategoria.bimprimirClick(Sender: TObject);
var
  vendedor, periodo, categoria: string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.qrrelatorio.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_marca.Text = 'TODOS' then
    vendedor := ''
  else
  begin
    vendedor := ' and i.vendedor = ''' + VEND + '''';
    dm.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING := 'VENDEDOR: ' +
      combo_marca.Text;
  end;
  if combo_grupo.Text = 'TODOS' then
    categoria := ''
  else
  begin
    categoria := ' and c.codigo = ''' + CAT + '''';
    dm.qrrelatorio.FIELDBYNAME('LINHA3').ASSTRING := 'CATEGORIA: ' +
      combo_grupo.Text;
  end;
  periodo := ' and v.data_pedido >= :datai and v.data_pedido <= :dataf ';
  dm.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' +
    DateEdit1.Text + ' A ' + DateEdit2.Text;


  query.close;
  query.sql.clear;
  query.sql.Add('select');
  query.sql.Add('i.codigo_id,');
  query.sql.Add('i.codigo_prod,');
  query.sql.Add('i.codigo_produto,');
  query.sql.Add('((i.preco_total - i.desconto) * c.PERC_AVISTA / 100) AS COMIS_AV,');
  query.sql.Add('((i.preco_total - i.desconto) * c.PERC_PRAZO / 100) AS COMIS_AP,');
  query.sql.Add('i.descricao_produto,');
  query.sql.Add('i.vendedor,');
  query.sql.Add('V.data_pedido,');
  query.sql.Add('i.iten, v.codigo_cliente, v.nome_cliente, ');
  query.sql.Add('i.preco_total,i.desconto, (i.preco_total - i.desconto) AS SUB_TOTAL,'); 
  query.sql.Add('p.categoria, c.* ');
  query.sql.Add('from');
  query.sql.Add('pedidos_itens i, pedidos v, produtos p, categorias c ');
  query.sql.Add('where i.codigo_prod  = p.codigo and ');
  query.sql.Add('p.categoria = c.codigo and ');
  query.sql.Add('i.codigo_id = v.codigo ');

  query.sql.Add(vendedor + categoria + periodo);

  query.ParamByName('datai').asdatetime := DateEdit1.Date;
  query.ParamByName('dataf').asdatetime := DateEdit2.Date;
  query.open;

  Application.ProcessMessages;

{  dm.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING :=
    'Relatório de Comisões por Categorias)'; }

  relABC.LoadFromFile('rel\comissoes_vendedor.fr3');
  relABC.ShowReport;
 // frmPrincipal.logUC('Abriu Relatorio Lista/ABC/Marca/Grupo', 0);
end;

procedure TFormComissaoCategoria.bitbtn1Click(Sender: TObject);
begin
  relABC.LoadFromFile('rel\comissoes_vendedor.fr3');
  relABC.designreport;
end;

end.
