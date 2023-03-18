unit baixaCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, XDBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, SimpleDS, FMTBcd, SqlExpr,
  RXCtrls, SUIComboBox, SUIEdit, SUIDlg, IBCustomDataSet, IBQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DBXFirebird, RxToolEdit, RxCurrEdit, System.Math, FireDAC.Stan.Async,
  FireDAC.DApt, sLabel;

type
  TFormBaixas = class(TForm)
    Panel1: TPanel;
    DBGrid: TXDBGrid;
    ClientDataSet12: TClientDataSet;
    ClientDataSet12CodigoCliente: TIntegerField;
    ClientDataSet12CodigoCompra: TIntegerField;
    ClientDataSet12Vendedor: TStringField;
    ClientDataSet12Historico: TStringField;
    ClientDataSet12DataCompra: TDateField;
    ClientDataSet12ValorParcela: TCurrencyField;
    ClientDataSet12Parcela: TStringField;
    ClientDataSet12DataVencimento: TDateField;
    DataSource1: TDataSource;
    ClientDataSet12Nome_cliente: TStringField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Edit5: TEdit;
    CheckBox2: TCheckBox;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    ClientDataSet12Valor_pago: TCurrencyField;
    ClientDataSet12multa: TCurrencyField;
    ClientDataSet12juros: TCurrencyField;
    ClientDataSet12descontos: TCurrencyField;
    ClientDataSet12valor_pagar: TCurrencyField;
    ClientDataSet12valor_total: TCurrencyField;
    ClientDataSet12Codigo_Crediario: TIntegerField;
    ClientDataSet12Saldo: TCurrencyField;
    Label7: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
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
    SDS_CHEQUECODIGO_CC: TIntegerField;
    SDS_CHEQUENUMERO_CC: TStringField;
    DTS_CHEQUE: TDataSource;
    SPC_CHEQUE: TSQLStoredProc;
    Label10: TLabel;
    GroupBox6: TGroupBox;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    Label11: TLabel;
    myLabel3d1: TsLabelFX;
    SPC_CREDIARIO: TSQLStoredProc;
    Panel3: TPanel;
    Label16: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DateEdit1: TDateEdit;
    N_CONTA: TsuiEdit;
    N_CHEQUE: TsuiEdit;
    suiEdit1: TsuiEdit;
    ComboBox2: TsuiComboBox;
    DateEdit2: TDateEdit;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit12: TCurrencyEdit;
    CurrencyEdit13: TCurrencyEdit;
    DBLOOKUPCOMBOBOX1: TsuiEdit;
    DBLCB_AGENCIA: TsuiEdit;
    dbedit4: TsuiEdit;
    suiEdit3: TsuiEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    myLabel3d2: TsLabelFX;
    MsgI: TsuiMessageDialog;
    MSG: TsuiMessageDialog;
    SDS_CHEQUECOD_EMPRESA: TIntegerField;
    SDS_CHEQUECOD_CLIENTE: TIntegerField;
    SDS_CHEQUENUMERO: TIntegerField;
    SDS_CHEQUECOD_BARRAS_CHEQUE: TStringField;
    qrcaixa_mov: TFDQuery;
    ClientDataSet1: TFDMemTable;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1Nome_cliente: TStringField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1ValorParcela: TCurrencyField;
    ClientDataSet1Parcela: TStringField;
    ClientDataSet1DataVencimento: TDateField;
    ClientDataSet1Valor_pago: TCurrencyField;
    ClientDataSet1multa: TCurrencyField;
    ClientDataSet1juros: TCurrencyField;
    ClientDataSet1descontos: TCurrencyField;
    ClientDataSet1valor_pagar: TCurrencyField;
    ClientDataSet1valor_total: TCurrencyField;
    ClientDataSet1Codigo_Crediario: TIntegerField;
    ClientDataSet1Saldo: TCurrencyField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEnter(Sender: TObject);
    procedure DBGridCellClick(Column: TXColumn);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
         Shift: TShiftState);
    procedure Soma(Sender: TObject);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridTotalsUpdated(Sender: TObject);
    procedure DBGridTotalCalcValue(Total: TXColumnTotalValue;
      Pass: TCalcPass; var Value: Variant);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit8Change(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure CurrencyEdit7Exit(Sender: TObject);
    procedure CurrencyEdit6Exit(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CurrencyEdit11Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure CurrencyEdit11Enter(Sender: TObject);
  private
    { Private declarations }
    ValChPre: Real;
    Data, DataVenc, DataAtual: TDateTime;
    dia, mes, ano: Word;
    TOT, Pert, TotPert, ValCh, ValTroco, ValConta: Real;
  public
    { Public declarations }
 //  FUpdateTotals: Integer;
 valor_pago : Real;
  end;

var
  FormBaixas: TFormBaixas;
   contador, e, i :Integer;
   a, y, x: Real;
   total :Real;
   DESCONTO, pago : Real;
   DESC : string;
implementation

uses Principal, Ubibli1, Z_RotinasGerais, ModulodeDadosBaixas, CRCrediario, ModulodeDados,
  Recibo, UDadosAdm, CRCrediarioconv, DepositosBanco;

{$R *.dfm}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

procedure TFormBaixas.Soma(Sender: TObject);
begin
total :=0;
  DESCONTO :=0;
while not ClientDataSet1.Eof do
begin
ClientDataSet1.edit;
pago := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency - DBGRID.COLUMNS.Grid.Fields[3].AsCurrency;
DESCONTO := DBGRID.COLUMNS.Grid.Fields[7].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[4].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value;
DESCONTO := ((DESCONTO * TOTAL)/100);

DESC := FormatCurr('0.00', DESCONTO);

DESCONTO := StrToFloat(DESC);

DBGRID.COLUMNS.Grid.Fields[7].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[8].Value := (TOTAL - DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (TOTAL - pago);
ClientDataSet1.Post;
ClientDataSet1.Next;
end;
end;

procedure TFormBaixas.FormShow(Sender: TObject);
var
  ativo :string;
begin
 while not clientDataset1.EOF do
        begin
        ClientDataset1.Delete;
          end;

{ATIVO := 'T';
dmb.sds_crediario_baixa.Filtered := False;
dmb.sds_crediario_baixa.Filter:='CHEK_BOX ='+QuotedStr (ATIVO);
dmb.sds_crediario_baixa.Filtered := True; }



//Contador := DMB.SDS_Crediario_Baixa.RecordCount;
//For E:=1 to Contador do
//Contador :=  FormCRCrediario.dbgrid1.SelectedRows.Count;
//For E:=1 to Contador do
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
//FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected := not FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected;
if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
begin
ClientDataSet1.Insert;
ClientDataSet1.edit;
ClientDataSet1CodigoCliente.text    := dmb.sds_crediario_baixaCodigo_cliente.text;
ClientDataSet1CodigoCompra.Text     := dmb.SDS_Crediario_BaixaCODIGO_COMPRA.text;
ClientDataSet1Historico.Text        := dmb.sds_crediario_baixaHistorico.text;
ClientDataSet1DataCompra.Text       := dmb.SDS_Crediario_BaixaDATA_COMPRA.Text;
ClientDataSet1Nome_cliente.Text     := dmb.SDS_Crediario_BaixaNOME_SACADO.Text;
ClientDataSet1ValorParcela.Text     := DMB.SDS_Crediario_BaixaVALOR_COMPRA.Text;
ClientDataSet1Multa.text            := DMB.SDS_Crediario_BaixaVALOR_ACRESCIMO.Text;
ClientDataSet1Juros.Text            := DMB.SDS_Crediario_BaixaVALOR_JUROS.Text;
ClientDataSet1Parcela.Text          := dmb.SDS_Crediario_BaixaPARCELA.Text;
ClientDataSet1Valor_pago.Text       := DMB.SDS_Crediario_BaixaVALOR_PAGO.Text;
ClientDataSet1Valor_Pagar.Text      := DMB.SDS_Crediario_BaixaVALOR_TOTAL.Text;
ClientDataSet1Valor_total.Text      := DMB.SDS_Crediario_BaixaVALOR_TOTAL.Text;
ClientDataSet1Descontos.Text        := DMB.SDS_Crediario_BaixaVALOR_DESCONTO.Text;
ClientDataSet1DataVencimento.text   := dmb.SDS_Crediario_BaixaDATA_VENCIMENTO.Text;
ClientDataSet1Codigo_Crediario.Text := dmb.sds_crediario_baixaCodigo.text;
ClientDataSet1.Post;
end;
DMB.SDS_Crediario_Baixa.Next;
end;
//dmb.sds_crediario_baixa.Filtered := FALSE;

ClientDataSet1.first;
while not ClientDataSet1.Eof do
begin
ClientDataSet1.edit;
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
//ClientDataSet1.Post;
ClientDataSet1.Next;
end;
{X:=0;
ClientDataSet1.first;
X:= X + ClientDataSet1valor_total.AsFloat;
ClientDataSet1.Next;
CurrencyEdit8.VALUE:= X;
While not ClientDataSet1.Eof do
begin

X:= X + ClientDataSet1VALOR_TOTAL.AsFloat;
ClientDataSet1.Next;
CurrencyEdit8.VALUE:= X;
end;  }

//CurrencyEdit1.Value := CurrencyEdit8.Value;
CurrencyEdit1.SetFocus;
end;


procedure TFormBaixas.FormCreate(Sender: TObject);
begin
 if FileExists('C:\StartNet_Sistemas\Receb.xml') then
  begin
     DeleteFile('C:\StartNet_Sistemas\Receb.xml');
  end;

 with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'Receb.xml';
  if not FileExists(filename) then
  createdataset;
  open;
  end;
end;

procedure TFormBaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormBaixas :=nil;
end;

procedure TFormBaixas.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormBaixas.BitBtn2Click(Sender: TObject);
var
cliente :string;
Code, DOC: INTEGER;
J, troco, VB: Real;
dtaux : TDateTime;
begin
 if tag = 1  then
 begin
 cliente := FormCRCrediario.Cliente.Text;

  dtAux := Date;
if Currencyedit1.value < 0.01  then
begin
//   showmessage('Favor... Preencha com algum valor para recebimento');
   Application.MessageBox('Favor... Preencha com algum valor para recebimento','Erro',mb_OK + mb_IconInformation);
  Currencyedit1.setfocus;
  Exit;
end;

  //dinheiro
 if ComboBox1.ItemIndex = 0 then
   begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário com Dinheiro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
      Exit;
       begin
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin


                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat :=  ClientDataSet1VALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat :=  ClientDataSet1VALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Rec. Crediario ref Venda No. '+ ClientDataSet1CodigoCompra.Text + ' parc. ' + ClientDataSet1Parcela.value + ' - ' + FormCRCrediario.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          ClientDataSet1.NEXT;
          end;

          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For I:=1 to Contador do
          begin
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
         // FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[1].asstring:= 'F';
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].Value:= Date;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc;
            { if dm.IBTransaction.Active then
                dm.IBTransaction.Commit;
             dm.IBTransaction.StartTransaction;
             with dm.QConsulta do
                begin
                   close;
                   sql.Clear;
                   sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
                   Parambyname('DATA').AsDate     := Date;
                   Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
                   Parambyname('CODIGO').AsInteger    := ClientDataSet1Codigo_Crediario.Value;
                   ExecSQL;
                end;
             dm.IBTransaction.Commit;
             dm.QConsulta.Close; }
          ClientDataSet1.Next;
          end;

           // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.FConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    if ClientDataSet1Nome_cliente.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if ClientDataSet1CODIGOCOMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value      := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar troco
          if troco > 0 then
          begin

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEdit10.Value;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat :=  0 ;
                    qrcaixa_mov.parambyname('valor').asfloat :=  CurrencyEdit10.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Referente a troco de recebimento';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          end;


          // se sobrar saldo a pagar gera uma parcela restante
           if troco > 0 then
           begin
           SPC_CREDIARIO.Params[0].value        :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  ClientDataSet1CodigoCliente.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date;
           SPC_CREDIARIO.Params[4].AsString    :=  'Saldo Restante de Baixa Parcial';
           SPC_CREDIARIO.Params[5].AsString    :=  FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  troco;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'AVU';
           SPC_CREDIARIO.Params[15].AsString   := ClientDataSet1Nome_cliente.text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.ExecProc;
           //ClientDataset1.Next;
           end;



          DMB.SDS_Crediario_Baixa.Active:= False;
          DMB.SDS_Crediario_Baixa.Active:= True;
          DMB.SDS_Crediario_Baixa.First;
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
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
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';

            Formrecibo.Showmodal;
             end;

          Close;
        end;
       end;

        //cheque

 if ComboBox1.ItemIndex = 1 then
  begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário em Cheque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       begin
        Panel3.Visible := True;
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
        //suiButton2.Enabled:= False;
        //suiButton1.Enabled:= False;
        //suiButton6.Enabled:= True;
       // SPSalvar.Enabled:= True;
        DateEdit2.Date := Date;
        dbedit4.Color :=clWhite;
        suiedit3.Color :=clWhite;
        DateEdit2.SetFocus;
        end;
    end else

 //cartão
 if ComboBox1.ItemIndex = 2 then
  begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário no Cartão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
       dm.ProxCod.Close;
       dm.ProxCod.SQL.Clear;
       dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
       DM.ProxCod.Open;
       Doc := DM.ProxCodN_CODIGO.ASINTEGER + 1;

       Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
      //FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
      FrmDadosAdm.EdtParcelamento.Text:= '1';
      FrmDadosAdm.Edtvalor.text:= CurrencyEdit1.text;
     // FrmDadosAdm.Edtdoc.Text := ClientDataSet1Codigo_Crediario.Text;
      FrmDadosAdm.EdtVenda.Text := '';
      FrmDadosAdm.Tag:= 12;
      FrmDadosAdm.dt_venda.Date := Date;
      FrmDadosAdm.EdtCli.Text  := ClientDataSet1CodigoCliente.Text;
      FrmDadosAdm.Edtcli1.Text := FormCRCrediario.RxLabel6.Caption;
      FrmDadosAdm.SPC_SEQ.ExecProc;
      frmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
      FrmDadosAdm.showmodal;

        ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For I:=1 to Contador do
          begin
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].Value:= Date;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc;
           {  if dm.IBTransaction.Active then
              dm.IBTransaction.Commit;
           dm.IBTransaction.StartTransaction;
           with dm.QConsulta do
              begin
                 close;
                 sql.Clear;
                 sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
                 Parambyname('DATA').AsDate     := Date;
                 Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
                 Parambyname('CODIGO').AsInteger    := ClientDataSet1Codigo_Crediario.Value;
                 ExecSQL;
              end;
           dm.IBTransaction.Commit;
           dm.QConsulta.Close;       }

          ClientDataSet1.Next;
          end;

           // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    if ClientDataSet1Nome_cliente.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if ClientDataSet1CODIGOCOMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').AsInteger      := DOC;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar saldo a pagar gera uma parcela restante
           if troco > 0 then
           begin
           SPC_CREDIARIO.Params[0].value        :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  ClientDataSet1CodigoCliente.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date;
           SPC_CREDIARIO.Params[4].AsString    :=  'Saldo Restante de Baixa Parcial';
           SPC_CREDIARIO.Params[5].AsString    :=  FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  troco;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'AVU';
           SPC_CREDIARIO.Params[15].AsString   := ClientDataSet1Nome_cliente.text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.ExecProc;
           //ClientDataset1.Next;
           end;



          DMB.SDS_Crediario_Baixa.Active:= False;
          DMB.SDS_Crediario_Baixa.Active:= True;
          DMB.SDS_Crediario_Baixa.First;
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
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
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';

            Formrecibo.Showmodal;
             end;

          Close;
        end;
      end;

       // pix deposito
 if ComboBox1.ItemIndex = 3 then
  begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário no pix ou deposito?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
          Valor_pago :=  CurrencyEdit1.value;

          FormDepositos:=TFormDepositos.Create(self);
          FormDepositos.tag := 3;
          FormDepositos.ShowMODAL;


                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                     if dm.FDTransaction1.Active then
                      dm.FDTransaction1.Commit;
                    dm.FDTransaction1.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit1.value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_venda_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 01; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Rec. Crediario do Sr. '+  FormCRCrediario.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PIX';
                   // qrcaixa_mov.parambyname('codigo_venda').Asinteger  := n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    DM.FDTransaction1.CommitRetaining;



          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For I:=1 to Contador do
          begin
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Params[2].Value:= Date;
          FormCRCrediario.SPC_BAIXA_PARCELA_T.Execproc;
           {  if dm.IBTransaction.Active then
              dm.IBTransaction.Commit;
           dm.IBTransaction.StartTransaction;
           with dm.QConsulta do
              begin
                 close;
                 sql.Clear;
                 sql.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
                 Parambyname('DATA').AsDate     := Date;
                 Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
                 Parambyname('CODIGO').AsInteger    := ClientDataSet1Codigo_Crediario.Value;
                 ExecSQL;
              end;
           dm.IBTransaction.Commit;
           dm.QConsulta.Close;       }

          ClientDataSet1.Next;
          end;

          // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    if ClientDataSet1Nome_cliente.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if ClientDataSet1CODIGOCOMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').AsInteger      := DOC;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;
           if troco > 0 then
           begin
           SPC_CREDIARIO.Params[0].value        :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  ClientDataSet1CodigoCliente.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date;
           SPC_CREDIARIO.Params[4].AsString    :=  'Saldo Restante de Baixa Parcial';
           SPC_CREDIARIO.Params[5].AsString    :=  FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  troco;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'AVU';
           SPC_CREDIARIO.Params[15].AsString   := ClientDataSet1Nome_cliente.text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.ExecProc;
           //ClientDataset1.Next;
           end;


            DMB.SDS_Crediario_Baixa.Active:= False;
            DMB.SDS_Crediario_Baixa.Active:= True;
            DMB.SDS_Crediario_Baixa.First;
            Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
            DMB.SDS_Crediario_Baixa.Next;
            FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
            While not DMB.SDS_Crediario_Baixa.Eof do
            begin
            Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
            DMB.SDS_Crediario_Baixa.Next;
            FormCRCrediario.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
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
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';

            Formrecibo.Showmodal;
             end;

          Close;
      end;
  end;
end;

if Tag = 2 then
begin
 cliente := FormCRCrediarioConv.Cliente.Text;

  dtAux := Date;

  //dinheiro
 if ComboBox1.ItemIndex = 0 then
   begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário com Dinheiro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
      Exit;
       begin
                ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin


                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat :=  ClientDataSet1VALOR_TOTAL.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat :=  ClientDataSet1VALOR_TOTAL.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Rec. Crediario ref Venda No. '+ ClientDataSet1CodigoCompra.Text + ' parc. ' + ClientDataSet1Parcela.value + ' - ' + FormCRCrediarioConv.RxLabel6.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'REC';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          ClientDataSet1.NEXT;
          end;

          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For I:=1 to Contador do
          begin
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[2].Value:= Date;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Execproc;
          ClientDataSet1.Next;
          end;

           // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    parambyname('COD_CLIENTE').AsInteger      := DMB.SDS_Crediario_BaixaCODIGO_CLIENTE.asinteger;
                    if ClientDataSet1Nome_cliente.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if ClientDataSet1CODIGOCOMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value      := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar troco
          if troco > 0 then
          begin

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEdit10.Value;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat :=  0 ;
                    qrcaixa_mov.parambyname('valor').asfloat :=  CurrencyEdit10.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Referente a troco de recebimento';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

          end;


          // se sobrar saldo a pagar gera uma parcela restante
           if troco > 0 then
           begin
           SPC_CREDIARIO.Params[0].value        :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  ClientDataSet1CodigoCliente.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date;
           SPC_CREDIARIO.Params[4].AsString    :=  'Saldo Restante de Baixa Parcial';
           SPC_CREDIARIO.Params[5].AsString    :=  FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  troco;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'AVU';
           SPC_CREDIARIO.Params[15].AsString   := ClientDataSet1Nome_cliente.text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.ExecProc;
           //ClientDataset1.Next;
           end;



          DMB.SDS_Crediario_Baixa.Active:= False;
          DMB.SDS_Crediario_Baixa.Active:= True;
          DMB.SDS_Crediario_Baixa.First;
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
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
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';

            Formrecibo.Showmodal;
             end;

          Close;
        end;
       end;

        //cheque

 if ComboBox1.ItemIndex = 1 then
  begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário em Cheque?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       begin
        Panel3.Visible := True;
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
        //suiButton2.Enabled:= False;
        //suiButton1.Enabled:= False;
        //suiButton6.Enabled:= True;
       // SPSalvar.Enabled:= True;
        DateEdit2.Date := Date;
        dbedit4.Color :=clWhite;
        suiedit3.Color :=clWhite;
        DateEdit2.SetFocus;
        end;
    end else

 //cartão
 if ComboBox1.ItemIndex = 2 then
  begin
     if Application.MESSAGEBOX('Confirma a Baixa do Crediário no Cartão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
       dm.ProxCod.Close;
       dm.ProxCod.SQL.Clear;
       dm.ProxCod.SQL.Add('select max(DOC_REC_ADM) as N_CODIGO FROM CONTAS_RECEBER_ADM_CARTAO');
       DM.ProxCod.Open;
       Doc := DM.ProxCodN_CODIGO.ASINTEGER + 1;

       Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
      //FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
      FrmDadosAdm.EdtParcelamento.Text:= '1';
      FrmDadosAdm.Edtvalor.text:= CurrencyEdit1.text;
     // FrmDadosAdm.Edtdoc.Text := ClientDataSet1Codigo_Crediario.Text;
      FrmDadosAdm.EdtVenda.Text := '';
      FrmDadosAdm.dt_venda.Date := Date;
      FrmDadosAdm.EdtCli.Text  := ClientDataSet1CodigoCliente.Text;
      FrmDadosAdm.Edtcli1.Text := FormCRCrediarioConv.RxLabel6.Caption;
      FrmDadosAdm.SPC_SEQ.ExecProc;
      frmDadosAdm.EdtSeq.Text := IntToStr(FrmDadosAdm.SPC_SEQ.ParamByName('ATUAL').AsInteger);
      FrmDadosAdm.showmodal;

        ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For I:=1 to Contador do
          begin
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[1].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Params[2].Value:= Date;
          FormCRCrediarioConv.SPC_BAIXA_PARCELA_T.Execproc;
          ClientDataSet1.Next;
          end;

           // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    if ClientDataSet1Nome_cliente.text > '' then
                    parambyname('NOME_CLIENTE').AsString      := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').value         := null;
                    if ClientDataSet1CODIGOCOMPRA.Value > 0 then
                    parambyname('COD_COMPRA').AsString        := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').value           := null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').AsInteger      := DOC;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar saldo a pagar gera uma parcela restante
           if troco > 0 then
           begin
           SPC_CREDIARIO.Params[0].value        :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  ClientDataSet1CodigoCliente.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date;
           SPC_CREDIARIO.Params[4].AsString    :=  'Saldo Restante de Baixa Parcial';
           SPC_CREDIARIO.Params[5].AsString    :=  FormPrincipal.UserLogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  troco;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'AVU';
           SPC_CREDIARIO.Params[15].AsString   := ClientDataSet1Nome_cliente.text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.ExecProc;
           //ClientDataset1.Next;
           end;



          DMB.SDS_Crediario_Baixa.Active:= False;
          DMB.SDS_Crediario_Baixa.Active:= True;
          DMB.SDS_Crediario_Baixa.First;
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
          While not DMB.SDS_Crediario_Baixa.Eof do
          begin
          Y:= Y + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
          DMB.SDS_Crediario_Baixa.Next;
          FormCRCrediarioConv.RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',Y);
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
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado.';

            Formrecibo.Showmodal;
             end;

          Close;
        end;
      end;
  end;

end;


procedure TFormBaixas.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
ClientDataSet1.Edit;
pago := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency - DBGRID.COLUMNS.Grid.Fields[3].AsCurrency;
DESCONTO := DBGRID.COLUMNS.Grid.Fields[7].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[4].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value;
DBGRID.COLUMNS.Grid.Fields[7].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[8].Value := (TOTAL - DESCONTO);
//total := DBGRID.COLUMNS.Grid.Fields[8].Value;
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[4].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );


{
if DBGrid.SelectedField = ClientDataSet1Juros THEN
begin
pago := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency - DBGRID.COLUMNS.Grid.Fields[3].AsCurrency;
DESCONTO := DBGRID.COLUMNS.Grid.Fields[7].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[4].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value;
DBGRID.COLUMNS.Grid.Fields[7].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[8].Value := (TOTAL - DESCONTO);
total := DBGRID.COLUMNS.Grid.Fields[8].Value;
DBGRID.COLUMNS.Grid.Fields[9].Value := (TOTAL - pago);
end else

if DBGrid.SelectedField = ClientDataSet1descontos THEN
begin
pago := DBGRID.COLUMNS.Grid.Fields[4].AsCurrency - DBGRID.COLUMNS.Grid.Fields[3].AsCurrency;
DESCONTO := DBGRID.COLUMNS.Grid.Fields[7].AsCurrency;
Total := DBGRID.COLUMNS.Grid.Fields[4].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value;
DBGRID.COLUMNS.Grid.Fields[7].Value := DESCONTO;
DBGRID.COLUMNS.Grid.Fields[8].Value := (TOTAL - DESCONTO);
total := DBGRID.COLUMNS.Grid.Fields[8].Value;
DBGRID.COLUMNS.Grid.Fields[9].Value := (TOTAL - pago);
end;}
end;
end;

