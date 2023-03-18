unit UGeraMdb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB,
  IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormGeraMdb = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdtDataIni: TDateTimePicker;
    EdtDataFin: TDateTimePicker;
    Edit1: TEdit;
    suiButton2: TsuiButton;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    suiButton1: TsuiButton;
    OpenDialog2: TOpenDialog;
    Button1: TButton;
    ADOConnect: TADOConnection;
    ADOEcf: TADODataSet;
    AdoLeituraZ: TADODataSet;
    AdoLeituraZcontCOO: TIntegerField;
    AdoLeituraZHoraInicio: TDateTimeField;
    AdoLeituraZDataReferencia: TDateTimeField;
    AdoLeituraZTipoImpressora: TWordField;
    AdoLeituraZcontGNF: TIntegerField;
    AdoLeituraZcontCRO: TSmallintField;
    AdoLeituraZcontCRZ: TSmallintField;
    AdoLeituraZcontCDC: TSmallintField;
    AdoLeituraZcontNFC: TSmallintField;
    AdoLeituraZcontGRG: TIntegerField;
    AdoLeituraZcontCCF_CBP: TIntegerField;
    AdoLeituraZcontCFC_BPC: TSmallintField;
    AdoLeituraZcontCFD: TIntegerField;
    AdoLeituraZtotalGT: TBCDField;
    AdoLeituraZtotalVB: TBCDField;
    AdoLeituraZtotalCancICMS: TBCDField;
    AdoLeituraZtotalDescICMS: TBCDField;
    AdoLeituraZtotalAcresICMS: TBCDField;
    AdoLeituraZtotalParciaisICMS: TBCDField;
    AdoLeituraZtotalImpostoICMS: TBCDField;
    AdoLeituraZtotalCancISSQN: TBCDField;
    AdoLeituraZtotalDescISSQN: TBCDField;
    AdoLeituraZtotalAcresISSQN: TBCDField;
    AdoLeituraZtotalISSQN: TBCDField;
    AdoLeituraZtotalImpostoISSQN: TBCDField;
    AdoLeituraZtotalParciaisISSQN: TBCDField;
    AdoLeituraZtotalVendaLiquida: TBCDField;
    AdoLeituraZtotalSubstTributariaICMS: TBCDField;
    AdoLeituraZtotalIsencaoICMS: TBCDField;
    AdoLeituraZtotalNaoIncidenciaICMS: TBCDField;
    AdoLeituraZtotalSubstTributariaISSQN: TBCDField;
    AdoLeituraZtotalIsencaoISSQN: TBCDField;
    AdoLeituraZtotalNaoIncidenciaISSQN: TBCDField;
    AdoLeituraZtotalCancNF: TBCDField;
    AdoLeituraZtotalDescNF: TBCDField;
    AdoLeituraZtotalAcresNF: TBCDField;
    AdoLeituraZtotalTroco: TBCDField;
    AdoLeituraZindNCN: TSmallintField;
    AdoLeituraZtempoEmitindoFiscal: TDateTimeField;
    AdoLeituraZtempoOperacional: TDateTimeField;
    AdoLeituraZmfdNumSerie: TWideStringField;
    AdoLeituraZmfdRestante: TSmallintField;
    ADOEcfIDNumSerie: TWideStringField;
    ADOEcfMarca: TWideStringField;
    ADOEcfModelo: TWideStringField;
    ADOEcfTipo: TWideStringField;
    ADOEcfltimoDeSequencial: TSmallintField;
    SDS_red_Z1: TFDQuery;
    ADOTotalizador: TADODataSet;
    ADOTotalizadorSomaDeValorTotal: TBCDField;
    ADOTotalizadorSituacaoTributaria: TIntegerField;
    ADOTotalizadorAliquota: TWideStringField;
    ADOTotalizadorIndice: TWordField;
    ADOTotalizadorDATA: TWideStringField;
    sds_total_z: TFDQuery;
    ADOTotalizadorExpr1003: TWordField;
    Sds_Cupons: TFDQuery;
    SDS_UPPEDIDOS: TFDQuery;
    ADOCupons: TADODataSet;
    ADOCuponscontCOO: TIntegerField;
    ADOCuponsHoraInicio: TDateTimeField;
    ADOCuponscontCCF: TIntegerField;
    ADOCuponsCNPJ_CPFConsumidor: TWideStringField;
    ADOCuponsNome: TWideStringField;
    ADOCuponsEndereco: TWideStringField;
    ADOCuponsSubTotal: TBCDField;
    ADOCuponsValorAcrescimo: TBCDField;
    ADOCuponsValorDesconto: TBCDField;
    ADOCuponsTotal: TBCDField;
    ADOCuponsSomaPgto: TBCDField;
    ADOCuponsTroco: TBCDField;
    ADOCuponsTextoSuplementar: TMemoField;
    ADOCuponsCancelado: TBooleanField;
    ADOCuponsCupomAdicional: TBooleanField;
    ADOCuponsDescontoISSDesabilitado: TBooleanField;
    ADOCuponscontCRZ: TIntegerField;
    Edit3: TEdit;
    Label5: TLabel;
    procedure suiButton2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraMdb: TFormGeraMdb;

