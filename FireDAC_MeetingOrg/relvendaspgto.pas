unit relvendaspgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, SUIButton,  Mask, RXCtrls, RxCurrEdit,
  RxToolEdit;

type
  TFormVendasPagto = class(TForm)
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    ComboEdit1: TComboEdit;
    Panel3: TPanel;
    btnSuibtton1: TsuiButton;
    suiButton3: TsuiButton;
    suiButton1: TsuiButton;
    suiCheckBox1: TsuiCheckBox;
    suiCheckBox2: TsuiCheckBox;
    suiCheckBox5: TsuiCheckBox;
    Panel2: TPanel;
    rxlbl3: TRxLabel;
    pnl2: TPanel;
    RXLabel6: TRxLabel;
    Cliente: TComboEdit;
    Panel1: TPanel;
    RxLabel5: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Edit1: TEdit;
    EvNumEdit1: TCurrencyEdit;
    EvNumEdit2: TCurrencyEdit;
    Image1: TImage;
    Edit2: TEdit;
    Bevel1: TBevel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btnSuibtton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasPagto: TFormVendasPagto;

implementation

uses ModulodeDadosConsultas3, ConsUsuarios, ModulodeDados, ConsClientes,
  RelVendasPagto;

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
procedure TFormVendasPagto.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormVendasPagto.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Cliente.Clear;
EvNumEdit1.Clear;
EvNumEdit2.Clear;
ComboEdit1.clear;
//ComboEdit2.Clear;
//ComboEdit3.Clear;
//DasteEdit3.Clear;
//sDateEdit4.Clear;
end;

procedure TFormVendasPagto.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
        RXLabel7.Caption:= DM.SDS_UsuariosUSUARIO.Text;
        ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
end;

procedure TFormVendasPagto.ComboEdit1Exit(Sender: TObject);
begin
IF ComboEdit1.Text > '' then
BEGIN
If DM.SDS_Usuarios.locate('CODIGO',ComboEdit1.Text,[])=True then
       begin
        DM.SDS_usuarios.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
        RXLabel7.Caption:= DM.SDS_UsuariosUSUARIO.Text;
     //   ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
      end;
end;
end;

procedure TFormVendasPagto.ClienteButtonClick(Sender: TObject);
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
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Clientes!!');
end;
//DM.SDS_Clientes.Active:= False;
//DM.SDS_Clientes.Active:= True;

      If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
end;
end;

procedure TFormVendasPagto.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormVendasPagto.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key= #13 then
begin
if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  clienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel6.Caption := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text     := DM.SDS_ClientesCODIGO.Text;
  btnSuibtton1.SetFocus;
  end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 cliente.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
  cliente.Text := RemoveChar(cliente.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
cliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel6.Caption   := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text       := DM.SDS_ClientesCODIGO.Text;
  btnSuibtton1.SetFocus;
 end;
 end;
end;

end;

procedure TFormVendasPagto.btnSuibtton1Click(Sender: TObject);
var
  inicio, final, codcli, Nvenda, vendedor,  produto, forn, grupo :string;
  valor1, valor2 : Currency;
  A, B, C, D, E,t, g: Real;
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

//cliente
codcli:=Cliente.text;
//produto:= ComboEdit1.text;
//forn := comboedit2.text;
//grupo := comboedit3.text;
 // por vernda e valor
Nvenda := edit1.text;
valor1:= EvNumEdit1.Value;
valor2:= EvNumEdit2.Value;
vendedor:= ComboEdit1.Text;

if inicio > ' / /   ' then
BEGIN
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_cond_pagto.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if vendedor > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and Cod_Vendedor ='+(Vendedor)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+currtostr(VALOR2)+'');
DMC3.QryRelVendas_pedidos.SQL.add('order by codigo asc ');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.sds_cond_pagto.Active :=true;


DMC3.sds_cond_pagto.First;
DMC3.Cds_Relvendas_pedidos.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
t:= 0;
if DMC3.sds_cond_pagtoTIPO.AsString = 'A' then
A:= A + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'C' then
B:= B + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'H' then
C:= C + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'F' then
D:= D + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'V' then
E:= E + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.Cds_RelVendas_pedidosCODIGO.AsInteger > 0 then
T:= T + DMC3.Cds_RelVendas_pedidosValor_Troco.AsFloat;
DMC3.sds_cond_pagto.Next;
DMC3.Cds_Relvendas_pedidos.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
CurrencyEdit6.Text:= FloatToStr(T);
g:= (a+b+c+d+e-t);
CurrencyEdit7.Text:=  FloatToStr(g);
While not DMC3.sds_cond_pagto.Eof do
begin
DMC3.sds_cond_pagto.First;
if DMC3.sds_cond_pagtoTIPO.AsString = 'A' then
A:= A + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'C' then
B:= B + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'H' then
C:= C + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'F' then
D:= D + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.sds_cond_pagtoTIPO.AsString = 'V' then
E:= E + DMC3.sds_cond_pagtoVALOR.AsFloat;
if DMC3.Cds_RelVendas_pedidosCODIGO.AsInteger > 0 then
T:= T + DMC3.Cds_RelVendas_pedidosValor_Troco.AsFloat;
DMC3.sds_cond_pagto.Next;
DMC3.Cds_Relvendas_pedidos.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
CurrencyEdit6.Text:= FloatToStr(T);
g:= (a+b+c+d+e-t);
CurrencyEdit7.Text:=  FloatToStr(g);
end;
DMC3.sds_cond_pagto.First;
DMC3.Cds_RelVendas_pedidos.First;

FormRelVendasPagto := TFormRelVendasPagto.Create(self);
FormRelVendasPagto.RLReport1.Prepare;
FormRelVendasPagto.RLReport1.Preview();
end else

if codcli > '' then
begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_cond_pagto.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0'+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2)+'');
DMC3.QryRelVendas_pedidos.SQL.add('order by codigo asc ');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.sds_cond_pagto.Active :=True;

FormRelVendasPagto := TFormRelVendasPagto.Create(self);
FormRelVendasPagto.RLReport1.Prepare;
FormRelVendasPagto.RLReport1.Preview();
end else

 if Nvenda > '' then
 begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_cond_pagto.Active  :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2)+'');
DMC3.QryRelVendas_pedidos.SQL.add('order by codigo asc ');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.sds_cond_pagto.Active :=true;

FormRelVendasPagto := TFormRelVendasPagto.Create(self);
FormRelVendasPagto.RLReport1.Prepare;
FormRelVendasPagto.RLReport1.Preview();
end else
if valor1 > 0 then
BEGIN
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_cond_pagto.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2)+'');
DMC3.QryRelVendas_pedidos.SQL.add('order by codigo asc ');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.sds_cond_pagto.Active :=true;

FormRelVendasPagto := TFormRelVendasPagto.Create(self);
FormRelVendasPagto.RLReport1.Prepare;
FormRelVendasPagto.RLReport1.Preview();
end else

if vendedor > '' then
begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_cond_pagto.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if vendedor > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and Cod_Vendedor ='+(Vendedor)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2)+'');
DMC3.QryRelVendas_pedidos.SQL.add('order by codigo asc ');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.sds_cond_pagto.Active :=true;

FormRelVendasPagto := TFormRelVendasPagto.Create(self);
FormRelVendasPagto.RLReport1.Prepare;
FormRelVendasPagto.RLReport1.Preview();
end;

end ;
end;

end.