procedure TFormBaixas.DBGridEnter(Sender: TObject);
begin
ClientDataSet1.Edit;
end;

procedure TFormBaixas.DBGridCellClick(Column: TXColumn);
begin
ClientDataSet1.Edit;
end;

procedure TFormBaixas.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_DELETE) then
    begin
      A:= ClientDataSet1VALOR_TOTAL.AsFloat;
      A := A - ClientDataSet1VALOR_TOTAL.AsFloat;
      ClientDataSet1.Delete;
      ClientDataSet1.Last;

      DBGRID.SetFocus;
      end else
    {passar para proxima coluna usando ENTER no dbgrid}

     if Key = VK_RETURN then
       begin
        Case DBGrid.SelectedIndex of
            5: DBgrid.SelectedIndex := 6;
            6: DBgrid.SelectedIndex := 7;
            7: DBgrid.SelectedIndex := 8;
           ELSE
           // dbgrid.SelectedIndex := dbgrid.SelectedIndex + 1;
            ClientDataSet1.Next;

            //DBGrid.SelectedIndex := 0;  // código da proxima linha
            ClientDataSet1.Edit;
            //DBGRID.COLUMNS.Grid.Fields[5].FocusControl;

            {passar para proxima coluna usando ENTER no dbgrid}
            if ClientDataSet1.Eof then
            begin
            DBGRID.COLUMNS.Grid.Fields[5].FocusControl;
            end else

             ClientDataSet1.Edit;

