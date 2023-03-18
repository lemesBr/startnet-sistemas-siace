unit Tranportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIGroupBox, SUIRadioGroup,
  SUIDBCtrls, SUIButton, DB, StdCtrls, Mask, DBCtrls,
  SUIImagePanel, Buttons, RxToolEdit, RxDBCtrl;

type
  TFormTransportador = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    DBNavigator: TDBNavigator;
    btnLocalizar: TBitBtn;
    suiDBRadioGroup2: TDBRadioGroup;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    EvDBDateEdit1: TDBDateEdit;
    procedure suiDBRadioGroup2Exit(Sender: TObject);
    procedure HabilitaFisico;
    procedure DesabilitaFisico;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AtualizaManutencao;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransportador: TFormTransportador;
    cod :Integer;
implementation

uses Principal, ModulodeDados;

{$R *.dfm}

Procedure TFormTransportador.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.Sds_Transportador.State = dsBrowse);
BTNNOVO.Enabled:= (DM.Sds_Transportador.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.Sds_Transportador.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.Sds_Transportador.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.Sds_Transportador.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.Sds_Transportador.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (DM.Sds_Transportador.State = dsBrowse);
end;

procedure TFormTransportador.DesabilitaFisico;
begin
Label3.Caption:= 'Razão Social:';
Label4.Caption:= 'Fantasia';
Label6.Caption:= 'CNPJ:';
Label5.Caption:= 'I.E.:';
DM.Sds_TransportadorCNPJ.EditMask:= '99.999.999/9999-99;0;_';
end;

procedure TFormTransportador.HabilitaFisico;
begin
Label3.Caption:= 'Nome:';
Label4.Caption:= 'Apelido';
Label6.Caption:= 'Cpf:';
Label5.Caption:= 'Rg:';
DM.Sds_TransportadorCNPJ.EditMask:= '999.999.999-99;0;_';
end;


procedure TFormTransportador.suiDBRadioGroup2Exit(Sender: TObject);
begin
    IF DM.Sds_TransportadorFL_FISICO_JURIDICO.Value = 'J' THEN
     BEGIN
     DesabilitaFisico;
      DBEdit2.Text:=IntTostr(Cod);
      DM.Sds_TransportadorCD_TRANSPORTADOR.Text :=  IntTostr(Cod);
     end else
     begin
     HabilitaFisico;
     DBEdit2.Text:=IntTostr(Cod);
     DM.Sds_TransportadorCD_TRANSPORTADOR.Text :=  IntTostr(Cod);
     end;
    IF DM.Sds_TransportadorFL_FISICO_JURIDICO.Value = 'F' THEN
     BEGIN
      HabilitaFisico;
         DBEdit2.Text:=IntTostr(Cod);
         DM.Sds_TransportadorCD_TRANSPORTADOR.Text :=  IntTostr(Cod);
     end else
     begin
     DesabilitaFisico;
        DBEdit2.Text:=IntTostr(Cod);
        DM.Sds_TransportadorCD_TRANSPORTADOR.Text :=  IntTostr(Cod);
     end;
     
end;

procedure TFormTransportador.btnNovoClick(Sender: TObject);


begin
if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(CD_TRANSPORTADOR) as N_CODIGO FROM TRANSPORTADOR');
   DM.ProxCod.Open;

   DM.SDS_transportador.Insert;
   DBEdit2.Text:=IntTostr(DM.ProxCodN_CODIGO.ASINTEGER + 1);
   AtualizaManutencao;
   Cod:= StrToInt(DBEdit2.Text);
   DM.Sds_TransportadorCD_TRANSPORTADOR.AsInteger :=  StrToInt(DBEdit2.Text);
   dm.Sds_TransportadorCD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
   //DM.SDS_UnidadesUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_transportadorDT_atz.Text:= datetostr(now);
   GroupBox1.Enabled := true;
   suiDBRadioGroup2.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

end;

procedure TFormTransportador.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!!');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM.Sds_Transportador.Edit;
      GroupBox1.Enabled := true;
      AtualizaManutencao;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;

end;

procedure TFormTransportador.btnCancelarClick(Sender: TObject);
begin
Try
     DM.Sds_Transportador.Cancel;
     GroupBox1.Enabled := False;
      AtualizaManutencao;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;

procedure TFormTransportador.btnSalvarClick(Sender: TObject);
begin
 Try
      begin
          dm.Sds_TransportadorCD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
          DM.Sds_Transportador.Post;
          DM.Sds_Transportador.ApplyUpdates(0);
          GroupBox1.Enabled := False;
          AtualizaManutencao;
      end;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;


end;

procedure TFormTransportador.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exlusão do Transportador?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin
Try
 Begin
    DM.Sds_Transportador.Delete;
    DM.Sds_Transportador.ApplyUpdates(0);

 end;
       Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;

end;
end;
end;

procedure TFormTransportador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormTransportador :=nil;
end;

procedure TFormTransportador.FormShow(Sender: TObject);
begin
dm.Sds_Transportador.Active := False;
dm.Sds_Transportador.Active := true;
end;

procedure TFormTransportador.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.Sds_Transportador.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
  CanClose := False;
  end;
end;

procedure TFormTransportador.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

end.
