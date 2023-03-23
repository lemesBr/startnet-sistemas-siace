unit ufrmPostoFrentistasCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCreatedEdit, System.Actions,
  Vcl.ActnList, AdvGlowButton, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls,
  mPostoFrentista, svcLibrary, mPostoCartao, System.StrUtils, svcAuth,
  System.Generics.Collections, CustomEditHelper;

type
  TfrmPostoFrentistasCreatedEdit = class(TfrmBaseCreatedEdit)
    Panel1: TPanel;
    Panel3: TPanel;
    lbe_Nome: TLabeledEdit;
    lbe_Descricao: TLabeledEdit;
    lbe_Comissao: TLabeledEdit;
    cbx_Status: TCheckBox;
    cbx_Cartao: TComboBox;
    Label7: TLabel;
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_GravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    PostoFrentista: TPostoFrentista;
    function validateEdits: Boolean;
    procedure ObjToEdt;
    procedure EdtToObj;
    procedure save();
  public
    { Public declarations }
  end;

var
  frmPostoFrentistasCreatedEdit: TfrmPostoFrentistasCreatedEdit;

implementation

{$R *.dfm}

{ TfrmPostoFrentistasCreatedEdit }

procedure TfrmPostoFrentistasCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoFrentistaId:= EmptyStr;
end;

procedure TfrmPostoFrentistasCreatedEdit.act_GravarExecute(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TfrmPostoFrentistasCreatedEdit.EdtToObj;
var
  vPostoCartao: TPostoCartao;
begin
  PostoFrentista.nome:= lbe_nome.text;
  PostoFrentista.Descricao:= lbe_Descricao.text;
  PostoFrentista.Comissao:= TLibrary.StringToExtended(lbe_Comissao.text);
  PostoFrentista.Status:= IfThen(cbx_Status.Checked, 'A', 'B');

  try
    vPostoCartao:= TPostoCartao.findCodigo(cbx_Cartao.Text);
    PostoFrentista.IdCartao:= vPostoCartao.id;
  finally
    FreeAndNil(vPostoCartao);
  end;
end;

procedure TfrmPostoFrentistasCreatedEdit.FormCreate(Sender: TObject);
var
  vPostoCartao: TObjectList<TPostoCartao>;
  I: Integer;
begin
  inherited;
  try
    vPostoCartao:= TPostoCartao.list('');
    if Assigned(vPostoCartao) then
    begin
      for I := 0 to Pred(vPostoCartao.Count) do
        cbx_Cartao.Items.Add(vPostoCartao.Items[I].Codigo);
    end;
  finally
    FreeAndNil(vPostoCartao);
  end;

  TCustomEdit(lbe_comissao).EditFloat();
  if TAuth.PostoFrentistaId = EmptyStr then PostoFrentista:= TPostoFrentista.Create
  else PostoFrentista:= TPostoFrentista.find(TAuth.PostoFrentistaId);
  ObjToEdt;
end;

procedure TfrmPostoFrentistasCreatedEdit.ObjToEdt;
begin
  if (PostoFrentista.Id = EmptyStr) then
  begin
    lbl_TitleForm.Caption:= 'Cadastro de Novo Frentista';
    Exit();
  end;
  lbl_TitleForm.Caption:= 'Alterar dados de Frentista';

  lbe_nome.text:= PostoFrentista.nome;
  lbe_Descricao.text:= PostoFrentista.Descricao;
  lbe_Comissao.text:= TLibrary.ExtendedToString(PostoFrentista.Comissao);
  cbx_Status.Checked:= PostoFrentista.Status = 'A';
  cbx_Cartao.ItemIndex:= cbx_Cartao.Items.IndexOf(PostoFrentista.Cartao.codigo);
end;

procedure TfrmPostoFrentistasCreatedEdit.save;
begin
  EdtToObj;
  if validateEdits and PostoFrentista.save then
    Close;
end;

function TfrmPostoFrentistasCreatedEdit.validateEdits: Boolean;
var
  v_required: Integer;
begin
  v_required:= 0;
  if (Trim(lbe_Nome.Text) = '') then
  begin
    setEditRequired(lbe_Nome);
    Inc(v_required);
  end;

  if (Trim(lbe_Descricao.Text) = '') then
  begin
    setEditRequired(lbe_Descricao);
    Inc(v_required);
  end;

  if (Trim(lbe_Comissao.Text) = '') then
  begin
    setEditRequired(lbe_Comissao);
    Inc(v_required);
  end;

  if (Trim(cbx_cartao.Text) = '') then
  begin
    setEditRequired(cbx_cartao);
    Inc(v_required);
  end;

  Result:= (v_required = 0);
  if (not Result) then  TLibrary.showMessage('Atenção', 'Campos necessários', 0);
end;

end.
