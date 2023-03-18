unit ConsClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables, XDBGrids, Buttons,
  ToolEdit, RXDBCtrl, Mask, DBCtrls, sBitBtn, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConsClientes = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TsBitBtn;
    XDBGrid1: TXDBGrid;
    RxLabel2: TRxLabel;
    cbxpesquisa: TComboBox;
    Panel3: TPanel;
    suiDBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel32: TRxLabel;
    RxLabel7: TRxLabel;
    suiDBEdit4: TDBEdit;
    RxLabel9: TRxLabel;
    suiDBEdit8: TDBEdit;
    RxLabel12: TRxLabel;
    suiDBEdit7: TDBEdit;
    RxLabel8: TRxLabel;
    RxLabel16: TRxLabel;
    suiDBEdit11: TDBEdit;
    RxLabel15: TRxLabel;
    suiDBEdit10: TDBEdit;
    RxLabel20: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    RxLabel57: TRxLabel;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    RxLabel75: TRxLabel;
    DBEdit30: TDBEdit;
    RxLabel17: TRxLabel;
    suiDBEdit12: TDBEdit;
    suiDBEdit13: TDBEdit;
    RxLabel25: TRxLabel;
    suiDBEdit16: TDBEdit;
    RxLabel26: TRxLabel;
    RxLabel76: TRxLabel;
    DBEdit31: TDBEdit;
    RxLabel77: TRxLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    RxLabel78: TRxLabel;
    RxLabel79: TRxLabel;
    DBEdit34: TDBEdit;
    RxLabel80: TRxLabel;
    DBEdit35: TDBEdit;
    RxLabel81: TRxLabel;
    DBEdit36: TDBEdit;
    BitBtn2: TsBitBtn;
    BitBtn3: TsBitBtn;
    Label1: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure XDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
    procedure Timer1Timer(Sender: TObject);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsClientes: TFormConsClientes;
  masc, fem: TbitMap;
  ACHOU:BOOLEAN;


implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Udmcob,
  ModulodeDadosBaixas, clientes, HistoricoCliente;

{$R *.dfm}


procedure TFormConsClientes.BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  Query:= TFDQuery.Create(nil);
  Query.Connection := DM.Coneccao;
  Query.SQL.Add('SELECT R.RDB$RELATION_NAME, R.RDB$FIELD_NAME ');
  Query.SQL.Add('FROM RDB$RELATION_FIELDS R, RDB$FIELDS F ');
  Query.SQL.Add('WHERE F.RDB$FIELD_NAME = R.RDB$FIELD_SOURCE ');
  Query.SQL.Add('AND R.RDB$RELATION_NAME = '+QuotedStr(Tabela));
  Query.SQL.Add('ORDER BY R.RDB$FIELD_POSITION, R.RDB$FIELD_NAME');
  Query.Open;

  while not Query.Eof do
  begin
    if Busca <> '' then
    begin
      DM.DTS_Clientes.DataSet.Filter:= Query.Fields[1].AsString+' LIKE '+QuotedStr(Busca+'%');
      DM.DTS_Clientes.DataSet.Filtered:= True;
    end
    else
      DM.DTS_Clientes.DataSet.Filtered:= False;

    if DM.DTS_Clientes.DataSet.IsEmpty then
    begin
      DM.DTS_Clientes.DataSet.Filtered:= False;
    end
    else
      Exit;

    Query.Next;
  end;                
  Query.Destroy;
end;

procedure TFormConsClientes.FormShow(Sender: TObject);
begin
//it1.Clear;
Edit1.SetFocus;
//cbxpesquisa.ItemIndex := 1;

//dm.SDS_Clientes.Filtered := false;
Edit1Change(Sender);

if Edit1.Text > '' then
begin
BitBtn1Click(Sender);
end;

Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);


dm.SDS_Clientes.Active := False;

end;

procedure TFormConsClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsClientes:=nil;
end;

procedure TFormConsClientes.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsClientes.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
Edit1.SelStart := Length( Edit1.Text );
end;

procedure TFormConsClientes.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
XDBGrid1.SetFocus;
end;