implementation

uses Z_DeclaracoesBemaFi32, ModuleDados1, ModulodeDados, Ubibli1;

{$R *.dfm}

procedure TFormGeraMdb.suiButton2Click(Sender: TObject);
begin
OpenDialog1.Title := 'Download do arquivo MFD';
OpenDialog1.InitialDir := 'C:\siace\sped\';
if OpenDialog1.Execute then
Begin
//ImgProduto.Visible := True;
//ImgProduto.Picture.LoadFromFile(OpenDialog.FileName);
Edit1.Text := OpenDialog1.FileName;
end;
end;

procedure TFormGeraMdb.BtnOkClick(Sender: TObject);
var
 cArquivoOrigem , cArquivoDestino,cTipoDownload, cTipoFormato, cUsuario, cCOOInicial, cCOOFinal : string;
 iRetorno : Integer;
 begin
     if FileExists('C:\SIACE\SPED\DOWNLOAD.MDB') then
     begin
     DeleteFile('C:\SIACE\SPED\DOWNLOAD.MDB');
     end;       


    if edtdatafin.Date < edtdataini.Date then
      begin
         showmessage('A data final não pode ser menor que a data inicial');
         edtdataini.SetFocus;
         exit;
      end else
      begin
      cArquivoOrigem  := edit1.text;

      cArquivoDestino := edit2.text;

      cTipoFormato    := '2';

      cTipoDownload   := '1';

      cCOOInicial   := datetostr(edtdataini.Date);

      cCOOFinal     := datetostr(edtdatafin.Date);

      cUsuario        := '';

      iRetorno := Bematech_FI_FormatoDadosMFD( pchar( cArquivoOrigem ), pchar( cArquivoDestino ), pchar( cTipoFormato ), pchar( cTipoDownload ),
                  pchar( cCOOInicial ), pchar( cCOOFinal ), pchar( cUsuario ) );
 end;
end;

procedure TFormGeraMdb.suiButton1Click(Sender: TObject);
begin
OpenDialog2.Title := 'Download do arquivo MDB';
OpenDialog2.InitialDir := 'C:\siace\sped\';
if OpenDialog2.Execute then
Begin
//ImgProduto.Visible := True;
//ImgProduto.Picture.LoadFromFile(OpenDialog.FileName);
Edit2.Text := OpenDialog2.FileName;
end;
end;

procedure TFormGeraMdb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormGeraMdb := nil;
end;

procedure TFormGeraMdb.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormGeraMdb.BtnCancelarClick(Sender: TObject);
begin
close ;
end;

