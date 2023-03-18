unit Urecebidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, ExtCtrls, SUIButton, DB, Mask,
  RXCtrls, RxToolEdit;

type
  TFormRecebido = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    RxLabel1: TRxLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit4: TDateEdit;
    suiButton2: TsuiButton;
    DateEdit3: TDateEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Cliente: TComboEdit;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    suiButton3: TsuiButton;
    GroupBox2: TGroupBox;
    DBGrid1: TXDBGrid;
    GroupBox3: TGroupBox;
    suiButton7: TsuiButton;
    Edit3: TEdit;
    RxLabel4: TRxLabel;
    RxLabel8: TRxLabel;
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecebido: TFormRecebido;
  inicio, final,codcli,port :string;
  dtmovi, dtmovf :string;

implementation

uses ModulodeDados, ConsClientes, Udmcob, RelCobranca;

{$R *.dfm}

procedure TFormRecebido.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       RxLabel6.Caption   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormRecebido.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormRecebido.ClienteExit(Sender: TObject);
begin
  begin
//  DM.SDS_Clientes.Filtered := False;

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
  end;

  IF ACHOU=TRUE THEN
  begin
  Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
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

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where codigo like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
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
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;
end;

procedure TFormRecebido.suiButton3Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit4.Clear;
DateEdit3.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
RxLabel6.Caption :='';
end;

procedure TFormRecebido.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormRecebido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
 FormRecebido := nil;
end;

procedure TFormRecebido.suiButton2Click(Sender: TObject);
var
Data, DataVenc, DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, dias, X: Real;
CONTADOR, Q : Integer;
ORDEM, CID: string;
  begin

    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

    dtmovi:=datetostr(DATE);
    dtmovf:=datetostr(DATE);

    dtmovi:=dateedit1.TexT;
    dtmovf:=dateedit2.TexT;

    codcli:=Cliente.text;
    port := edit1.text;


  If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit4.Date := DateEdit3.Date;
    end  Else
     begin
   // DM.SDS_Clientes.Open;
  //  DMCOB.SDS_CLIENTES.Active :=False;
    dmcob.CDS_Cobranca1.Active :=FALSE;
    dmcob.QRYcobranca1.close;
    dmcob.QRYcobranca1.SQL.Clear;
    dmcob.QRYcobranca1.SQL.add('select * from CREDIARIO where SITUACAO =''F'''+'');
    if codcli > '' then
    dmcob.QRYcobranca1.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
    if port > '' then
    dmcob.QRYcobranca1.SQL.add('and BANCO_PORTADOR ='+(port)+'');
    if inicio > ' / /   ' then
    dmcob.QRYcobranca1.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    if dtmovi > ' / /   ' then
     dmcob.QRYcobranca1.SQL.add('and DATA_BAIXA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_BAIXA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
     dmcob.QRYcobranca1.SQL.add('ORDER BY DATA_BAIXA ASC');
     dmcob.QRYcobranca1.Open;
     dmcob.CDS_Cobranca1.Active :=TRUE;
     dmcob.CDS_Cobranca1.Filtered := false;

   //  Label1.Caption := 'N° Registros: ' + IntToStr(dmcob.CDS_Cobranca1.RecordCount);

dmcob.CDS_Cobranca1.First;

X:= X + dmcob.CDS_Cobranca1VALOR_PAGO.AsFloat;
dmcob.CDS_Cobranca1.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not dmcob.CDS_Cobranca1.Eof do
begin
X:= X + dmcob.CDS_Cobranca1VALOR_PAGO.AsFloat;
dmcob.CDS_Cobranca1.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
end;
end;

procedure TFormRecebido.suiButton7Click(Sender: TObject);
begin
DMCOB.Sds_Clientes.Active:=False;
DMCOB.Sds_Clientes.Active:=true;
//DMCOB.sds_crediario.Active := False;
//DMCOB.sds_crediario.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS WHERE CHEK_BOX >='+'X'+ 'order By DATA_VENCIMENTO ASC';
//DMCOB.sds_crediario.Active := true;
Application.ProcessMessages;
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
 BEGIN
 FormRelcobranca := TFormRelCobranca.Create(self);
 FormRelcobranca.Tag := 1;
 FormRelcobranca.RLReport1.DefaultFilter.Destroy;
 FormRelcobranca.RLReport1.Prepare;
 FormRelcobranca.RLLabel1.CAPTION :=  'RELATORIO DE CONTAS RECEBIDAS';
 FormRelcobranca.RLReport1.PreviewModal;
 END ELSE
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
begin
FormRelcobranca := TFormRelCobranca.Create(self);
FormRelcobranca.Tag := 1;
FormRelcobranca.RLReport1.Prepare;
FormRelcobranca.RLLabel1.CAPTION :=  'RELATORIO DE CONTAS RECEBIDAS';
FormRelcobranca.RLReport1.PreviewModal;

end;
end;

end.
