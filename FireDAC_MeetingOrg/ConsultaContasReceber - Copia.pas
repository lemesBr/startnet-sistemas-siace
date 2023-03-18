unit ConsultaContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurrEdit, Grids, XDBGrids, StdCtrls, ToolEdit, ExtCtrls,
  SUIButton, Mask, RXCtrls, db, DBCtrls, Buttons, sBitBtn;

type
  TFormConsultaCR = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    RxLabel1: TRxLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit4: TDateEdit;
    suiButton2: TsBitBtn;
    DateEdit3: TDateEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Cliente: TComboEdit;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsBitBtn;
    suiButton3: TsBitBtn;
    Combobox1: TComboBox;
    GroupBox2: TGroupBox;
    DBGrid1: TXDBGrid;
    Edit2: TDateEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel7: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    suiButton7: TsBitBtn;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit3: TEdit;
    Label9: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    Label10: TLabel;
    ComboBox2: TComboBox;
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
  private
    { Private declarations }
    A,B,C,D,E: Real;
  public
    { Public declarations }
  end;

var
  FormConsultaCR: TFormConsultaCR;
  inicio, final,codcli,port :string;
  dtmovi, dtmovf :string;
  DtVen: string;

implementation

uses Udmcob, RelCobranca, RelCobrancaGeral, ModulodeDados,
  ModulodeDadosBaixas, ConsClientes, CobrancaCr, ModuleDados1, Principal;

{$R *.dfm}

procedure TFormConsultaCR.suiButton7Click(Sender: TObject);
begin
{if Cliente.Text = '' then
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
end else}
//if Cliente.Text >= '1' then
//begin
DMCOB.Sds_Clientes3.Active:=False;
DMCOB.Sds_Clientes3.Active:=true;
//DMCOB.sds_crediario.Active := False;
//DMCOB.sds_crediario.DataSet.CommandText:='select * from V_CREDIARIO_BOLETOS WHERE CHEK_BOX >='+'X'+ 'order By DATA_VENCIMENTO ASC';
//DMCOB.sds_crediario.Active := true;
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
 BEGIN
 FormcobrancaCr := TFormcobrancaCr.Create(self);
 FormcobrancaCr.RLReport1.DefaultFilter.Destroy;
FormcobrancaCr.RLReport1.Prepare;
FormcobrancaCr.RLReport1.PreviewModal;
END ELSE
IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
begin
FormcobrancaCr := TFormcobrancaCr.Create(self);
FormcobrancaCr.RLReport1.Prepare;
FormcobrancaCr.RLReport1.PreviewModal;
end;
end;

