unit ufrmPostoBicoCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCreatedEdit, System.Actions,
  Vcl.ActnList, AdvGlowButton, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls, svcAuth,
  mPostoBico, svcLibrary, mPostoTanque, System.Generics.Collections;

type
  TfrmPostoBicoCreatedEdit = class(TfrmBaseCreatedEdit)
    lbe_Codigo: TLabeledEdit;
    lbe_Posicao: TLabeledEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    lbe_Descricao: TLabeledEdit;
    cbx_Tanque: TComboBox;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_GravarExecute(Sender: TObject);
  private
    { Private declarations }
    PostoBico: TPostoBico;
    function validateEdits: Boolean;
    procedure ObjToEdt;
    procedure EdtToObj;
    procedure save();
  public
    { Public declarations }
  end;

var
  frmPostoBicoCreatedEdit: TfrmPostoBicoCreatedEdit;

implementation

{$R *.dfm}

{ TfrmPostoBicoCreatedEdit }

procedure TfrmPostoBicoCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoBicoId:= EmptyStr;
end;

procedure TfrmPostoBicoCreatedEdit.act_GravarExecute(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TfrmPostoBicoCreatedEdit.EdtToObj;
var
  vPostoTanque: TPostoTanque;
begin
  PostoBico.CodigoBico:= lbe_Codigo.text;
  PostoBico.Posicao:= lbe_Posicao.text;
  PostoBico.Descricao:= lbe_Descricao.text;

  try
    vPostoTanque:= TPostoTanque.findNumero(StrToInt(cbx_Tanque.Text));
    PostoBico.IdTanque:= vPostoTanque.id;
  finally
    FreeAndNil(vPostoTanque);
  end;
end;

procedure TfrmPostoBicoCreatedEdit.FormCreate(Sender: TObject);
var
  vPostoTanque: TObjectList<TPostoTanque>;
  I: Integer;
begin
  inherited;
  try
    vPostoTanque:= TPostoTanque.list('');
    if Assigned(vPostoTanque) then
    begin
      for I := 0 to Pred(vPostoTanque.Count) do
        cbx_Tanque.Items.Add(IntToStr(vPostoTanque.Items[I].Numero));
    end;
  finally
    FreeAndNil(vPostoTanque);
  end;

  inherited;
  if TAuth.PostoBicoId = EmptyStr then PostoBico:= TPostoBico.Create
  else PostoBico:= TPostoBico.find(TAuth.PostoBicoId);
  ObjToEdt;
end;

procedure TfrmPostoBicoCreatedEdit.ObjToEdt;
begin
  if (PostoBico.Id = EmptyStr) then
  begin
    lbl_TitleForm.Caption:= 'Cadastro de Novo Bico';
    Exit();
  end;
  lbl_TitleForm.Caption:= 'Alterar dados de Bico';

  lbe_Codigo.text:= PostoBico.CodigoBico;
  lbe_Posicao.text:= PostoBico.Posicao;
  lbe_Descricao.text:= PostoBico.Descricao;
  cbx_Tanque.ItemIndex:= cbx_Tanque.Items.IndexOf(IntToStr(PostoBico.Tanque.Numero));
end;

procedure TfrmPostoBicoCreatedEdit.save;
begin
  EdtToObj;
  if validateEdits and PostoBico.save then
    Close;
end;

function TfrmPostoBicoCreatedEdit.validateEdits: Boolean;
var
  v_required: Integer;
begin
  v_required:= 0;
  if (Trim(lbe_Codigo.Text) = '') then
  begin
    setEditRequired(lbe_Codigo);
    Inc(v_required);
  end;

  if (Trim(lbe_Descricao.Text) = '') then
  begin
    setEditRequired(lbe_Descricao);
    Inc(v_required);
  end;

  Result:= (v_required = 0);
  if (not Result) then  TLibrary.showMessage('Atenção', 'Campos necessários', 0);
end;

end.
