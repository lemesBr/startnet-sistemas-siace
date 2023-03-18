unit RelatorioCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, SUIDBCtrls, SUIButton, StdCtrls, Mask,
  ExtCtrls,  SUIDlg, Buttons, sBitBtn, RxToolEdit, AdvReflectionImage;

type
  TFormRelatorioCheques = class(TForm)
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton8: TsBitBtn;
    suiButton7: TsBitBtn;
    suiButton6: TsBitBtn;
    suiButton5: TsBitBtn;
    suiButton3: TsBitBtn;
    suiButton2: TsBitBtn;
    suiButton9: TsBitBtn;
    suiButton10: TsBitBtn;
    suiButton1: TsBitBtn;
    Edit1: TEdit;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Edit2: TEdit;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit7: TDateEdit;
    Label7: TLabel;
    DateEdit8: TDateEdit;
    DateEdit9: TDateEdit;
    Label8: TLabel;
    DateEdit10: TDateEdit;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DateEdit11: TDateEdit;
    Label20: TLabel;
    DateEdit12: TDateEdit;
    Label21: TLabel;
    Edit3: TEdit;
    img: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit3Enter(Sender: TObject);
    procedure DateEdit4Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure DateEdit5Enter(Sender: TObject);
    procedure DateEdit6Enter(Sender: TObject);
    procedure DateEdit7Enter(Sender: TObject);
    procedure DateEdit8Enter(Sender: TObject);
    procedure DateEdit10Enter(Sender: TObject);
    procedure DateEdit9Enter(Sender: TObject);
    procedure DateEdit11Enter(Sender: TObject);
    procedure DateEdit12Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DateEdit3Exit(Sender: TObject);
    procedure DateEdit4Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DateEdit5Exit(Sender: TObject);
    procedure DateEdit6Exit(Sender: TObject);
    procedure DateEdit7Exit(Sender: TObject);
    procedure DateEdit8Exit(Sender: TObject);
    procedure DateEdit10Exit(Sender: TObject);
    procedure DateEdit9Exit(Sender: TObject);
    procedure DateEdit11Exit(Sender: TObject);
    procedure DateEdit12Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCheques: TFormRelatorioCheques;

implementation

uses Z_RotinasGerais, ModulodeDadosConsultas2, ModulodeDadosRelatorios,
  Principal;

{$R *.dfm}

procedure TFormRelatorioCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelatorioCheques:=nil;
end;

procedure TFormRelatorioCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioCheques.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit4Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit5Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit6Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit7Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit8Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit10Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit9Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit11Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit12Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.Edit3Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCheques.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit4Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit5Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit6Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit7Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit8Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit10Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit9Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit11Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.DateEdit12Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.Edit3Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCheques.suiButton1Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesBaixarPeriodo.Active:=False;
    DMC2.CDS_ChequesBaixarPeriodo.Active:=False;
    DMC2.SQLD_ChequesBaixarPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_ChequesBaixarPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_ChequesBaixarPeriodo.Active:=True;
    DMC2.CDS_ChequesBaixarPeriodo.Active:=True;
if  DMC2.CDS_ChequesBaixarPeriodo.EOF then
  Begin
      ShowMessage('Não Há Cheques a Serem Baixados No Período Informado!');

    end
  else
  begin
    DI:= DateEdit1.Text;
    DF:= DateEdit2.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesBaixarPeriodo',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;

end;

