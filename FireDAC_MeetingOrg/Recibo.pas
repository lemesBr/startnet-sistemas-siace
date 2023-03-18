unit Recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Estenso, FMTBcd, DB, SqlExpr, SUIButton,
  Mask, DBClient, Buttons, sBitBtn, frxRich,
  frxDesgn, frxClass, frxDBSet, RxToolEdit, RxCurrEdit;

type
  TFormRecibo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    suiButton7: TsBitBtn;
    suiButton1: TsBitBtn;
    SPC_RECIBO: TSQLStoredProc;
    Label10: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1RECIBO: TStringField;
    ClientDataSet1VALOR: TCurrencyField;
    ClientDataSet1VALOR_EXT: TStringField;
    ClientDataSet1EMITENTE: TStringField;
    ClientDataSet1HISTORICO: TStringField;
    ClientDataSet1DATA: TStringField;
    ClientDataSet1CNPJ_EMITENTE: TStringField;
    ClientDataSet1DESTINATARIO: TStringField;
    Edit2: TCurrencyEdit;
    fscontasreceber: TfrxDBDataset;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    procedure FormShow(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibo: TFormRecibo;

implementation

uses Principal, Extenso1, ModulodeDados, RRecibo, RelRecibo40;

{$R *.dfm}

procedure TFormRecibo.FormShow(Sender: TObject);
var
cod: Integer;
dtaux : TDateTime;
begin
   dtAux := (date);
   SPC_RECIBO.ExecProc;
   Cod:= (SPC_recibo.ParamByName('ATUAL').AsInteger);
   label10.caption:=IntTostr(Cod);
   edit3.text := dm.SDS_EmpresaCIDADE.text +', '+FormatDateTime('dd',dtAux) + ' de '+FormatDateTime('mmmm',dtAux)+ ' de '+FormatDateTime('yyyy',dtAux);;
   Edit4.Text := DM.SDS_EmpresaRAZAO_SOCIAL.Text;
   Edit5.Text := DM.SDS_EmpresaCNPJ.Text;
  // Memo1.Clear;
  // Memo2.Clear;
   edit2.SetFocus;
end;

procedure TFormRecibo.Edit2Exit(Sender: TObject);
var
  texto : string;
begin
if edit2.Text > '0' then
begin
Texto := edit2.text;
Memo1.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

procedure TFormRecibo.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormRecibo:= nil;
end;

procedure TFormRecibo.suiButton7Click(Sender: TObject);
begin
IF clientDataset1.EOF THEN
begin
ClientDataSet1.Edit;
ClientDataSet1RECIBO.Text := LABEL10.CAPTION;
ClientDataSet1VALOR.Text := Edit2.Text;
ClientDataSet1VALOR_EXT.Text := Memo1.Text;
ClientDataSet1DESTINATARIO.Text := Edit1.Text;
ClientDataSet1HISTORICO.Text := Memo2.Text;
ClientDataSet1EMITENTE.Text :=  Edit4.Text;
ClientDataSet1DATA.Text := Edit3.Text;
ClientDataSet1CNPJ_EMITENTE.Text := Edit5.Text;
end else
begin
ClientDataSet1.Insert; 
ClientDataSet1RECIBO.Text := LABEL10.CAPTION;
ClientDataSet1VALOR.Text := Edit2.Text;
ClientDataSet1VALOR_EXT.Text := Memo1.Text;
ClientDataSet1DESTINATARIO.Text := Edit1.Text;
ClientDataSet1HISTORICO.Text := Memo2.Text;
ClientDataSet1EMITENTE.Text :=  Edit4.Text;
ClientDataSet1DATA.Text := Edit3.Text;
ClientDataSet1CNPJ_EMITENTE.Text := Edit5.Text;
end;

IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4') or  (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '5')  THEN
begin
 if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='P' then
BEGIN
FormRelrecibo40 := TFormRelrecibo40.Create(self);
FormRelrecibo40.RLReport1.DefaultFilter.Destroy;
FormRelrecibo40.RLReport1.Prepare;
FormRelrecibo40.RLReport1.PreviewModal;
end else
if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='M' then
BEGIN
FormRelrecibo40 := TFormRelrecibo40.Create(self);
FormRelrecibo40.RLReport1.Prepare;
FormRelrecibo40.RLReport1.PreviewModal;
end;
end else
IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = 'Q' THEN
begin
 if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='P' then
BEGIN
FormRelrecibo40 := TFormRelrecibo40.Create(self);
FormRelrecibo40.RLReport1.DefaultFilter.Destroy;
FormRelrecibo40.RLReport1.Prepare;
FormRelrecibo40.RLReport1.PreviewModal;
end else
if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='M' then
BEGIN
FormRelrecibo40 := TFormRelrecibo40.Create(self);
FormRelrecibo40.RLReport1.Prepare;
FormRelrecibo40.RLReport1.PreviewModal;
end;
end else
IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = 'I') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3')   THEN
begin
if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='P' then
BEGIN
FormRelrecibo := TFormRelrecibo.Create(self);
FormRelrecibo.RLReport1.DefaultFilter.Destroy;
FormRelrecibo.RLReport1.Prepare;
FormRelrecibo.RLReport1.PreviewModal;
end else
if DM.SDS_CONFIGURACOESIMPRESSAO.Text ='M' then
BEGIN
FormRelrecibo := TFormRelrecibo.Create(self);
FormRelrecibo.RLReport1.Prepare;
FormRelrecibo.RLReport1.PreviewModal;
end;
end
else
//IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = 'P' THEN
begin
  DM.qrrelatorio.open;
 { frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.post;}

  fxrecibo.LoadFromFile('\siace\rel\RECIBO.fr3');
  fxrecibo.ShowReport;

end;
end;

procedure TFormRecibo.FormCreate(Sender: TObject);
begin
 if FileExists('C:\SIACE\RECIBO.xml') then
  begin
     DeleteFile('C:\SIACE\RECIBO.xml');
  end;

 IF not clientDataset1.EOF THEN
 begin
 ClientDataSet1.Delete;
 end;

 with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'RECIBO.xml';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'RECIBO';
  open;
  end;
end;

procedure TFormRecibo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRecibo.Edit2Change(Sender: TObject);
var
  texto : string;
begin
if edit2.Text > '0' then
begin
Texto := edit2.text;
Memo1.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

end.
