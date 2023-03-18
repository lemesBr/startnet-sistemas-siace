unit RCParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, SUIDlg, SUIComboBox,
  SUIEdit, Mask,  DBCtrls, SUIDBCtrls, FMTBcd, SqlExpr,
  DB, DBClient, SimpleDS, IBCustomDataSet, IBQuery, Data.DBXFirebird,
  RxCurrEdit, RxToolEdit;

type
  TFormRCParcial = class(TForm)
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Label1: TLabel;
    BaixaParcela: TsuiMessageDialog;
    Panel1: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    DateEdit1: TDateEdit;
    N_CONTA: TsuiEdit;
    N_CHEQUE: TsuiEdit;
    suiEdit1: TsuiEdit;
    ComboBox2: TsuiComboBox;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    SpSalvar: TsuiButton;
    suiButton6: TsuiButton;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    MsgI: TsuiMessageDialog;
    DTS_CHEQUE: TDataSource;
    SDS_CHEQUE: TSimpleDataSet;
    SDS_CHEQUECODIGO: TIntegerField;
    SDS_CHEQUECODIGO_COMPRA: TIntegerField;
    SDS_CHEQUEBANCO: TStringField;
    SDS_CHEQUEAGENCIA: TStringField;
    SDS_CHEQUECONTA_CORRENTE: TStringField;
    SDS_CHEQUECONTA_DESDE: TDateField;
    SDS_CHEQUETITULAR: TStringField;
    SDS_CHEQUETIPO_CHEQUE: TStringField;
    SDS_CHEQUEN_CHEQUE: TStringField;
    SDS_CHEQUEQNT: TStringField;
    SDS_CHEQUEVALOR_CHEQUE: TFMTBCDField;
    SDS_CHEQUECLIENTE: TStringField;
    SDS_CHEQUERETORNARDO: TStringField;
    SDS_CHEQUERETORNADO_PAGO: TStringField;
    SDS_CHEQUEMOTIVO_RETORNO: TStringField;
    SDS_CHEQUEDATA_CADASTRO: TDateField;
    SDS_CHEQUEDATA_DEPOSITO: TDateField;
    SDS_CHEQUEDATA_RETORNO: TDateField;
    SDS_CHEQUEDATA_BAIXA: TDateField;
    SDS_CHEQUEUSUARIO_CADASTRO: TStringField;
    SDS_CHEQUEUSUARIO_BAIXA: TStringField;
    SDS_CHEQUECOMPENSADO: TStringField;
    SPC_CHEQUE: TSQLStoredProc;
    MSG: TsuiMessageDialog;
    SDS_CHEQUECODIGO_CC: TIntegerField;
    SDS_CHEQUENUMERO_CC: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    Label22: TLabel;
    Label24: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    Panel7: TPanel;
    suiButton3: TsuiButton;
    suiButton4: TsuiButton;
    DBLookupComboBox1: TsuiEdit;
    DBLCB_AGENCIA: TsuiEdit;
    suiButton5: TsuiButton;
    qrcaixa_mov: TIBQuery;
    SDS_CHEQUECOD_EMPRESA: TIntegerField;
    SDS_CHEQUECOD_CLIENTE: TIntegerField;
    SDS_CHEQUENUMERO: TIntegerField;
    SDS_CHEQUECOD_BARRAS_CHEQUE: TStringField;
    SDS_CHEQUECHEK_BOX: TStringField;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure suiEdit1Enter(Sender: TObject);
    procedure DBLCB_AGENCIAEnter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure N_CONTAEnter(Sender: TObject);
    procedure N_CHEQUEEnter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure DBLCB_AGENCIAExit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure N_CONTAExit(Sender: TObject);
    procedure N_CHEQUEExit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure SpSalvarClick(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton5Click(Sender: TObject);
  private
    ValChPre, VlDinheiro, VlPar, VlREst: Real;
    ValCh, ValTroco, ValParc: Real;
    Data : TDate;

  public
    { Public declarations }
  end;

var
  FormRCParcial: TFormRCParcial;
  TD:TTransactionDesc;

implementation

uses ModulodeDadosBaixas,Acesso,Principal,CRCrediario,
  Z_RotinasGerais, ModulodeDados, Recibo, UDadosAdm, CRCrediarioconv;

{$R *.dfm}


procedure TFormRCParcial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormRCParcial:=nil;
end;

procedure TFormRCParcial.suiButton1Click(Sender: TObject);
begin
Panel6.Enabled:= True;
CurrencyEdit4.Color:= clWhite;;
suiButton2.Enabled:= False;
suiButton1.Enabled:= False;
suiButton3.Enabled:= True;
suiButton4.Enabled:= True;
suiButton5.Enabled:= True;
CurrencyEdit4.SetFocus;
end;

procedure TFormRCParcial.suiButton2Click(Sender: TObject);
begin
Panel3.Enabled:= True;
DateEdit2.Enabled:= True;
DateEdit2.Color:= clWhite;
CurrencyEdit1.Color:= clWhite;
DBLookupComboBox1.Color:= clWhite;
suiEdit1.Color:= clWhite;
DBLCB_AGENCIA.Color:= clWhite;
ComboBox2.Color:= clWhite;
N_CONTA.Color:= clWhite;
N_CHEQUE.Color:= clWhite;
DateEdit1.Color:= clWhite;
suiButton2.Enabled:= False;
suiButton1.Enabled:= False;
suiButton6.Enabled:= True;
SPSalvar.Enabled:= True;
DateEdit2.SetFocus;
end;

procedure TFormRCParcial.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRCParcial.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.CurrencyEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.DBLookupComboBox1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.DBLCB_AGENCIAEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.ComboBox2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.N_CONTAEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.N_CHEQUEEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRCParcial.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
if DateEdit2.Text = '  /  /    ' then
begin
MsgI.Text:= 'Informe A Data Para Deposito';
MsgI.ShowModal;
DateEdit2.SetFocus;
end;
end;

procedure TFormRCParcial.DBLookupComboBox1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.suiEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.DBLCB_AGENCIAExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.ComboBox2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.N_CONTAExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.N_CHEQUEExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRCParcial.FormShow(Sender: TObject);
begin
DM.SDS_CONFIGURACOES.Active:= False;
DM.SDS_Bancos.Active:= False;
DM.SDS_Agencias.Active:= False;
DM.SDS_CONFIGURACOES.Active:= True;
DM.SDS_Bancos.Active:= True;
DM.SDS_Agencias.Active:= True;
end;

procedure TFormRCParcial.CurrencyEdit1Exit(Sender: TObject);

begin
DataAtual:= Date;
DataVenc:= DateEdit2.Date;
ValCh:= CurrencyEdit1.Value;
Data := DataVenc - DataAtual;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
if CheckBox1.Checked = True then
begin
Pert:= DM.SDS_CONFIGURACOESJUROS_CHEQUE.AsFloat;
TotPert:= (Tot * Pert);
ValChPre:= (ValCh * TotPert)/100;
ValChPre:= (ValCh + ValChPre);
CurrencyEdit2.Value:= ValChPre;
ValParc:= DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsCurrency;
ValTroco:= (ValParc - ValChPre);
CurrencyEdit3.Value:= ValTroco;
DateEdit2.Enabled:= False;
end else
begin
//Pert:= DM.SDS_CONFIGURACOESJUROS_CHEQUE.AsFloat;
//TotPert:= (Tot * Pert);
//ValChPre:= (ValCh * TotPert)/100;
ValChPre:= CurrencyEdit1.Value;
CurrencyEdit2.Value:= ValChPre;
ValParc:= DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsCurrency;
ValTroco:= (ValParc - ValChPre);
CurrencyEdit3.Value:= ValTroco;
DateEdit2.Enabled:= False;
end;
CorSaida(Sender);

end;

procedure TFormRCParcial.suiButton4Click(Sender: TObject);
begin
Panel6.Enabled:= False;
CurrencyEdit4.Color:= $00E8E8E8;
suiButton2.Enabled:= True;
suiButton1.Enabled:= True;
suiButton3.Enabled:= False;
suiButton4.Enabled:= False;
end;

procedure TFormRCParcial.suiButton3Click(Sender: TObject);
var
W: Real;
begin
IF (VlRest <= 0) THEN
BEGIN
MSGI.Text:= 'O Valor Há Receber Não Pode Ser Igual ou Superior ao Valor da Parcela. ! Utilize Baixa de Parcela Ou Baixa Total Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
//Try

DataAtual:= Date;
DataVenc:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DiasVenc := DataAtual - DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Asdatetime;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);

       IF Tag = 1 then
       BEGIN

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := VlDinheiro;
                    qrcaixa_mov.parambyname('valor').asfloat := VlDinheiro;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                   qrcaixa_mov.ExecSQL;
                   dm.IBTransaction.CommitRetaining;

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    parambyname('DOC_REC_ADM').Value          := null;
                    parambyname('JUROS_P').Value              := VlDinheiro * TotPert / 100;
                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;



