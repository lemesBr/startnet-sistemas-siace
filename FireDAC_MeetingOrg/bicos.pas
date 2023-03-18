unit bicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, StdCtrls, Mask, DBCtrls,  ExtCtrls,
  RXCtrls,  DB, IBCustomDataSet, RXDBCtrl, IBQuery, SUIDlg,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit,
  AdvGlowButton, AdvPanel;

type
  TFormBicos = class(TFrmCadastroNovo)
    Panel4: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    comboedit1: TComboEdit;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    Edit2: TEdit;
    QryBomba: TFDQuery;
    DtsQryBomba: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure comboedit1ButtonClick(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure comboedit1Exit(Sender: TObject);
    procedure comboedit1Change(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure BtnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBicos: TFormBicos;
  ACHOU :Boolean;
  
implementation

uses ModuledadosPostos, Ubibli1, ModulodeDados, consbicos, ConsProdutos,
  Principal;

{$R *.dfm}
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

Procedure TFormBicos.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DMP.sds_frentista.State = dsBrowse);
BTNNOVO.Enabled:= (DMP.SDS_BICOS.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DMP.SDS_BICOS.State = dsBrowse);
BtnConsultar.Enabled:= (DMP.SDS_BICOS.State = dsBrowse);
BtnGravar.Enabled:= (DMP.SDS_BICOS.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DMP.SDS_BICOS.State in [dsInsert, dsEdit]);
BtnAlterar.Enabled:= (DMP.SDS_BICOS.State = dsBrowse);
end;


procedure TFormBicos.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormBicos.DesabilitaPanel;
begin
Panel1.Enabled:= False;

end;

procedure TFormBicos.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BtnAlterar.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BtnGravar.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BtnConsultar.Enabled:= False;
end;

procedure TFormBicos.FormActivate(Sender: TObject);
begin
  inherited;

  QryBomba.Close;
  QryBomba.Open;

  //--- Testa se há Bombas Cadastradas ---
 if QryBomba.RecordCount < 1 then
  begin
   //If Dm1.DstBico.state in [dsedit, dsinsert] then
   // PrincipalFrm.speedbutton6.click;
    Application.MessageBox('Não há Bombas cadastradas' + #13+
                           'Cadastre uma "Bomba" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                           'Para Cadastrar uma Bomba, clique em:'+#13+
                           'Cadastros >Postos >Bomba', 'Informação', mb_ok + mb_iconinformation);
    self.close;
    exit;
  end;

   if QryBomba.RecordCount < 1 then
  begin
   //If Dm1.DstBico.state in [dsedit, dsinsert] then
   // PrincipalFrm.speedbutton6.click;
    Application.MessageBox('Não há Bombas cadastradas' + #13+
                           'Cadastre uma "Bomba" e só então tente cadastrar um "Bico de Bomba"' + #13#13 +
                           'Para Cadastrar uma Bomba, clique em:'+#13+
                           'Cadastros >Postos >Bomba', 'Informação', mb_ok + mb_iconinformation);
    self.close;
    exit;
  end;
end;

procedure TFormBicos.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TFormConsBicos, FormConsBicos);
   FormConsBicos.showmodal;
   comboedit1.Text := DMP.SDS_BICOSCOD_PRODUTOS.Text;

   DM.Sds_produtos.Active := false;
   DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO like ' + #39 + '%' + comboedit1.Text + '%' + #39+'ORDER BY DESCRICAO';
   DM.Sds_produtos.Active := True;


      If DM.Sds_produtos.locate('CODIGO', comboedit1.Text,[])=True then
      begin
      RxLabel7.Caption := DM.SDS_PRODUTOSDESCRICAO.Text;
      BtnAlterar.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO', comboedit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       //Edit1.SetFocus;
      end;
end;

procedure TFormBicos.comboedit1ButtonClick(Sender: TObject);
begin
  inherited;
Try
if FormConsProdutos=nil   then
    begin
     FormConsProdutos:=TFormConsProdutos.Create(self);
      FormConsProdutos.ShowModal;
      ComboEdit1.Text:= DM.SDS_PRODUTOSCODIGO.Text;
      RXLabel7.Caption:= DM.SDS_PRODUTOSDESCRICAO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Produtos!!');
end;
end;

procedure TFormBicos.DBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
comboedit1.Text := DMP.SDS_TanquesCOD_PRODUTOS.Text;
comboedit1Change(SENDER);
comboedit1Exit(Sender);
end;