procedure TFormConsultaCR.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormConsultaCR.suiButton2Click(Sender: TObject);
Var
Data, DataVenc, DataAtual, DiasVenc: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, dias : Real;
CONTADOR, Q: Integer;
CID, zona : string; 
TP_CONT, TIPO_CONT, ordem : string;
  begin
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.Clear;

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
    TIPO_CONT := Edit4.Text;

    Edit2.Date := Date;
    DtVen:= edit2.text;
    Dtven:= datetostr(DATE);

    CID := DBLookupComboBox1.Text;

    ORDEM := ComboBox2.Text;

    zona := DBLookupComboBox2.Text;

    TP_CONT := DBLookupComboBox3.Text;

    if ComboBox1.ItemIndex = 0 then
    begin
    If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit4.Date := DateEdit3.Date;
    end  Else
   begin

    //DM.SDS_Clientes3.Open;
    dmcob.CDS_Cobranca3.Active :=FALSE;
    dmcob.QRYcobranca3.close;
    dmcob.QRYcobranca3.SQL.Clear;
    dmcob.QRYcobranca3.SQL.add('select * from V_CREDIARIO_BOLETOS_CIDADE WHERE CODIGO > 0 '+'');
    if codcli > '' then
    dmcob.QRYcobranca3.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
    if port > '' then
    dmcob.QRYcobranca3.SQL.add('and BANCO_PORTADOR ='+(port)+'');
    if TIPO_CONT > '' then
    dmcob.QRYcobranca3.SQL.add('and ID_PLANO ='+(TIPO_CONT)+'');
    if inicio > ' / /   ' then
    dmcob.QRYcobranca3.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    if dtmovi > ' / /   ' then
    dmcob.QRYcobranca3.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');

    if CheckBox2.Checked = True then
    dmcob.QRYcobranca3.SQL.add('and (recebivel = 0) or (recebivel is null)');

    dmcob.QRYcobranca3.SQL.add('ORDER BY '+ORDEM +' ASC');
    dmcob.QRYcobranca3.Open;
    dmcob.CDS_Cobranca3.Active :=TRUE;
    dmcob.CDS_Cobranca3.Filtered := false;

     IF DBLookupComboBox1.Text > '' then
     begin
     dmcob.CDS_Cobranca3.Filtered := false;
     dmcob.CDS_Cobranca3.Filter := 'CIDADE ='+QuotedStr(CID);
     dmcob.CDS_Cobranca3.Filtered := True;
     end;
     IF DBLookupComboBox2.Text > '' then
     begin
     dmcob.CDS_Cobranca3.Filtered := false;
     dmcob.CDS_Cobranca3.Filter := 'DESCRICAO ='+QuotedStr(ZONA);
     dmcob.CDS_Cobranca3.Filtered := True;
     end;
     IF DBLookupComboBox3.Text > '' then
     begin
     dmcob.CDS_Cobranca3.Filtered := false;
     dmcob.CDS_Cobranca3.Filter := 'DESCRICAO1 ='+QuotedStr(TP_CONT);
     dmcob.CDS_Cobranca3.Filtered := True;
     end;
     Label1.Caption := 'N° Registros: ' + IntToStr(dmcob.CDS_Cobranca3.RecordCount);
     end;

      // CALCULO DE JUROS CREDIARIO VENCIDO
      dmcob.CDS_Cobranca3.First;
      Contador:=  dmcob.CDS_Cobranca3.RecordCount;
      For Q:=1 to Contador do
      begin
        DataAtual:= Date;
        DataVenc:=  dmcob.CDS_Cobranca3DATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
        DiasVenc := DataAtual -DMCOB.CDS_COBRANCA3DATA_VENCIMENTO.Asdatetime;
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
        DMB.SPC_Juros.Params[0].AsInteger:=  dmcob.CDS_Cobranca3CODIGO.Value;
        DMB.SPC_Juros.Params[2].Value:= TotPert;
        DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
        DMB.SPC_Juros.Params[5].value := dias;
        DMB.SPC_Juros.Execproc;
        dmcob.CDS_Cobranca3.Next;
       // dmcob.CDS_Cobranca3.Refresh;
        end;
    end  else

    if ComboBox1.ItemIndex = 1 then
    If DateEdit4.Date < DateEdit3.Date Then
      begin
      ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
      DateEdit4.Date := DateEdit3.Date;
      end Else
    begin
     // DM.SDS_Clientes3.Open;
      dmcob.CDS_Cobranca3.Active :=FALSE;
      dmcob.QRYcobranca3.close;
      dmcob.QRYcobranca3.SQL.Clear;
      dmcob.QRYcobranca3.SQL.add('select * from V_CREDIARIO_BOLETOS_CIDADE where CODIGO >0'+'');
      if codcli > '' then
      dmcob.QRYcobranca3.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
      if port > '' then
      dmcob.QRYcobranca3.SQL.add('and BANCO_PORTADOR ='+(port)+'');
      if TIPO_CONT > '' then
      dmcob.QRYcobranca3.SQL.add('and ID_PLANO ='+(TIPO_CONT)+'');
      if inicio > ' / /   ' then
      dmcob.QRYcobranca3.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
      if dtmovi > ' / /   ' then
       dmcob.QRYcobranca3.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');

      if CheckBox2.Checked = True then
      dmcob.QRYcobranca3.SQL.add('and (recebivel = 0) or (recebivel is null)');

       dmcob.QRYcobranca3.SQL.add('ORDER BY '+ORDEM +' ASC');
       dmcob.QRYcobranca3.Open;
       dmcob.CDS_Cobranca3.Active :=TRUE;
       dmcob.CDS_Cobranca3.Filtered := false;
       dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
       dmcob.CDS_Cobranca3.Filtered := True;
       IF DBLookupComboBox1.Text > '' then
       begin
       dmcob.CDS_Cobranca3.Filtered := false;
       dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and CIDADE ='+QuotedStr(CID);
       dmcob.CDS_Cobranca3.Filtered := True;
       end;
       IF DBLookupComboBox2.Text > '' then
       begin
       dmcob.CDS_Cobranca3.Filtered := false;
       dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and DESCRICAO ='+QuotedStr(ZONA);
       dmcob.CDS_Cobranca3.Filtered := True;
       end;
     IF DBLookupComboBox3.Text > '' then
     begin
     dmcob.CDS_Cobranca3.Filtered := false;
     dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and DESCRICAO1 ='+QuotedStr(TP_CONT);
     dmcob.CDS_Cobranca3.Filtered := True;
     end;
     Label1.Caption := 'N° Registros: ' + IntToStr(dmcob.CDS_Cobranca3.RecordCount);

          // CALCULO DE JUROS CREDIARIO VENCIDO
        dmcob.CDS_Cobranca3.First;
        Contador:=  dmcob.CDS_Cobranca3.RecordCount;
        For Q:=1 to Contador do
        begin
        DataAtual:= Date;
        DataVenc:=  dmcob.CDS_Cobranca3DATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
        DiasVenc := DataAtual -DMCOB.CDS_COBRANCA3DATA_VENCIMENTO.Asdatetime;
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
        DMB.SPC_Juros.Params[0].AsInteger:=  dmcob.CDS_Cobranca3CODIGO.Value;
        DMB.SPC_Juros.Params[2].Value:= TotPert;
        DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
        DMB.SPC_Juros.Params[5].value := dias;
        DMB.SPC_Juros.Execproc;
        dmcob.CDS_Cobranca3.Next;
       // dmcob.CDS_Cobranca3.Refresh;
        end;
 end else


   if ComboBox1.ItemIndex = 2 then
     If DateEdit4.Date < DateEdit3.Date Then
     begin
     ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
     DateEdit4.Date := DateEdit3.Date;
     end Else
     begin
      DM.SDS_Clientes.Open;
      dmcob.CDS_Cobranca3.Active :=FALSE;
      dmcob.QRYcobranca3.close;
      dmcob.QRYcobranca3.SQL.Clear;
      dmcob.QRYcobranca3.SQL.add('select * from V_CREDIARIO_BOLETOS_CIDADE where CODIGO >0'+'');
      if codcli > '' then
      dmcob.QRYcobranca3.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
      if port > '' then
      dmcob.QRYcobranca3.SQL.add('and BANCO_PORTADOR ='+(port)+'');
      if TIPO_CONT > '' then
      dmcob.QRYcobranca3.SQL.add('and ID_PLANO ='+(TIPO_CONT)+'');
      if inicio > ' / /   ' then
      dmcob.QRYcobranca3.SQL.add('and DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
      if dtmovi > ' / /   ' then
      dmcob.QRYcobranca3.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');

      if CheckBox2.Checked = True then
      dmcob.QRYcobranca3.SQL.add('and (recebivel = 0) or (recebivel is null)');

      dmcob.QRYcobranca3.SQL.add('ORDER BY '+ORDEM +' ASC');
      dmcob.QRYcobranca3.Open;
      dmcob.CDS_Cobranca3.Active :=TRUE;
      dmcob.CDS_Cobranca3.Filtered := false;
      dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
      dmcob.CDS_Cobranca3.Filtered := True;
      IF DBLookupComboBox1.Text > '' then
      begin
      dmcob.CDS_Cobranca3.Filtered := false;
      dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and CIDADE ='+QuotedStr(CID);
      dmcob.CDS_Cobranca3.Filtered := True;
      end;
      IF DBLookupComboBox2.Text > '' then
       begin
       dmcob.CDS_Cobranca3.Filtered := false;
       dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and DESCRICAO ='+QuotedStr(ZONA);
       dmcob.CDS_Cobranca3.Filtered := True;
       end;

     IF DBLookupComboBox3.Text > '' then
     begin
     dmcob.CDS_Cobranca3.Filtered := false;
     dmcob.CDS_Cobranca3.Filter := 'DATA_VENCIMENTO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))))+' and DESCRICAO1 ='+QuotedStr(TP_CONT);
     dmcob.CDS_Cobranca3.Filtered := True;
     end;
     Label1.Caption := 'Nº Registros: ' + IntToStr(dmcob.CDS_Cobranca3.RecordCount);
     end;

dmcob.CDS_Cobranca3.First;
A:= 0;
B:= 0;
C:= 0;
D:= 0;
E:= 0;
A:= A + dmcob.CDS_Cobranca3VALOR_COMPRA.AsFloat;
B:= B + dmcob.CDS_Cobranca3VALOR_JUROS.AsFloat;
C:= C + dmcob.CDS_Cobranca3VALOR_DESCONTO.AsFloat;
D:= D + dmcob.CDS_Cobranca3VALOR_PAGO.AsFloat;
E:= E + dmcob.CDS_Cobranca3VALOR_TOTAL.AsFloat;
dmcob.CDS_Cobranca3.Next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
While not dmcob.CDS_Cobranca3.Eof do
begin

A:= A + dmcob.CDS_Cobranca3VALOR_COMPRA.AsFloat;
B:= B + dmcob.CDS_Cobranca3VALOR_JUROS.AsFloat;
C:= C + dmcob.CDS_Cobranca3VALOR_DESCONTO.AsFloat;
D:= D + dmcob.CDS_Cobranca3VALOR_PAGO.AsFloat;
E:= E + dmcob.CDS_Cobranca3VALOR_TOTAL.AsFloat;
//dmcob.CDS_Cobranca3.Refresh;
dmcob.CDS_Cobranca3.next;
CurrencyEdit1.Text:= FloatToStr(A);
CurrencyEdit2.Text:= FloatToStr(B);
CurrencyEdit3.Text:= FloatToStr(C);
CurrencyEdit4.Text:= FloatToStr(D);
CurrencyEdit5.Text:= FloatToStr(E);
end;
dmcob.CDS_Cobranca3.first;
//dmcob.CDS_CobrancA2.refresh;
dmcob.CDS_Cobranca3.Refresh;
end;


procedure TFormConsultaCR.suiButton3Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit4.Clear;
DateEdit3.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
RxLabel6.Caption :='';
Edit4.Clear;
end;

procedure TFormConsultaCR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=caFree;
FormConsultaCR:=nil;
end;

procedure TFormConsultaCR.FormCreate(Sender: TObject);
begin
Edit2.Date := Date;
DM.SDS_zonas.Active := False;
DM.SDS_zonas.Active := true;
dm1.SDS_Contratos_Caract.Active :=False;
dm1.SDS_Contratos_Caract.Active :=true;
DM1.sds_contrato_tipo.Active := False;
DM1.sds_contrato_tipo.Active := true;
DM1.SDS_CONTRATO_PLANO.Active := False;
DM1.SDS_CONTRATO_PLANO.Active := true;

end;

procedure TFormConsultaCR.ClienteExit(Sender: TObject);
begin
 {IF Cliente.Text > '' then
  begin

  DM.SDS_Clientes.Locate('CODIGO',CLIENTE.Text,[]);
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  end; }


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


procedure TFormConsultaCR.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
       RxLabel6.Caption   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConsultaCR.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
  var
    DtVen: TDateTime;
begin
DtVen:= dmcob.CDS_Cobranca3DATA_VENCIMENTO.Value;
If DtVen < Date then
Dbgrid1.Canvas.Font.Color:= clRed;
If DtVen >= Date then
Dbgrid1.Canvas.Font.Color:= clBlue;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFormConsultaCR.DBLookupComboBox2Click(Sender: TObject);
begin
DBLookupComboBox1.ListFieldIndex := 0 ;
end;

procedure TFormConsultaCR.DBLookupComboBox1Enter(Sender: TObject);
begin
DBLookupComboBox2.ListFieldIndex := 0 ;
end;

procedure TFormConsultaCR.DBLookupComboBox1Click(Sender: TObject);
begin
DBLookupComboBox2.ListFieldIndex := 0 ;
end;

procedure TFormConsultaCR.DBLookupComboBox2Enter(Sender: TObject);
begin
DBLookupComboBox1.ListFieldIndex := 0;
end;

procedure TFormConsultaCR.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormConsultaCR.Edit4Exit(Sender: TObject);
begin
Edit4.Text :=  DM1.SDS_CONTRATO_PLANOID_PLANO.TEXT;

end;

end.
