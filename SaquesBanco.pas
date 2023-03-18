unit SaquesBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Mask, RXCtrls, DB,  ExtCtrls,
  SUIEdit, FMTBcd, SUIDlg, SqlExpr, IBCustomDataSet,
  IBQuery, RxCurrEdit, RxToolEdit, sLabel;

type
  TFormSaques = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Cliente: TComboEdit;
    BTVisualizar: TsuiButton;
    Panel3: TPanel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    Panel2: TPanel;
    BTNNovo: TsuiButton;
    Bevel1: TBevel;
    BTNCANCELAR: TsuiButton;
    BTNSALVAR: TsuiButton;
    DateEdit1: TDateEdit;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Edit1: TsuiEdit;
    myLabel3d1: TsLabelFX;
    SPC_MovimentoBancario: TSQLStoredProc;
    MSGP: TsuiMessageDialog;
    MessageConta: TsuiMessageDialog;
    MessageLocConta: TsuiMessageDialog;
    MSGErro: TsuiMessageDialog;
    MessageCanClose: TsuiMessageDialog;
    qrcaixa_mov: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClienteEnter(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure BTVisualizarClick(Sender: TObject);
    procedure BTNNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNSALVARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSaques: TFormSaques;

implementation

uses ConsContaBancariapas, ModulodeDados, Z_RotinasGerais, Acesso,
  Principal;

{$R *.dfm}

procedure TFormSaques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormSaques:=nil;
end;

procedure TFormSaques.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
Cliente.Clear;
end;

procedure TFormSaques.ClienteExit(Sender: TObject);
begin
CorSaida(Sender);

BTVisualizarClick(Sender);
end;

procedure TFormSaques.ClienteButtonClick(Sender: TObject);
begin
Try
if FormConsContaBancaria=nil   then
    begin
    FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
      FormConsContaBancaria.ShowModal;
      Cliente.Text:= DM.SDS_Conta_BancariaCONTA.Text;
      end;
    If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.Locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
BTNNovo.Enabled:= True;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormSaques.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormSaques.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormSaques.CurrencyEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormSaques.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormSaques.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormSaques.CurrencyEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormSaques.BTVisualizarClick(Sender: TObject);
begin
If  Cliente.Text='' then
    Begin
    MessageConta.ShowModal;
    Cliente.SetFocus;
    end else
If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
BTNNovo.Enabled:= True;
end else
begin
    Cliente.color:= clWhite;
    MessageLocConta.ShowModal;

    if FormConsContaBancaria=nil   then
    begin
    FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
      FormConsContaBancaria.ShowModal;
      Cliente.Text:= DM.SDS_Conta_BancariaCONTA.Text;
      end;
    If DM.SDS_Conta_Bancaria.locate('CONTA',Cliente.Text,[])=True then
begin
DM.SDS_Conta_Bancaria.Locate('CONTA',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_Conta_BancariaBANCO.Text;
RXLabel7.Caption:= DM.SDS_Conta_BancariaTITULAR.Text;
RXLabel8.Caption:= DM.SDS_Conta_BancariaAGENCIA.Text;
RXLabel9.Caption:= DM.SDS_Conta_BancariaCONTA.Text;
BTNNovo.Enabled:= True;
end;
end;
end;

procedure TFormSaques.BTNNovoClick(Sender: TObject);
begin
BTVISUALIZAR.Enabled:= FALSE;
CLIENTE.Enabled:= FALSE;
BTNNOVO.Enabled:= FALSE;
BTNSALVAR.Enabled:= TRUE;
BTNCANCELAR.Enabled:= TRUE;
DATEEDIT1.Enabled:= TRUE;
EDIT1.Enabled:= TRUE;
CurrencyEdit1.Enabled:= TRUE;
DateEdit1.Date:= Date;
Edit1.Text:= 'SAQUE / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
CurrencyEdit1.SetFocus;
end;

procedure TFormSaques.FormShow(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Active:= False;
DM.SDS_Conta_Bancaria.Active:= True;
BTVISUALIZAR.Enabled:= TRUE;
CLIENTE.Enabled:= TRUE;
BTNNOVO.Enabled:= FALSE;
BTNSALVAR.Enabled:= FALSE;
BTNCANCELAR.Enabled:= FALSE;
DATEEDIT1.Enabled:= FALSE;
EDIT1.Enabled:= FALSE;
CurrencyEdit1.Enabled:= FALSE;
Cliente.SetFocus;
end;

procedure TFormSaques.BTNSALVARClick(Sender: TObject);
begin
Try
{SPC_MovimentoBancario.Params[1].AsDate:= DateEdit1.Date;
SPC_MovimentoBancario.Params[2].AsString:= Edit1.Text;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= CurrencyEdit1.Text;
SPC_MovimentoBancario.Params[7].Value:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DM.SDS_Conta_BancariaCONTA.AsString;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'AVU';
SPC_MovimentoBancario.Execproc;  }

                    //SAIDA DO BANCO
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
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Saque ref. retirada para o caixa';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

                    // ENTRADA NO CAIXA
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
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 16; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'REF SAQUE / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


BTVISUALIZAR.Enabled:= TRUE;
CLIENTE.Enabled:= TRUE;
BTNNOVO.Enabled:= TRUE;
BTNSALVAR.Enabled:= FALSE;
BTNCANCELAR.Enabled:= FALSE;
DATEEDIT1.Enabled:= FALSE;
EDIT1.Enabled:= FALSE;
CurrencyEdit1.Enabled:= FALSE;
DateEdit1.Clear;
Edit1.Clear;
CurrencyEdit1.Clear;
Cliente.SetFocus;
Except
     MSGErro.ShowModal;
     CurrencyEdit1.SetFocus;
   end;
end;

procedure TFormSaques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if BTNSALVAR.Enabled = TRUE then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormSaques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormSaques.BTNCANCELARClick(Sender: TObject);
begin
BTVISUALIZAR.Enabled:= TRUE;
CLIENTE.Enabled:= TRUE;
BTNNOVO.Enabled:= TRUE;
BTNSALVAR.Enabled:= FALSE;
BTNCANCELAR.Enabled:= FALSE;
DATEEDIT1.Enabled:= FALSE;
EDIT1.Enabled:= FALSE;
CurrencyEdit1.Enabled:= FALSE;
DateEdit1.Clear;
Edit1.Clear;
CurrencyEdit1.Clear;
Cliente.SetFocus;
end;

procedure TFormSaques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;


end.
