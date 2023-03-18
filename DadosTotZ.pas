unit DadosTotZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXDBCtrl, SUIDBCtrls, SUIButton, StdCtrls, Mask,
  DBCtrls, RXCtrls, ExtCtrls, db, Grids, XDBGrids, SUIDlg, RxToolEdit;

type
  TFormTotalizadorZ = class(TForm)
    XDBGrid1: TXDBGrid;
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    db_nome: TDBEdit;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel6: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel7: TRxLabel;
    DBEdit5: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    Button1: TButton;
    Button2: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTotalizadorZ: TFormTotalizadorZ;

implementation

uses ModuleDados1, Principal;

{$R *.dfm}

Procedure TFormTotalizadorZ.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM1.SDS_TOTAL_Z.State = dsBrowse);
BTNNOVO.Enabled:= (DM1.SDS_TOTAL_Z.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM1.SDS_TOTAL_Z.State = dsBrowse);
BTNSALVAR.Enabled:= (DM1.SDS_TOTAL_Z.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM1.SDS_TOTAL_Z.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM1.SDS_TOTAL_Z.State = dsBrowse);

end;

procedure TFormTotalizadorZ.btnEditarClick(Sender: TObject);
begin
 if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM1.SDS_TOTAL_Z.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

end;



procedure TFormTotalizadorZ.HabilitaPanel;
begin
pnldados.Enabled:= True;
end;

procedure TFormTotalizadorZ.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormTotalizadorZ.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;

end;

procedure TFormTotalizadorZ.btnNovoClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
try
   DM1.SDS_TOTAL_Z.Insert;
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormTotalizadorZ.btnCancelarClick(Sender: TObject);
begin
Try
      DM1.SDS_TOTAL_Z.Cancel;
  if  DM1.SDS_TOTAL_Z.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormTotalizadorZ.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM1.SDS_TOTAL_Z.Delete;
    DM1.SDS_TOTAL_Z.ApplyUpdates(0);

 end;
 if DM1.SDS_TOTAL_Z.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
 Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
 end;
end;
end;  
end;

procedure TFormTotalizadorZ.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          DM1.SDS_TOTAL_Z.Post;
          DM1.SDS_TOTAL_Z.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormTotalizadorZ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 FormTotalizadorZ := nil;
end;

procedure TFormTotalizadorZ.FormShow(Sender: TObject);
begin
DM1.Sds_ecf.Active := False;
DM1.Sds_ecf.Active := true;
DM1.SDS_TOTAL_Z.Active := False;
DM1.SDS_TOTAL_Z.Active := True;;
end;

procedure TFormTotalizadorZ.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;
end;

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TFormTotalizadorZ.Button1Click(Sender: TObject);
var
  ALIC : string;
  ALIC1 : Currency;
  F, CONTADOR: Integer;
begin
{TRY
DM1.SDS_TOTAL_Z.first;
repeat
DM1.SDS_TOTAL_Z.edit;
ALIC := removechar(dm1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT);
ALIC1 := StrToCurrDef(ALIC,0.00);
ALIC1 := ALIC1 / 100;
dm1.SDS_TOTAL_ZT_SIT_TRIB.Text := CurrToStr(ALIC1);
DM1.SDS_TOTAL_Z.Post;
DM1.SDS_TOTAL_Z.ApplyUpdates(0);
DM1.SDS_TOTAL_Z.Next;
until DM1.SDS_TOTAL_Z.eof;
DM1.SDS_TOTAL_Z.first;
except
DM1.SDS_TOTAL_Z.cancel;
end; }

DM1.SDS_TOTAL_Z.first;
Contador:= DM1.SDS_TOTAL_Z.RecordCount;
For F:=1 to Contador do
begin
DM1.SDS_TOTAL_Z.edit;
ALIC := removechar(dm1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT);
ALIC1 := StrToCurrDef(ALIC,0.00);
ALIC1 := ALIC1 / 100;
dm1.SDS_TOTAL_ZT_SIT_TRIB.Text := CurrToStr(ALIC1);
DM1.SDS_TOTAL_Z.Post;
DM1.SDS_TOTAL_Z.ApplyUpdates(0);
DM1.SDS_TOTAL_Z.Next;
end;
end;

end.