end;
end;
end;

procedure TFormBaixas.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key =#13 then
  begin

CurrencyEdit10.Value :=  CurrencyEdit8.Value - CurrencyEdit1.Value
end;
{X:=0;
ClientDataSet1.First;
X:= X + ClientDataSet1valor_total.AsFloat;
ClientDataSet1.Next;
CurrencyEdit8.VALUE:= X;
While not ClientDataSet1.Eof do
begin
X:= X + ClientDataSet1VALOR_TOTAL.AsFloat;
ClientDataSet1.Next;
CurrencyEdit8.VALUE:= X;
end;


{if CurrencyEdit1.Value > CurrencyEdit8.Value then
begin
  ShowMessage('Valor da Baixa não pode ser maior que o valor total a Receber!!!');
end else

{A:= X;
ClientDataSet1.Last;
if A > CurrencyEdit1.value then
begin
ClientDataSet1.Delete;
end;
end;
end;
//ClientDataSet1.prior;
{ClientDataSet1Valor_total.Value := CurrencyEdit1.Value;
ClientDataSet1juros.AsFloat     := 0;
ClientDataSet1multa.AsFloat     := 0;
ClientDataSet1descontos.AsFloat := 0;
Total := ClientDataSet1Valor_total.Value;
ClientDataSet1Saldo.Value := (ClientDataSet1valor_pagar.Value - total);
clientDataSet1.post;
ClientDataSet1.Next;
end;


end;
if ClientDataSet1Saldo.Value <= 0  then
begin
ClientDataSet1.Delete;
end;
end;

end;
end;}

end;

procedure TFormBaixas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if not (ActiveControl is TCustomGrid)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

if key=#27 then close;
  
end;

procedure TFormBaixas.DBGridTotalsUpdated(Sender: TObject);
begin
 CurrencyEdit8.Value  := DBGrid.Columns.Items[8].TotalFooter.Value; // pega o valor total da coluna somada...
 CurrencyEdit10.Value :=  CurrencyEdit8.Value - CurrencyEdit1.Value
 end;

procedure TFormBaixas.DBGridTotalCalcValue(Total: TXColumnTotalValue;
  Pass: TCalcPass; var Value: Variant);
begin
CurrencyEdit9.value := Total.Counter;  // conta quantos registros tem no grid
end;

procedure TFormBaixas.CurrencyEdit1Exit(Sender: TObject);
begin
CurrencyEdit10.Value :=  CurrencyEdit8.Value - CurrencyEdit1.Value;
BitBtn2.SetFocus;
end;

procedure TFormBaixas.CurrencyEdit8Change(Sender: TObject);
begin
//CurrencyEdit1.Value :=  CurrencyEdit8.Value
end;

procedure TFormBaixas.CurrencyEdit2Exit(Sender: TObject);
var
  total_venda, TOTAL1 :Real;
  valor_desc : string;
  qr: TFDQuery;
  id_contrato,TotalParcelas,TotalParcelasGrid: Integer;
  Prest, R1, R2, TotalHP,i,n, Valor : Extended;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT * FROM CREDIARIO WHERE CODIGO = ' +
    IntToStr(DataSource1.DataSet.fieldbyName('Codigo_Crediario').AsInteger) + 'AND ID_CT_PARCELA IS NOT NULL');
  qr.Open;

  total :=0;
  DESCONTO :=0;
  ClientDataSet1.First;

  if qr.IsEmpty then
  begin
    while not ClientDataSet1.eof do
    begin
      ClientDataSet1.Edit;
      DESCONTO := CurrencyEdit2.Value;
      Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat +  ClientDataSet1Multa.AsFloat + ClientDataSet1Juros.AsFloat);
      DESCONTO := ExatoCurrency(((TOTAL * DESCONTO)/100),2);
      DESC := FormatCurr('0.00', DESCONTO);
      DESCONTO := StrToFloat(DESC);
      ClientDataSet1Descontos.AsFloat := DESCONTO;
      ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
      DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
      ClientDataSet1.post;
      ClientDataSet1.Next;
    end;

    X:=0;
    ClientDataSet1.First;
    X:= X + ClientDataSet1valor_total.AsFloat;
    ClientDataSet1.Next;
    CurrencyEdit8.VALUE:= X;

    While not ClientDataSet1.Eof do
    begin
      X:= X + ClientDataSet1VALOR_TOTAL.AsFloat;
      ClientDataSet1.Next;
      CurrencyEdit8.VALUE:= X;
    end;

    BitBtn2.SetFocus;
  end
  else
  begin
    id_contrato:= qr.fieldbyname('ID_CONTRATO').AsInteger;
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT COUNT(ID_CONTRATO) FROM CREDIARIO WHERE ID_CONTRATO = ' + IntToStr(id_contrato) + 'AND SITUACAO = ''A''');
    qr.Open;
    TotalParcelas:= qr.fieldbyname('COUNT').AsInteger;
    qr.Destroy;
    TotalParcelasGrid:= DataSource1.DataSet.RecordCount;

    //Se for igual significa quitação de imóvel
    if TotalParcelas = TotalParcelasGrid then
    begin
      ClientDataSet1.First;
      while not ClientDataSet1.eof do
      begin
        ClientDataSet1.Edit;

        Valor := ClientDataSet1ValorParcela.AsFloat;
        n     := TotalParcelas;
        i     := (CurrencyEdit2.Value / 100) + 1;
        R1    := (Power( i , n ) - 1) ;
        R2    := (i - 1) * (power ( i , n ));
        TotalHP := R1 / R2;
        Prest := valor * TotalHP;

        Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat +  ClientDataSet1Multa.AsFloat + ClientDataSet1Juros.AsFloat);
        DESCONTO := ExatoCurrency(total - (Prest/TotalParcelas),2);
        DESC := FormatCurr('0.00', DESCONTO);
        DESCONTO := StrToFloat(DESC);
        ClientDataSet1Descontos.AsFloat := DESCONTO;
        ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
        DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
        ClientDataSet1.post;
        ClientDataSet1.Next;
      end;
    end
    else
    //Se for Diferente siginifica amortização
    begin
      ClientDataSet1.First;
      while not ClientDataSet1.eof do
      begin
        if DataSource1.DataSet.FieldByName('DataVencimento').AsDateTime > Now then
        begin
          ClientDataSet1.Edit;

          Valor := ClientDataSet1ValorParcela.AsFloat;
          n     := TotalParcelasGrid;
          i     := (CurrencyEdit2.Value / 100) + 1;
          R1    := (Power( i , n ) - 1) ;
          R2    := (i - 1) * (power ( i , n ));
          TotalHP := R1 / R2;
          Prest := valor * TotalHP;

          Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat +  ClientDataSet1Multa.AsFloat + ClientDataSet1Juros.AsFloat);
          DESCONTO := ExatoCurrency(total - (Prest/TotalParcelasGrid),2);
          DESC := FormatCurr('0.00', DESCONTO);
          DESCONTO := StrToFloat(DESC);
          ClientDataSet1Descontos.AsFloat := DESCONTO;
          ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
          DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
          ClientDataSet1.post;
        end;
        ClientDataSet1.Next;
      end;
    end;
  end;
end;


procedure TFormBaixas.CurrencyEdit3Exit(Sender: TObject);
var
total_venda, TOTAL1 :Real;
valor_desc : string;
begin
 total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
{ClientDataSet1.First;
while not ClientDataSet1.Eof do
begin
ClientDataSet1.Edit;
DESCONTO := CurrencyEdit3.Value;
contador := CurrencyEdit9.AsInteger;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat +ClientDataSet1multa.AsFloat);
desconto := (DESCONTO / contador);
ClientDataSet1Descontos.AsFloat := (DESCONTO);
ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;
CurrencyEdit1.SetFocus;}

         if Tag = 1 then
          begin
          Total := (FormCRCrediario.CurrencyEdit1.VALUE  + FormCRCrediario.CurrencyEdit2.VALUE + FormCRCrediario.CurrencyEdit3.VALUE  - FormCRCrediario.CurrencyEdit4.VALUE);
          end else
          if Tag = 2 then
          begin
          Total := (FormCRCrediarioconv.CurrencyEdit1.VALUE  + FormCRCrediarioconv.CurrencyEdit2.VALUE + FormCRCrediarioconv.CurrencyEdit3.VALUE  - FormCRCrediarioconv.CurrencyEdit4.VALUE);
          end ;

           DESCONTO := (CurrencyEdit3.Value * 100) / total;

          CurrencyEdit2.Value :=  DESCONTO;

          ClientDataSet1.First;
          Contador := 0;
          Contador:=ClientDataSet1.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          ClientDataSet1.Edit;
        //  TOTAL1:= (EdtValorDesconto.Value / Contador);
          Total1 := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat +ClientDataSet1multa.AsFloat);
          ClientDataSet1DESCONTOS.AsFloat := ExatoCurrency((( total1 * DESCONTO) / 100),2);
          ClientDataSet1.post;
          ClientDataSet1.Next;
          end;

ClientDataSet1.First;
while not ClientDataSet1.eof do
begin
ClientDataSet1.Edit;
//DESCONTO := CurrencyEdit2.Value;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat +  ClientDataSet1Multa.AsFloat + ClientDataSet1Juros.AsFloat);
{DESCONTO := ((TOTAL * DESCONTO)/100);
DESC := FormatCurr('0.00', DESCONTO);
DESCONTO := StrToFloat(DESC); }
DESCONTO := ClientDataSet1Descontos.AsFloat;
ClientDataSet1Valor_total.AsFloat := (TOTAL - DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;

          // ACHA RESTO DA DIVISÃO
          ClientDataSet1.First;
          Total := 0;
          X:= 0;
          X:= X + StrToFloatDef(ClientDataSet1DESCONTOS.Text,0.00);
          ClientDataSet1.Next;
          TOTAL := X;
          While not ClientDataSet1.Eof do
          begin
          X:= X + StrToFloatDef(ClientDataSet1DESCONTOS.Text,0.00);
          ClientDataSet1.Next;
          Total:= X;
          end;

          valor_desc := FloatToStr(ClientDataSet1DESCONTOS.MaxValue);
          ClientDataSet1.Locate('DESCONTOS',valor_desc,[loPartialKey, loCaseInsensitive]);

          total_venda := ( CurrencyEdit3.Value - total);

         // CurrencyEdit9.Value := total_venda;
          ClientDataSet1.Edit;

          IF TOTAL > CurrencyEdit3.Value then
          begin
           ClientDataSet1.Edit;
           DESCONTO := ClientDataSet1DESCONTOS.VALUE - total_venda;
           ClientDataSet1DESCONTOS.Value := Abs(DESCONTO);
           Total1 := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat +ClientDataSet1multa.AsFloat);
           ClientDataSet1Valor_total.AsFloat := (TOTAL1 - DESCONTO);
           DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
           ClientDataSet1.Post;
          end ELSE

          IF TOTAL < CurrencyEdit3.Value then
          begin
           ClientDataSet1.Edit;
           DESCONTO := ClientDataSet1DESCONTOS.VALUE + total_venda;
           ClientDataSet1DESCONTOS.Value := Abs(DESCONTO);
           Total1 := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat +ClientDataSet1multa.AsFloat);
           ClientDataSet1Valor_total.AsFloat := (TOTAL1 - DESCONTO);
           DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
           ClientDataSet1.Post;
          end;
 BitBtn2.SetFocus;
end;


procedure TFormBaixas.CurrencyEdit5Exit(Sender: TObject);
begin
 total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
ClientDataSet1.First;
while not ClientDataSet1.eof do
begin
ClientDataSet1.Edit;
DESCONTO := CurrencyEdit5.Value;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1multa.AsFloat - ClientDataSet1descontos.AsFloat);
DESCONTO := ((TOTAL * DESCONTO)/100);
DESC := FormatCurr('0.00', DESCONTO);
DESCONTO := StrToFloat(DESC);
ClientDataSet1juros.AsFloat := DESCONTO;
ClientDataSet1Valor_total.AsFloat := (TOTAL + DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;
CurrencyEdit1.SetFocus;
end;

procedure TFormBaixas.CurrencyEdit4Exit(Sender: TObject);
begin
  total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
ClientDataSet1.First;
while not ClientDataSet1.Eof do
begin
ClientDataSet1.Edit;
DESCONTO := CurrencyEdit4.Value;
contador := CurrencyEdit9.AsInteger;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1multa.AsFloat - ClientDataSet1descontos.AsFloat);
DESCONTO := (DESCONTO / contador);
ClientDataSet1juros.AsFloat := DESCONTO;
ClientDataSet1Valor_total.AsFloat := (TOTAL + DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;
CurrencyEdit1.SetFocus;
end;

procedure TFormBaixas.CurrencyEdit7Exit(Sender: TObject);
begin
 total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
ClientDataSet1.First;
while not ClientDataSet1.eof do
begin
ClientDataSet1.Edit;
DESCONTO := CurrencyEdit7.Value;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat + ClientDataSet1multa.AsFloat - ClientDataSet1descontos.AsFloat);
DESCONTO := ((TOTAL * DESCONTO)/100);
DESC := FormatCurr('0.00', DESCONTO);
DESCONTO := StrToFloat(DESC);
ClientDataSet1multa.AsFloat := DESCONTO;
ClientDataSet1Valor_total.AsFloat := (TOTAL + DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;
CurrencyEdit1.SetFocus;
end;

procedure TFormBaixas.CurrencyEdit6Exit(Sender: TObject);
begin
  total :=0;
  DESCONTO :=0;
//DBGrid.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
ClientDataSet1.First;
while not ClientDataSet1.Eof do
begin
ClientDataSet1.Edit;
DESCONTO := CurrencyEdit6.Value;
contador := CurrencyEdit9.AsInteger;
Total := (ClientDataSet1ValorParcela.AsFloat - ClientDataSet1Valor_pago.AsFloat + ClientDataSet1juros.AsFloat  - ClientDataSet1descontos.AsFloat);
DESCONTO := (DESCONTO / contador);
ClientDataSet1multa.AsFloat := DESCONTO;
ClientDataSet1Valor_total.AsFloat := (TOTAL + DESCONTO);
DBGRID.COLUMNS.Grid.Fields[9].Value := (DBGRID.COLUMNS.Grid.Fields[2].Value  - DBGRID.COLUMNS.Grid.Fields[3].Value + DBGRID.COLUMNS.Grid.Fields[5].Value + DBGRID.COLUMNS.Grid.Fields[6].Value - DBGRID.COLUMNS.Grid.Fields[7].Value - DBGRID.COLUMNS.Grid.Fields[8].Value );
ClientDataSet1.post;
ClientDataSet1.Next;
end;
CurrencyEdit1.SetFocus;
end;

procedure TFormBaixas.CurrencyEdit1Enter(Sender: TObject);
begin
CurrencyEdit1.SelectAll;
end;

procedure TFormBaixas.BitBtn4Click(Sender: TObject);
var
  Code: INTEGER;
  J, VB, troco: Real;
begin
VB:= CurrencyEdit1.value;

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
IF (ValChPre < VB) THEN
BEGIN
MSGI.Text:= 'O Valor Do Cheque Pré-Datado Não Pode Ser Menor Que o Valor Da Conta do Cliente. Utilize a Baixa de Parcela ou a Baixa Parcial Para Este Recebimento!';
MSGI.ShowModal;
end else

if Tag = 1 then
     begin
       // Try
        SDS_CHEQUE.Active:= False;
        SDS_CHEQUE.Active:= True;
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
           SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit11.Value;
           SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediario.RxLabel6.Caption;
           SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
           SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
           SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
           SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
           SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
           SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;
           SDS_CHEQUE.Post;
           SDS_CHEQUE.ApplyUpdates(0);


         { ClientDataSet1.First;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin
        {  FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. de Parcela do Crediário no Cheque Nº'+ N_CHEQUE.Text;
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value:= ClientDataSet1valor_total.AsCurrency;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value:= ClientDataSet1CodigoCompra.Value;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'REC';
          FormCRCrediario.SPC_MOV_DIARIO.Params[11].Value:= null;
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc;  }

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit11.Value;
                    qrcaixa_mov.parambyname('valor').asfloat :=  CurrencyEdit11.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. de Parcela do Crediário no Cheque Nº'+ N_CHEQUE.Text + ' VENDA: '+ ClientDataSet1CODIGOCOMPRA.Text + 'Parc. '+ ClientDataSet1PARCELA.Text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


             // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    commandtext.Clear;
                    commandtext.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    commandtext.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    commandtext.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    commandtext.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    commandtext.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                       if ClientDataSet1Nome_cliente.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if ClientDataSet1CODIGOCOMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value      := -1;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar troco
          if troco > 0 then
          begin
         { FormCRCrediario.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediario.SPC_MOV_DIARIO.Params[2].AsString:= 'Restante De Recebimentos Parcial';
          FormCRCrediario.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediario.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediario.SPC_MOV_DIARIO.Params[5].Value:= 0;
          FormCRCrediario.SPC_MOV_DIARIO.Params[6].Value:= troco;
          FormCRCrediario.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[9].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.Params[10].Value:= 'REC';
          FormCRCrediario.SPC_MOV_DIARIO.Params[11].Value:= NULL;
          FormCRCrediario.SPC_MOV_DIARIO.ExecProc;   }
          end;


            ClientDataSet1.First;
            Contador := ClientDataSet1.RecordCount;
            For I:=1 to Contador do
            begin
           { FormCRCrediario.SPC_BAIXA_PARCELA.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
            FormCRCrediario.SPC_BAIXA_PARCELA.Params[2].AsString:= FormPrincipal.UserLogado;
            FormCRCrediario.SPC_BAIXA_PARCELA.Params[3].Value:= Date;
            FormCRCrediario.SPC_BAIXA_PARCELA.Execproc;  }
               if dm.IBTransaction.Active then
                dm.IBTransaction.Commit;
             dm.IBTransaction.StartTransaction;
             with dm.fConsulta do
                begin
                   close;
                   CommandText.Clear;
                   CommandText.Text:= ' Update CREDIARIO set VALOR_PAGO = (VALOR_TOTAL + VALOR_PAGO), SITUACAO = ''F'' ,DATA_BAIXA =:DATA, USUARIO_BAIXA =:USUARIO where CODIGO=:CODIGO ';
                   Parambyname('DATA').AsDate     := Date;
                   Parambyname('USUARIO').AsString   :=  FormPrincipal.UserLogado;
                   Parambyname('CODIGO').AsInteger    := ClientDataSet1Codigo_Crediario.Value;
                   open;
                end;
             dm.IBTransaction.Commit;
             dm.fConsulta.Close;
            ClientDataSet1.Next;
            end;


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
            Formrecibo.Edit2.text := CurrencyEdit11.Text;
            Formrecibo.Edit1.Text := FormCRCrediario.RxLabel6.Caption;
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediario.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado em cheque nº ' +N_CHEQUE.Text;
             Formrecibo.Showmodal;
             end;
            Panel3.Visible := False;
          //  Except
           // MSG.ShowModal;
          //  end;
          close;
    end;

    if Tag = 2 then
    begin
       // Try
        SDS_CHEQUE.Active:= False;
        SDS_CHEQUE.Active:= True;
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
           SDS_CHEQUE.FieldByName('VALOR_CHEQUE').Value:= CurrencyEdit11.Value;
           SDS_CHEQUE.FieldByName('CLIENTE').Value:= FormCRCrediarioConv.RxLabel6.Caption;
           SDS_CHEQUE.FieldByName('DATA_CADASTRO').Value:= DATE;
           SDS_CHEQUE.FieldByName('DATA_DEPOSITO').Value:=DateEdit2.Text;
           SDS_CHEQUE.FieldByName('USUARIO_CADASTRO').Value:= FormPrincipal.UserLogado;
           SDS_CHEQUE.FieldByName('COMPENSADO').Value:= 'N';
           SDS_CHEQUE.FieldByName('cod_empresa').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
           SDS_CHEQUE.FieldByName('cod_cliente').AsInteger := DMb.SDS_Crediario_BaixaCODIGO_CLIENTE.AsInteger;
           SDS_CHEQUE.Post;
           SDS_CHEQUE.ApplyUpdates(0);


         { ClientDataSet1.First;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin
        {  FormCRCrediarioConv.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[2].AsString:= 'Receb. de Parcela do Crediário no Cheque Nº'+ N_CHEQUE.Text;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[5].Value:= ClientDataSet1valor_total.AsCurrency;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[6].Value:= 0;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[9].Value:= ClientDataSet1CodigoCompra.Value;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[10].Value:= 'REC';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[11].Value:= null;
          FormCRCrediarioConv.SPC_MOV_DIARIO.ExecProc;  }

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit11.Value;
                    qrcaixa_mov.parambyname('valor').asfloat :=  CurrencyEdit11.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 10; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. de Parcela do Crediário no Cheque Nº'+ N_CHEQUE.Text + ' VENDA: '+ ClientDataSet1CODIGOCOMPRA.Text + 'Parc. '+ ClientDataSet1PARCELA.Text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := ClientDataSet1Codigo_Crediario.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


             // grava parcelas baixadas
          ClientDataSet1.First;
          contador := 0;
          Contador := ClientDataSet1.RecordCount;
          For E:=1 to Contador do
          begin

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.fConsulta do
                    begin
                    close;
                    CommandText.Clear;
                    CommandText.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    CommandText.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    CommandText.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    CommandText.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    CommandText.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := ClientDataSet1Codigo_Crediario.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := ClientDataSet1PARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := ClientDataSet1ValorParcela.AsFloat;
                    parambyname('JUROS').asfloat     := ClientDataSet1juros.AsFloat;
                    parambyname('MULTA').AsFloat     := ClientDataSet1multa.AsFloat;
                    parambyname('DESCONTO').AsFloat     := ClientDataSet1descontos.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := ClientDataSet1valor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := ClientDataSet1CodigoCliente.asinteger;
                    if ClientDataSet1Nome_cliente.text > ''  then
                    parambyname('NOME_CLIENTE').AsString   := ClientDataSet1Nome_cliente.Text
                    else
                    parambyname('NOME_CLIENTE').Value     :=null;
                    if ClientDataSet1CODIGOCOMPRA.value > 0 then
                    parambyname('COD_COMPRA').AsString      := ClientDataSet1CODIGOCOMPRA.Text
                    else
                    parambyname('COD_COMPRA').Value       :=null;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := ClientDataSet1DataVencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := ClientDataSet1VALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value      := null;

                    open;
                    dm.IBTransaction.CommitRetaining;
                    end;
          ClientDataSet1.NEXT;
          end;

          troco :=  CurrencyEdit10.Value;
          // se sobrar troco
          if troco > 0 then
          begin
         { FormCRCrediarioConv.SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[2].AsString:= 'Restante De Recebimentos Parcial';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[5].Value:= 0;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[6].Value:= troco;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[7].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[8].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[9].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[10].Value:= 'REC';
          FormCRCrediarioConv.SPC_MOV_DIARIO.Params[11].Value:= NULL;
          FormCRCrediarioConv.SPC_MOV_DIARIO.ExecProc;   }
          end;


            ClientDataSet1.First;
            Contador := ClientDataSet1.RecordCount;
            For I:=1 to Contador do
            begin
            FormCRCrediarioConv.SPC_BAIXA_PARCELA.Params[0].AsInteger:= ClientDataSet1Codigo_Crediario.Value;
            FormCRCrediarioConv.SPC_BAIXA_PARCELA.Params[2].AsString:= FormPrincipal.UserLogado;
            FormCRCrediarioConv.SPC_BAIXA_PARCELA.Params[3].Value:= Date;
            FormCRCrediarioConv.SPC_BAIXA_PARCELA.Execproc;
            ClientDataSet1.Next;
            end;


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
            Formrecibo.Edit2.text := CurrencyEdit11.Text;
            Formrecibo.Edit1.Text := FormCRCrediarioConv.RxLabel6.Caption;
            Formrecibo.Memo2.Text := 'Recebi(emos) do Sr(a): '+ FormCRCrediarioConv.RxLabel6.Caption +' Referente a parcela(s) quitadas em nosso estabelecimento no valor acima citado em cheque nº ' +N_CHEQUE.Text;
             Formrecibo.Showmodal;
             end;
            Panel3.Visible := False;
          //  Except
           // MSG.ShowModal;
          //  end;
    end;
end;


procedure TFormBaixas.CurrencyEdit11Exit(Sender: TObject);
begin
ValConta := CurrencyEdit11.Value;
ValTroco := ( ValConta - ValChPre);
CurrencyEdit13.Value := ValTroco;
//DateEdit2.Enabled := False;
CorSaida(Sender);
end;

procedure TFormBaixas.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
if DateEdit2.Text = '  /  /    ' then
begin
MsgI.Text:= 'Informe A Data Para Deposito';
MsgI.ShowModal;
DateEdit2.SetFocus;
end else
DataAtual := Date;
DataVenc := DateEdit2.Date;
ValCh := CurrencyEdit1.Value;
Data := DataVenc - DataAtual;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS_CHEQUE.AsFloat;
TotPert := (Tot * Pert);
ValChPre := (ValCh * TotPert)/100;
ValChPre := (ValCh + ValChPre);
CurrencyEdit12.Value := ValChPre;

end;

procedure TFormBaixas.DateEdit2Enter(Sender: TObject);
begin
corentrada(Sender);
end;

procedure TFormBaixas.CurrencyEdit11Enter(Sender: TObject);
begin
corentrada(Sender);
end;

end.