procedure TFormGeraMdb.Button1Click(Sender: TObject);
var
  i, contador, caixa: Integer;

  begin
{dm.IBSQL.Close;
dm.IBSQL.SQL.Clear;
DM.IBSQL.SQL.Add('DELETE FROM SPED_REDUCAO_Z');
dm.IBSQL.ExecQuery;

dm.IBSQL.Close;
dm.IBSQL.SQL.Clear;
DM.IBSQL.SQL.Add('DELETE FROM SPED_TOTAL_Z ');
dm.IBSQL.ExecQuery; }


 if Application.MESSAGEBOX('Confirma a Atualização dos dados no Banco de dados..+#10+#13?'+
 'Dados atuais serão perdidos, Continua? ', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin

ADOConnect.connected := True;
if ADOConnect.Connected = False then
begin
ShowMessage('Não Foi Possivel Conectar ao Banco de Dados');
end else

if ADOConnect.Connected = True then
begin
ADOEcf.Active := False;
ADOEcf.Active := True;

Caixa := StrToInt(ADOEcfltimoDeSequencial.TEXT);


 if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
 TRY
dm.IBSQL.Close;
dm.IBSQL.SQL.Clear;
DM.IBSQL.SQL.Add('DELETE FROM SPED_ECF where ecf_cx=:ecf; ');
DM.IBSQL.ParamByName('ecf').AsInteger := caixa;
dm.IBSQL.ExecSQL;

dm.IBTransaction.Commit;
except
 dm.IBTransaction.Rollback;
 showmessage('Erro ao limpar os dados');
end;


dm1.Sds_ecf.Active := False;
dm1.Sds_ecf.Active := true;
dm1.Sds_ecf.Insert;
dm1.Sds_ecfCOD_MOD.Text := '2D';
dm1.Sds_ecfECF_CX.Text  := ADOEcfltimoDeSequencial.Text;
DM1.Sds_ecfECF_MOD.Text := ADOEcfModelo.Text;
DM1.Sds_ecfECF_FAB.Text := ADOEcfIDNumSerie.Text;
dm1.Sds_ecf.Post;
dm1.Sds_ecf.ApplyUpdates(0);

AdoLeituraZ.Open;

DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_red_Z1 do
begin
close;
parambyname('ECF_CX').AsInteger   := caixa;
parambyname('DT_COD').AsDateTime  := AdoLeituraZDataReferencia.AsDateTime;
parambyname('CRO').AsInteger      := StrToInt(AdoLeituraZcontCRO.Text);
parambyname('CRZ').AsInteger      := StrToInt( AdoLeituraZcontCRZ.Text);
parambyname('COO').AsInteger      := StrToInt(AdoLeituraZcontCOO.Text);
parambyname('GT_FIN').AsCurrency  := AdoLeituraZtotalGT.AsCurrency;
parambyname('VL_BRT').AsCurrency  := AdoLeituraZtotalVB.AsCurrency;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;


//..................TOTALIZADORES........................//
ADOTotalizador.Open;

//.....................DESCONTOS...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'DT';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalDescICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;

//.....................CANCELAMENTOS...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'Can-T';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalCancICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;


//.....................ISENTOS...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'I1';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalIsencaoICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;


//.....................SUBSTITUICAO...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'F1';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalSubstTributariaICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;

//.....................NÃO INCIDENCIA...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'N1';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalNaoIncidenciaICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;

//.....................T0001 - ICMS...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'T0001';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalParciaisICMS.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := '06';
parambyname('DESCRICAO').Value                    := 'ICMS';
parambyname('T_SIT_TRIB').AsCurrency              := 0.01;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;

//.....................ISSQN...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'S0500';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalISSQN.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := '05';
parambyname('DESCRICAO').Value                    := 'ISSQN';
parambyname('T_SIT_TRIB').AsCurrency              := 5.00;
ExecSQL;
AdoLeituraZ.Next;
end;
end;
DM.IBTransaction.Commit;

//.....................DESCONTO ISSQN...........................//
DM.IBTransaction.StartTransaction;
AdoLeituraZ.First;
Contador := AdoLeituraZ.RecordCount;
For I:=1 to Contador do
begin
with SDS_total_Z do
begin
close;
parambyname('ECF_CX').AsInteger                   := caixa;
parambyname('TOTALIZADOR_Z').AsString             := 'DS';
parambyname('DATA').AsDateTime                    := AdoLeituraZDataReferencia.AsDateTime;
parambyname('VALOR_TOTALIZADOR').AsCurrency       := AdoLeituraZtotalDescISSQN.AsCurrency;
parambyname('N_TOTALIZADOR').Value                := null;
parambyname('DESCRICAO').Value                    := null;
parambyname('T_SIT_TRIB').Value                   := null;
ExecSQL;
AdoLeituraZ.Next;
end;
end;

DM.IBTransaction.Commit;

 if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
 TRY
dm.IBSQL.Close;
dm.IBSQL.SQL.Clear;
DM.IBSQL.SQL.Add('UPDATE PEDIDOS SET PEDIDOS.COD_EMPRESA =:empresa, PEDIDOS.ano = EXTRACT(year FROM PEDIDOS.DATA_PEDIDO) ');
DM.IBSQL.ParamByName('empresa').Asstring                   := dm.sds_empresacodigo.text;
dm.IBSQL.ExecSQL;

dm.IBTransaction.Commit;
except
 dm.IBTransaction.Rollback;
 showmessage('Erro ao Atualizar os dados dos pedidos');
end;     


ADOCupons.Close;
ADOCupons.Open;
DM.IBTransaction.StartTransaction;
ADOCupons.First;
Contador := ADOCupons.RecordCount;
For I:=1 to Contador do
begin
with SDS_UPPEDIDOS do
begin
Close;
parambyname('CUPON').AsString       := IntToStr(ADOCuponscontCOO.Asinteger);
parambyname('DATA').AsDateTime      := ADOCuponsHoraInicio.AsDateTime;
parambyname('CRZ').AsInteger        := (ADOCuponscontCRZ.Asinteger + 1);
parambyname('TOTAL').AsCurrency     := ADOCuponsTotal.AsCurrency;
parambyname('ecf').AsString         := '000'+ IntToStr(caixa);
if  ADOCuponsCancelado.AsString =   'False' then
parambyname('CANC').AsString        := 'N'
else
parambyname('CANC').AsString        := 'S';
parambyname('ANO').AsString         := edit3.text;
ExecSQL;
ADOCupons.Next;
end;
end;
DM.IBTransaction.Commit;
end;
end;
end;


procedure TFormGeraMdb.FormShow(Sender: TObject);
var
   dtaux : TDateTime;
begin
 dtAux := DATE;
 
edit3.text := FormatDateTime('yyyy',dtAux);
end;

end.
