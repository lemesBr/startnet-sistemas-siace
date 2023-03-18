unit RelatorioContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, SUIButton, Mask, ExtCtrls,
  DBCtrls, SUIDlg, FMTBcd, DB, SqlExpr, Buttons, sBitBtn, sComboEdit,
  sMaskEdit, sCustomComboEdit, sTooledit, sPanel, sLabel, TaskDialog,
  AdvSmoothMessageDialog,    AdvReflectionImage;

type
  TFormRelatorioContasReceber = class(TForm)
    Label1: TsLabel;
    Label13: TsLabel;
    DateEdit1: TsDateEdit;
    Label14: TsLabel;
    DateEdit2: TsDateEdit;
    Label3: TsLabel;
    suiButton3: TsBitBtn;
    RxLabel2: TsLabel;
    suiButton1: TsBitBtn;
    Label9: TsLabel;
    Label10: TsLabel;
    DateEdit7: TsDateEdit;
    Label11: TsLabel;
    Label12: TsLabel;
    DateEdit8: TsDateEdit;
    suiButton2: TsBitBtn;
    Cliente2: TsComboEdit;
    Panel1: TsPanel;
    Panel2: TsPanel;
    Cliente3: TsComboEdit;
    Panel3: TsPanel;
    suiButton4: TsBitBtn;
    Cliente: TsComboEdit;
    Label2: TsLabel;
    Label7: TsLabel;
    Label8: TsLabel;
    Label15: TsLabel;
    Label16: TsLabel;
    Label17: TsLabel;
    Label18: TsLabel;
    SPC_Juros: TSQLStoredProc;
    SPC_ATUALIZA: TSQLStoredProc;
    suiButton6: TsBitBtn;
    suiButton5: TsBitBtn;
    DateEdit4: TsDateEdit;
    DateEdit3: TsDateEdit;
    RxLabel4: TsLabel;
    RxLabel1: TsLabel;
    RxLabel3: TsLabel;
    sPanel1: TsPanel;
    MsgInformacao: TAdvSmoothMessageDialog;
    MsgAtencao: TAdvSmoothMessageDialog;
    MsgErro: TAdvSmoothMessageDialog;
    img: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit7Enter(Sender: TObject);
    procedure DateEdit8Enter(Sender: TObject);
    procedure DateEdit7Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cliente3Enter(Sender: TObject);
    procedure Cliente3Exit(Sender: TObject);
    procedure DateEdit8Exit(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure Cliente2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure Cliente2Exit(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure Cliente2ButtonClick(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure Cliente3ButtonClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
   Cli, Cli2, Cli3: String;
  public
    { Public declarations }
  end;

var
  FormRelatorioContasReceber: TFormRelatorioContasReceber;

implementation

uses ModulodeDados, ModulodeDadosConsultas3, ModulodeDadosRelatorios,
  Z_RotinasGerais, Principal, ModulodeDadosConsultas5, ConsClientes,
  ModulodeDadosBaixas;

{$R *.dfm}

procedure TFormRelatorioContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelatorioContasReceber:=nil;
end;

procedure TFormRelatorioContasReceber.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioContasReceber.DateEdit7Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.DateEdit8Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.DateEdit7Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioContasReceber.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRelatorioContasReceber.Cliente3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.Cliente3Exit(Sender: TObject);
begin
If  Cliente3.Text='' then
    Begin
    Cliente3.Color:= ClWhite;
    MsgInformacao.HTMLText.Text:= 'Entre com o código do cliente!';
    MsgInformacao.Execute;
    Cliente3.SetFocus;
    end else
    If DM.SDS_Clientes.locate('CODIGO',Cliente3.Text,[])=True then
    begin
    suiButton1.Enabled:= True;
    Cli3:=  DM.SDS_ClientesCODIGO.Text;
    Cliente3.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel3.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    CorSaida(Sender);
    suiButton1.SetFocus;
    end else
    begin
    Cliente3.color:= clWhite;
    MsgAtencao.HTMLText.Text:= 'O Código Informado Não é Válido; Este Cliente Não Está Cadastrado!!!';
    MsgAtencao.Execute;
    FormConsClientes:=TFormConsClientes.Create(self);
    FormConsClientes.ShowModal;
    suiButton1.Enabled:= True;
    Cli3:=  DM.SDS_ClientesCODIGO.Text;
    Cliente3.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel3.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    suiButton1.SetFocus;
    end;
end;

procedure TFormRelatorioContasReceber.DateEdit8Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioContasReceber.suiButton5Click(Sender: TObject);
var
DataIni, DataFin, TipoCons: String;
Data, DataVenc, DiasVenc, DataAtual : TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, dias : Real;
Contador, Q: Integer;
begin
Try
    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.First;

DataIni:= DateEdit1.Text;
DataFin:= DateEdit2.Text;
TipoCons:= 'Encargos Financeiros: SIM';
   If  DMC5.CDS_CrediarioReceber.RecordCount = 0 then
    Begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário a Receber no Período Informado!';
    MsgInformacao.Execute;
    end else
    begin

Contador:= DMC5.CDS_CrediarioReceber.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMC5.CDS_CrediarioReceberDATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
DiasVenc := DataAtual - DMC5.CDS_CrediarioReceberDATA_VENCIMENTO.Asdatetime;
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
SPC_Juros.Params[0].AsInteger:= DMC5.CDS_CrediarioReceberCODIGO.Value;
SPC_Juros.Params[2].Value:= TotPert;
SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
SPC_Juros.Params[5].value := dias;
SPC_Juros.Execproc;
DMC5.CDS_CrediarioReceber.Next;
end;
    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;

    DMR.RvRelatorios.SetParam('DI',DataIni);
    DMR.RvRelatorios.SetParam('DF',DataFin);
    DMR.RvRelatorios.SetParam('TC',TipoCons);
    DMR.RvRelatorios.SelectReport('Rp_CrediarioReceberPeriodo',False);
    DMR.RvRelatorios.Execute;
    end;
      Except
      MsgErro.HTMLText.Text:= 'Ocorreu um erro ao localizar crediario a receber por período. Reinicie o sistema e tente novamente!';
      MsgErro.Execute;
   end;

end;

procedure TFormRelatorioContasReceber.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.Cliente2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioContasReceber.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioContasReceber.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioContasReceber.ClienteExit(Sender: TObject);
begin
If  Cliente.Text='' then
    Begin
    Cliente.Color:= ClWhite;
    MsgInformacao.HTMLText.Text:= 'Entre com o código do cliente!';
    MsgInformacao.Execute;
    Cliente.SetFocus;
    end else
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
    begin
    Cli:=  DM.SDS_ClientesCODIGO.Text;
    Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel4.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    suiButton4.Enabled:= True;
    CorSaida(Sender);
    suiButton4.SetFocus;
    end else
    begin
    Cliente.color:= clWhite;
    MsgAtencao.HTMLText.Text:= 'O Código Informado Não é Válido; Este Cliente Não Está Cadastrado!!!';
    MsgAtencao.Execute;
    FormConsClientes:=TFormConsClientes.Create(self);
    FormConsClientes.ShowModal;
    Cli:=  DM.SDS_ClientesCODIGO.Text;
    Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel4.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    suiButton4.Enabled:= True;
    suiButton4.SetFocus;
    end;
    end;

procedure TFormRelatorioContasReceber.Cliente2Exit(Sender: TObject);
begin
If  Cliente2.Text='' then
    Begin
    Cliente2.Color:= ClWhite;
    MsgInformacao.HTMLText.Text:= 'Entre com o código do cliente!';
    MsgInformacao.Execute;
    Cliente2.SetFocus;
    end else
    If DM.SDS_Clientes.locate('CODIGO',Cliente2.Text,[])=True then
    begin
    suiButton3.Enabled:= True;
    Cli2:=  DM.SDS_ClientesCODIGO.Text;
    Cliente2.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel1.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    CorSaida(Sender);
    suiButton3.SetFocus;
    end else
    begin
    Cliente2.color:= clWhite;
    MsgAtencao.HTMLText.Text:= 'O Código Informado Não é Válido; Este Cliente Não Está Cadastrado!!!';
    MsgAtencao.Execute;
    FormConsClientes:=TFormConsClientes.Create(self);
    FormConsClientes.ShowModal;
    suiButton3.Enabled:= True;
    Cli2:=  DM.SDS_ClientesCODIGO.Text;
    Cliente2.Text:= DM.SDS_ClientesCODIGO.Text;
    RXLabel1.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
    suiButton3.SetFocus;
    end;
end;

procedure TFormRelatorioContasReceber.suiButton6Click(Sender: TObject);
var
DataIni, DataFin, TipoCons: String;
Contador2, Int: Integer;
begin
Try
IF FormPrincipal.OrotRemJurosCre = 'S' THEN
BEGIN

    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit4.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit3.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;

    DataIni:= DateEdit1.Text;
    DataFin:= DateEdit2.Text;
    TipoCons:= 'Encargos Financeiros: NÃO';

    If  DMC5.CDS_CrediarioReceber.RecordCount = 0 then
    Begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário a Receber no Período Informado!';
    MsgInformacao.Execute;
    end else
    begin

DMC5.CDS_CrediarioReceber.First;
Contador2:= DMC5.CDS_CrediarioReceber.RecordCount;
For Int:=1 to Contador2 do
begin
SPC_Atualiza.Params[0].AsInteger:= DMC5.CDS_CrediarioReceberCODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Params[3].Value:= 0 ;
SPC_Atualiza.Execproc;
DMC5.CDS_CrediarioReceber.Next;
end;

    DMC5.SQLD_CrediarioReceber.Active:=False;
    DMC5.CDS_CrediarioReceber.Active:=False;
    DMC5.SQLD_CrediarioReceber.Params[0].AsDate:=DateEdit4.Date;
    DMC5.SQLD_CrediarioReceber.Params[1].AsDate:=DateEdit3.Date;
    DMC5.SQLD_CrediarioReceber.Active:=True;
    DMC5.CDS_CrediarioReceber.Active:=True;

    DMR.RvRelatorios.SetParam('DI',DataIni);
    DMR.RvRelatorios.SetParam('DF',DataFin);
    DMR.RvRelatorios.SetParam('TC',TipoCons);
    DMR.RvRelatorios.SelectReport('Rp_CrediarioReceberPeriodo',False);
    DMR.RvRelatorios.Execute;
    end;
    end ELSE BEGIN
    FormPrincipal.MSG_NOT.HTMLText.Text:= 'O Usuário Logado No Sistema Não Tem Permissão Para Remover Juros. Fale com o Administrador do Sistema Para Obter Acesso!';
    FormPrincipal.MSG_NOT.Execute;
    end;
      Except
      MsgErro.HTMLText.Text:= 'Ocorreu um erro ao localizar crediario a receber por período. Reinicie o sistema e tente novamente!';
      MsgErro.Execute;
   end;
end;

procedure TFormRelatorioContasReceber.ClienteButtonClick(
  Sender: TObject);
begin
Try
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     suiButton4.Enabled:= True;
     Cli:=  DM.SDS_ClientesCODIGO.Text;
     Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
     RXLabel4.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
     suiButton4.SetFocus;
     end;
     except
     ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormRelatorioContasReceber.FormShow(Sender: TObject);
begin
DM.SDS_Clientes.Active:= False;
DM.SDS_Clientes.Active:= True;
end;

procedure TFormRelatorioContasReceber.suiButton4Click(Sender: TObject);
Var
TipoCons: String;
Data, DataVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, dias : Real;
Q, Cont: Integer;
begin

DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DM.SDS_Clientes.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;

If DM.SDS_Clientes.locate('CODIGO',Cli,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cli,[lopartialkey,loCaseinSensitive]);
TipoCons:= 'Encargos Financeiros: SIM';
DMB.SDS_CREDIARIO_VENCIDO.First;
Cont:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Cont do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime + DM.SDS_CONFIGURACOESDIAS_CARENCIA.AsInteger;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;

DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário a Receber do Cliente Informado!';
    MsgInformacao.Execute;
end else
begin
DMR.RvRelatorios.SetParam('TC',TipoCons);
DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente',False);
DMR.RvRelatorios.Execute;
end;
end;
end;

procedure TFormRelatorioContasReceber.Cliente2ButtonClick(Sender: TObject);
begin
Try
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     suiButton3.Enabled:= True;
     Cli2:=  DM.SDS_ClientesCODIGO.Text;
     Cliente2.Text:= DM.SDS_ClientesCODIGO.Text;
     RXLabel1.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
     suiButton3.SetFocus;
     end;
     except
     ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormRelatorioContasReceber.suiButton3Click(Sender: TObject);
Var
TipoCons: String;
Q2, Conter: Integer;
begin

DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DM.SDS_Clientes.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;

If DM.SDS_Clientes.locate('CODIGO',Cli2,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cli2,[lopartialkey,loCaseinSensitive]);

IF FormPrincipal.OrotRemJurosCre = 'S' THEN
BEGIN
TipoCons:= 'Encargos Financeiros: NÃO';

DMB.SDS_Crediario_Baixa.First;
Conter:= DMB.SDS_Crediario_Baixa.RecordCount;
For Q2:=1 to Conter do
begin
SPC_Atualiza.Params[0].AsInteger:= DMB.SDS_Crediario_BaixaCODIGO.Value;
SPC_Atualiza.Params[2].Value:= 0 ;
SPC_Atualiza.Execproc;
DMB.SDS_Crediario_Baixa.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

if  DMB.SDS_Crediario_Baixa.RecordCount = 0 then
begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário a Receber do Cliente Informado!';
    MsgInformacao.Execute;
end else
begin
DMR.RvRelatorios.SetParam('TC',TipoCons);
DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente',False);
DMR.RvRelatorios.Execute;
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.HTMLText.Text:= 'O Usuário Logado No Sistema Não Tem Permissão Para Remover Juros. Fale com o Administrador do Sistema Para Obter Acesso!';
FormPrincipal.MSG_NOT.Execute;
end;
end;
end;

procedure TFormRelatorioContasReceber.Cliente3ButtonClick(
  Sender: TObject);
begin
Try
      DM.SDS_Clientes.Active:= False;
      dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     suiButton1.Enabled:= True;
     Cli3:=  DM.SDS_ClientesCODIGO.Text;
     Cliente3.Text:= DM.SDS_ClientesCODIGO.Text;
     RXLabel3.Caption:= DM.SDS_ClientesCODIGO.Text+' - '+DM.SDS_ClientesNOME_RS.Text+' ( '+DM.SDS_ClientesAPELIDO.Text+' ) ';
     suiButton1.SetFocus;
     end;
     except
     ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormRelatorioContasReceber.suiButton1Click(Sender: TObject);
var
Clie: String;
begin
DMC5.SDS_CliCrediario.Active:= False;
DMC5.SDS_CREDIARIORECEBIDO.Active:= False;
DMC5.SDS_CliCrediario.Active:= True;
DMC5.SDS_CREDIARIORECEBIDO.Active:= True;

If DM.SDS_Clientes.locate('CODIGO',Cli3,[])=True then
begin

DMC5.SDS_CliCrediario.Locate('CODIGO',Cli3,[lopartialkey,loCaseinSensitive]);

if  DMC5.SDS_CREDIARIORECEBIDO.RecordCount = 0 then
begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário Recebido do Cliente Informado!';
    MsgInformacao.Execute;
end else
begin
Clie:= RxLabel3.Caption;
DMR.RvRelatorios.SetParam('Cli',Clie);
DMR.RvRelatorios.SelectReport('Rp_CrediarioRecebidoCliente',False);
DMR.RvRelatorios.Execute;
end;
end;
end;

procedure TFormRelatorioContasReceber.suiButton2Click(Sender: TObject);
var
DataIni, DataFin: String;
begin
Try
    DMC5.SQLD_CrediarioRecebidoP.Active:=False;
    DMC5.CDS_CrediarioRecebidoP.Active:=False;
    DMC5.SQLD_CrediarioRecebidoP.Params[0].AsDate:=DateEdit7.Date;
    DMC5.SQLD_CrediarioRecebidoP.Params[1].AsDate:=DateEdit8.Date;
    DMC5.SQLD_CrediarioRecebidoP.Active:=True;
    DMC5.CDS_CrediarioRecebidoP.Active:=True;
    DMC5.CDS_CrediarioRecebidoP.First;

    DataIni:= DateEdit7.Text;
    DataFin:= DateEdit8.Text;

    If  DMC5.CDS_CrediarioRecebidoP.RecordCount = 0 then
    Begin
    MsgInformacao.HTMLText.Text:= 'Não Há Crediário Recebido no Período Informado!';
    MsgInformacao.Execute;
    end else
    begin
    DMR.RvRelatorios.SetParam('DI',DataIni);
    DMR.RvRelatorios.SetParam('DF',DataFin);
    DMR.RvRelatorios.SelectReport('Rp_CrediarioRecebidoPeriodo',False);
    DMR.RvRelatorios.Execute;
    end;
      Except
      MsgErro.HTMLText.Text:= 'Ocorreu um erro ao localizar crediario a receber por período. Reinicie o sistema e tente novamente!';
      MsgErro.Execute;
   end;
end;

end.
