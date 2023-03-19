unit tanques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, StdCtrls, DBCtrls, Mask,
   ExtCtrls, RXDBCtrl, SUIDlg, RXCtrls, db,  RxToolEdit,
  AdvGlowButton, AdvPanel;

type
  TFormTanques = class(TFrmCadastroNovo)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    Edit2: TEdit;
    comboedit1: TComboEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure ComboEdit1Change(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure comboedit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTanques: TFormTanques;
  ACHOU : Boolean;

implementation

uses ModuledadosPostos, Principal, ModulodeDados, ConsProdutos,
  ConsTanques, Ubibli1;

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
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

procedure TFormTanques.AtualizaManutencao;
begin
  BTNNOVO.Enabled:= (DMP.SDS_Tanques.State = dsBrowse);
  BTNEXCLUIR.Enabled:= (DMP.SDS_Tanques.State = dsBrowse);
  BtnLocalizar.Enabled:= (DMP.SDS_Tanques.State = dsBrowse);
  BtnSalvar.Enabled:= (DMP.SDS_Tanques.State in [dsInsert, dsEdit]);
  BTNCANCELAR.Enabled:= (DMP.SDS_Tanques.State in [dsInsert, dsEdit]);
  BtnEditar.Enabled:= (DMP.SDS_Tanques.State = dsBrowse);
end;

procedure TFormTanques.HabilitaPanel;
begin
  Panel1.Enabled:= True;
end;

procedure TFormTanques.DesabilitaPanel;
begin
  Panel1.Enabled:= False;
end;

procedure TFormTanques.HabilitaNovo;
begin
  BTNNOVO.Enabled:=TRUE;
  BtnEditar.Enabled:=FALSE;
  BTNCANCELAR.Enabled:=FALSE;
  BtnSalvar.Enabled:=FALSE;
  BTNEXCLUIR.Enabled:=FALSE;
  BtnLocalizar.Enabled:= False;
end;

procedure TFormTanques.btnNovoClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label3.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para '+
    'Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label3.Caption ='S'then
  begin
    try
      comboedit1.Clear;
      RxLabel7.Caption := '';

      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(COD_TANQUE) as N_CODIGO FROM TANQUE');
      DM.ProxCod.Open;

      DMp.SDS_Tanques.Insert;
      DMp.SDS_TanquesCOD_TANQUE.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      HabilitaPanel;
      AtualizaManutencao;
      DBComboBox1.SetFocus;
    Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormTanques.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label2.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para '+
    'Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label2.Caption = 'S' then
  begin
    try
      DMP.SDS_Tanques.Edit;
      AtualizaManutencao;
      HabilitaPanel;
      DBComboBox1.SetFocus;
    except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormTanques.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  try
    DMP.SDS_Tanques.Cancel;
    if DMP.SDS_Tanques.RecordCount = 0 then
      HabilitaNovo
    else
      AtualizaManutencao;

    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormTanques.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label1.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para '+
    'Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label1.Caption = 'S' then
  begin
    if MsgConfirmacao.ShowModal = mryes then
    begin
      try
        DMp.SDS_Tanques.Delete;

        if DMp.SDS_Tanques.RecordCount = 0 then
          HabilitaNovo
        else
          AtualizaManutencao;
      except
        MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
        MsgErro.ShowModal;
      end;
    end;
  end;
end;

procedure TFormTanques.BtnGravarClick(Sender: TObject);
begin
  inherited;
  try
    DMp.SDS_Tanques.Edit;
    DMp.SDS_TanquesID_TANQUE.ASINTEGER :=DMP.SDS_TanquesCOD_TANQUE.ASINTEGER;
    DMP.SDS_TanquesCOD_PRODUTOS.Text := ComboEdit1.Text;

    DMP.SDS_Tanques.Post;
    AtualizaManutencao;
    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormTanques.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormTanques.ComboEdit1Change(Sender: TObject);
begin
  inherited;
  if (ComboEdit1.Text >= 'A') and (ComboEdit1.Text <= 'Z') then
    EDIT2.Text:='LETRAS';

  if (ComboEdit1.Text >= '0') and (ComboEdit1.Text <= '9') then
    EDIT2.Text:='NUMEROS';

  if ComboEdit1.Text = '' then
    EDIT2.Text:='';
end;

procedure TFormTanques.ComboEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  Try
    if FormConsProdutos = nil then
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

procedure TFormTanques.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConstanques, FormConstanques);
  FormConstanques.showmodal;
  ComboEdit1.TEXT := DMp.SDS_TanquesCOD_PRODUTOS.Text;

  dm.SDS_PRODUTOS.Active := false;
  DM.Sds_produtos.sql.clear;
  DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'ORDER BY DESCRICAO asc');
  dm.SDS_PRODUTOS.Active := True;

  if DM.SDS_PRODUTOS.locate('CODIGO', ComboEdit1.Text,[]) = True then
    RxLabel7.Caption := DM.SDS_PRODUTOSDESCRICAO.Text;
