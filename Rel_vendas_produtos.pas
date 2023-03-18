unit Rel_vendas_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, DB, Mask, RXCtrls, ExtCtrls,
  SUIDlg, IBCustomDataSet, IBQuery, RxToolEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormRel_vendas_produtos = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
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
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    ComboEdit1: TComboEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Panel1: TPanel;
    RxLabel3: TRxLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QBuscaAfericao: TFDQuery;
    DTSQBuscaafericao: TDataSource;
    Panel2: TPanel;
    RxLabel4: TRxLabel;
    Panel7: TPanel;
    RxLabel5: TRxLabel;
    ComboEdit2: TComboEdit;
    Edit2: TEdit;
    Panel8: TPanel;
    RxLabel6: TRxLabel;
    Panel9: TPanel;
    RxLabel8: TRxLabel;
    ComboEdit3: TComboEdit;
    Panel10: TPanel;
    RxLabel9: TRxLabel;
    Panel11: TPanel;
    categoria2: TRxLabel;
    ComboEdit4: TComboEdit;
    QBuscaAfericaoCODIGO: TIntegerField;
    QBuscaAfericaoDATA: TDateField;
    QBuscaAfericaoCODIGO_PROD: TIntegerField;
    QBuscaAfericaoQUANTIDADE: TIBBCDField;
    QBuscaAfericaoVALOR_UNITARIO: TIBBCDField;
    QBuscaAfericaoVALOR_TOTAL: TIBBCDField;
    QBuscaAfericaoUSERCAD: TIBStringField;
    QBuscaAfericaoDATACAD: TDateField;
    QBuscaAfericaoCOD_USUARIO: TIntegerField;
    QBuscaAfericaoDESCRICAO: TIBStringField;
    QBuscaAfericaoCODIGO_BARRAS: TIBStringField;
    QBuscaAfericaoPRECO_VENDA: TIBBCDField;
    QBuscaAfericaoPRECO_VENDA2: TIBBCDField;
    QBuscaAfericaoPRECO_CUSTO: TIBBCDField;
    procedure btnSuibtton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure y(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboEdit2Exit(Sender: TObject);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure ComboEdit2Enter(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure ComboEdit2Change(Sender: TObject);
    procedure ComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit3ButtonClick(Sender: TObject);
    procedure ComboEdit3Exit(Sender: TObject);
    procedure ComboEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit4ButtonClick(Sender: TObject);
    procedure ComboEdit4Exit(Sender: TObject);
    procedure ComboEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_vendas_produtos: TFormRel_vendas_produtos;

implementation

uses ModulodeDadosConsultas3, RelVendasProdutos, ConsProdutos,
  ModulodeDados, Principal, Z_RotinasGerais, relvendasProdutos_clientes, ModuleDados1,
  ConsClientes, ConsGrupos, ConsCategoria;

var  sSql : string;

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

procedure TFormRel_vendas_produtos.btnSuibtton1Click(Sender: TObject);
var
  inicio, final, nome :string;
  produto,prod, serv, dia, cliente, grupo,CATEG: string;
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

dia:=datetostr(DATE);

inicio:=dateedit1.TexT;
final:=dateedit2.TexT;

//POR CODIGO
produto := ComboEdit1.Text;
nome := Edit1.Text;
prod := 'P';
serv := 'S';
cliente := ComboEdit2.Text;
grupo :=  ComboEdit3.Text;
CATEG :=  ComboEdit4.Text;

if CheckBox1.Checked = false then
BEGIN
DMC3.cds_vendas_prod_cliente.Active :=FALSE;
DMC3.Qry_Vendas_prod_cliente.close;
DMC3.Qry_Vendas_prod_cliente.SQL.Clear;
DMC3.Qry_Vendas_prod_cliente.SQL.add('select * from V_VENDAS_CLIENTE_PRODUTOS where CODIGO >0'+'');
if produto > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and CODIGO_PROD ='+QuotedStr(produto)+'');
if cliente > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and CODIGO_CLIENTE ='+QuotedStr(cliente)+'');
if inicio > ' / /   ' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if CheckBox2.Checked = true then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and prod_serv ='+QuotedStr(prod)+'');
if CheckBox3.Checked = true then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and prod_serv ='+QuotedStr(serv)+'');
if nome > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and DESCRICAO_PRODUTO ='+ QuotedStr(nome)+'');
if categ > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CATEGORIA ='+ QuotedStr(categ)+'');
if grupo > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CODIGO_GRUPO ='+ QuotedStr(grupo));
DMC3.Qry_Vendas_prod_cliente.Open;
DMC3.cds_vendas_prod_cliente.Active :=true;

IF NOT DMC3.cds_vendas_prod_cliente.Eof then
BEGIN
FormVendas_Produtos := TFormVendas_Produtos.Create(self);
FormVendas_Produtos.RLReport1.Prepare;
FormVendas_Produtos.RLReport1.PreviewModal;
end else
ShowMessage('Não ha dados para emitir');
end else

if CheckBox1.Checked = true then
begin
DM1.QBuscaAfericao.Close;
DMC3.CDS_relVendas_produtos.Active :=FALSE;
DMC3.Qry_relVendas_produtos.close;
DMC3.Qry_relVendas_produtos.SQL.Clear;
DMC3.Qry_relVendas_produtos.SQL.add('select * from V_PRODUTOS_VENDAS where CODIGO >0'+'');
if produto > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CODIGO_PROD ='+QuotedStr(produto)+'');
if cliente > '' then
DMC3.Qry_Vendas_prod_cliente.SQL.add('and CODIGO_CLIENTE ='+QuotedStr(cliente)+'');
if inicio > ' / /   ' then
DMC3.Qry_relVendas_produtos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if CheckBox2.Checked = true then
DMC3.Qry_relVendas_produtos.SQL.add('and prod_serv ='+QuotedStr(prod)+'');
if CheckBox3.Checked = true then
DMC3.Qry_relVendas_produtos.SQL.add('and prod_serv ='+QuotedStr(serv)+'');
if nome > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and DESCRICAO_PRODUTO ='+ QuotedStr(nome)+'');
if categ > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CATEGORIA ='+ QuotedStr(categ)+'');
if grupo > '' then
DMC3.Qry_relVendas_produtos.SQL.add('and CODIGO_GRUPO ='+ QuotedStr(grupo));
DMC3.Qry_relVendas_produtos.Open;
DMC3.CDS_relVendas_produtos.Active :=true;

if CheckBox4.Checked = True then
begin
{if inicio > ' / /   ' then
DM1.QBuscaAfericao.Open;
DM1.QBuscaAfericao.Filtered := false;
DM1.QBuscaAfericao.Filter := 'DATA <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dia))));
DM1.QBuscaAfericao.Filtered := True;  }
{if produto > '' then
DM1.QBuscaAfericao.Open;
DM1.QBuscaAfericao.Filtered := false;
DM1.QBuscaAfericao.Filter := 'DATA <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dia))))+'and CODIGO_PROD ='+QuotedStr(produto)+'';
DM1.QBuscaAfericao.Filtered := True;}
if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with QBuscaAfericao do
      begin
         close;
         sql.Clear;
         sql.Text:= sSql;
           begin
                  sql.Add(' WHERE A.DATA BETWEEN :DATAINI AND :DATAFIN');
                  if produto > '' then
                     begin
                        sql.Add(' AND A.CODIGO_PROD = :CODPRO');
                        Parambyname('codPRO').AsInteger:= StrToInt(ComboEdit1.Text);
                     end;
                  sql.Add(' ORDER BY A.DATA');
                  Parambyname('dataini').AsDate:=  DateEdit1.Date;
                  Parambyname('datafin').AsDate:=  DateEdit2.Date;
                  open;
               end;
      end;
end;

IF NOT DMC3.CDS_relVendas_produtos.Eof then
BEGIN
FormRelVendasProd := TFormRelVendasProd.Create(self);
FormRelVendasProd.RLReport1.Prepare;
FormRelVendasProd.RLReport1.PreviewModal;
end else
ShowMessage('Não ha dados para emitir');
end;
end;
end;


procedure TFormRel_vendas_produtos.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
ComboEdit1.Clear;
ComboEdit2.Clear;
Edit1.Clear;
CheckBox1.Checked := False;
CheckBox2.Checked := False;
CheckBox3.Checked := False;
RxLabel7.Caption := 'Produto';
RxLabel5.Caption := 'Cliente';

end;

procedure TFormRel_vendas_produtos.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormRel_vendas_produtos.y(Sender: TObject);
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

procedure TFormRel_vendas_produtos.ComboEdit1Change(Sender: TObject);
begin
{DM.SDS_PRODUTOS.Active:= False;
DM.SDS_PRODUTOS.Active:= True;

If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS',ComboEdit1.Text,[])=True then
begin
DM.SDS_PRODUTOS.Locate('CODIGO_BARRAS',ComboEdit1.Text,[loCaseinSensitive]);
RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text; }
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT2.Text:='';
end;
//end;

procedure TFormRel_vendas_produtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormRel_vendas_produtos:=nil;
end;

procedure TFormRel_vendas_produtos.ComboEdit1Exit(Sender: TObject);
begin
corsaida(Sender);
{If DM.SDS_PRODUTOS.locate('CODIGO',ComboEdit1.Text,[])=True then
begin
DM.SDS_PRODUTOS.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
end; }
END;

procedure TFormRel_vendas_produtos.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
  var
    ativo: string;
begin
if (Key=#13) then
begin
ativo :='A';

if edit2.Text='LETRAS' THEN
BEGIN

 if ComboEdit1.Text > '' then
 begin
 FormConsProdutos:=NIL;
 FormConsProdutos:=TFormConsProdutos.Create(self);
 FormConsProdutos.Edit1.Text := ComboEdit1.Text;
 FormConsProdutos.Showmodal;

 if DM.SDS_PRODUTOS.RecordCount > 0 then
 begin
 ComboEdit1.Text := DM.SDS_PRODUTOSCODIGO.Text;
 RxLabel7.Caption := DM.SDS_PRODUTOSDESCRICAO.Text;
 end;
end;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
if ComboEdit1.Text > '' then
 begin
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.sql.clear;
 DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc');
 dm.SDS_PRODUTOS.Active := True;
 ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 DM.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

      If DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
       ComboEdit1.TEXT := DM.SDS_PRODUTOSCODIGO.Text;
       RxLabel7.Caption := DM.SDS_PRODUTOSDESCRICAO.Text;
      end else
      If not DM.SDS_PRODUTOS.locate('CODIGO_BARRAS', ComboEdit1.Text,[])=True then
      begin
       FormConsProdutos:=NIL;
       FormConsProdutos:=TFormConsProdutos.Create(self);
       FormConsProdutos.Edit1.Text := ComboEdit1.Text;
       FormConsProdutos.Showmodal;
       ComboEdit1.TEXT := DM.SDS_PRODUTOSCODIGO.Text;
       RxLabel7.Caption := DM.SDS_PRODUTOSDESCRICAO.Text;
      end;
      end;

end;
end;
end;


procedure TFormRel_vendas_produtos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TComboEdit) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormRel_vendas_produtos.CheckBox2Click(Sender: TObject);
begin
CheckBox3.Checked := False;
end;

procedure TFormRel_vendas_produtos.CheckBox3Click(Sender: TObject);
begin
CheckBox2.Checked := False;

end;

procedure TFormRel_vendas_produtos.FormShow(Sender: TObject);
begin
  sSql := QBuscaAfericao.SQL.Text;
end;

procedure TFormRel_vendas_produtos.ComboEdit2Exit(Sender: TObject);
var
  achou : Boolean;
begin
corsaida(Sender);
 
end;

procedure TFormRel_vendas_produtos.ComboEdit2ButtonClick(Sender: TObject);
begin
Try
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      ComboEdit2.Clear;
      ComboEdit2.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Clientes!!');
end;

end;

procedure TFormRel_vendas_produtos.ComboEdit2Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRel_vendas_produtos.ComboEdit1Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRel_vendas_produtos.Edit1Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRel_vendas_produtos.DateEdit1Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRel_vendas_produtos.DateEdit2Enter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRel_vendas_produtos.DateEdit1Exit(Sender: TObject);
begin
corsaida(Sender);
end;

procedure TFormRel_vendas_produtos.DateEdit2Exit(Sender: TObject);
begin
corsaida(Sender);
end;

procedure TFormRel_vendas_produtos.Edit1Exit(Sender: TObject);
begin
corsaida(Sender);
end;

procedure TFormRel_vendas_produtos.ComboEdit2Change(Sender: TObject);
begin
IF (ComboEdit2.Text>='A') AND (ComboEdit2.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit2.Text>='0') AND (ComboEdit2.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit2.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormRel_vendas_produtos.ComboEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',ComboEdit2.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ComboEdit2ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel5.Caption :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  ComboEdit2.Text     := DM.SDS_ClientesCODIGO.Text;
  btnSuibtton1.SetFocus;
   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Comboedit2.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 ComboEdit2.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + ComboEdit2.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(Comboedit2.Text),[]);
  Comboedit2.Text := RemoveChar(Comboedit2.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Comboedit2.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel5.Caption   := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  ComboEdit2.Text     := DM.SDS_ClientesCODIGO.Text;
    btnSuibtton1.SetFocus;
 end;
 end;

end;
end;

procedure TFormRel_vendas_produtos.ComboEdit3ButtonClick(Sender: TObject);
begin
 Try
   DM.SDS_Grupos.Open;
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Tela de Consulta de Grupos!!');
end;
ComboEdit3.Clear;
RxLabel8.Caption:= DM.SDS_GruposDESCRICAO.Text;
ComboEdit3.Text:= DM.SDS_GruposCodigo.AsString;
end;

procedure TFormRel_vendas_produtos.ComboEdit3Exit(Sender: TObject);
begin
if ComboEdit3.Text >'' then
begin
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([ComboEdit3.Text]),[])) then
begin
ComboEdit3.Clear;
RxLabel8.Caption:= DM.SDS_GruposDESCRICAO.Text;
ComboEdit3.Text:= DM.SDS_GruposCodigo.AsString;
end else begin
ShowMessage('Grupo Inexistente !!!');

if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
ComboEdit3.Clear;
RxLabel8.Caption:= DM.SDS_GruposDESCRICAO.Text;
ComboEdit3.Text:= DM.SDS_GruposCodigo.AsString;
end;
end;
end;

procedure TFormRel_vendas_produtos.ComboEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key = #13 then
begin
if ComboEdit3.Text > '' then
begin
DM.SDS_Grupos.Open;
DM.SDS_Grupos.Refresh;
if (DM.SDS_Grupos.Locate('CODIGO',VarArrayOf([ComboEdit3.Text]),[])) then
begin
ComboEdit3.Clear;
RxLabel8.Caption:= DM.SDS_GruposDESCRICAO.Text;
ComboEdit3.Text:= DM.SDS_GruposCodigo.AsString;
end else begin
ShowMessage('Grupo Inexistente !!!');

if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
ComboEdit3.Clear;
RxLabel8.Caption:= DM.SDS_GruposDESCRICAO.Text;
ComboEdit3.Text:= DM.SDS_GruposCodigo.AsString;
end;

end;
end;
end;

procedure TFormRel_vendas_produtos.ComboEdit4ButtonClick(Sender: TObject);
begin
 Try
if FormConscategoria=nil   then
    begin
    FormConscategoria:=TFormConscategoria.Create(self);
      FormConscategoria.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
ComboEdit4.Clear;
categoria2.Caption:= DM.SDS_CATEGORIADESCRICAO.Text;
ComboEdit4.Text:= DM.SDS_CATEGORIACODIGO.AsString;

end;

procedure TFormRel_vendas_produtos.ComboEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
IF ComboEdit4.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  ComboEdit4.Text := '';
  ComboEdit4.SetFocus;
end ELSE

if ComboEdit4.Text = '' then
begin
ComboEdit4.Clear;
end else
begin
DM.SDS_CATEGORIA.Open;
DM.SDS_CATEGORIA.Refresh;
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([ComboEdit4.Text]),[])) then
begin
Categoria2.Caption:= DM.SDS_CATEGORIADESCRICAO.Text;
ComboEdit4.Text:= DM.SDS_CATEGORIACODIGO.AsString;
end else
begin
ShowMessage('Categoria Inexistente !!!');
if FormConsCategoria=nil   then
    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.Showmodal;
      end;