procedure TFormBicos.btnNovoClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label3.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   comboedit1.Clear;
   RxLabel7.Caption := '';
   
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(COD_BICO) as N_CODIGO FROM BICO');
   DM.ProxCod.Open;

   DMp.SDS_BICOS.Insert;
  // dbcodigo.Text:=IntTostr(Cod);
   DMp.SDS_BICOSCOD_BICO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

  //DM.SDS_CategoriaUSERCAD.Text:= FormPrincipal.UserLogado;
  // DM.SDS_CategoriaDATACAD.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   DBLookupComboBox1.SetFocus;

   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;
end;

procedure TFormBicos.comboedit1Exit(Sender: TObject);
begin
  inherited;
if edit2.Text='LETRAS' THEN
BEGIN
   dm.SDS_PRODUTOS.Active := false;
   dm.SDS_PRODUTOS.DataSet.CommandText:='select * from produtos where DESCRICAO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC';
   dm.SDS_PRODUTOS.Active := True;
   ACHOU := DM.SDS_PRODUTOS.locate('DESCRICAO',ComboEdit1.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ComboEdiT1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
 // ComboEdit1.Text     := DM.SDS_CODIGO.Text;

   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
 end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Comboedit1.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 ComboEdit1.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_PRODUTOS.Active := false;
  dm.SDS_PRODUTOS.DataSet.CommandText:='select * from produtos where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC';
  dm.SDS_PRODUTOS.Active := True;
  ACHOU:= DM.SDS_produtos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
  Comboedit1.Text := RemoveChar(Comboedit1.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Produto Não Localizado');
Comboedit1.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
  //ComboEdit1.Text     := DM.SDS_ClientesCODIGO.Text;
  end;
 end;


end;

procedure TFormBicos.comboedit1Change(Sender: TObject);
begin
  inherited;
IF (ComboEdit1.Text>='A') AND (ComboEdit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (ComboEdit1.Text>='0') AND (ComboEdit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF ComboEdit1.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormBicos.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DMP.SDS_BICOS.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     DBEdit2.SetFocus;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;

end;
end;

procedure TFormBicos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DMP.SDS_BICOS.Cancel;
 if DMP.SDS_BICOS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormBicos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
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
    DMp.SDS_BICOS.Delete;
    DMp.SDS_BICOS.ApplyUpdates(0);
 end;
 if DMp.SDS_BICOS.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
       end;
end;
end;
end;

procedure TFormBicos.BtnGravarClick(Sender: TObject);
begin
  inherited;
Try
      begin

          DMp.SDS_BICOS.Edit;
         //  DMp.SDS_BICOSID_BICO.ASINTEGER :=DMP.SDS_BICOSCOD_BICO.ASINTEGER;
          DMP.SDS_BICOSCOD_PRODUTOS.Text := ComboEdit1.Text;
          DMP.SDS_BICOSCOD_FRENTISTA.Text := '-1';
          DMP.SDS_BICOS.Post;
          DMP.SDS_BICOS.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;
      end;
   Except
   ShowMessage('Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!');
   end;
end;

procedure TFormBicos.BtnSairClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TFormBicos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if DMP.SDS_BICOS.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
  CanClose := False;
  end;
end;

procedure TFormBicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Action := caFree;
FormBicos := nil;
end;

procedure TFormBicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key=#27 then close;

if not (ActiveControl is TDBComboBox) and  // você deve usar AND
     NOT (ActiveControl is TRxDBComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormBicos.FormShow(Sender: TObject);
begin
  inherited;
DMP.SDS_BICOS.Active := False;
DMP.SDS_BICOS.Active := True;
DMP.SDS_BOMBA.Active := False;
DMP.SDS_BOMBA.Active := TRUE;
DMP.SDS_Tanques.Active := False;
DMP.SDS_Tanques.Active := TRUE;

ComboEdit1.Text := DMP.SDS_TanquesCOD_PRODUTOS.Text;
ComboEdit1Change(Sender);

if edit2.Text='LETRAS' THEN
BEGIN
   dm.SDS_PRODUTOS.Active := false;
   dm.SDS_PRODUTOS.DataSet.CommandText:='select * from clientes where DESCRICAO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC';
   dm.SDS_PRODUTOS.Active := True;
   ACHOU := DM.SDS_PRODUTOS.locate('DESCRICAO',ComboEdit1.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
//  ComboEdiT1ButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
 // ComboEdit1.Text     := DM.SDS_CODIGO.Text;

   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
 end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Comboedit1.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 ComboEdit1.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_PRODUTOS.Active := false;
  dm.SDS_PRODUTOS.DataSet.CommandText:='select * from produtos where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC';
  dm.SDS_PRODUTOS.Active := True;
  ACHOU:= DM.SDS_produtos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
  Comboedit1.Text := RemoveChar(Comboedit1.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Produto Não Localizado');
Comboedit1.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
  //ComboEdit1.Text     := DM.SDS_ClientesCODIGO.Text;
  end;
 end;

end;

end.