FormCRCrediario.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[3].Value:= VlDinheiro;
FormCRCrediario.SPC_Baixa_Parcial.Params[4].Value:= VlDinheiro * TotPert / 100;
FormCRCrediario.SPC_Baixa_Parcial.Execproc;

  // ShowMessage('JUROS POSTERGADOS'+ FloatToStr(VlDinheiro * TotPert / 100));
    
 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := CurrencyEdit4.Value;
  Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;


  Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' os titulos conforme segue:';
  Formrecibo.Memo2.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text + ' Valor R$: ' + CurrencyEdit4.Text + ' Venc: '+ DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Text);

  //Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
  Formrecibo.Showmodal;
  end;



DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
end;
Close;
{except
MSG.ShowModal;
end; }
  IF Tag = 2 then
   BEGIN
     try
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := VlDinheiro;
                    qrcaixa_mov.parambyname('valor').asfloat := VlDinheiro;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;



                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    parambyname('DOC_REC_ADM').Value          := null;
                        parambyname('JUROS_P').Value              := VlDinheiro * TotPert / 100;
                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;



FormCRCrediarioConv.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[3].Value:= VlDinheiro;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[4].Value:= VlDinheiro * TotPert / 100;
FormCRCrediarioConv.SPC_Baixa_Parcial.Execproc;


 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.Value := CurrencyEdit4.Value;
  Formrecibo.Edit1.Text := FormCRCrediarioConv.RxLabel6.Caption;


         Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' os titulos conforme segue:';
         Formrecibo.Memo2.Lines.Add(''+ DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text + ' Valor R$: ' + CurrencyEdit4.Text + ' Venc: '+ DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Text);

  //Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';
  Formrecibo.Showmodal;
  end;



DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;
end;
Close;
except
MSG.ShowModal;
end;
end;
end;
end;

procedure TFormRCParcial.suiButton6Click(Sender: TObject);
begin
Panel3.Enabled:= False;
DateEdit2.Color:= $00E8E8E8;
CurrencyEdit1.Color:= $00E8E8E8;
DBLookupComboBox1.Color:= $00E8E8E8;
suiEdit1.Color:= $00E8E8E8;
DBLCB_AGENCIA.Color:= $00E8E8E8;
ComboBox2.Color:= $00E8E8E8;
N_CONTA.Color:= $00E8E8E8;
N_CHEQUE.Color:= $00E8E8E8;
DateEdit1.Color:= $00E8E8E8;
suiButton2.Enabled:= True;
suiButton1.Enabled:= True;
suiButton6.Enabled:= False;
SPSalvar.Enabled:= False;
end;

procedure TFormRCParcial.SpSalvarClick(Sender: TObject);
var
Code: INTEGER;
J, VB: Real;
begin

DataAtual:= Date;
DataVenc:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DiasVenc := DataAtual - DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Asdatetime;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);

if Tag = 1 then
begin
VB:= dmb.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
IF DBLookupComboBox1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Banco!';
MSGI.ShowModal;
DBLookupComboBox1.SetFocus;
end else
IF suiEdit1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Titular da Conta!';
MSGI.ShowModal;
suiEdit1.SetFocus;
end else
IF DBLCB_AGENCIA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Agência!';
MSGI.ShowModal;
DBLCB_AGENCIA.SetFocus;
end else
IF ComboBox2.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Tipo de Cheque!';
MSGI.ShowModal;
ComboBox2.SetFocus;
end else
IF N_CONTA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Conta!';
MSGI.ShowModal;
N_CONTA.SetFocus;
end else
IF N_CHEQUE.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número do Cheque!';
MSGI.ShowModal;
N_CHEQUE.SetFocus;
end else
IF DateEdit1.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data da Conta!';
MSGI.ShowModal;
DateEdit1.SetFocus;
end else
IF DateEdit2.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data para Deposito!';
MSGI.ShowModal;
DateEdit2.SetFocus;
end else
IF (ValChPre >= VB) THEN
BEGIN
MSGI.Text:= 'O Valor Há Receber Não Pode Ser Igual ou Superior ao Valor da Parcela. ! Utilize Baixa Seleção Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
//Try
SDS_CHEQUE.Active:= False;
SDS_CHEQUE.Active:= True;
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);

 SPC_CHEQUE.ExecProc;
 Code:= (SPC_CHEQUE.ParamByName('ATUAL').AsInteger);
         SDS_CHEQUE.Insert;
         SDS_CHEQUE.FieldByName('CODIGO').AsInteger:=(Code);

 SDS_CHEQUE.FieldByName('CODIGO_COMPRA').Value:= null;
 SDS_CHEQUE.FieldByName('BANCO').Value:= DBLookupComboBox1.Text;
 SDS_CHEQUE.FieldByName('AGENCIA').Value:= DBLCB_AGENCIA.Text;
 SDS_CHEQUE.FieldByName('CONTA_CORRENTE').Value:= N_Conta.Text;
 SDS_CHEQUE.FieldByName('CONTA_DESDE').Value:= DateEdit1.Date;
 SDS_CHEQUE.FieldByName('TITULAR').Value:= suiEdit1.Text;
 SDS_CHEQUE.FieldByName('TIPO_CHEQUE').Value:= ComboBox2.Text;
 SDS_CHEQUE.FieldByName('N_CHEQUE').Value:= N_CHEQUE.Text;
 SDS_CHEQUE.FieldByName('QNT').Value:='1/1';
 SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit1.Value;
 SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediario.RxLabel6.Caption;
 SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
 SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
 SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
 SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
 SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
 SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;

 SDS_CHEQUE.Post;

 SDS_CHEQUE.ApplyUpdates(0);
 DM.SQLC.Commit(TD);


       {   FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. em CH Nº '+ N_CHEQUE.Text+' Ref. Crediario vda Nº ' + DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value:= CurrencyEdit2.Value;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value:= NULL;//DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'CHE';
          FormCRCrediario.SPC_MOV_DIARIO.Params[11].Value:= DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc; }

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit2.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := ' Receb. Cred. da Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption +' Ref chequenº '+ N_CHEQUE.text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


         // grava parcelas baixadas
          {DMB.SDS_Crediario_Baixa.First;
          FormCRCrediario.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediario.Contador do
          begin }
          {FormCRCrediario.Spc_crediario_Recebido.Params[1].Value   := DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[3].Value   := dmb.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[4].Value   := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;;
          FormCRCrediario.Spc_crediario_Recebido.Params[5].Value   := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediario.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediario.Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          FormCRCrediario.Spc_crediario_Recebido.Params[11].Value  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[12].Value  := dmb.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediario.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediario.Spc_crediario_Recebido.Params[14].Value  := (DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat - VlDinheiro);
          FormCRCrediario.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediario.Spc_crediario_Recebido.Params[16].Value  := VlDinheiro;
          FormCRCrediario.Spc_crediario_Recebido.Params[17].Value  := null;
          FormCRCrediario.Spc_crediario_Recebido.ExecProc; }
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    parambyname('DOC_REC_ADM').Value          := null;
                    parambyname('JUROS_P').Value              := CurrencyEdit2.Value * TotPert / 100;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
         // DMB.SDS_Crediario_Baixa.NEXT;
         // end;