end;

procedure TFormTanques.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#27 then close;

  if not (ActiveControl is TDBComboBox) and  // você deve usar AND
  not (ActiveControl is TRxDBComboEdit) then
  If Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  End;
End;

procedure TFormTanques.FormShow(Sender: TObject);
begin
  inherited;
  DesabilitaPanel;
  DMP.SDS_Tanques.Active := False;
  DMP.SDS_Tanques.Active := True;

  ComboEdit1.Text := DMP.SDS_TanquesCOD_PRODUTOS.Text;
  ComboEdit1Change(Sender);

  if edit2.Text = 'LETRAS' then
  begin
    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    dm.SDS_PRODUTOS.sql.add('select * from clientes where DESCRICAO like ' +
    #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC');
    dm.SDS_PRODUTOS.Active := True;
    ACHOU := DM.SDS_PRODUTOS.locate('DESCRICAO',ComboEdit1.Text,[loCaseInsensitive]);

    TRY
      IF ACHOU=TRUE THEN
      begin
      RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
      // ComboEdit1.Text     := DM.SDS_CODIGO.Text;

       end;
    except on E: EDatabaseError do
       ShowMessage(E.Message);
    end;
  end
  else
  if EDIT2.Text = 'NUMEROS' then
  begin
    if Comboedit1.text > '999999' then
      ComboEdit1.Text := '';

    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    dm.SDS_PRODUTOS.sql.add('select * from produtos where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC');
    dm.SDS_PRODUTOS.Active := True;
    ACHOU:= DM.SDS_produtos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
    Comboedit1.Text := RemoveChar(Comboedit1.Text);

    if ACHOU = FALSE then
    begin
      SHOWMESSAGE('Codigo do Produto Não Localizado');
      Comboedit1.SetFocus;
    end;

    if ACHOU = TRUE then
      RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
  end;
end;

procedure TFormTanques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if DMP.SDS_Tanques.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormTanques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FormTanques := NIL;
end;

procedure TFormTanques.comboedit1Exit(Sender: TObject);
begin
  inherited;
  if edit2.Text = 'LETRAS' then
  begin
    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    dm.SDS_PRODUTOS.sql.add('select * from produtos where DESCRICAO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC');
    dm.SDS_PRODUTOS.Active := True;
    ACHOU := DM.SDS_PRODUTOS.locate('DESCRICAO',ComboEdit1.Text,[loCaseInsensitive]);

    if ACHOU = FALSE then
      ComboEdiT1ButtonClick(sender);

    try
      if ACHOU = TRUE then
      RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
    except on E: EDatabaseError do
      ShowMessage(E.Message);
    end;
  end
  else
  if EDIT2.Text = 'NUMEROS' then
  begin
    if Comboedit1.text > '999999' then
     ComboEdit1.Text := '';

    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    dm.SDS_PRODUTOS.sql.add('select * from produtos where CODIGO like ' + #39 + '%' + ComboEdit1.Text + '%' + #39+'order by DESCRICAO ASC');
    dm.SDS_PRODUTOS.Active := True;
    ACHOU:= DM.SDS_produtos.locate('CODIGO', RemoveChar(Comboedit1.Text),[]);
    Comboedit1.Text := RemoveChar(Comboedit1.Text);

    if ACHOU = FALSE then
    begin
      SHOWMESSAGE('Codigo do Produto Não Localizado');
      Comboedit1.SetFocus;
    end;

    if ACHOU = TRUE THEN
      RxLabel7.Caption   := DM.SDS_produtos.Fieldbyname('DESCRICAO').AsString;
  end;
end;

end.
