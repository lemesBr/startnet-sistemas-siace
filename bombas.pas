unit bombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, StdCtrls, DB, DBCtrls, Mask, aDvGlowButton, ExtCtrls,
  SUIDlg, aDvPanel;

type
  TFormBombas = class(TFrmCadastroNovo)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    CheckBox1: TCheckBox;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBombas: TFormBombas;

implementation

uses ModuledadosPostos, Principal, ModulodeDados, consBomba;

{$R *.dfm}


Procedure TFormBombas.AtualizaManutencao;
begin
  BTNNOVO.Enabled:= (DMP.SDS_BOMBA.State = dsBrowse);
  BTNEXCLUIR.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
  BtnLocalizar.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
  BtnSalvar.Enabled:= (DMP.SDS_BOMBA.State  in [dsInsert, dsEdit]);
  BTNCANCELAR.Enabled:= (DMP.SDS_BOMBA.State  in [dsInsert, dsEdit]);
  BtnEditar.Enabled:= (DMP.SDS_BOMBA.State  = dsBrowse);
end;

procedure TFormBombas.HabilitaPanel;
begin
  Panel1.Enabled:= True;
end;

procedure TFormBombas.DesabilitaPanel;
begin
  Panel1.Enabled:= False;
end;

procedure TFormBombas.HabilitaNovo;
begin
  BTNNOVO.Enabled:=TRUE;
  BtnEditar.Enabled:=FALSE;
  BTNCANCELAR.Enabled:=FALSE;
  BtnSalvar.Enabled:=FALSE;
  BTNEXCLUIR.Enabled:=FALSE;
  BtnLocalizar.Enabled:= False;
end;

procedure TFormBombas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FormBombas := nil;
end;

procedure TFormBombas.FormCloseQuery(Sender: TObject;
var
  CanClose: Boolean);
begin
  inherited;
  if DMP.SDS_BOMBA.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
    MsgInformacao.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormBombas.BtnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormBombas.btnNovoClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label3.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para ' +
    'Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label3.Caption = 'S' then
  begin
    try
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(COD_BOMBA) as N_CODIGO FROM BOMBA');
      DM.ProxCod.Open;

      DMp.SDS_BOMBA.Insert;
      DMp.SDS_BOMBACOD_BOMBA.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;

      HabilitaPanel;
      AtualizaManutencao;
      DBComboBox1.SetFocus;

    Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormBombas.BtnAlterarClick(Sender: TObject);
begin
  inherited;

  if FormPrincipal.Label2.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para '+
    'Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label2.Caption ='S'then
  begin
    try
      DMP.SDS_BOMBA.Edit;
      AtualizaManutencao;
      HabilitaPanel;
      DBComboBox1.SetFocus;
    Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
    end;
  end;
end;

procedure TFormBombas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  try
    DMP.SDS_BOMBA.Cancel;
    if DMP.SDS_BOMBA.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormBombas.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if FormPrincipal.Label1.Caption = 'N' then
  begin
    MsgInformacao.Text:= 'O usuário conectado não possui autorização para'+
    ' Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
    MsgInformacao.ShowModal;
  end;

  if FormPrincipal.Label1.Caption ='S'then
  begin
    if MsgConfirmacao.ShowModal = mryes then
    begin
      try
        DMp.SDS_BOMBA.Delete;

        if DMp.SDS_BOMBA.RecordCount = 0 then
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

procedure TFormBombas.BtnGravarClick(Sender: TObject);
begin
  inherited;
  try
    DMp.SDS_BOMBA.Edit;
    DMp.SDS_BOMBAID_BOMBA.ASINTEGER:=DMP.SDS_BOMBACOD_BOMBA.ASINTEGER;

    if CheckBox1.Checked = True then
      DMP.SDS_BOMBAAUTO_AUTORIZA.Text := '1'
    else
    if CheckBox1.Checked = false then
      DMP.SDS_BOMBAAUTO_AUTORIZA.Text := '0';

    DMP.SDS_BOMBA.Post;
    AtualizaManutencao;
    DesabilitaPanel;
  except
    MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
    MsgErro.ShowModal;
  end;
end;

procedure TFormBombas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#27 then close;

  if Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  End;
end;

procedure TFormBombas.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConsBomba, FormConsBomba);
  FormConsBomba.showmodal;
end;

procedure TFormBombas.FormShow(Sender: TObject);
begin
  inherited;
  DMP.SDS_BOMBA.Active := False;
  DMP.SDS_BOMBA.Active := True;
  dmp.sds_frentista.Active := False;
  dmp.sds_frentista.Active := True;
end;

procedure TFormBombas.DBComboBox1Exit(Sender: TObject);
begin
  inherited;
  DMp.SDS_BOMBA.Edit;
  DMp.SDS_BOMBAID_BOMBA.ASINTEGER :=DMP.SDS_BOMBACOD_BOMBA.ASINTEGER;
end;

end.
