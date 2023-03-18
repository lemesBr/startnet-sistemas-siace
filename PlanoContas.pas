unit PlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus,  ImgList, SUIDlg, DB, MaskUtils, DBCtrls,
  Mask, RXCtrls, SUIGroupBox,   SUITabControl, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls,Buttons, ExtDlgs, Formata_CPF_CNPJ, defs,
  SUIRadioGroup;


  type
  TFormPlanoContas = class(TForm)
    pnldados: TPanel;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    dbt_codigo: TsuiDBEdit;
    Panel3: TPanel;
    btnNovo: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    btnLocalizar: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    db_nome: TDBEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    RxLabel8: TRxLabel;
    DBEdit1: TDBEdit;
    suiDBRadioGroup1: TsuiDBRadioGroup;
    suiDBRadioGroup2: TsuiDBRadioGroup;
    btnEditar: TsuiButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure db_nomeEnter(Sender: TObject);
    procedure db_nomeExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod:Integer;
  end;

var
  FormPlanoContas: TFormPlanoContas;
  stringDeFormatacao:String;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Acesso, ConsPlanoContas;



{$R *.dfm}


Procedure TFormPlanoContas.AtualizaManutencao;
begin
DBNavigator.Enabled:= (DM.SDS_PlContas.State = dsBrowse);
BTNNOVO.Enabled:= (DM.SDS_PlContas.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM.SDS_PlContas.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (DM.SDS_PlContas.State = dsBrowse);
BTNSALVAR.Enabled:= (DM.SDS_PlContas.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM.SDS_PlContas.State in [dsInsert, dsEdit]);
end;


procedure TFormPlanoContas.HabilitaPanel;
begin
pnldados.Enabled:= True;
//DM.SDS_PlContasCOD_COMPLETO.EditMask:= '0.0.0.00.00;1;_';

DBEdit1.Text := FormatMaskText('0.0.0.00.00;1;_', DBEdit1.Text);
end;

procedure TFormPlanoContas.DesabilitaPanel;
begin
pnldados.Enabled:= False;

end;

procedure TFormPlanoContas.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormPlanoContas.db_nomeEnter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormPlanoContas.db_nomeExit(Sender: TObject);
begin

  




     CorSaida(Sender);

end;

procedure TFormPlanoContas.btnNovoClick(Sender: TObject);
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
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PLANOCONTAS');
                    DM.ProxCod.Open;

   Cod:= (DM.ProxCodN_CODIGO.ASINTEGER + 1);
   DM.SDS_PlContas.Insert;
   dbt_codigo.Text:=IntTostr(Cod);
   DM.SDS_PlContasUSERCAD.Text:= FormPrincipal.UserLogado;
   DM.SDS_PlContasDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBEdit1.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;
end;

procedure TFormPlanoContas.btnSalvarClick(Sender: TObject);
begin
Try
          DM.SDS_PlContas.Post;
          DM.SDS_PlContas.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;

{  if DBEdit1.Text = stringDeFormatacao then
  begin
   ShowMessage('Formato invÁlido mantenha o PFDrão X.X.X.XX.XX !!!');
   end;
 }

   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;

procedure TFormPlanoContas.btnCancelarClick(Sender: TObject);
begin
Try
     DM.SDS_PlContas.Cancel;
 if DM.SDS_PlContas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     //DB_NOME.Color:= $00E8E8E8;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;


procedure TFormPlanoContas.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');

End;
if FormPrincipal.Label1.Caption ='S'then
begin
if Application.MESSAGEBOX('Confirma a Exclusão?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

begin
Try
 Begin

    DM.SDS_PlContas.Delete;
    DM.SDS_PlContas.ApplyUpdates(0);
 end;
 if DM.SDS_PlContas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
end;
end;
end;
END;

procedure TFormPlanoContas.FormShow(Sender: TObject);
begin
DM.SDS_PlContas.Active:= False;
DM.SDS_PlContas.Active:= True;
DESABILITAPANEL;
IF DM.SDS_PlContas.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;

end;


procedure TFormPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPlanoContas:=nil;
end;

procedure TFormPlanoContas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_PlContas.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
    CanClose := False;
  end;
end;


procedure TFormPlanoContas.btnLocalizarClick(Sender: TObject);
begin
Try
if FormConsPlanoContas=nil   then
    begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPlanoContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

if (BtnLocalizar.Enabled = True)then
begin
   if (Key=VK_F2) then
      begin
      btnLocalizarClick(Sender);
      end;
      end;
end;

procedure TFormPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPlanoContas.DBEdit1Enter(Sender: TObject);
begin
    corentrada(sender);
end;

procedure TFormPlanoContas.btnEditarClick(Sender: TObject);
begin
   DM.SDS_PlContas.edit;
   HabilitaPanel;
   AtualizaManutencao;
end;

procedure TFormPlanoContas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//if not (Key in ['0'..'9',#8, #32, #110, #190]) then Abort;
end;

procedure TFormPlanoContas.DBEdit1Exit(Sender: TObject);
begin
stringDeFormatacao := DBEdit1.Text;
  dm.SDS_PlContasNIVEL_CTA.Text := Copy(DBEdit1.Text,1,1);
  DM.SDS_PlContasCOD_CTA.Text  := Copy(DBEdit1.Text,5,7); 
end;

end.