ComboEdit4.Clear;
Categoria2.Caption:= DM.SDS_CATEGORIADESCRICAO.Text;
ComboEdit4.Text:= DM.SDS_CATEGORIACODIGO.AsString;
end;
end;

end;

procedure TFormRel_vendas_produtos.ComboEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
IF ComboEdit4.TEXT > '999999' then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  ComboEdit4.Text := '';
  ComboEdit4.SetFocus;
end ELSE

if ComboEdit4.Text = '' then
begin
ComboEdit4.Clear;
end else
begin
DM.SDS_CATEGORIA.Open;
DM.SDS_CATEGORIA.Refresh;
if (DM.SDS_CATEGORIA.Locate('CODIGO',VarArrayOf([ComboEdit4.Text]),[])) then
begin
Categoria2.Caption:= DM.SDS_CATEGORIADESCRICAO.Text;
ComboEdit4.Text:= DM.SDS_CATEGORIACODIGO.AsString;
end else
begin
ShowMessage('Categoria Inexistente !!!');
if FormConsCategoria=nil   then
    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.Showmodal;
      end;
ComboEdit4.Clear;
Categoria2.Caption:= DM.SDS_CATEGORIADESCRICAO.Text;
ComboEdit4.Text:= DM.SDS_CATEGORIACODIGO.AsString;
end;
end;
end;
end;

end.