FormCRCrediario.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[3].Value:= CurrencyEdit2.Value;
FormCRCrediario.SPC_Baixa_Parcial.Params[4].Value:= CurrencyEdit2.Value * TotPert / 100;
FormCRCrediario.SPC_Baixa_Parcial.Execproc;

DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
J:= J + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',J);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
J:= J + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',J);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.text := CurrencyEdit1.Text;
  Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;
  Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado em cheque nº '+ N_CHEQUE.text;
  Formrecibo.Showmodal;
   end;

Close;
{Except
MSG.ShowModal;
end;}
end;
end;
if Tag = 2 then
begin
VB:= dmb.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
IF DBLookupComboBox1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Banco!';
MSGI.ShowModal;
DBLookupComboBox1.SetFocus;
end else
IF suiEdit1.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Nome do Titular da Conta!';
MSGI.ShowModal;
suiEdit1.SetFocus;
end else
IF DBLCB_AGENCIA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Agência!';
MSGI.ShowModal;
DBLCB_AGENCIA.SetFocus;
end else
IF ComboBox2.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Tipo de Cheque!';
MSGI.ShowModal;
ComboBox2.SetFocus;
end else
IF N_CONTA.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número da Conta!';
MSGI.ShowModal;
N_CONTA.SetFocus;
end else
IF N_CHEQUE.Text = '' THEN
BEGIN
MSGI.Text:= 'Informe o Número do Cheque!';
MSGI.ShowModal;
N_CHEQUE.SetFocus;
end else
IF DateEdit1.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data da Conta!';
MSGI.ShowModal;
DateEdit1.SetFocus;
end else
IF DateEdit2.Text = '  /  /    ' THEN
BEGIN
MSGI.Text:= 'Informe a Data para Deposito!';
MSGI.ShowModal;
DateEdit2.SetFocus;
end else
IF (ValChPre >= VB) THEN
BEGIN
MSGI.Text:= 'O Valor Há Receber Não Pode Ser Igual ou Superior ao Valor da Parcela. ! Utilize Baixa Seleção Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
//Try
SDS_CHEQUE.Active:= False;
SDS_CHEQUE.Active:= True;
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);

 SPC_CHEQUE.ExecProc;
 Code:= (SPC_CHEQUE.ParamByName('ATUAL').AsInteger);
         SDS_CHEQUE.Insert;
         SDS_CHEQUE.FieldByName('CODIGO').AsInteger:=(Code);

 SDS_CHEQUE.FieldByName('CODIGO_COMPRA').Value:= null;
 SDS_CHEQUE.FieldByName('BANCO').Value:= DBLookupComboBox1.Text;
 SDS_CHEQUE.FieldByName('AGENCIA').Value:= DBLCB_AGENCIA.Text;
 SDS_CHEQUE.FieldByName('CONTA_CORRENTE').Value:= N_Conta.Text;
 SDS_CHEQUE.FieldByName('CONTA_DESDE').Value:= DateEdit1.Date;
 SDS_CHEQUE.FieldByName('TITULAR').Value:= suiEdit1.Text;
 SDS_CHEQUE.FieldByName('TIPO_CHEQUE').Value:= ComboBox2.Text;
 SDS_CHEQUE.FieldByName('N_CHEQUE').Value:= N_CHEQUE.Text;
 SDS_CHEQUE.FieldByName('QNT').Value:='1/1';
 SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit1.Value;
 SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediarioConv.RxLabel6.Caption;
 SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
 SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
 SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
 SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
 SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
 SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;

 SDS_CHEQUE.Post;

 SDS_CHEQUE.ApplyUpdates(0);
 DM.SQLC.Commit(TD);


       {   FormCRCrediarioConv.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. em CH Nº '+ N_CHEQUE.Text+' Ref. Crediario vda Nº ' + DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[5].Value:= CurrencyEdit2.Value;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[9].Value:= NULL;//DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Value;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[10].Value:= 'CHE';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[11].Value:= DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediarioConv.SPC_MOV_DIARIO.ExecProc; }

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit2.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := ' Receb. Cred. da Venda No. '+ DMB.SDS_Crediario_BaixaCodigo_compra.text + ' parc. ' + DMB.SDS_Crediario_BaixaParcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption +' Ref chequenº '+ N_CHEQUE.text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := DMB.SDS_Crediario_BaixaCODIGO.Text;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


         // grava parcelas baixadas
          {DMB.SDS_Crediario_Baixa.First;
          FormCRCrediarioConv.Contador := DMB.SDS_Crediario_Baixa.RecordCount;
          For E:=1 to FormCRCrediarioConv.Contador do
          begin }
          {FormCRCrediarioConv.Spc_crediario_Recebido.Params[1].Value   := DMB.SDS_Crediario_BaixaCODIGO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[3].Value   := dmb.SDS_Crediario_BaixaPARCELA.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[4].Value   := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[5].Value   := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[6].Value   := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[7].Value   := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[8].Value   := DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[9].AsDate  := date;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[11].Value  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[12].Value  := dmb.SDS_Crediario_BaixaNOME_SACADO.Text;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[13].Value  := StrToIntDef(DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text,0);
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[14].Value  := (DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat - VlDinheiro);
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[15].asdate := DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[16].Value  := VlDinheiro;
          FormCRCrediarioConv.Spc_crediario_Recebido.Params[17].Value  := null;
          FormCRCrediarioConv.Spc_crediario_Recebido.ExecProc; }
           dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    parambyname('DOC_REC_ADM').Value          := null;
                    parambyname('JUROS_P').Value              := CurrencyEdit2.Value * TotPert / 100;

                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
         // DMB.SDS_Crediario_Baixa.NEXT;
         // end;


FormCRCrediarioConv.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[3].Value:= CurrencyEdit2.Value;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[4].Value:= CurrencyEdit2.Value * TotPert / 100;
FormCRCrediarioConv.SPC_Baixa_Parcial.Execproc;

DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
J:= J + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',J);
While not DMB.SDS_Crediario_Baixa.Eof do
begin
J:= J + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',J);
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;
end;
 if Application.MESSAGEBOX('Confirma a emissão do Recibo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  Formrecibo:=TFormrecibo.Create(self);
  Formrecibo.Edit2.text := CurrencyEdit1.Text;
  Formrecibo.Edit1.Text := FormCRCrediarioConv.RxLabel6.Caption;
  Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado em cheque nº '+ N_CHEQUE.text;
  Formrecibo.Showmodal;
   end;

Close;
end;
end;
end;

procedure TFormRCParcial.CurrencyEdit4Exit(Sender: TObject);
begin
VlDinheiro := CurrencyEdit4.Value;
VlPar:= DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsCurrency;
VlRest:=  (VlPar - VlDinheiro);
CurrencyEdit6.Value:= VlREst;
end;

procedure TFormRCParcial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRCParcial.suiButton5Click(Sender: TObject);
var
W: Real;
begin
IF (VlRest <= 0) THEN
BEGIN
MSGI.Text:= 'O Valor Há Receber Não Pode Ser Igual ou Superior ao Valor da Parcela. ! Utilize Baixa de Parcela Ou Baixa Total Para Este Recebimento!';
MSGI.ShowModal;
end else
begin
Try
  DataAtual:= Date;
DataVenc:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DiasVenc := DataAtual - DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Asdatetime;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
dias := DiasVenc;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);

   if Tag =1 then
   begin
         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
         DM.ProxCod.Open;



                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;

                     parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
                    DM.ProxCod.Open;
                    parambyname('DOC_REC_ADM').Value          := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('JUROS_P').Value              := VlDinheiro * TotPert / 100;
                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
         // DMB.SDS_Crediario_Baixa.NEXT;
         // end;


FormCRCrediario.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediario.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediario.SPC_Baixa_Parcial.Params[3].Value:= VlDinheiro;
FormCRCrediario.SPC_Baixa_Parcial.Params[4].Value:= VlDinheiro * TotPert / 100;
FormCRCrediario.SPC_Baixa_Parcial.Execproc;

         
         Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
         FrmDadosAdm.EdtParcelamento.Text:= '1';
         FrmDadosAdm.Edtvalor.Value:=  VlDinheiro;
         FrmDadosAdm.EdtVenda.Text := '';
      //   FrmDadosAdm.EdtDOC.Text := dmb.SDS_Crediario_BaixaCODIGO_COMPRA.TEXT;;
         FrmDadosAdm.dt_venda.Date := Date;
         FrmDadosAdm.EdtCli.Text  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
         FrmDadosAdm.Memo1.Text   := 'Recebimento Parcial do Titulo nº ' + DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text;
         FrmDadosAdm.SPC_SEQ.ExecProc;
         FrmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
         FrmDadosAdm.Edtcli.Text := FormCRCrediario.Cliente.Text;
         FrmDadosAdm.Edtcli1.Text := FormCRCrediario.RxLabel6.Caption;
         FrmDadosAdm.showmodal;


DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediario.Navigator.Enabled:= False;
FormCRCrediario.BTBaixaParcial.Enabled:= False;
FormCRCrediario.BTBaixaTotal.Enabled:= False;
FormCRCrediario.BTBaixaParcela.Enabled:= False;
FormCRCrediario.BTPrint.Enabled:= False;
FormCRCrediario.BTJuros.Enabled:= False;
FormCRCrediario.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediario.Navigator.Enabled:= True;
FormCRCrediario.BTBaixaParcial.Enabled:= True;
FormCRCrediario.BTBaixaTotal.Enabled:= True;
FormCRCrediario.BTBaixaParcela.Enabled:= True;
FormCRCrediario.DBGrid1.Enabled:= True;
FormCRCrediario.BTPrint.Enabled:= True;
FormCRCrediario.BTJuros.Enabled:= True;
end;
 end;

 if Tag = 2 then
 begin
         dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
         DM.ProxCod.Open;



                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM, JUROS_POSTERGADOS) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM, :JUROS_P);');

                    parambyname('codigo').AsInteger           := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := DMB.SDS_Crediario_BaixaCodigo.value;
                    parambyname('COD_EMPRESA').AsInteger      := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString           := DMB.SDS_Crediario_BaixaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat      := DMB.SDS_Crediario_BaixaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat              := DMB.SDS_Crediario_BaixaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat              := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat           := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat        := DMB.SDS_Crediario_Baixavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate          := date;
                    parambyname('USUARIO').AsString           := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    parambyname('NOME_CLIENTE').AsString      := DMB.SDS_Crediario_BaixaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString        := DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat        := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := DMB.SDS_Crediario_BaixaData_Vencimento.AsDateTime;

                     parambyname('VALOR_PAGO').AsFloat         := VlDinheiro;
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
                    DM.ProxCod.Open;
                    parambyname('DOC_REC_ADM').Value          := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('JUROS_P').Value              := VlDinheiro * TotPert / 100;
                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
         // DMB.SDS_Crediario_Baixa.NEXT;
         // end;


