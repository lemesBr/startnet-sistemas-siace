unit BaixaChequesRetornados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIEdit, SUIButton, SUIDBCtrls,
  RXCtrls, Grids, DBGrids, Mask, DBCtrls, ToolEdit, SUIDlg, DB, DBTables,
  FMTBcd, SqlExpr, DBXpress, Mylabel, IBCustomDataSet, IBQuery;

type
  TFormBaixaChequeRetornado = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid: TsuiDBGrid;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    Navigator: TsuiDBNavigator;
    BTNNOVO: TsuiButton;
    Panel4: TPanel;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    SPC_MovimentoBancario: TSQLStoredProc;
    myLabel3d1: TmyLabel3d;
    suiDBEdit11: TsuiDBEdit;
    suiDBEdit12: TsuiDBEdit;
    suiDBEdit13: TsuiDBEdit;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    MSGErro: TsuiMessageDialog;
    Confirma: TsuiMessageDialog;
    suiEdit1: TEdit;
    qrcaixa_mov: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiEdit1Enter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure LCBEnter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure LCBExit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNNOVOClick(Sender: TObject);
    procedure suiEdit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaixaChequeRetornado: TFormBaixaChequeRetornado;

implementation

uses ModulodeDadosBaixas, ModulodeDados, Z_RotinasGerais, Acesso,
  Principal;

{$R *.dfm}

procedure TFormBaixaChequeRetornado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormBaixaChequeRetornado:=nil;
end;

procedure TFormBaixaChequeRetornado.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
suiEdit1.Clear;
end;

procedure TFormBaixaChequeRetornado.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBaixaChequeRetornado.LCBEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBaixaChequeRetornado.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormBaixaChequeRetornado.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBaixaChequeRetornado.LCBExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBaixaChequeRetornado.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBaixaChequeRetornado.suiEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormBaixaChequeRetornado.FormShow(Sender: TObject);
begin
DMB.SDS_BaixarChequeRetornados.Active:= False;
DMB.SDS_BaixarChequeRetornados.Active:= True;
if DMB.SDS_BaixarChequeRetornados.RecordCount = 0 then
begin
DBGrid.Enabled:= False;
SuiEdit1.Color:= $00E8E8E8;
SuiEdit1.Enabled:= False;
BTNNovo.Enabled:= False;
end else
begin
DBGrid.Enabled:= True;
SuiEdit1.Color:= clWindow;
SuiEdit1.Enabled:= True;
BTNNovo.Enabled:= True;
suiEdit1.SetFocus;
end;
end;

procedure TFormBaixaChequeRetornado.BTNNOVOClick(Sender: TObject);
begin
if Confirma.ShowModal = mryes then
begin
Try
DMB.SDS_BaixarChequeRetornados.Edit;
DMB.SDS_BaixarChequeRetornadosRETORNADO_PAGO.AsString:= 'SIM';


{SPC_MovimentoBancario.Params[1].AsDate:= Date;
SPC_MovimentoBancario.Params[2].AsString:= 'Baixa de Cheque Retornado' + ' / ' + 'N° '+' ' +DMB.SDS_BaixarChequeRetornadosN_CHEQUE.Text;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= DMB.SDS_BaixarChequeRetornadosVALOR_CHEQUE.AsCurrency;
SPC_MovimentoBancario.Params[6].Value:= 0;
SPC_MovimentoBancario.Params[7].Value:= DMB.SDS_BaixarChequeRetornadosCODIGO_CC.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DMB.SDS_BaixarChequeRetornadosNUMERO_CC.AsString;
SPC_MovimentoBancario.Params[9].Value:= DMB.SDS_BaixarChequeCODIGO_COMPRA.AsFloat;
SPC_MovimentoBancario.Params[10].Value:= 'CH';
SPC_MovimentoBancario.Execproc;  }

                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := DMB.SDS_BaixarChequeRetornadosVALOR_CHEQUE.AsCurrency;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_BaixarChequeRetornadosVALOR_CHEQUE.AsCurrency;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 16; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Depósito ref retirada do caixa';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DMB.SDS_BaixarChequeRetornadosCODIGO_CC.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DMB.SDS_BaixarChequeRetornadosNUMERO_CC.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;




          DMB.SDS_BaixarChequeRetornados.Post;
          DMB.SDS_BaixarChequeRetornados.ApplyUpdates(0);

DMB.SDS_BaixarChequeRetornados.Active:= False;
DMB.SDS_BaixarChequeRetornados.Active:= True;
if DMB.SDS_BaixarChequeRetornados.RecordCount = 0 then
begin
DBGrid.Enabled:= False;
SuiEdit1.Color:= $00E8E8E8;
SuiEdit1.Enabled:= False;
BTNNovo.Enabled:= False;
end else
begin
DBGrid.Enabled:= True;
SuiEdit1.Color:= clWindow;
SuiEdit1.Enabled:= True;
BTNNovo.Enabled:= True;
suiEdit1.SetFocus;
end;
Except
     MSGErro.ShowModal;
   end;
end;
end;

procedure TFormBaixaChequeRetornado.suiEdit1Change(Sender: TObject);
begin
DMB.SDS_BaixarChequeRetornados.locate('N_CHEQUE',suiEdit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormBaixaChequeRetornado.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBaixaChequeRetornado.DBGridDblClick(Sender: TObject);
begin
if BTNNOVO.Enabled = True then
begin
BTNNOVOClick(Sender);
end;
end;

procedure TFormBaixaChequeRetornado.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
