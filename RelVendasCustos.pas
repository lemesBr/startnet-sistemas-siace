unit RelVendasCustos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, StdCtrls, DB, Mask, RXCtrls, RxToolEdit;

type
  TFormVendas_Custos = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel3: TPanel;
    btnSuibtton1: TsuiButton;
    suiButton3: TsuiButton;
    suiButton1: TsuiButton;
    Bevel1: TBevel;
    Image1: TImage;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    ComboEdit1: TComboEdit;
    Panel1: TPanel;
    RxLabel3: TRxLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    procedure btnSuibtton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendas_Custos: TFormVendas_Custos;

implementation

uses ModulodeDadosConsultas3, Relvendas_custos, VendasCustos_p,
  ModulodeDados, ConsProdutos, Principal;

{$R *.dfm}

procedure TFormVendas_Custos.btnSuibtton1Click(Sender: TObject);
var
  inicio, final, nome :string;
  produto : string;
  begin

   If DateEdit2.Date < DateEdit1.Date Then
   begin
   ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
  DateEdit2.Date := DateEdit1.Date;
end
Else
begin
  // por data
inicio:=datetostr(DATE);
final:=datetostr(DATE);

inicio:=dateedit1.TexT;
final:=dateedit2.TexT;

//POR CODIGO
produto := ComboEdit1.Text;
nome := Edit1.Text;

if CheckBox1.Checked = false then
BEGIN
DMC3.cds_vendas_prod_cliente.Active :=FALSE;
DMC3.Qry_Vendas_prod_cliente.close;
DMC3.Qry_Vendas_prod_cliente.SQL.Clear;
DMC3.Qry_Vendas_prod_cliente.SQL.add('select * from V_VENDAS_CLIENTE_PRODUTOS where CODIGO >0'+'');
if produto > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and CODIGO_PROD ='+QuotedStr(produto)+'');
if inicio > ' / /   ' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if nome > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and DESCRICAO_PRODUTO ='+ QuotedStr(nome));
DMC3.Qry_Vendas_prod_cliente.Open;
DMC3.cds_vendas_prod_cliente.Active :=true;

IF NOT DMC3.cds_vendas_prod_cliente.Eof then
BEGIN
FormRelVendas_custos := TFormRelVendas_custos.Create(self);
FormRelVendas_custos.RLReport1.Prepare;
FormRelVendas_custos.RLReport1.PreviewModal;
end else
ShowMessage('Não ha dados para emitir');
end else
if CheckBox1.Checked = true then
begin
DMC3.CDS_relVendas_produtos.Active :=FALSE;
DMC3.Qry_relVendas_produtos.close;
DMC3.Qry_relVendas_produtos.SQL.Clear;
DMC3.Qry_relVendas_produtos.SQL.add('select * from V_PRODUTOS_VENDAS where CODIGO >0'+'');
if produto > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CODIGO_PROD ='+QuotedStr(produto)+'');
if inicio > ' / /   ' then
DMC3.Qry_relVendas_produtos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if nome > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and DESCRICAO_PRODUTO ='+ QuotedStr(nome));
DMC3.Qry_relVendas_produtos.Open;
DMC3.CDS_relVendas_produtos.Active :=true;
IF NOT DMC3.CDS_relVendas_produtos.Eof then
BEGIN
FormVendas_CustosP := TFormVendas_CustosP.Create(self);
FormVendas_CustosP.RLReport1.Prepare;
FormVendas_CustosP.RLReport1.PreviewModal;
end else
ShowMessage('Não ha dados para emitir');
end;
end;
end;


procedure TFormVendas_Custos.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
ComboEdit1.Clear;
Edit1.Clear;
end;

procedure TFormVendas_Custos.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormVendas_Custos.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key=#13) then
begin
{DM.SDS_PRODUTOS.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
end else
if not DM.SDS_PRODUTOS.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]) then
begin
  ShowMessage('Produto nao localizado....');
  end;           }

   If DM.Sds_produtos.locate('CODIGO', ComboEdit1.Text,[])=True then
      begin
      RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
      end else
      If not DM.Sds_produtos.locate('CODIGO', ComboEdit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       ComboEdit1.SetFocus;
      end;
end;

end;

procedure TFormVendas_Custos.ComboEdit1Exit(Sender: TObject);
begin
If DM.SDS_PRODUTOS.locate('CODIGO',ComboEdit1.Text,[])=True then
begin
DM.SDS_PRODUTOS.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
end;
end;

procedure TFormVendas_Custos.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsProdutos=nil   then
    begin
     FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.ShowModal;
      ComboEdit1.Text:= DM.SDS_PRODUTOSCODIGO.Text;
      RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Produtos!!');
end;
{DM.SDS_PRODUTOS.Active:= False;
DM.SDS_PRODUTOS.Active:= True;

      If DM.SDS_PRODUTOS.locate('CODIGO',ComboEdit1.Text,[])=True then
begin
DM.SDS_PRODUTOS.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
end;}

end;

procedure TFormVendas_Custos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormVendas_Custos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