FormCRCrediarioConv.SPC_Baixa_Parcial.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[1].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[2].Value:= 0;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[3].Value:= VlDinheiro;
FormCRCrediarioConv.SPC_Baixa_Parcial.Params[4].Value:= VlDinheiro * TotPert / 100;
FormCRCrediarioConv.SPC_Baixa_Parcial.Execproc;


         Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
         FrmDadosAdm.EdtParcelamento.Text:= '1';
         FrmDadosAdm.Edtvalor.Value:=  VlDinheiro;
         FrmDadosAdm.EdtVenda.Text := '';
      //   FrmDadosAdm.EdtDOC.Text := dmb.SDS_Crediario_BaixaCODIGO_COMPRA.TEXT;;
         FrmDadosAdm.dt_venda.Date := Date;
         FrmDadosAdm.EdtCli.Text  := dmb.SDS_Crediario_BaixaCODIGO_CLIENTE.Text;
         FrmDadosAdm.Memo1.Text   := 'Recebimento Parcial do Titulo nº ' + DMB.SDS_Crediario_BaixaCODIGO_COMPRA.Text +'-'+ DMB.SDS_Crediario_BaixaPARCELA.Text;
         FrmDadosAdm.SPC_SEQ.ExecProc;
         FrmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
         FrmDadosAdm.Edtcli.Text := FormCRCrediarioConv.Cliente.Text;
         FrmDadosAdm.Edtcli1.Text := FormCRCrediarioConv.RxLabel6.Caption;
         FrmDadosAdm.showmodal;


DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;

DMB.SDS_Crediario_Baixa.First;
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);;
While not DMB.SDS_Crediario_Baixa.Eof do
begin
W:= W + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',W);;
end;
DMB.SDS_Crediario_Baixa.First;
if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
FormCRCrediarioConv.Navigator.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= False;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= False;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= False;
FormCRCrediarioConv.BTPrint.Enabled:= False;
FormCRCrediarioConv.BTJuros.Enabled:= False;
FormCRCrediarioConv.DBGrid1.Enabled:= False;
end else
begin
FormCRCrediarioConv.Navigator.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcial.Enabled:= True;
FormCRCrediarioConv.BTBaixaTotal.Enabled:= True;
FormCRCrediarioConv.BTBaixaParcela.Enabled:= True;
FormCRCrediarioConv.DBGrid1.Enabled:= True;
FormCRCrediarioConv.BTPrint.Enabled:= True;
FormCRCrediarioConv.BTJuros.Enabled:= True;
end;
end;

except
MSG.ShowModal;
end;


         Close;
end;

end;

end.
