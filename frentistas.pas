unit frentistas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo,  StdCtrls, Mask, DBCtrls,
  ExtCtrls, DB, SUIDlg, AdvGlowButton, AdvPanel;

type
  TFormFrentista = class(TFrmCadastroNovo)
    Pnldados: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrentista: TFormFrentista;

implementation

uses ModuledadosPostos, ModulodeDados, Principal, Consfrentistas;

{$R *.dfm}

Procedure TFormFrentista.AtualizaManutencao;
begin
  BTNNOVO.Enabled:= (DMP.sds_frentista.State = dsBrowse);
  BTNEXCLUIR.Enabled:= (DMP.sds_frentista.State = dsBrowse);
  BtnLocalizar.Enabled:= (DMP.sds_frentista.State = dsBrowse);
  BtnSalvar.Enabled:= (DMP.sds_frentista.State in [dsInsert, dsEdit]);
  BTNCANCELAR.Enabled:= (DMP.sds_frentista.State in [dsInsert, dsEdit]);
  BtnEditar.Enabled:= (DMP.sds_frentista.State = dsBrowse);
end;


procedure TFormFrentista.HabilitaPanel;
begin
  pnldados.Enabled:= True;
end;

procedure TFormFrentista.DesabilitaPanel;
begin
  pnldados.Enabled:= False;
end;

procedure TFormFrentista.HabilitaNovo;
begin
  BTNNOVO.Enabled:=TRUE;
  BtnEditar.Enabled:=FALSE;
  BTNCANCELAR.Enabled:=FALSE;
  BtnSalvar.Enabled:=FALSE;
  BTNEXCLUIR.Enabled:=FALSE;
  BtnLocalizar.Enabled:= False;
end;

procedure TFormFrentista.btnNovoClick(Sender: TObject);
begin
  if FormPrincipal.Label3.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para ' +
    'Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label3.Caption ='S'then
  begin
    try
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(COD_FRENTISTA) as N_CODIGO FROM frentista');
      DM.ProxCod.Open;

      DMp.sds_frentista.Insert;
      DMp.sds_frentistaCOD_FRENTISTA.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

      HabilitaPanel;
      AtualizaManutencao;
      DBEdit2.SetFocus;

    except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormFrentista.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label2.Caption ='N'then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para ' +
    'Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label2.Caption ='S'then
  begin
    try
      DMP.sds_frentista.Edit;
      AtualizaManutencao;
      HabilitaPanel;
      DBEdit2.SetFocus;
    except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormFrentista.BtnCancelarClick(Sender: TObject);
begin
  try
    DMP.sds_frentista.Cancel;
    if DMP.sds_frentista.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormFrentista.BtnExcluirClick(Sender: TObject);
begin
  if FormPrincipal.Label1.Caption ='N'then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para '+
    'Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label1.Caption ='S'then
  begin
    if MsgConfirmacao.ShowModal = mryes then
    begin
      try
        DMp.sds_frentista.Delete;

        if DMp.sds_frentista.RecordCount = 0 then
          HabilitaNovo else AtualizaManutencao;
      except
        MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
        MsgErro.ShowModal;
      end;
    end;
  end;
end;

procedure TFormFrentista.BtnGravarClick(Sender: TObject);
begin
  try
    if DMp.sds_frentistaCOD_FRENTISTA.ASINTEGER > 0 then
    begin
      DMp.sds_frentista.Edit;
      DMP.sds_frentista.Post;
    end
    else
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(COD_FRENTISTA) as N_CODIGO FROM frentista');
      DM.ProxCod.Open;

      DMp.sds_frentista.Edit;
      DMp.sds_frentistaCOD_FRENTISTA.ASINTEGER:= DM.ProxCodN_CODIGO.ASINTEGER + 1;
      DMP.sds_frentista.Post;
    end;

    AtualizaManutencao;
    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormFrentista.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFrentista.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DMP.sds_frentista.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormFrentista.FormShow(Sender: TObject);
begin
  DMP.sds_frentista.Active := False;
  DMP.sds_frentista.Active := True;
  DesabilitaPanel;
end;

procedure TFormFrentista.BtnConsultarClick(Sender: TObject);
begin
  try
    if FormConsFrentista=nil   then
    begin
      FormConsFrentista:= TFormConsFrentista.Create(self);
      FormConsFrentista.ShowModal;
    end;
  except
    ShowMessage('Erro ao Tentar Exibir o Formulário!!');
  end;
end;

procedure TFormFrentista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormFrentista := nil;
end;

end.
