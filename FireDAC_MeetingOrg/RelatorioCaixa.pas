unit RelatorioCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,ModulodeDadosRelatorios,ModulodeDados, ExtCtrls, ComCtrls, DBCtrls,
  SUIDBCtrls, SUIEdit, SUIImagePanel, SUIGroupBox,
  Mask, SUIDlg, SUIButton, RXCtrls, FMTBcd, DB, DBClient,
  Provider, SqlExpr, sBitBtn, aDvReflectionImage, RxToolEdit;

type
  TFormRelatorioCaixa = class(TForm)
    suiButton4: TsBitBtn;
    suiButton1: TsBitBtn;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit3: TDateEdit;
    Label4: TLabel;
    DateEdit4: TDateEdit;
    Label8: TLabel;
    Bevel2: TBevel;
    Label13: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label14: TLabel;
    Label1: TLabel;
    Bevel3: TBevel;
    Edit1: TDBLookupComboBox;
    Bevel4: TBevel;
    DateEdit6: TDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit7: TDateEdit;
    suiButton2: TsBitBtn;
    Label7: TLabel;
    codigo_plano: TComboEdit;
    Label34: TLabel;
    RxLabel1: TRxLabel;
    plano_desc: TEdit;
    qry_avu: TSQLQuery;
    qry_avuCODIGO: TIntegerField;
    qry_avuDATA: TDateField;
    qry_avuHISTORICO: TStringField;
    qry_avuUSUARIO: TStringField;
    qry_avuTIPO: TStringField;
    qry_avuVALOR_ENTRADA: TFMTBCDField;
    qry_avuVALOR_SAIDA: TFMTBCDField;
    qry_avuORIGEM: TStringField;
    dsp_avu: TDataSetProvider;
    cds_avu: TClientDataSet;
    cds_avuCODIGO: TIntegerField;
    cds_avuDATA: TDateField;
    cds_avuHISTORICO: TStringField;
    cds_avuUSUARIO: TStringField;
    cds_avuTIPO: TStringField;
    cds_avuVALOR_ENTRADA: TFMTBCDField;
    cds_avuVALOR_SAIDA: TFMTBCDField;
    cds_avuORIGEM: TStringField;
    cds_avuSOMAVALOR_ENT: TAggregateField;
    cds_avuSOMAVALOR_SAIDA: TAggregateField;
    dts_avu: TDataSource;
    qry_avuCODIGO_CC: TIntegerField;
    qry_avuNUMERO_CC: TStringField;
    qry_avuCODIGO_VENDA: TIntegerField;
    qry_avuCOD_CREDIARIO: TIntegerField;
    qry_avuCOD_COMPRA: TIntegerField;
    qry_avuN_CHEQUE: TStringField;
    qry_avuCOD_PLANO: TIntegerField;
    qry_avuPRE_DATADO: TDateField;
    qry_avuNOMINAL: TStringField;
    qry_avuCOMPENSADO: TStringField;
    qry_avuCOD_CHEQUE: TIntegerField;
    qry_avuCOD_CONTAS_PAGAR: TIntegerField;
    qry_avuDOC_LAN: TIntegerField;
    qry_avuCONCILIADO: TIntegerField;
    qry_avuCOD_DOC: TIntegerField;
    qry_avuDOCUMENTO_LANC: TStringField;
    qry_avuCOD_EMPRESA: TIntegerField;
    qry_avuHORA: TTimeField;
    qry_avuDB_CR: TStringField;
    cds_avuCODIGO_CC: TIntegerField;
    cds_avuNUMERO_CC: TStringField;
    cds_avuCODIGO_VENDA: TIntegerField;
    cds_avuCOD_CREDIARIO: TIntegerField;
    cds_avuCOD_COMPRA: TIntegerField;
    cds_avuN_CHEQUE: TStringField;
    cds_avuCOD_PLANO: TIntegerField;
    cds_avuPRE_DATADO: TDateField;
    cds_avuNOMINAL: TStringField;
    cds_avuCOMPENSADO: TStringField;
    cds_avuCOD_CHEQUE: TIntegerField;
    cds_avuCOD_CONTAS_PAGAR: TIntegerField;
    cds_avuDOC_LAN: TIntegerField;
    cds_avuCONCILIADO: TIntegerField;
    cds_avuCOD_DOC: TIntegerField;
    cds_avuDOCUMENTO_LANC: TStringField;
    cds_avuCOD_EMPRESA: TIntegerField;
    cds_avuHORA: TTimeField;
    cds_avuDB_CR: TStringField;
    img: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit3Enter(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DateEdit3Exit(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codigo_planoButtonClick(Sender: TObject);
    procedure codigo_planoExit(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCaixa: TFormRelatorioCaixa;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, Principal, ConsPlanoContas,
  RelCaixa;

{$R *.dfm}

procedure TFormRelatorioCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelatorioCaixa:=nil;
end;

procedure TFormRelatorioCaixa.suiButton1Click(Sender: TObject);
var
E, S, T: Real;
begin
If DateEdit2.Date < DateEdit1.Date then
begin
ShowMessage('Data inicial maior que data final verifique!!');
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin
    DMC2.SQLD_MOV_CAIXA.Active:=False;
    DMC2.CDS_MOV_CAIXA.Active:=False;
    DMC2.SQLD_MOV_CAIXA.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_CAIXA.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_CAIXA.Active:=True;
    DMC2.CDS_MOV_CAIXA.Active:=True;

  If  DMC2.CDS_MOV_CAIXA.EOF then
  Begin
       ShowMessage('Não ha dados a serem impressos!!');
       end else
begin
E:= E + DMC2.CDS_MOV_CAIXAVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_CAIXAVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_CAIXA.Next;
T:= E - S;
While not DMC2.CDS_MOV_CAIXA.Eof do
begin
E:= E + DMC2.CDS_MOV_CAIXAVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_CAIXAVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_CAIXA.Next;
T:= E - S;
end;
DMC2.CDS_MOV_CAIXA.First;

DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',T));
DMR.RvRelatorios.SelectReport('Rp_CaixaAnalitico',False);
DMR.RvRelatorios.Execute;
end;
end;
end;

procedure TFormRelatorioCaixa.suiButton4Click(Sender: TObject);
var
E, S, T: Real;
begin

If DateEdit2.Date < DateEdit1.Date then
begin
ShowMessage('Data inicial maior que a data final!!');
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin

    DMC2.SQLD_MOV_CaixaEspecifico.Active:=False;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=False;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_MOV_CaixaEspecifico.Params[2].AsString:=Edit1.Text;
    DMC2.SQLD_MOV_CaixaEspecifico.Active:=True;
    DMC2.CDS_MOV_CaixaEspecifico.Active:=True;

  If  DMC2.CDS_MOV_CaixaEspecifico.EOF then
  Begin
      ShowMessage('Não Ha dados a Serem Impressos!!');
       end else
begin
E:= E + DMC2.CDS_MOV_CaixaEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_CaixaEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_CaixaEspecifico.Next;
T:= E - S;
While not DMC2.CDS_MOV_CaixaEspecifico.Eof do
begin
E:= E + DMC2.CDS_MOV_CaixaEspecificoVALOR_ENTRADA.AsFloat;
S:= S + DMC2.CDS_MOV_CaixaEspecificoVALOR_SAIDA.AsFloat;
DMC2.CDS_MOV_CaixaEspecifico.Next;
T:= E - S;
end;
DMC2.CDS_MOV_CaixaEspecifico.First;


DMR.RvRelatorios.SetParam('datai',DateEdit3.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit4.Text);
DMR.RvRelatorios.SetParam('soma',FormatFloat('R$: ##,##0.00',T));
DMR.RvRelatorios.SelectReport('Rp_CaixaEspecifico',False);
DMR.RvRelatorios.Execute;
end;
end;
end;
procedure TFormRelatorioCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioCaixa.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCaixa.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCaixa.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCaixa.DateEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRelatorioCaixa.codigo_planoButtonClick(Sender: TObject);
begin
if FormConsPlanoContas=nil   then
    begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      codigo_plano.Text := dm.SDS_PlContasCODIGO.Text;
      plano_desc.Text := dm.SDS_PlContasNOME.Text;
      end;
end;

procedure TFormRelatorioCaixa.codigo_planoExit(Sender: TObject);
begin
IF codigo_plano.Text > '' THEN
begin
DM.SDS_PlContas.Active:= False;
DM.SDS_PlContas.Active:= True;
If (DM.SDS_PlContas.Locate('CODIGO',VarArrayOf([codigo_plano.Text]),[])) then
begin
plano_desc.Text:= DM.SDS_PlContasNome.Text;
end;
end;
end;

procedure TFormRelatorioCaixa.suiButton2Click(Sender: TObject);
var
  PLANO : STRING;
  inicio, final :string;
  begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit6.TexT;
    final:=dateedit7.TexT;

    PLANO := codigo_plano.Text;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from MOVIMENTO_DIARIO where CODIGO >0'+'');
    if plano > '' then
    qry_avu.SQL.add('and COD_PLANO ='+QuotedStr(PLANO)+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;
    IF cds_avu.RecordCount > 0 then
    begin
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    begin
    FormRelCaixa1 := TFormRelCaixa1.Create(self);
    FormRelCaixa1.RLReport1.Prepare;
    FormRelCaixa1.RLReport1.PreviewModal;
    end else
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    FormRelCaixa1 := TFormRelCaixa1.Create(self);
    FormRelCaixa1.RLReport1.DefaultFilter.Destroy;
    FormRelCaixa1.RLReport1.Prepare;
    FormRelCaixa1.RLReport1.PreviewModal;
    end;
    end ELSE
    ShowMessage('Não há dados a serem impressos.');
end;

end.
