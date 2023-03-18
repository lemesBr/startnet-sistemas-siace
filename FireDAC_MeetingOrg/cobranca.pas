unit cobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls,
  SUIButton, Mask, RXCtrls, FMTBcd, DB, SqlExpr,
  DBCtrls, XDBGrids, Mylabel, Buttons, sBitBtn, RxCurrEdit, RxToolEdit;

type
  TFormCobranca = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit4: TDateEdit;
    suiButton2: TsBitBtn;
    DateEdit3: TDateEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    RxLabel1: TRxLabel;
    Cliente: TComboEdit;
    Label7: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsBitBtn;
    suiButton3: TsBitBtn;
    suiButton4: TsBitBtn;
    suiButton5: TsBitBtn;
    suiButton6: TsBitBtn;
    suiButton7: TsBitBtn;
    suiButton8: TsBitBtn;
    Combobox1: TComboBox;
    Edit2: TDateEdit;
    GroupBox4: TGroupBox;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    RxLabel4: TRxLabel;
    CurrencyEdit4: TCurrencyEdit;
    RxLabel5: TRxLabel;
    RxLabel7: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    DBGrid1: TXDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    RxLabel8: TRxLabel;
    ComboEdit1: TComboEdit;
    Panel2: TPanel;
    RxLabel9: TRxLabel;
    myLabel3d1: TmyLabel3d;
    suiButton9: TsBitBtn;
    suiButton10: TsBitBtn;
    Panel3: TPanel;
    suiButton11: TsBitBtn;
    suiButton12: TsBitBtn;
    myLabel3d2: TmyLabel3d;
    ComboBox2: TComboBox;
    Label4: TLabel;
    RxLabel10: TRxLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit3: TEdit;
    Panel4: TPanel;
    suiButton13: TsBitBtn;
    SPC_ATUALIZA: TSQLStoredProc;
    Einicio: TDateEdit;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClienteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TXColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton11Click(Sender: TObject);
    procedure suiButton12Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClienteChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton13Click(Sender: TObject);
    Procedure Selecao_Grade(Tipo : Integer);

  private
    { Private declarations }
     A,B,C,D,E: Real;
  public
    { Public declarations }

  end;

var
  FormCobranca: TFormCobranca;
  inicio, final,codcli,port :string;
  dtmovi, dtmovf :string;
  DtVen: string;

implementation

uses ModulodeDados, ConsClientes, boletos, Udmcob,
  agrupamento_titulos, RelCobranca, Principal,
  ModulodeDadosBaixas, ConsUsuarios, CobrancaRazao, duplicatasp;

{$R *.dfm}

Procedure TFormCobranca.Selecao_Grade(Tipo : Integer);
Begin
//DMCOB.CDS_COBRANCA1.DisableControls;
DMCOB.CDS_COBRANCA1.First;
While not DMCOB.CDS_COBRANCA1.Eof do
Begin
If Tipo = 1 then// Marcar todos
BEGIN
DBGrid1.SelectedRows.CurrentRowSelected := True ;
            if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              //  inc(iQuant);
            end;

end Else

If Tipo = 2 then  // Desmarcar todas
begin
DBGrid1.SelectedRows.CurrentRowSelected := False ;
   if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              //  inc(iQuant);
            end;
end Else
If Tipo = 3 then  // Alternar seleção
DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
DMCOB.CDS_COBRANCA1.Next;
End;
DMCOB.CDS_COBRANCA1.First;
//DMCOB.CDS_COBRANCA1.EnableControls;
End;

