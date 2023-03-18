unit agrupamento_titulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ToolEdit, RXDBCtrl, Mask, EDBNum, Mylabel,
  Grids, DBGrids, ExtCtrls,  SUIDBCtrls, CurrEdit, RXCtrls,
  SUIButton, FMTBcd, DB, DBXpress, DBClient, SqlExpr, SUIDlg, sPanel,
  sDBNavigator, Buttons, sBitBtn, acDBGrid, sMaskEdit, sCustomComboEdit,
  sTooledit;

type
  TFormAgrupamento = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    myLabel3d1: TmyLabel3d;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TsDBGrid;
    GroupBox3: TGroupBox;
    suiButton1: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton3: TsBitBtn;
    GroupBox4: TGroupBox;
    RxLabel7: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    suiDBNavigator1: TsDBNavigator;
    RxLabel5: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    SPC_CREDIARIO: TSQLStoredProc;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1ValorParcela: TCurrencyField;
    ClientDataSet1Parcela: TStringField;
    ClientDataSet1DataVencimento: TDateField;
    DataSource1: TDataSource;
    DBEdit3: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel8: TRxLabel;
    DBEdit4: TDBEdit;
    EvDBNumEdit1: TCurrencyEdit;
    EvDBNumEdit2: TCurrencyEdit;
    EvDBNumEdit3: TCurrencyEdit;
    EvDBNumEdit4: TCurrencyEdit;
    ClientDataSet1Tipo: TStringField;
    DateEdit2: TsDateEdit;
    RxLabel9: TRxLabel;
    procedure EvDBNumEdit2Exit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClientDataSet1BeforeInsert(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
    Cod,Cod1,Contador:Integer;
    Tipo: String;
    Libera_Insert : Boolean;
    VP, X, V, A: Real;
  public
    { Public declarations }
  end;

var
  FormAgrupamento: TFormAgrupamento;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Principal, cobranca, Udmcob;

{$R *.dfm}

procedure TFormAgrupamento.EvDBNumEdit2Exit(Sender: TObject);
var
  V :Real;
  Total : real;
begin
V:= 0;
V:= V + EvDBNumEdit1.value + EvDBNumEdit2.Value;
EvDBNumEdit4.Text := FloatToStr(V);

ClientDataset1.First;
while not clientDataset1.EOF do
begin
ClientDataset1.Delete;
end;
EvDBNumEdit3.SetFocus;
DBLookupComboBox1.Refresh;
end;

procedure TFormAgrupamento.EvDBNumEdit3Exit(Sender: TObject);
begin
V:= 0;
V:= V + EvDBNumEdit1.Value + EvDBNumEdit2.Value - EvDBNumEdit3.Value;
EvDBNumEdit4.Text := FloatToStr(V);

 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;
DBLookupComboBox1.SetFocus;
DBLookupComboBox1.Refresh;
end;

procedure TFormAgrupamento.suiButton3Click(Sender: TObject);
Var
DT: TDateTime;
Days: Extended;
Y: Byte;
begin
 If DBLookupComboBox1.Text = '' then
begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Informe a Codição de Pagto...!';
    FormPrincipal.MsgInformacao.Execute;
DBLookupComboBox1.SetFocus;
end else

Try
DBGrid1.Enabled:= TRUE;
Days:= DM.SDS_CondPagamentoVARIACAO_DIAS.AsInteger;
DT:= (Date + DM.SDS_CondPagamentoPIMEIRA_PAR.AsInteger) - Days;
Libera_Insert := True;
DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(DM.SDS_CondPagamentoNUMERO_PAR.Text) do
begin
if ClientDataSet1.RecordCount < Y then
ClientDataSet1.Insert
else
ClientDataSet1.Edit;
     DT:= DT +Days;
     ClientDataset1.FieldByname('CodigoCliente').AsInteger:= DM.SDS_ClientesCODIGO.AsInteger;
     ClientDataset1.FieldByname('CodigoCompra').AsInteger:= STrToInt('0');
     ClientDataset1.FieldByname('Vendedor').AsString:=FormPrincipal.UserLogado;
     ClientDataset1.FieldByname('Historico').AsString:= 'Crediário Referente a Vendas Agrupadas Nº... ';
     ClientDataset1.FieldByname('DataCompra').AsDateTime:= Date;
     ClientDataset1.FieldByname('ValorParcela').Value:= VP;
     ClientDataset1.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+ DBEdit3.Text);
     ClientDataset1.FieldByname('DataVencimento').Value:= DT;
     ClientDataset1.FieldByname('Tipo').Value:= 'AGR';
     ClientDataSet1.Post;
     ClientDataSet1.Next;
     ClientDataSet1.Last;
     end;
     Libera_Insert := False;
     ClientDataSet1.First;
     //suiButton3.Enabled:= False;
     suiButton2.Enabled:= True;
     suiButton2.SetFocus;

except
    FormPrincipal.MsgInformacao.HTMLText.Text := 'Não foi possivel gerar as parcelas...!';
    FormPrincipal.MsgInformacao.Execute;
end;
end;

procedure TFormAgrupamento.ClientDataSet1BeforeInsert(DataSet: TDataSet);
begin
if Not Libera_Insert then
Abort;
end;

procedure TFormAgrupamento.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.First;
A:= 0;
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not ClientDataSet1.Eof do
begin
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
ClientDataSet1.First;
end;

procedure TFormAgrupamento.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormAgrupamento.suiButton2Click(Sender: TObject);
var
I, E:Integer;
Endercomp, Cli: String;
dtaux : TDateTime;

