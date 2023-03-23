unit ufrmPostoCartoesCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCreatedEdit, System.Actions,
  Vcl.ActnList, AdvGlowButton, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls,
  mPostoCartao, svcLibrary, svcAuth;

type
  TfrmPostoCartoesCreatedEdit = class(TfrmBaseCreatedEdit)
    Label7: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    cbx_Controle: TComboBox;
    lbe_Codigo: TLabeledEdit;
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_GravarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    PostoCartao: TPostoCartao;
    function validateEdits: Boolean;
    procedure ObjToEdt;
    procedure EdtToObj;
    procedure save();
  public
    { Public declarations }
  end;

var
  frmPostoCartoesCreatedEdit: TfrmPostoCartoesCreatedEdit;

implementation

{$R *.dfm}

uses Principal;

{ TfrmPostoCartoesCreatedEdit }

procedure TfrmPostoCartoesCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoCartaoId:= EmptyStr;
end;

procedure TfrmPostoCartoesCreatedEdit.act_GravarExecute(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TfrmPostoCartoesCreatedEdit.EdtToObj;
begin
  PostoCartao.Codigo:= lbe_Codigo.Text;
  PostoCartao.Controle:= cbx_Controle.ItemIndex + 1;
end;

procedure TfrmPostoCartoesCreatedEdit.FormCreate(Sender: TObject);
begin
  inherited;
  if TAuth.PostoCartaoId = EmptyStr then PostoCartao:= TPostoCartao.Create
  else PostoCartao:= TPostoCartao.find(TAuth.PostoCartaoId);
  ObjToEdt;
end;

procedure TfrmPostoCartoesCreatedEdit.ObjToEdt;
begin
  if (PostoCartao.Id = EmptyStr) then
  begin
    lbl_TitleForm.Caption:= 'Cadastro de Novo Cartão';
    Exit();
  end;
  lbl_TitleForm.Caption:= 'Alterar dados de Cartão';

  lbe_Codigo.Text:= PostoCartao.Codigo;
  cbx_Controle.ItemIndex:= PostoCartao.Controle - 1;
end;

procedure TfrmPostoCartoesCreatedEdit.save;
begin
  EdtToObj;
  if validateEdits and PostoCartao.save then
    Close;
end;

function TfrmPostoCartoesCreatedEdit.validateEdits: Boolean;
var
  v_required: Integer;
begin
  v_required:= 0;
  if (Trim(lbe_Codigo.Text) = '') then
  begin
    setEditRequired(lbe_Codigo);
    Inc(v_required);
  end;

  Result:= (v_required = 0);
  if (not Result) then  TLibrary.showMessage('Atenção', 'Campos necessários', 0);
end;

end.