procedure TFormCobranca.suiButton2Click(Sender: TObject);
var
Data, DataVenc, DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, dias: Real;
CONTADOR, Q : Integer;
ORDEM, CID: string;
  begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;

  ORDEM := ComboBox2.Text;
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

    Edit2.Date := Date;
    DtVen:= edit2.text;
    Dtven:= datetostr(DATE);
    CID:= DBLookupComboBox1.Text;

    if ComboBox1.ItemIndex = 1 then
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
    dmcob.QRYcobranca1.SQL.add('select * from CREDIARIO where SITUACAO =''A'' '+'');
    if codcli > '' then
    dmcob.QRYcobranca1.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
    if port > '' then
    dmcob.QRYcobranca1.SQL.add('and BANCO_PORTADOR ='+(port)+'');
    if inicio > ' / /   ' then
    dmcob.QRYcobranca1.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    if dtmovi > ' / /   ' then
     dmcob.QRYcobranca1.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
     if CheckBox2.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and (recebivel = 0) or (recebivel is null)');
     if CheckBox1.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and NUMBOLETO is null ');
     dmcob.QRYcobranca1.SQL.add('ORDER BY '+ORDEM +' ASC');
     dmcob.QRYcobranca1.Open;
     dmcob.CDS_Cobranca1.Active :=TRUE;
     dmcob.CDS_Cobranca1.Filtered := false;

     Label1.Caption := 'N° Registros: ' + IntToStr(dmcob.CDS_Cobranca1.RecordCount);


   // DMCOB.SDS_CLIENTES.Active :=FALSE;
{    dmcob.CDS_Cobranca2.Active :=FALSE;
    dmcob.QRYcobranca2.close;
    dmcob.QRYcobranca2.SQL.Clear;
    dmcob.QRYcobranca2.SQL.add('select * from CREDIARIO where SITUACAO =''A'' '+'');
    if codcli > '' then
    dmcob.QRYcobranca2.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
    if port > '' then
    dmcob.QRYcobranca2.SQL.add('and BANCO_PORTADOR ='+(port)+'');
    if inicio > ' / /   ' then
    dmcob.QRYcobranca2.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    if dtmovi > ' / /   ' then
     dmcob.QRYcobranca2.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
     dmcob.QRYcobranca2.SQL.add('ORDER BY '+ORDEM +' ASC');
     dmcob.QRYcobranca2.Open;
    // DMCOB.SDS_CLIENTES.Active :=True;
     dmcob.CDS_Cobranca2.Active :=TRUE;
     dmcob.CDS_Cobranca2.Filtered := false;   }

       // CALCULO DE JUROS CREDIARIO VENCIDO
      dmcob.CDS_Cobranca1.First;
      Contador:=  dmcob.CDS_Cobranca1.RecordCount;
      For Q:=1 to Contador do
      begin
      DataAtual:= Date;
      DataVenc:=  dmcob.CDS_Cobranca1DATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
      DiasVenc := DataAtual -DMCOB.CDS_COBRANCA1DATA_VENCIMENTO.Asdatetime;
      Data := DataAtual - DataVenc;
      DecodeDate( Data, ano, mes, dia);
      Tot:= Data;
      dias := DiasVenc;
      if Tot < 0 then
      begin
      Tot:= 0;
      end;
      Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
      TotPert:= (Tot * Pert);
      DMB.SPC_Juros.Params[0].AsInteger:=  dmcob.CDS_Cobranca1CODIGO.Value;
      DMB.SPC_Juros.Params[2].Value:= TotPert;
      DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
      DMB.SPC_Juros.Params[5].value := dias;
      DMB.SPC_Juros.Execproc;
      dmcob.CDS_Cobranca1.Next;
      dmcob.CDS_COBRANCA1.Refresh;
      end;
      Application.ProcessMessages;
      end  else

    if ComboBox1.ItemIndex = 2 then
    If DateEdit4.Date < DateEdit3.Date Then
      begin
      ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
      DateEdit4.Date := DateEdit3.Date;
      end Else
    begin
     // DM.SDS_Clientes.Open;
      dmcob.CDS_Cobranca1.Active :=FALSE;
      dmcob.QRYcobranca1.close;
      dmcob.QRYcobranca1.SQL.Clear;
      dmcob.QRYcobranca1.SQL.add('select * from CREDIARIO where SITUACAO =''A'' '+'');
      if codcli > '' then
      dmcob.QRYcobranca1.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
      if port > '' then
      dmcob.QRYcobranca1.SQL.add('and BANCO_PORTADOR ='+(port)+'');
      if inicio > ' / /   ' then
      dmcob.QRYcobranca1.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
      if dtmovi > ' / /   ' then
       dmcob.QRYcobranca1.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
        if CheckBox2.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and (recebivel = 0) or (recebivel is null)');
          if CheckBox1.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and NUMBOLETO is null ');
       dmcob.QRYcobranca1.SQL.add('ORDER BY '+ORDEM +' ASC');
       dmcob.QRYcobranca1.Open;
       dmcob.CDS_Cobranca1.Active :=TRUE;
       dmcob.CDS_Cobranca1.Filtered := false;
       dmcob.CDS_Cobranca1.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
       dmcob.CDS_Cobranca1.Filtered := True;
       Label1.Caption := 'N° Registros: ' + IntToStr(dmcob.CDS_Cobranca1.RecordCount);


      {  dmcob.CDS_Cobranca2.Active :=FALSE;
        dmcob.QRYcobranca2.close;
        dmcob.QRYcobranca2.SQL.Clear;
        dmcob.QRYcobranca2.SQL.add('select * from CREDIARIO where SITUACAO ''A'' '+'');
        if codcli > '' then
        dmcob.QRYcobranca2.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
        if port > '' then
        dmcob.QRYcobranca2.SQL.add('and BANCO_PORTADOR ='+(port)+'');
        if inicio > ' / /   ' then
        dmcob.QRYcobranca2.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
        if dtmovi > ' / /   ' then
         dmcob.QRYcobranca2.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
         dmcob.QRYcobranca2.SQL.add('ORDER BY '+ORDEM +' ASC');
         dmcob.QRYcobranca2.Open;
         dmcob.CDS_Cobranca2.Active :=TRUE;
         dmcob.CDS_Cobranca2.Filtered := false;
         dmcob.CDS_Cobranca2.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
         dmcob.CDS_Cobranca2.Filtered := True; }

          // CALCULO DE JUROS CREDIARIO VENCIDO
      dmcob.CDS_Cobranca1.First;
      Contador:=  dmcob.CDS_Cobranca1.RecordCount;
      For Q:=1 to Contador do
      begin
        DataAtual:= Date;
      DataVenc:=  dmcob.CDS_Cobranca1DATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
      DiasVenc := DataAtual -DMCOB.CDS_COBRANCA1DATA_VENCIMENTO.Asdatetime;
      Data := DataAtual - DataVenc;
      DecodeDate( Data, ano, mes, dia);
      Tot:= Data;
      dias := DiasVenc;
      if Tot < 0 then
      begin
      Tot:= 0;
      end;
      Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
      TotPert:= (Tot * Pert);
      DMB.SPC_Juros.Params[0].AsInteger:=  dmcob.CDS_Cobranca1CODIGO.Value;
      DMB.SPC_Juros.Params[2].Value:= TotPert;
      DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
      DMB.SPC_Juros.Params[5].value := dias;
      DMB.SPC_Juros.Execproc;
      dmcob.CDS_Cobranca1.Next;
      end;
      dmcob.CDS_COBRANCA1.Refresh;
      Application.ProcessMessages;
     end else


     if ComboBox1.ItemIndex = 3 then
     If DateEdit4.Date < DateEdit3.Date Then
     begin
     ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
     DateEdit4.Date := DateEdit3.Date;
     end Else
     begin
     // DM.SDS_Clientes.Open;
      dmcob.CDS_Cobranca1.Active :=FALSE;
      dmcob.QRYcobranca1.close;
      dmcob.QRYcobranca1.SQL.Clear;
      dmcob.QRYcobranca1.SQL.add('select * from CREDIARIO where SITUACAO= ''A'' '+'');
      if codcli > '' then
      dmcob.QRYcobranca1.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
      if port > '' then
      dmcob.QRYcobranca1.SQL.add('and BANCO_PORTADOR ='+(port)+'');
      if inicio > ' / /   ' then
      dmcob.QRYcobranca1.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
      if dtmovi > ' / /   ' then
      dmcob.QRYcobranca1.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
      if CheckBox2.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and (recebivel = 0) or (recebivel is null)');
          if CheckBox1.Checked = True then
     dmcob.QRYcobranca1.SQL.add('and NUMBOLETO is null ');
      dmcob.QRYcobranca1.SQL.add('ORDER BY '+ORDEM +' ASC');
      dmcob.QRYcobranca1.Open;
      dmcob.CDS_Cobranca1.Active :=TRUE;
      dmcob.CDS_Cobranca1.Filtered := false;
      dmcob.CDS_Cobranca1.Filter := 'DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
      dmcob.CDS_Cobranca1.Filtered := True;
      Label1.Caption := 'Nº Registros: ' + IntToStr(dmcob.CDS_Cobranca1.RecordCount);


   {   dmcob.CDS_Cobranca2.Active :=FALSE;
      dmcob.QRYcobranca2.close;
      dmcob.QRYcobranca2.SQL.Clear;
      dmcob.QRYcobranca2.SQL.add('select * from CREDIARIO where SITUACAO =''A'' '+'');
      if codcli > '' then
      dmcob.QRYcobranca2.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
      if port > '' then
      dmcob.QRYcobranca2.SQL.add('and BANCO_PORTADOR ='+(port)+'');
      if inicio > ' / /   ' then
      dmcob.QRYcobranca2.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
      if dtmovi > ' / /   ' then
      dmcob.QRYcobranca2.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
      dmcob.QRYcobranca2.SQL.add('ORDER BY '+ORDEM +' ASC');
      dmcob.QRYcobranca2.Open;
      dmcob.CDS_Cobranca2.Active :=TRUE;
      dmcob.CDS_Cobranca2.Filtered := false;
      dmcob.CDS_Cobranca2.Filter := 'DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
      dmcob.CDS_Cobranca2.Filtered := True;   }
      Application.ProcessMessages;
      end;

