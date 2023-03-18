unit veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  Menus, DB, Grids, DBGrids, Mask, SUIDlg,
  wwdbedit, Wwdotdot, Wwdbcomb, AdvGlowButton, RxToolEdit;

type
  Tfrmveiculo = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsveiculo2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dsveiculo: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    euf: TwwDBComboBox;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBComboCliente: TComboEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure DBComboClienteChange(Sender: TObject);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvGlowButton1Click(Sender: TObject);
    procedure DBCheckBox1Enter(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    ACHOU :Boolean;
  end;

var
  frmveiculo: Tfrmveiculo;
  comando : string;

implementation

uses principal, xloc_veiculo, ModulodeDados, ConsClientes, ConsCidades;

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

procedure Tfrmveiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  frmveiculo := nil;
end;

procedure Tfrmveiculo.FormShow(Sender: TObject);
begin


  pgravar.visible := false;
  pgravar.Align := alClient;

  DM.SDS_VEICULOS.close;
  DM.SDS_VEICULOS.SQL.clear;
  DM.SDS_VEICULOS.SQL.add('select * from VEICULO order by NOME');
  DM.SDS_VEICULOS.Open;

  DM.Sds_cidades.Close;
    DM.Sds_cidades.Open;
  {frmmodulo.qrveiculo.SQL.clear;
  frmmodulo.qrveiculo.SQL.add('select * from VEICULOS order by NOME');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.first;  }
  pficha.Enabled := false;
  bincluir.SetFocus;
  if DBComboCliente.Text > '' then
  begin
  DBComboCliente.Text := DM.SDS_VEICULOSCOD_CLIENTE.Text;
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clienteS where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_ClientesNOME_RS.Text;
  end;
end;

procedure Tfrmveiculo.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmveiculo.bincluirClick(Sender: TObject);
begin
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM veiculo');
   DM.ProxCod.Open;

  dm.sds_veiculos.insert;
  dm.SDS_VEICULOScodigo.asInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
  pficha.Enabled := true;
  dbedit2.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;
end;

procedure Tfrmveiculo.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    
    dm.SDS_VEICULOS.Edit;
    pficha.Enabled := true;
    dbedit2.setfocus;
    pgravar.Visible := true;
    DBEdit9.Enabled := False;
    euf.Enabled := False;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmveiculo.bexcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
  if Application.MESSAGEBOX('Confirma a exclusao do veículo?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
    DM.SDS_veiculos.Delete;
  //  dm.sds_veiculos.ApplyUpdates(0);
end;
end;
end;

procedure Tfrmveiculo.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmXLOC_VEICULO := tfrmXLOC_VEICULO.create(self);
  frmXLOC_VEICULO.Tag  := 0; 
  frmXLOC_VEICULO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    dm.SDS_VEICULOS.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
  DBComboCliente.Text := DM.SDS_VEICULOSCOD_CLIENTE.Text;
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.Add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_ClientesNOME_RS.Text;
end;

procedure Tfrmveiculo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmveiculo.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
   if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este veículo!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;


  if (dm.Sds_veiculos.State = dsinsert) or (dm.sds_veiculos.State = dsedit) then
  begin
      DM.SDS_VEICULOSCOD_CLIENTE.TEXT := DBCOMBOCLIENTE.TEXT;
      
      dm.sds_veiculos.post;
    //  dm.sds_veiculos.applyUpdates(0);
      DBEdit9.Enabled := True;
      euf.Enabled := True;
  end;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmveiculo.bcancelarClick(Sender: TObject);
begin
  if (dm.SDS_VEICULOS.State = dsinsert) or (dm.SDS_VEICULOS.State = dsedit) then
      dm.SDS_VEICULOS.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmveiculo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmveiculo.BitBtn1Click(Sender: TObject);
begin
 dm.SDS_VEICULOS.first;
end;

procedure Tfrmveiculo.BitBtn2Click(Sender: TObject);
begin
   dm.SDS_VEICULOS.last;
end;

procedure Tfrmveiculo.BitBtn3Click(Sender: TObject);
begin
   dm.SDS_VEICULOS.prior;
end;

procedure Tfrmveiculo.BitBtn4Click(Sender: TObject);
begin
   dm.SDS_VEICULOS.next;
end;

procedure Tfrmveiculo.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmveiculo.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if  dm.SDS_VEICULOS.state = dsinsert then
end;

procedure Tfrmveiculo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmveiculo.DBEdit1Enter(Sender: TObject);
begin
DM.SDS_VEICULOS.Edit;
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmveiculo.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmveiculo.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmveiculo.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmveiculo.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmveiculo.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmveiculo.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmveiculo.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome válido para este registro!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

end;

procedure Tfrmveiculo.DBComboClienteExit(Sender: TObject);
begin
 begin
 // DM.SDS_Clientes.Active := False;
 DM.SDS_VEICULOS.Edit;
 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_rs like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_rs ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  Edit1.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  DM.SDS_VEICULOSCOD_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF DBComboCliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 DBComboCliente.Text := '';
 DBComboCliente.SetFocus;
end else
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clienteS where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  DBComboCliente.Text := RemoveChar(DBComboCliente.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  Edit1.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  DM.SDS_VEICULOSCOD_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
 end;
 end;


end;

       if DM.SDS_ClientesATIVO.Text = 'N' then
       begin
        // ShowMessage('Cliente Inativo Não é Possivel Efetuar a Venda...!!!');
         Application.MESSAGEBOX('Cliente Inativo Não é Possivel Efetuar a Venda, Favor Escolher um Cliente Ativo', 'Atenção', MB_ICONASTERISK + MB_OK  + MB_DEFBUTTON2);
         DBComboCliente.SetFocus;
       end;
end;

procedure Tfrmveiculo.DBComboClienteChange(Sender: TObject);
begin
IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT2.Text:='';
end;

procedure Tfrmveiculo.DBComboClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clienteS where codigo <'+'1'+'order by NOME_rs ASC');
    DM.SDS_Clientes.Active:= True;

    FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsClientes.ShowModal;
      if not DM.SDS_Clientes.Eof then
      begin
      DBComboCliente.Text := DM.SDS_ClientesCODIGO.text;
      Edit1.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      DM.SDS_VEICULOSCOD_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      end else
      begin
         DBComboCliente.Text := '';
      end;
end;


procedure Tfrmveiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure Tfrmveiculo.DBAdvGlowButton1Click(Sender: TObject);
begin
  DBComboCliente.Text := DM.SDS_VEICULOSCOD_CLIENTE.Text;
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  EDIT1.Text          := DM.SDS_ClientesNOME_RS.Text;
end;

procedure Tfrmveiculo.DBCheckBox1Enter(Sender: TObject);
begin
DM.SDS_VEICULOS.Edit;
end;

procedure Tfrmveiculo.DBComboClienteEnter(Sender: TObject);
begin
DM.SDS_VEICULOS.Edit;
end;

procedure Tfrmveiculo.DBEdit9Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
if DM.Sds_cidades.Locate('NOME',DBEdit1.Text,[loCaseInsensitive]) then
 begin
DM.SDS_VEICULOS.Edit;
DM.SDS_VEICULOSUFPLACA.Text := DM.Sds_cidadesUF.Text;
end else

if not DM.Sds_cidades.Locate('NOME',DBEdit1.Text,[loCaseInsensitive]) then
 if FormConsCidades=nil   then
    begin
    FormConscidades:=TFormConscidades.Create(self);
      FormConscidades.ShowModal;
      DM.SDS_VEICULOS.Edit;
      DM.SDS_VEICULOSUFPLACA.Text := DM.Sds_cidadesUF.Text;
      end;
end;

end.




