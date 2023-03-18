unit lista_imovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB,  frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, aDvGlowButton,
  aDvReflectionImage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxGradient,
  RxToolEdit, AdvPanel;

type
  Tfrmlista_imovel = class(TForm)
    Bevel3: TBevel;
    Panel1: TAdvPanel;
    pnl1: TAdvPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    combo_relatorio: TComboBox;
    combo_fornecedor: TComboBox;
    combo_situacao: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    fximovies: TfrxReport;
    frxDBImoveis: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrimoveis: TFDQuery;
    img: TAdvReflectionImage;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrimoveisID: TIntegerField;
    qrimoveisID_PRODUTOS: TIntegerField;
    qrimoveisVALOR_ALUGUEL: TBCDField;
    qrimoveisVALOR_VENDA: TBCDField;
    qrimoveisCOD_IPTU: TStringField;
    qrimoveisCOD_AGUA: TStringField;
    qrimoveisCOD_ENERGIA: TStringField;
    qrimoveisAGUA_ATIVO: TStringField;
    qrimoveisENERGIA_ATIVO: TStringField;
    qrimoveisDATA_ENERGIA: TDateField;
    qrimoveisDATA_AGUA: TDateField;
    qrimoveisPLACA: TStringField;
    qrimoveisPLACA_NUMERO: TIntegerField;
    qrimoveisPLACA_REFERENCIA: TStringField;
    qrimoveisCARTORIO: TStringField;
    qrimoveisMATRICULA: TStringField;
    qrimoveisAREA_TERRENO: TIntegerField;
    qrimoveisLADO_ESQUERDO: TIntegerField;
    qrimoveisLADO_DIREIRO: TIntegerField;
    qrimoveisCIDADE: TStringField;
    qrimoveisCEP: TStringField;
    qrimoveisUF: TStringField;
    qrimoveisCOD_INGE: TStringField;
    qrimoveisENDERECO: TStringField;
    qrimoveisNUMERO: TIntegerField;
    qrimoveisBAIRRO: TStringField;
    qrimoveisSITUACAO: TStringField;
    qrimoveisDESCRICAO: TStringField;
    qrimoveisPRECO_VENDA: TBCDField;
    qrimoveisCUSTO_MEDIO: TBCDField;
    qrimoveisPRECO_CUSTO: TBCDField;
    combo_periodo: TComboBox;
    qrimoveisDATACAD: TDateField;
    qrimoveisUSERCAD: TStringField;
    qrimoveisDATAULTALTERACAO: TDateField;
    qrimoveisTESTADA: TIntegerField;
    qrimoveisPROFUNDIDADE: TIntegerField;
    qrimoveisN_LOTE: TStringField;
    qrimoveisQUADRA: TStringField;
    qrimoveisN_SUITES: TIntegerField;
    qrimoveisN_QUARTOS: TIntegerField;
    qrimoveisN_SALAS: TIntegerField;
    qrimoveisN_BANHEIROS: TIntegerField;
    qrimoveisN_GARAGENS: TIntegerField;
    qrimoveisDESC_UNIDADE: TStringField;
    qrimoveisABREVIADO: TStringField;
    frxGradientObject1: TfrxGradientObject;
    procedure combo_fornecedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_imovel: Tfrmlista_imovel;
  juro_taxa, juro_multa, total_original, total_juros: real;
  juro_carencia , cod_for, cod_conta: integer;
  data_caixa: tdatetime;

implementation

uses  principal, ModulodeDados, Ubibli1, ConsPlanoContas, xloc_fornecedor,
  ConsCidades;

{$R *.dfm}
function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;
procedure Tfrmlista_imovel.combo_fornecedorChange(Sender: TObject);
begin
  if combo_FORNECEDOR.Text = 'SELECIONAR' then
  begin
  FormConscidades:=TFormConscidades.Create(self);
    FormConscidades.ShowModal;

  dm.Sds_cidades.locate('COD_CIDADE', RemoveChar(RESULTADO_PESQUISA1),[]);

  resultado_pesquisa1 := DM.Sds_cidadesCOD_CIDADE.Text;
  resultado_pesquisa2 := DM.Sds_cidadesNOME.Text;

  cod_for :=  DM.Sds_cidadesCOD_CIDADE.AsInteger;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_FORNECEDOR.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_FORNECEDOR.ItemIndex := combo_FORNECEDOR.Items.Count - 1;
    end
    else
      COMBO_FORNECEDOR.ItemIndex := 0;
  end;