procedure TFormRelatorioCheques.suiButton10Click(Sender: TObject);
var
Tit: String;
begin
Try
    DMC2.SQLD_ChequesBaixarTitular.Active:=False;
    DMC2.CDS_ChequesBaixarTitular.Active:=False;
    DMC2.SQLD_ChequesBaixarTitular.Params[0].AsString:=Edit1.Text;
    DMC2.SQLD_ChequesBaixarTitular.Active:=True;
    DMC2.CDS_ChequesBaixarTitular.Active:=True;
    If  DMC2.CDS_ChequesBaixarTitular.EOF then
  Begin
      ShowMessage('Não Há Cheques do Titular Informado a Serem Baixados !');
    end
  else
  begin
    Tit:= Edit1.Text;
    DMR.RvRelatorios.SetParam('Tit',Tit);
    DMR.RvRelatorios.SelectReport('Rp_ChequesBaixarTitular',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;
end;

procedure TFormRelatorioCheques.suiButton9Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesBaixadosPeriodo.Active:=False;
    DMC2.CDS_ChequesBaixadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesBaixadosPeriodo.Params[0].AsDate:=DateEdit3.Date;
    DMC2.SQLD_ChequesBaixadosPeriodo.Params[1].AsDate:=DateEdit4.Date;
    DMC2.SQLD_ChequesBaixadosPeriodo.Active:=True;
    DMC2.CDS_ChequesBaixadosPeriodo.Active:=True;
if  DMC2.CDS_ChequesBaixadosPeriodo.EOF then
  Begin
      ShowMessage('Não Há Cheques a Serem Baixados No Período Informado!');
    end
  else
  begin
    DI:= DateEdit3.Text;
    DF:= DateEdit4.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesBaixadosPeriodo',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;
   end;

procedure TFormRelatorioCheques.suiButton2Click(Sender: TObject);
var
Tit: String;
begin
Try
    DMC2.SQLD_ChequesBaixadosTitular.Active:=False;
    DMC2.CDS_ChequesBaixadosTitular.Active:=False;
    DMC2.SQLD_ChequesBaixadosTitular.Params[0].AsString:=Edit2.Text;
    DMC2.SQLD_ChequesBaixadosTitular.Active:=True;
    DMC2.CDS_ChequesBaixadosTitular.Active:=True;
    If  DMC2.CDS_ChequesBaixadosTitular.EOF then
  Begin
      ShowMessage('Não Há Cheques Baixados do Titular Informado!');
    end
  else
  begin
    Tit:= Edit2.Text;
    DMR.RvRelatorios.SetParam('Tit',Tit);
    DMR.RvRelatorios.SelectReport('Rp_ChequesBaixadosTitular',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;
end;

procedure TFormRelatorioCheques.suiButton3Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=False;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=False;
    DMC2.SQLD_ChequesRetornadosPeriodo.Params[0].AsDate:=DateEdit5.Date;
    DMC2.SQLD_ChequesRetornadosPeriodo.Params[1].AsDate:=DateEdit6.Date;
    DMC2.SQLD_ChequesRetornadosPeriodo.Active:=True;
    DMC2.CDS_ChequesRetornadosPeriodo.Active:=True;
if  DMC2.CDS_ChequesRetornadosPeriodo.EOF then
  Begin
      ShowMessage('Não Há Cheques Retornados No Período Informado!');
    end
  else
  begin
    DI:= DateEdit5.Text;
    DF:= DateEdit6.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesRetornadosGeral',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
    ShowMessage('Erro ao emitir o relatorio!');
   end;

end;

procedure TFormRelatorioCheques.suiButton5Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixar.Params[0].AsDate:=DateEdit7.Date;
    DMC2.SQLD_ChequesRetornadosBaixar.Params[1].AsDate:=DateEdit8.Date;
    DMC2.SQLD_ChequesRetornadosBaixar.Active:=True;
    DMC2.CDS_ChequesRetornadosBaixar.Active:=True;
if  DMC2.CDS_ChequesRetornadosBaixar.EOF then
  Begin
     ShowMessage('Não Há Cheques Retornados a Serem Baixados No Período Informado!');
    end
  else
  begin
    DI:= DateEdit7.Text;
    DF:= DateEdit8.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesRetornadosBaixar',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;

end;

procedure TFormRelatorioCheques.suiButton6Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=False;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=False;
    DMC2.SQLD_ChequesRetornadosBaixados.Params[0].AsDate:=DateEdit10.Date;
    DMC2.SQLD_ChequesRetornadosBaixados.Params[1].AsDate:=DateEdit9.Date;
    DMC2.SQLD_ChequesRetornadosBaixados.Active:=True;
    DMC2.CDS_ChequesRetornadosBaixados.Active:=True;
if  DMC2.CDS_ChequesRetornadosBaixados.EOF then
  Begin
      ShowMessage('Não Há Cheques Retornados Baixados No Período Informado!');
    end
  else
  begin
    DI:= DateEdit10.Text;
    DF:= DateEdit9.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesRetornadosaBaixados',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
    ShowMessage('Erro ao emitir o relatorio!');
   end;
end;

procedure TFormRelatorioCheques.suiButton7Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC2.SQLD_ChequesPagPeriodo.Active:=False;
    DMC2.CDS_ChequesPagPeriodo.Active:=False;
    DMC2.SQLD_ChequesPagPeriodo.Params[0].AsDate:=DateEdit11.Date;
    DMC2.SQLD_ChequesPagPeriodo.Params[1].AsDate:=DateEdit12.Date;
    DMC2.SQLD_ChequesPagPeriodo.Active:=True;
    DMC2.CDS_ChequesPagPeriodo.Active:=True;
if  DMC2.CDS_ChequesPagPeriodo.EOF then
  Begin
      ShowMessage('Não Há Cheques Extornados No Período Informado!');
    end
  else
  begin
    DI:= DateEdit11.Text;
    DF:= DateEdit12.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_ChequesExtornadosPeriodo',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;
end;

procedure TFormRelatorioCheques.suiButton8Click(Sender: TObject);
var
Tit: String;
begin
Try
    DMC2.SQLD_ChequesPagTitular.Active:=False;
    DMC2.CDS_ChequesPagTitular.Active:=False;
    DMC2.SQLD_ChequesPagTitular.Params[0].AsString:=Edit3.Text;
    DMC2.SQLD_ChequesPagTitular.Active:=True;
    DMC2.CDS_ChequesPagTitular.Active:=True;
    If  DMC2.CDS_ChequesPagTitular.EOF then
  Begin
     ShowMessage('Não Há Cheques Extornados do Titular Informado!');
    end
  else
  begin
    Tit:= Edit3.Text;
    DMR.RvRelatorios.SetParam('Tit',Tit);
    DMR.RvRelatorios.SelectReport('Rp_ChequesExtornadosTitular',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     ShowMessage('Erro ao emitir o relatorio!');
   end;
end;

procedure TFormRelatorioCheques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