{
try
dmcob.CDS_Cobranca1.first;
repeat
dmcob.CDS_Cobranca1.edit;
dmcob.CDS_Cobranca1CHEK_BOX.Value:='';
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
end; }
Application.ProcessMessages;
DBGRID1.SETFOCUS;
end;


procedure TFormCobranca.suiButton1Click(Sender: TObject);
begin
{  try
dmcob.CDS_Cobranca1.first;
repeat
dmcob.CDS_Cobranca1.edit;
dmcob.CDS_Cobranca1CHEK_BOX.Value:='';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);
dmcob.CDS_Cobranca1.Next;
until dmcob.CDS_Cobranca1.eof;
//dmcob.CDS_Cobranca1.Refresh;
dbgrid1.refresh;
dmcob.CDS_Cobranca1.first;
dbgrid1.cursor:=crdefault;
except
dmcob.CDS_Cobranca1.cancel;
end;}

close;
end;

procedure TFormCobranca.suiButton3Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit4.Clear;
DateEdit3.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
RxLabel6.Caption :='';
//dmcob.QRYcobranca.SQL.Clear;
//dmcob.QRYcobranca.Destroy;
//dmcob.QRYcobranca.close;

end;

procedure TFormCobranca.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
      dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.ADD('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       RxLabel6.Caption   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormCobranca.FormShow(Sender: TObject);
var
  dt : TDateTime;
begin
DM.Sds_cidades.Active := False;
DM.Sds_cidades.Active := True;
//DM.SDS_Clientes.Active := True;
//DMCOB.Sds_Clientes_Cobranca.Active := False;
//DMCOB.Sds_Clientes_Cobranca.Active := true;
DateEdit3.SetFocus;
end;

procedure TFormCobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=caFree;
FormCobranca:=nil;
end;

procedure TFormCobranca.ClienteExit(Sender: TObject);
begin
{ dm.SDS_Clientes.Filtered := false;
  IF Cliente.Text > '' then
  begin
  DM.SDS_Clientes.Locate('CODIGO',CLIENTE.Text,[]);
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  end;}
   begin
//  DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
     dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.ADD('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
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
   dm.SDS_Clientes.SQL.Add('select * from clientes where codigo like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
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

procedure TFormCobranca.FormCreate(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOP,140,20,0,0,SWP_NOSIZE);
Edit2.Date := Date;
end;

procedure TFormCobranca.suiButton6Click(Sender: TObject);
begin
try
  if Formboletosbanc=nil   then
    BEGIN
     Formboletosbanc := TFormboletosbanc.Create(self);
     Formboletosbanc.edit1.text := Cliente.Text;
     Formboletosbanc.RxLabel6.Caption :=  RxLabel6.Caption;
     Formboletosbanc.Edit1Exit(Sender);
     Formboletosbanc.Button1Click(Sender);
     Formboletosbanc.ShowModal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Boletos Bancarios!!');
end;
end;

procedure TFormCobranca.suiButton4Click(Sender: TObject);
begin
 IF Cliente.TEXT = '' then
   begin
    ShowMessage('Por Favor selecione um cliente para prosseguir!!');
    Cliente.SetFocus;
    Exit;
   end;
   
 try

  if FormAgrupamento=nil   then
    BEGIN
     FormAgrupamento := TFormAgrupamento.Create(self);
     FormAgrupamento.tag := 1;
     FormAgrupamento.showmodal;
     
     suiButton2Click(Sender);
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a Tela de Agrupamentos!!');
end;
end;
procedure TFormCobranca.suiButton7Click(Sender: TObject);
begin
  panel3.Visible := True;
end;

procedure TFormCobranca.DBGrid1CellClick(Column: TXColumn);
begin



 {dmcob.CDS_Cobranca1.Edit;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'T' then
dmcob.CDS_Cobranca1CHEK_BOX.AsString := 'F'
else dmcob.CDS_Cobranca1CHEK_BOX.AsString := 'T';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);}

{
dmcob.CDS_Cobranca2.Refresh;
dmcob.CDS_Cobranca2.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca2.Eof do
begin
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
dmcob.CDS_Cobranca2.first;
dmcob.CDS_Cobranca2.Refresh;
//dmcob.CDS_Cobranca1.Refresh; }
//DBGrid1.Refresh;


        DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              //  inc(iQuant);
            end else
            begin
              A:= A - dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B - dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C - dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D - dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E - dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
            end;

end;

procedure TFormCobranca.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
    DtVen: TDateTime;
begin
  if not odd(DMCOB.cds_cobranca1.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;

  DtVen:= Dmcob.CDS_Cobranca1DATA_VENCIMENTO.Value;
  If DtVen < Date then // condição
  Dbgrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

//Desenha um checkbox no dbgrid
{if column.FieldName = 'CHEK_BOX' then begin
{DBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end; }

{IF Column.Field = Dmcob.CDS_Cobranca1DATA_VENCIMENTO THEN
begin
DtVen:= Dmcob.CDS_Cobranca1DATA_VENCIMENTO.Value;
If DtVen < Date then
//Dbgrid1.Canvas.Font.Style := Dbgrid1.Canvas.Font.Style + [fsbold];
Dbgrid1.Canvas.Font.Color := clRed;
If DtVen >= Date then
//Dbgrid1.Canvas.Font.Style := Dbgrid1.Canvas.Font.Style + [fsbold];
Dbgrid1.Canvas.Font.Color := clBlack;
Dbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
end; }

if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
   begin
  // Desenha um campo em branco
  Dbgrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if Dbgrid1.SelectedRows.IndexOf(Dbgrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(Dbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(Dbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;
end;

procedure TFormCobranca.RadioButton1Click(Sender: TObject);
begin
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
//IF application.messagebox('Deseja marcar todos?','Aviso',36)=idyes
//then
{try
dbgrid1.cursor:=crhourglass;
dmcob.CDS_Cobranca1.first;
repeat
dmcob.CDS_Cobranca1.edit;
dmcob.CDS_Cobranca1CHEK_BOX.Value:='X';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);
dmcob.CDS_Cobranca1.Next;
until dmcob.CDS_Cobranca1.eof;
//dmcob.CDS_Cobranca1.refresh;
dbgrid1.refresh;
dmcob.CDS_Cobranca1.first;
dbgrid1.cursor:=crdefault;
except
dmcob.CDS_Cobranca1.cancel;
end;
dmcob.CDS_CobrancA1.refresh;
//dmcob.CDS_Cobranca2.Refresh;
dmcob.CDS_Cobranca1.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca1.Eof do
begin
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
//dmcob.CDS_Cobranca1.Refresh;
dmcob.CDS_Cobranca1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
dmcob.CDS_Cobranca1.first;
//dmcob.CDS_CobrancA2.refresh;
dmcob.CDS_Cobranca1.Refresh; }

Selecao_Grade(1);


end;

procedure TFormCobranca.RadioButton2Click(Sender: TObject);
begin
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
Selecao_Grade(2);

//IF application.messagebox('Deseja Desmarcar todos?','Aviso',36)=idyes
//then
{CurrencyEdit1.Clear;
CurrencyEdit2.Clear;
CurrencyEdit3.Clear;
CurrencyEdit4.Clear;
CurrencyEdit5.Clear;
try

//dbgrid1.cursor:=crhourglass;
dmcob.CDS_Cobranca1.first;
repeat
dmcob.CDS_Cobranca1.edit;
dmcob.CDS_Cobranca1CHEK_BOX.Value:='F';
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
end;  }
end;

procedure TFormCobranca.suiButton10Click(Sender: TObject);
begin
panel1.Visible := False;
end;

procedure TFormCobranca.ComboEdit1ButtonClick(Sender: TObject);
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
        RXLabel9.Caption:= DM.SDS_UsuariosUSUARIO.Text;
        ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
      end;


procedure TFormCobranca.ComboEdit1Exit(Sender: TObject);
begin
If DM.SDS_Usuarios.locate('CODIGO',ComboEdit1.Text,[])=True then
       begin
        DM.SDS_usuarios.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
        RXLabel9.Caption:= DM.SDS_UsuariosUSUARIO.Text;
     //   ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
      end;
end;

procedure TFormCobranca.suiButton9Click(Sender: TObject);
var
  vend : string;
begin
vend:=ComboEdit1.Text;
try
dbgrid1.cursor:=crhourglass;
dmcob.CDS_Cobranca1.first;
repeat
  if DMCOB.CDS_COBRANCA1CHEK_BOX.Text = 'F' then
  begin
  dmcob.CDS_Cobranca1.edit;
  dmcob.CDS_Cobranca1Cobrador.text:=vend;
  dmcob.CDS_COBRANCA1DT_PREVISAO_PGTO.AsDateTime:= einicio.Date;
  dmcob.CDS_Cobranca1.Post;
  dmcob.CDS_Cobranca1.ApplyUpdates(0);
  end;
dmcob.CDS_Cobranca1.Next;
until dmcob.CDS_Cobranca1.eof;
//dmcob.CDS_Cobranca1.refresh;
dbgrid1.refresh;
dmcob.CDS_Cobranca1.first;
dbgrid1.cursor:=crdefault;
except
dmcob.CDS_Cobranca1.cancel;
end;
dmcob.CDS_CobrancA1.refresh;
//dmcob.CDS_Cobranca2.Refresh;
dmcob.CDS_Cobranca1.First;
end;

procedure TFormCobranca.suiButton5Click(Sender: TObject);
begin
panel1.visible := true;
end;

procedure TFormCobranca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormCobranca.suiButton11Click(Sender: TObject);
begin
//if Cliente.Text = '' then
//begin
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
 FormRelcobranca.RLReport1.PreviewModal;
 END ELSE
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
begin
FormRelcobranca := TFormRelCobranca.Create(self);
 FormRelcobranca.Tag := 1;
FormRelcobranca.RLReport1.Prepare;
FormRelcobranca.RLReport1.PreviewModal;
end;
{end else

if Cliente.Text >= '1' then
begin
DMCOB.Sds_Clientes.Active:=False;
DMCOB.Sds_Clientes.Active:=true;
//DMCOB.sds_crediario.Active := False;
//DMCOB.sds_crediario.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS WHERE CHEK_BOX >='+'X'+ 'order By DATA_VENCIMENTO ASC';
//DMCOB.sds_crediario.Active := true;
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
 BEGIN
FormRelcobranca := TFormRelCobranca.Create(self);
FormRelcobranca.RLReport1.DefaultFilter.Destroy;
FormRelcobranca.RLReport1.Prepare;
FormRelcobranca.RLReport1.PreviewModal;
END ELSE
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
FormRelcobranca := TFormRelCobranca.Create(self);
FormRelcobranca.RLReport1.Prepare;
FormRelcobranca.RLReport1.PreviewModal;
end;   }

panel3.Visible := false;
end;

procedure TFormCobranca.suiButton12Click(Sender: TObject);
begin
//if Cliente.Text = '' then
//begin
DMCOB.Sds_Clientes.Active:=False;
DMCOB.Sds_Clientes.Active:=true;
//DMCOB.sds_crediario.Active := False;
//DMCOB.sds_crediario.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS WHERE CHEK_BOX >='+'X'+ 'order By DATA_VENCIMENTO ASC';
//DMCOB.sds_crediario.Active := true;
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
 BEGIN
FormCobRazao := TFormCobRazao.Create(self);
FormCobRazao.RLReport1.DefaultFilter.Destroy;
FormCobRazao.RLReport1.Prepare;
FormCobRazao.RLReport1.PreviewModal;
 END ELSE
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
begin
FormCobRazao := TFormCobRazao.Create(self);
FormCobRazao.RLReport1.Prepare;
FormCobRazao.RLReport1.PreviewModal;
end;
panel3.Visible := false;
end;

procedure TFormCobranca.suiButton8Click(Sender: TObject);
begin
DMCOB.Sds_Clientes.Active:=False;
DMCOB.Sds_Clientes.Active:=true;
//IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='I') OR (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='Q') THEN
BEGIN
Formdpl := TFormdpl.Create(self);
Formdpl.RLReport1.Prepare;
Formdpl.RLReport1.PreviewModal;
end;
{IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='P')  THEN
begin

   FXduplicata.LoadFromFile('\siace\rel\f000150.fr3');
   FXduplicata.ShowReport;
end;  }
end;

procedure TFormCobranca.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 then
begin
 DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              //  inc(iQuant);
            end else
            begin
              A:= A - dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B - dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C - dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D - dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E - dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
            end;
 end;
{  dmcob.CDS_Cobranca1.Edit;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
dmcob.CDS_Cobranca1CHEK_BOX.AsString := ''
else dmcob.CDS_Cobranca1CHEK_BOX.AsString := 'X';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);


dmcob.CDS_Cobranca2.Refresh;
dmcob.CDS_Cobranca2.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca2.Eof do
begin
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
dmcob.CDS_Cobranca2.first;
dmcob.CDS_Cobranca2.Refresh;
end;  }
end;

procedure TFormCobranca.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_SPACE then
  begin
  DBGrid1.SelectedRows.CurrentRowSelected := not DBGrid1.SelectedRows.CurrentRowSelected;
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
              //  inc(iQuant);
            end else
            begin
              A:= A - dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
              B:= B - dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
              C:= C - dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
              D:= D - dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
              E:= E - dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
              //  dmcob.CDS_Cobranca1.next;
              CurrencyEdit1.Text:= FloatToStr(A);
              CurrencyEdit2.Text:= FloatToStr(B);
              CurrencyEdit3.Text:= FloatToStr(C);
              CurrencyEdit4.Text:= FloatToStr(D);
              CurrencyEdit5.Text:= FloatToStr(E);
            end;
  end;
  {dmcob.CDS_Cobranca1.Edit;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
dmcob.CDS_Cobranca1CHEK_BOX.AsString := ''
else dmcob.CDS_Cobranca1CHEK_BOX.AsString := 'X';
dmcob.CDS_Cobranca1.Post;
dmcob.CDS_Cobranca1.ApplyUpdates(0);


dmcob.CDS_Cobranca2.Refresh;
dmcob.CDS_Cobranca2.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca2.Eof do
begin
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA2VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA2VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA2VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA2VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca2CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA2VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca2.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
dmcob.CDS_Cobranca2.first;
dmcob.CDS_Cobranca2.Refresh;
end;}
end;

procedure TFormCobranca.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''

end;

procedure TFormCobranca.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

 If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

procedure TFormCobranca.suiButton13Click(Sender: TObject);
var
X: Real;
Int,  Contador2: Integer;
begin
IF FormPrincipal.OrotRemJurosCre = 'S' THEN
BEGIN
if Application.MESSAGEBOX('Confirma a Remoção dos Juros?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
dmcob.CDS_Cobranca1.First;
Contador2:= dmcob.CDS_Cobranca1.RecordCount;
For Int:=1 to Contador2 do
begin
SPC_Atualiza.Params[0].AsInteger:= dmcob.CDS_Cobranca1CODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Params[3].Value:= 0 ;
SPC_Atualiza.Execproc;
dmcob.CDS_Cobranca1.Next;
end;
 { DMB.SDS_Crediario_Baixa.Active:= False;
  DMB.SDS_Crediario_Baixa.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa.Active:= True;
  DMB.SDS_Crediario_Baixa1.Active:= False;
  DMB.SDS_Crediario_Baixa1.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS order by data_vencimento asc';
  DMB.SDS_Crediario_Baixa1.Active:= True;  }
  dmcob.CDS_Cobranca1.Refresh;

{  DMB.SDS_Crediario_Baixa.First;
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);;
end; }

            A:= 0;
            B:= 0;
            C:= 0;
            D:= 0;
            E:= 0;
//DMCOB.CDS_COBRANCA1.DisableControls;
 dmcob.CDS_Cobranca1.First;
   while not dmcob.CDS_Cobranca1.Eof  do
      begin
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
            A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
            B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
            C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
            D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
            E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
            CurrencyEdit1.Text:= FloatToStr(A);
            CurrencyEdit2.Text:= FloatToStr(B);
            CurrencyEdit3.Text:= FloatToStr(C);
            CurrencyEdit4.Text:= FloatToStr(D);
            CurrencyEdit5.Text:= FloatToStr(E);
            end;
          //  if DBGrid1.SelectedRows.CurrentRowSelected = FALSE then
           { begin
            A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
            B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
            C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
            D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
            E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
            dmcob.CDS_Cobranca1.Next;
            CurrencyEdit1.Text:= FloatToStr(A);
            CurrencyEdit2.Text:= FloatToStr(B);
            CurrencyEdit3.Text:= FloatToStr(C);
            CurrencyEdit4.Text:= FloatToStr(D);
            CurrencyEdit5.Text:= FloatToStr(E);
            end;  }
        dmcob.CDS_Cobranca1.Next;
      end;
dmcob.CDS_Cobranca1.First;
//DMCOB.CDS_COBRANCA1.EnableControls;
{A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca1.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca1.Eof do
begin
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
A:= A + dmcob.CDS_COBRANCA1VALOR_COMPRA.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
B:= B + dmcob.CDS_COBRANCA1VALOR_JUROS.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
C:= C + dmcob.CDS_COBRANCA1VALOR_DESCONTO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
D:= D + dmcob.CDS_COBRANCA1VALOR_PAGO.AsFloat;
if dmcob.CDS_Cobranca1CHEK_BOX.AsString = 'X' then
E:= E + dmcob.CDS_COBRANCA1VALOR_TOTAL.AsFloat;
//dmcob.CDS_Cobranca1.Refresh;
dmcob.CDS_Cobranca1.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
Application.ProcessMessages;
end;
dmcob.CDS_Cobranca1.first;
//dmcob.CDS_CobrancA2.refresh;
dmcob.CDS_Cobranca1.Refresh;    }

end;
end ELSE
BEGIN
FormPrincipal.MSG_NOT.Execute;
end; 
end;

end.