begin
{if A <  EvDBNumEdit4.value then
begin
MSGA.Text:= 'O Valor Total Das Parcelas Não Pode Ser Menor Que o Valor Total Do Agrupamento, Favor Corrigir o Valor na Grid... !!!';
MSGA.ShowModal;
end ELSE }
//TD.TransactionID := 1;
//TD.IsolationLevel := XILReadCommitted;
//DM.SQLC.StartTransaction(TD);

Try
          begin
           dtAux := (StrToDate (DateEdit2.Text));

           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_CREDIARIO.Params[0].Value      :=  null;//DMCOB.CDS_COBRANCA1NUMBOLETO1.Value * 1000;
           SPC_CREDIARIO.Params[1].Value      :=  formcobranca.cliente.Text;
           SPC_CREDIARIO.Params[2].AsDate     := DATE;
           SPC_CREDIARIO.Params[3].AsDate     := ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO.Params[4].AsString   := ' Agrupamento de Vendas';
           SPC_CREDIARIO.Params[5].AsString   := FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString   := 'A';
           SPC_CREDIARIO.Params[7].Value      := ClientDataset1.FieldByname('ValorParcela').Value;
           SPC_CREDIARIO.Params[8].Value      := '0';
           SPC_CREDIARIO.Params[9].Value      := '0';
           SPC_CREDIARIO.Params[10].Value     := '0';
           SPC_CREDIARIO.Params[11].Value     := '0';
           SPC_CREDIARIO.Params[12].Value     := ClientDataset1.FieldByname('Parcela').Value;
           SPC_CREDIARIO.Params[13].Value     := DM.SDS_EmpresaCODIGO.Value;
           SPC_CREDIARIO.Params[14].AsString  := ClientDataset1.FieldByname('Tipo').AsString;
           SPC_CREDIARIO.Params[15].Value     := FormCobranca.RxLabel6.Caption;
           SPC_CREDIARIO.Params[16].AsString  := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString  := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].Value     := null;
           SPC_CREDIARIO.Params[19].VALUE     := null;
           SPC_CREDIARIO.Params[20].value     := null;
           SPC_CREDIARIO.ExecProc;
           ClientDataset1.Next;
            end;
        //   DM.SQLC.Commit(TD);
           end;
            Except
                  //  DM.SQLC.Rollback(TD);
                    FormPrincipal.MsgInformacao.HTMLText.Text := 'Erro na Finalização do Agrupamento de Contas a Receber !';
                    FormPrincipal.MsgInformacao.Execute;

            end;
                    try

                    dmcob.CDS_Cobranca1.first;
                    repeat
                    dmcob.CDS_Cobranca1.edit;
                   // if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'T' then
                    if FormCobranca.DBGrid1.SelectedRows.CurrentRowSelected = true then
                    begin
                    dmcob.CDS_COBRANCA1SITUACAO.Value:='P';
                    end;
                    dmcob.CDS_Cobranca1.Post;
                    dmcob.CDS_Cobranca1.ApplyUpdates(0);

                    dmcob.CDS_Cobranca1.Next;

                    until dmcob.CDS_Cobranca1.eof;
                    dmcob.CDS_Cobranca1.Refresh;
                    dbgrid1.refresh;
                    dmcob.CDS_Cobranca1.first;
                    dbgrid1.cursor:=crdefault;
                    except
                    dmcob.CDS_Cobranca1.cancel;
                    end;

                    Close;
end;

procedure TFormAgrupamento.DBLookupComboBox1Click(Sender: TObject);
var
Total : real;
Parcela : integer;
begin
DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.AsVariant;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.AsVariant;

total := EvDBNumEdit4.Value;
Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;

end;

procedure TFormAgrupamento.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.AsVariant;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.AsVariant;
end;

procedure TFormAgrupamento.FormShow(Sender: TObject);
begin
DM.SDS_CondPagamento.Active := False;
DM.SDS_CondPagamento.Active := True;
//DMCOB.CDS_COBRANCA.Active:=false;
//DMCOB.CDS_COBRANCA.Active:=true;
DateEdit2.Date := Date;
if Tag = 1 then
begin
EvDBNumEdit1.Value := StrToFloatDef(Formcobranca.CurrencyEdit1.text,0.00);
EvDBNumEdit2.value := StrToFloatDef(Formcobranca.CurrencyEdit2.text,0.00);
EvDBNumEdit3.value := StrToFloatDef(Formcobranca.CurrencyEdit3.text,0.00) + StrToFloatDef(Formcobranca.CurrencyEdit4.text,0.00);
EvDBNumEdit4.value := StrToFloatDef(Formcobranca.CurrencyEdit5.text,0.00);
end;

end;

procedure TFormAgrupamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=caFree;
FormAgrupamento:=nil;
end;

procedure TFormAgrupamento.FormCreate(Sender: TObject);
begin

 with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'AGRUPA.xlm';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'DataVencimento';
  open;
  end;

   ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;
end;

procedure TFormAgrupamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormAgrupamento.DBLookupComboBox1Exit(Sender: TObject);
var
  Total : real;
  Parcela : integer;
begin
DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.AsVariant;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.AsVariant;
total := EvDBNumEdit4.Value;
Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;
suiButton3.SetFocus;
end;

procedure TFormAgrupamento.DBGrid1CellClick(Column: TColumn);
begin
ClientDataSet1.Edit;
end;

procedure TFormAgrupamento.DBGrid1Enter(Sender: TObject);
begin
ClientDataSet1.Edit;
end;

end.