end;

procedure Tfrmlista_imovel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_imovel.FormShow(Sender: TObject);
begin

  dm.sds_usuarios.LOCATE('CODIGO', '99', [LOCASEINSENSITIVE]);
  data_caixa := dm.sds_usuarios.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;
 // combo_CONTA.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
 // combo_periodo.ItemIndex := 0;
  dateedit1.Date := date;
  dateedit2.date := date;

{
RELAÇÃO AGRUPADA POR FORNECEDOR
RELAÇÃO AGRUPADA POR CONTA
RESUMO POR FORNECEDOR
BALANCETE FINANCEIRO
}

end;

procedure Tfrmlista_imovel.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_imovel.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_imovel.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_imovel.bimprimirClick(Sender: TObject);
var FORNECEDOR, CONTA, situacao, periodo, ordem: string;
begin
  dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin FORNECEDOR := ' and cidade = ''' + combo_fornecedor.Text + ''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: ' + COMBO_FORNECEDOR.TEXT; end;
//  if combo_CONTA.Text = 'TODOS' then CONTA := '' else begin CONTA := ' and CODCONTA = ''' + IntToStr(cod_conta) + ''''; dm.qrrelatorio.fieldbyname('LINHA4').asstring := 'CONTA: ' + COMBO_CONTA.TEXT; end;

  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and situacao = ALUGAR ';
    if COMBO_SITUACAO.ITEMINDEX = 2 then situacao := ' and situacao = ALUGADO ';
    if COMBO_SITUACAO.ITEMINDEX = 3 then situacao := ' and situacao = VENDER ';
    if COMBO_SITUACAO.ITEMINDEX = 4 then situacao := ' and situacao = VENDIDO ';
    if COMBO_SITUACAO.ITEMINDEX = 5 then situacao := ' and situacao = EM CONSTRUCAO ';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'SITUAÇÃO: ' + COMBO_SITUACAO.TEXT;
  end;

  if combo_periodo.text = 'DATA DE CADASTRO' then
  begin
    periodo := ' DATACAD >= :datai and DATACAD <= :dataf ';
    ordem := 'DATACAD'; //, CP.codigo';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO CADASTRAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE ALTERAÇÃO' then
  begin
    periodo := ' DATAULTALTERACAO >= :datai and DATAULTALTERACAO <= :dataf ';
    ordem := 'DATAULTALTERACAO'; //, CP.codigo';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA ALTERAÇÃO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  IF combo_relatorio.ItemIndex = 0 then
  BEGIN
    qrimoveis.close;
    qrimoveis.sql.clear;
    qrimoveis.sql.add('select * from V_PRODUTOS_IMOVEL where ' + periodo + FORNECEDOR + conta + situacao + ' order by ' + ordem);
    qrimoveis.Params.ParamByName('datai').asdatetime := dateedit1.date;
    qrimoveis.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrimoveis.open;
    qrimoveis.REFRESH;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE IMÓVEIS';
    fximovies.LoadFromFile('\siace\rel\imoveis.fr3');
    fximovies.ShowReport;
  end;

{  IF combo_relatorio.ItemIndex = 1 then
  begin
    QrImoveis_Contrato.close;
    QrImoveis_Contrato.sql.clear;
    QrImoveis_Contrato.sql.add('select * from v_contas_apagar where ' + periodo + FORNECEDOR + conta + situacao + ' order by ' + ordem);
    QrImoveis_Contrato.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QrImoveis_Contrato.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QrImoveis_Contrato.open;
    QrImoveis_Contrato.REFRESH;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE IMÓVIES COM C0NTRATOS';
    frxReport1.LoadFromFile('\siace\rel\imoveis_c.fr3');
    frxReport1.ShowReport;
  end;   }

end;

procedure Tfrmlista_imovel.BitBtn1Click(Sender: TObject);
begin
{  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end; }

 { if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    frxReport1.LoadFromFile('\iCloud\server\rel\f000063.fr3');
    frxReport1.designreport;
  end;  }

end;

end.
