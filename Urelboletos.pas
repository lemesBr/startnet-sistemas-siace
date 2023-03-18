unit Urelboletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, Mask, DB, SUIButton, ExtCtrls, RxToolEdit;

type
  TFormRelBoletos = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    suiButton2: TsuiButton;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Edit1: TEdit;
    suiButton3: TsuiButton;
    XDBGrid1: TXDBGrid;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Label1: TLabel;
    Cliente: TComboEdit;
    Panel: TPanel;
    BitBtn3: TsuiButton;
    suiButton1: TsuiButton;
    suiButton6: TsuiButton;
    Edit3: TEdit;
    edtNBoleto: TEdit;
    Label2: TLabel;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelBoletos: TFormRelBoletos;

implementation

uses Udmcob, ModulodeDados, ConsClientes, RelCobranca, Urlelaboletos;

{$R *.dfm}

procedure TFormRelBoletos.suiButton3Click(Sender: TObject);
begin
DateEdit3.Clear;
DateEdit4.Clear;
Edit1.Clear;
Cliente.Clear;
Edit1.Clear;
CheckBox1.Checked := False;
end;

procedure TFormRelBoletos.suiButton2Click(Sender: TObject);
var
vcli1,vcli2, CLI:STRING;
port:string;
PG :string;
begin
vcli1:=datetostr(DATE);
vcli2:=datetostr(DATE);

VCLI1:=dateedit3.TexT;
VCLI2:=dateedit4.TexT;
if CheckBox1.Checked = True then
PG:= 'F'
else
PG:= 'A';

port:=EDIT1.text;
CLI :=Cliente.Text;

    If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit4.Date := DateEdit3.Date;
    end  Else
     begin
    dmcob.CDS_Cobranca1.Active :=FALSE;
    dmcob.QRYcobranca1.close;
    dmcob.QRYcobranca1.SQL.Clear;
    dmcob.qrycobranca1.SQL.add('select * from CREDIARIO where BANCO_PORTADOR > 0 and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI1)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(VCLI2)))+ ' and cod_empresa ='+ inttostr(iemp)+' ');
    if port > '' then
    dmcob.qrycobranca1.SQL.add('and BANCO_PORTADOR ='+(port));
    if CLI > '' then
    dmcob.qrycobranca1.SQL.add('and CODIGO_CLIENTE ='+(CLI));
    if edtNBoleto.Text <> '' then
    dmcob.qrycobranca1.SQL.add('and NUMBOLETO ='+QuotedStr(edtNBoleto.Text));
    dmcob.qrycobranca1.Open;
    dmcob.CDS_Cobranca1.Active :=TRUE;

    dmcob.CDS_Cobranca1.Filtered := false;
    dmcob.CDS_Cobranca1.Filter:='SITUACAO='+QuotedStr(PG);
    dmcob.CDS_Cobranca1.Filtered := True;
    end;
end;

procedure TFormRelBoletos.suiButton6Click(Sender: TObject);
begin
close;
end;

procedure TFormRelBoletos.ClienteButtonClick(Sender: TObject);
begin
 DM.SDS_Clientes.Active:= False;
 dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
    
// dm.SDS_Clientes.Filtered := false;
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       edit2.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;


procedure TFormRelBoletos.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormRelBoletos.ClienteExit(Sender: TObject);
begin
 DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);


  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  edit2.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.Text := '';
 Cliente.SetFocus;
end else
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  Edit2.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;

procedure TFormRelBoletos.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
IF Key =#13 then
BEGIN
 if edit3.Text='LETRAS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

IF ACHOU=FALSE THEN
begin
ClienteButtonClick(sender);
end ELSE

IF ACHOU=TRUE THEN
BEGIN
Cliente.Text := DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  //ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end;
end;

procedure TFormRelBoletos.suiButton1Click(Sender: TObject);
begin
  Application.ProcessMessages;
  if DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' then
  begin
    FormRelaBoletos := TFormRelaBoletos.Create(self);
    FormRelaBoletos.RLReport1.DefaultFilter.Destroy;
    FormRelaBoletos.RLReport1.Prepare;
    if CheckBox1.Checked = True then
      FormRelaBoletos.RLLabel1.Caption:= 'Relatório de Boletos Pagos'
    else
      FormRelaBoletos.RLLabel1.Caption:= 'Relatório de Boletos a Receber';
    FormRelaBoletos.RLReport1.PreviewModal;

  end
  else
  if DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' then
  begin
    FormRelaBoletos := TFormRelaBoletos.Create(self);
    FormRelaBoletos.RLReport1.Prepare;
    if CheckBox1.Checked = True then
      FormRelaBoletos.RLLabel1.Caption:= 'Relatório de Boletos Pagos'
    else
      FormRelaBoletos.RLLabel1.Caption:= 'Relatório de Boletos a Receber';
    FormRelaBoletos.RLReport1.PreviewModal;
  end;
end;

procedure TFormRelBoletos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9',#08] ) then
    key:=#0;
end;

end.
