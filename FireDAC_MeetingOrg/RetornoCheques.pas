unit RetornoCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIEdit, SUIButton, SUIDBCtrls,
  RXCtrls, Grids, DBGrids, Mask, DBCtrls,  SUIDlg, DB,
  FMTBcd, SqlExpr, Mylabel, IBCustomDataSet, IBQuery, RxToolEdit;

type
  TFormRetornoCheques = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid: TsuiDBGrid;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    Navigator: TsuiDBNavigator;
    BTNCANCELAR: TsuiButton;
    BTNSALVAR: TsuiButton;
    BTNNOVO: TsuiButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    RxLabel1: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    DateEdit11: TDateEdit;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    Edit1: TsuiEdit;
    RxLabel9: TRxLabel;
    LCB: TsuiDBLookupComboBox;
    MessageCanClose: TsuiMessageDialog;
    SPC_MovimentoBancario: TSQLStoredProc;
    MSGErro: TsuiMessageDialog;
    myLabel3d1: TmyLabel3d;
    suiEdit1: TEdit;
    qrcaixa_mov: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiEdit1Enter(Sender: TObject);
    procedure DateEdit11Enter(Sender: TObject);
    procedure LCBEnter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure LCBExit(Sender: TObject);
    procedure DateEdit11Exit(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNNOVOClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure suiEdit1Change(Sender: TObject);
    procedure BTNSALVARClick(Sender: TObject);
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
  FormRetornoCheques: TFormRetornoCheques;

implementation

uses ModulodeDadosBaixas, ModulodeDados, Z_RotinasGerais, Acesso,
  Principal;

{$R *.dfm}

procedure TFormRetornoCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRetornoCheques:=nil;
end;

procedure TFormRetornoCheques.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
suiEdit1.Clear;
end;

procedure TFormRetornoCheques.DateEdit11Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRetornoCheques.LCBEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRetornoCheques.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRetornoCheques.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRetornoCheques.LCBExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRetornoCheques.DateEdit11Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRetornoCheques.suiEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRetornoCheques.FormShow(Sender: TObject);
begin
DMB.SDS_Cheque_Retornar.Active:= False;
DM.SDS_Retorno.Active:= False;
DMB.SDS_Cheque_Retornar.Active:= True;
DM.SDS_Retorno.Active:= True;
if DMB.SDS_Cheque_Retornar.RecordCount = 0 then
Begin
Navigator.Enabled:= False;
DBGrid.Enabled:= False;
SuiEdit1.Enabled:= False;
SuiEdit1.Color:= $00E8E8E8;
BTNNovo.Enabled:= False;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:= False;
Edit1.Enabled:= False;
end else
begin
Navigator.Enabled:= True;
DBGrid.Enabled:= True;
SuiEdit1.Enabled:= True;
SuiEdit1.Color:= clWindow;
BTNNovo.Enabled:= True;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:= False;
Edit1.Enabled:= False;
suiEdit1.SetFocus;
end;
end;

procedure TFormRetornoCheques.BTNNOVOClick(Sender: TObject);
begin
Try
DMB.SDS_Cheque_Retornar.Edit;
DMB.SDS_Cheque_RetornarRETORNARDO.AsString:= 'SIM';
Navigator.Enabled:= False;
DBGrid.Enabled:= False;
SuiEdit1.Enabled:= False;
BTNNovo.Enabled:= False;
BTNSalvar.Enabled:= True;
BTNCancelar.Enabled:= True;
//DateEdit1.Enabled:= True;
LCB.Enabled:= TRUE;
Edit1.Enabled:= True;
DateEdit11.Date:= Date;
Edit1.Text:= 'RETORNO DE CHEQUE' + ' / ' + 'N° '+' ' +DMB.SDS_Cheque_RetornarN_CHEQUE.Text;
LCB.SetFocus;
Except
     MSGErro.ShowModal;
   end;
end;

procedure TFormRetornoCheques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if BTNSALVAR.Enabled = TRUE then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormRetornoCheques.BTNCANCELARClick(Sender: TObject);
begin

DMB.SDS_Cheque_Retornar.Cancel;

Navigator.Enabled:= True;
DBGrid.Enabled:= True;
SuiEdit1.Enabled:= True;
BTNNovo.Enabled:= True;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:=False;
Edit1.Enabled:= False;
DateEdit11.Clear;
Edit1.Clear;
suiEdit1.SetFocus;
end;

procedure TFormRetornoCheques.suiEdit1Change(Sender: TObject);
begin
DMB.SDS_Cheque_Retornar.locate('N_CHEQUE',suiEdit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormRetornoCheques.BTNSALVARClick(Sender: TObject);
begin
Try

DMB.SDS_Cheque_RetornarMOTIVO_RETORNO.AsString:= LCB.Text;
DMB.SDS_Cheque_RetornarDATA_RETORNO.Value:= Date;

{SPC_MovimentoBancario.Params[1].AsDate:= DateEdit11.Date;
SPC_MovimentoBancario.Params[2].AsString:= Edit1.Text;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= DMB.SDS_Cheque_RetornarVALOR_CHEQUE.AsCurrency;
SPC_MovimentoBancario.Params[7].Value:= DMB.SDS_Cheque_RetornarCODIGO_CC.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DMB.SDS_Cheque_RetornarNUMERO_CC.AsString;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'AVU';
SPC_MovimentoBancario.Execproc; }

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
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := DMB.SDS_Cheque_RetornarVALOR_CHEQUE.AsCurrency;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := DMB.SDS_Cheque_RetornarVALOR_CHEQUE.AsCurrency;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Saque ref. retirada para o caixa';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DMB.SDS_Cheque_RetornarCODIGO_CC.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


Navigator.Enabled:= True;
DBGrid.Enabled:= True;
SuiEdit1.Enabled:= True;
BTNNovo.Enabled:= True;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:=False;
Edit1.Enabled:= False;
DateEdit11.Clear;
Edit1.Clear;

          DMB.SDS_Cheque_Retornar.Post;
          DMB.SDS_Cheque_Retornar.ApplyUpdates(0);

          DMB.SDS_Cheque_Retornar.Active:= FALSE;
          DMB.SDS_Cheque_Retornar.Active:= TRUE;
          if DMB.SDS_Cheque_Retornar.RecordCount = 0 then
Begin
Navigator.Enabled:= False;
DBGrid.Enabled:= False;
SuiEdit1.Enabled:= False;
SuiEdit1.Color:= $00E8E8E8;
BTNNovo.Enabled:= False;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:= False;
Edit1.Enabled:= False;
end else
begin
Navigator.Enabled:= True;
DBGrid.Enabled:= True;
SuiEdit1.Enabled:= True;
SuiEdit1.Color:= clWindow;
BTNNovo.Enabled:= True;
BTNSalvar.Enabled:= False;
BTNCancelar.Enabled:= False;
DateEdit11.Enabled:= False;
LCB.Enabled:= False;
Edit1.Enabled:= False;
suiEdit1.SetFocus;
end;
Except
     MSGErro.ShowModal;
   end;
end;

procedure TFormRetornoCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormRetornoCheques.DBGridDblClick(Sender: TObject);
begin
if BTNNOVO.Enabled = True then
begin
BTNNOVOClick(Sender);
end;
end;

procedure TFormRetornoCheques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
