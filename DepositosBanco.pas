unit DepositosBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Mask,  RXCtrls, DB, ExtCtrls,
  SUIEdit, FMTBcd, SUIDlg, SqlExpr, IBCustomDataSet,
  IBQuery, RxCurrEdit, RxToolEdit, sLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormDepositos = class(TForm)
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
    qrcaixa_mov: TFDQuery;
    btnpix: TsuiButton;
    suiMessageDialog1: TsuiMessageDialog;
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
    procedure btnpixClick(Sender: TObject);
  private
    { Private declarations }
    Pode_fechar : Boolean;
  public
    { Public declarations }
  end;

var
  FormDepositos: TFormDepositos;

implementation

uses ConsContaBancariapas, ModulodeDados, Z_RotinasGerais, Acesso,
  Principal, VendasParcelamento, Vendas, baixaCR;

{$R *.dfm}

procedure TFormDepositos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormDepositos:=nil;
end;

procedure TFormDepositos.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
Cliente.Clear;
end;

procedure TFormDepositos.ClienteExit(Sender: TObject);
begin
CorSaida(Sender);
BTVisualizarClick(Sender);
end;

procedure TFormDepositos.ClienteButtonClick(Sender: TObject);
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
btnpix.Enabled := true;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormDepositos.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormDepositos.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormDepositos.CurrencyEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormDepositos.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormDepositos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormDepositos.CurrencyEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormDepositos.BTVisualizarClick(Sender: TObject);
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
btnpix.Enabled := true;
end;
end;
end;

procedure TFormDepositos.BTNNovoClick(Sender: TObject);
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
CurrencyEdit1.SetFocus;
Edit1.Text:= 'DEPOSITO / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
if Tag = 2 then
begin
  CurrencyEdit1.value := FormParcelamento.deposito;
  CurrencyEdit1.ReadOnly := True;
  BTNSALVAR.SetFocus;
end;
if Tag = 3 then
begin
  CurrencyEdit1.value := FormBaixas.Valor_pago;
  CurrencyEdit1.ReadOnly := True;
  BTNSALVAR.SetFocus;
end;

end;

procedure TFormDepositos.FormShow(Sender: TObject);
begin
if (Tag = 2) or (tag = 3) then
begin
 Pode_fechar := False;
end;
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

procedure TFormDepositos.btnpixClick(Sender: TObject);
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
Edit1.Text:= 'PIX / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
CurrencyEdit1.SetFocus;
if Tag = 2 then
begin
  CurrencyEdit1.value := FormParcelamento.deposito;
  CurrencyEdit1.ReadOnly := True;
  BTNSALVAR.SetFocus;
end;

if Tag = 3 then
begin
  CurrencyEdit1.value := FormBaixas.Valor_pago;
  CurrencyEdit1.ReadOnly := True;
  BTNSALVAR.SetFocus;
end;

end;

procedure TFormDepositos.BTNSALVARClick(Sender: TObject);
begin
Try
//ENTRADA NO BANCO
{SPC_MovimentoBancario.Params[1].AsDate:= DateEdit1.Date;
SPC_MovimentoBancario.Params[2].AsString:= Edit1.Text;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'B';
SPC_MovimentoBancario.Params[5].Value:= CurrencyEdit1.Text;
SPC_MovimentoBancario.Params[6].Value:= 0;
SPC_MovimentoBancario.Params[7].Value:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
SPC_MovimentoBancario.Params[8].Value:= DM.SDS_Conta_BancariaCONTA.AsString;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'AVU';
SPC_MovimentoBancario.Execproc;   }

          if Tag = 1 then     // deposito avulso
           begin

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
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Depósito ref retirada do caixa';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;  

// SAIDA DO CAIXA
{SPC_MovimentoBancario.Params[1].AsDate:= DateEdit1.Date;
SPC_MovimentoBancario.Params[2].AsString:= 'DEPOSITO / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'C';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= CurrencyEdit1.Text;
SPC_MovimentoBancario.Params[7].Value:= null;
SPC_MovimentoBancario.Params[8].Value:= null;
SPC_MovimentoBancario.Params[9].Value:= null;
SPC_MovimentoBancario.Params[10].Value:= 'AVU';
SPC_MovimentoBancario.Execproc;}

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
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 17; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'DEPOSITO / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'AVU';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;

                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

              end;

           if Tag = 2 then     // venda
           begin

                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC, codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC, :codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := Edit1.text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := FormParcelamento.n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;



                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC, codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC, :codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 42; // VENDA DEPOSITO PIX
                    qrcaixa_mov.parambyname('historico').asstring := Edit1.text; //'DEPOSITO / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.parambyname('codigo_venda').Asinteger  := FormParcelamento.n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    Pode_fechar :=True;
                close;
              end;

           if Tag = 3 then     // contas a receber
           begin

                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC,  cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC,  :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_ENTRADAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 99; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := Edit1.text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                  //  qrcaixa_mov.parambyname('codigo_venda').Asinteger  := FormParcelamento.n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;



                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, CODIGO_CC, NUMERO_CC, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :CODIGO_CC, :NUMERO_CC, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := CurrencyEdit1.Value;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit1.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_OUTRAS_SAIDAS').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 42; // VENDA DEPOSITO PIX
                    qrcaixa_mov.parambyname('historico').asstring := Edit1.text; //'DEPOSITO / - AG.:' + ' ' + RXLABEL8.Caption +' / '+'N° CONTA:' + ' ' + RXLABEL9.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'DEP';
                   // qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').ASINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                   // qrcaixa_mov.parambyname('codigo_venda').Asinteger  := FormParcelamento.n_venda;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    Pode_fechar :=True;
                close;
              end;



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

procedure TFormDepositos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if BTNSALVAR.Enabled = TRUE then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
if (Tag = 2) or (tag = 3) then
begin
if Pode_fechar = False then
begin
  suiMessageDialog1.ShowModal;
  CanClose := False;
  end ;
end;

end;

procedure TFormDepositos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormDepositos.BTNCANCELARClick(Sender: TObject);
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

procedure TFormDepositos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