procedure TFormConsClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormConsClientes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
// Application.ProcessMessages;

 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString <> 'A' then
 BEGIN
 if cbxpesquisa.ItemIndex = 11 then
 begin
   IF  dm.SDS_Clientes.Active = False THEN
   BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   end;
   BuscaValorEmTodosCamposTabela('CLIENTES', Edit1.Text) ;
 end;

 if cbxpesquisa.ItemIndex = 0 then
   begin
          if edit1.Text='' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;
           Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          end else

         if edit2.Text='LETRAS' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;
        //  Edit1.SetFocus;
          //Edit1.SetFocus;
          xDBGrid1.SetFocus;
          Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
           end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          //Edit1.Text := FormatFloat('0000000000000',StrToFloat(Edit1.Text));

          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + Edit1.Text + '%' + #39 + ' order by NOME_RS ASC');
          // dm.SDS_Clientes.Filter:='CODIGO =' +Edit1.Text +'';
          dm.SDS_Clientes.Active := True;
          dm.SDS_CLIENTES.Locate('CODIGO',EDIT1.Text,[]);
          ACHOU:=dm.SDS_CLIENTES.Locate('CODIGO',EDIT1.Text,[]);
          Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          if ACHOU  = True then
          XDBGrid1.SetFocus;
          end;
       end ELSE

       if cbxpesquisa.ItemIndex = 1 then
        begin
        if edit2.Text='LETRAS' THEN
        BEGIN
        dm.SDS_Clientes.Active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where APELIDO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
        dm.SDS_Clientes.Active := True;
        XDBGrid1.SetFocus;
        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        dm.SDS_Clientes.active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO = ' + Edit1.Text + ' order by NOME_RS ASC');
        dm.SDS_Clientes.active := True;
        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        XDBGrid1.SetFocus;
        end;
      end else

 if cbxpesquisa.ItemIndex = 2 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.ADD('select * from clientes where CPF_CNPJ like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.active := True;
XDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 3 then
   begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.ADD('select * from clientes where TELEFONE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.ACTIVE := True;
XDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 4 then
   begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_CONJUGUE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 5 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where CELULAR like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 6 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where RG_IE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
 Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
 XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 7 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where PAI like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 8 then
 begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where MAE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 9 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where ENDERECO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end else
 if cbxpesquisa.ItemIndex = 10 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where LOCALTRABALHO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
XDBGrid1.SetFocus;
end;
end
else
begin
XDBGrid1.SetFocus;
end;
end;
end;

procedure TFormConsClientes.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:='';

// Application.ProcessMessages;

 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString ='A' then
 BEGIN
 if cbxpesquisa.ItemIndex = 11 then
 begin
   IF  dm.SDS_Clientes.Active = False THEN
   BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   end;
   BuscaValorEmTodosCamposTabela('CLIENTES', Edit1.Text) ;
 end;

 if cbxpesquisa.ItemIndex = 0 then
   begin
          if edit1.Text='*' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;
           Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          end else

         if edit2.Text='LETRAS' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;


        //  Edit1.SetFocus;
          //Edit1.SetFocus;
          Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
           end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          //Edit1.Text := FormatFloat('0000000000000',StrToFloat(Edit1.Text));
          //ACHOU:=dm.SDS_CLIENTES.Locate('CODIGO',EDIT1.Text,[]);
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO = '  + Edit1.Text + ' order by NOME_RS ASC');
          // dm.SDS_Clientes.Filter:='CODIGO =' +Edit1.Text +'';
          dm.SDS_Clientes.Active := True;



         // edit1.SetFocus;
          //end;
          //Edit1.SetFocus;
           Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          end;
       end ELSE

       if cbxpesquisa.ItemIndex = 1 then
        begin
        if edit2.Text='LETRAS' THEN
        BEGIN
        dm.SDS_Clientes.Active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where APELIDO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
       // dm.SDS_Clientes.Filter:='APELIDO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
        dm.SDS_Clientes.Active := True;


        //Edit1.SetFocus;
        //Edit1.SetFocus;
        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000000000000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.SDS_CLIENTES.Locate('CODIGO',EDIT1.Text,[]);
        dm.SDS_Clientes.active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO = ' + Edit1.Text + ' order by NOME_RS ASC');
       // dm.SDS_Clientes.Filter:='CODIGO =' +Edit1.Text +'';
        dm.SDS_Clientes.active := True;



       // XDBGrid1.SetFocus;
        //end;
        //Edit1.SetFocus;
        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        end;
      end else

 if cbxpesquisa.ItemIndex = 2 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.ADD('select * from clientes where CPF_CNPJ like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='CPF_CNPJ like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.active := True;

//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 3 then
   begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.ADD('select * from clientes where TELEFONE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='TELEFONE like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.ACTIVE := True;


//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 4 then
   begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_CONJUGUE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='NOME_CONJUGE like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 5 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where CELULAR like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='CELULAR like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 6 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where RG_IE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='RG_IE like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
 Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 7 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where PAI like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='PAI like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 8 then
 begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where MAE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='MAE like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 9 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where ENDERECO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='ENDERECO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
 Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 10 then
   begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
 dm.SDS_Clientes.SQL.Add('select * from clientes where LOCALTRABALHO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='LOCALTRABALHO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end;
end ;
end;




procedure TFormConsClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (Key=VK_F2) then
      begin
      EDIT1.SelectAll;
      Edit1.SetFocus;
      end;
end;


procedure TFormConsClientes.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsClientes.FormCreate(Sender: TObject);
begin
{masc:=TBitMap.Create;
masc.LoadFromFile('C:\siace\imagens\homen.bmp');
fem :=Tbitmap.create;
fem.LoadFromFile('C:\siace\imagens\mulher.bmp');  }
//DM.SDS_Clientes.Filtered := False;
end;

procedure TFormConsClientes.XDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
 var ativo :string;
  begin
{If DataCol=0 Then // se for a nossa coluna 1
begin
if DM.SDS_Clientes.FieldByName('sexo').asstring = 'MASCULINO' then
TDbGrid(Sender).Canvas.Draw(Rect.Left,Rect.Top,masc)
else
//TDbGrid(Sender).Canvas.Draw(Rect.Left,Rect.Top,fem);
if DM.SDS_Clientes.FieldByName('sexo').asstring = 'FEMININO' then
TDbGrid(Sender).Canvas.Draw(Rect.Left,Rect.Top,fem)
end;}
 // begin
{Ativo:= DM.sDS_ClientesAtivo.Value;
If ativo = 'I' then
xDBGrid1.Canvas.Font.Color:= clRed;
If Ativo = 'A' then
xDBGrid1.Canvas.Font.Color:= clNone;
xDBGrid1.DefaultDrawDataCell(Rect, xDBGrid1.Columns[datacol].Field, State);
end; }

{if gdSelected in State then
begin
XDBGrid1.Canvas.Font.Color := clHighlightText; //Fundo
XDBGrid1.Canvas.Brush.Color:= clHighlight; //Fonte
end
else
begin
If odd(DM.SDS_Clientes.RecNo) then
begin
XDBGrid1.Canvas.Font.Color := clWhite;
XDBGrid1.Canvas.Brush.Color:= clGreen;
end
else
begin
XDBGrid1.Canvas.Font.Color := clBlack;
XDBGrid1.Canvas.Brush.Color:= clWhite;
end;
end;

XDBGrid1.Canvas.FillRect(Rect);
XDBGrid1.Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);}

if DM.SDS_Clientes.FieldByName('ATIVO').AsString = 'I' then
begin
//XDBGrid1.Canvas.Brush.Color := clSilver;
XDBGrid1.Canvas.Font.Color := clRed;
//XDBGrid1.Canvas.TextOut(Rect.Left+ 2, Rect.Top+ 2, Column.Field.AsString);
//XDBGrid1.Canvas.FillRect(Rect);
XDBGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, Column.Field.AsString);
end;

end;

procedure TFormConsClientes.cbxpesquisaChange(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 then
begin
dm.SDS_Clientes.Filtered := false;
end else
if cbxpesquisa.ItemIndex = 1 then
begin
dm.SDS_Clientes.Filtered := false;
end;
if cbxpesquisa.ItemIndex = 2 then
begin
dm.SDS_Clientes.Filtered := false;
end;
if cbxpesquisa.ItemIndex = 3 then
begin
dm.SDS_Clientes.Filtered := false;
end;
if cbxpesquisa.ItemIndex = 4 then
begin
dm.SDS_Clientes.Filtered := false;
end;
if cbxpesquisa.ItemIndex = 5 then
begin
dm.SDS_Clientes.Filtered := false;
end;
if cbxpesquisa.ItemIndex = 6 then
begin
dm.SDS_Clientes.Filtered := false;
end;
end;

procedure TFormConsClientes.BitBtn1Click(Sender: TObject);
begin

if cbxpesquisa.ItemIndex = 0 then
   begin
         { if edit1.Text='' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC';
          dm.SDS_Clientes.Active := True;
           Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          end else   }

         if edit2.Text='LETRAS' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;
          Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
         // XDBGrid1.SetFocus;
           end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          dm.SDS_Clientes.Active := false;
          dm.SDS_Clientes.SQL.Clear;
          dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO = '  + Edit1.Text + ' order by NOME_RS ASC');
          dm.SDS_Clientes.Active := True;
           Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
          // XDBGrid1.SetFocus;
          end;
        end ELSE

        if cbxpesquisa.ItemIndex = 1 then
        begin
        if edit2.Text='LETRAS' THEN
        BEGIN
        dm.SDS_Clientes.Active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.add('select * from clientes where APELIDO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
        dm.SDS_Clientes.Active := True;

        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        dm.SDS_Clientes.active := false;
        dm.SDS_Clientes.SQL.Clear;
        dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO = ' + Edit1.Text + ' order by NOME_RS ASC');
        dm.SDS_Clientes.active := True;
        Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
        end;
      end else

if cbxpesquisa.ItemIndex = 2 then
begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where CPF_CNPJ like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.active := True;

Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 3 then
   begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where TELEFONE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.ACTIVE := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 4 then
 begin
dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where NOME_CONJUGUE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 5 then
 begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where CELULAR like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
if cbxpesquisa.ItemIndex = 6 then
begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where RG_IE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
if cbxpesquisa.ItemIndex = 7 then
begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where PAI like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
//dm.SDS_Clientes.Filter:='PAI like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
dm.SDS_Clientes.Active := True;
//xDBGrid1.SetFocus;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 8 then
 begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where MAE like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
 if cbxpesquisa.ItemIndex = 9 then
 begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where ENDERECO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
 Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end else
if cbxpesquisa.ItemIndex = 10 then
begin
dm.SDS_Clientes.Active := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where LOCALTRABALHO like ' + #39 + '%' + Edit1.Text + '%' + #39+'order by NOME_RS ASC');
dm.SDS_Clientes.Active := True;
Label1.Caption := 'Clientes Filtrados nº :' + IntToStr(DM.SDS_Clientes.RecordCount);
end;
end;


procedure TFormConsClientes.BitBtn2Click(Sender: TObject);
begin
 Try
 if FormClientes=nil then
    begin
     FormClientes:=TFormClientes.Create(self);
     FormClientes.btnLocalizar.Enabled := False;
      FormClientes.ShowModal;
      end;
      except
     ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
end;

procedure TFormConsClientes.BitBtn3Click(Sender: TObject);
begin
  Try
if FormHistoricoCliente=nil   then
    begin
     FormHistoricoCliente:=TFormHistoricoCliente.Create(self);
      FormHistoricoCliente.cliente.text := DM.SDS_ClientesCODIGO.Text;
      FormHistoricoCliente.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormConsClientes.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
end;
end;

procedure TFormConsClientes.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
     Var
    Check: Integer;
    R: TRect;
    DtVen: TDateTime;
begin
if (DM.SDS_Clientes.FieldByName('nome_rs').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('cpf_cnpj').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('rg_ie').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('telefone').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('celular').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('pai').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('mae').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('LOCALTRABALHO').AsString = Edit1.Text) or
 (DM.SDS_Clientes.FieldByName('ENDERECO').AsString = Edit1.Text) then
   XDbgrid1.Canvas.Font.Color := clBlue;
   if not (gdSelected in State) then
   begin // se a célula não está selecionada
      if not odd(xDBGrid1.DataSource.DataSet.RecNo) then // se for ímpar
         xDBGrid1.Canvas.Brush.Color := $00EAEAEA; //$00EAEAEA; //$00FFEFDF; // define uma cor de fundo
      xDBGrid1.Canvas.FillRect(Rect); // pinta a célula
   end;
   xDbgrid1.DefaultDrawDataCell(Rect, xdbgrid1.columns[datacol].field, State);



if not Odd(DM.SDS_Clientes.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;

 If DM.SDS_ClientesATIVO.AsString = 'I' then // condição
  XDbgrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  XDbgrid1.DefaultDrawDataCell(Rect, Xdbgrid1.columns[datacol].field, State);

  
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_ClientesATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

end;

procedure TFormConsClientes.Timer1Timer(Sender: TObject);
begin
if Tag = 1 then
begin
if Edit1.Text > '' then
begin
BitBtn1Click(Sender);
Timer1.Enabled := False;
end;
end;
end;

procedure TFormConsClientes.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{if key= VK_Up then
begin
  Edit1.SetFocus;
end; }
end;

end.




