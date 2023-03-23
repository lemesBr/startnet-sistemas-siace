unit ufrmPostoTanqueCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCreatedEdit, System.Actions,
  Vcl.ActnList, AdvGlowButton, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls,
  mPostoTanque, svcLibrary, CustomEditHelper, svcAuth, RxCtrls, Vcl.Mask,
  RxToolEdit, Data.DB;

type
  TfrmPostoTanqueCreatedEdit = class(TfrmBaseCreatedEdit)
    lbe_Numero: TLabeledEdit;
    lbe_VolumeAtual: TLabeledEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    lbe_Capacidade: TLabeledEdit;
    lbe_Descricao: TLabeledEdit;
    comboedit1: TComboEdit;
    Label1: TLabel;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure act_GravarExecute(Sender: TObject);
    procedure comboedit1ButtonClick(Sender: TObject);
    procedure comboedit1Change(Sender: TObject);
    procedure comboedit1Exit(Sender: TObject);
  private
    { Private declarations }
    PostoTanque: TPostoTanque;
    function validateEdits: Boolean;
    procedure ObjToEdt;
    procedure EdtToObj;
    procedure save();
  public
    { Public declarations }
    function RemoveChar(Const Texto:String):String;
  end;

var
  frmPostoTanqueCreatedEdit: TfrmPostoTanqueCreatedEdit;

implementation

{$R *.dfm}

uses ConsProdutos, ModulodeDados;

{ TfrmPostoTanqueCreatedEdit }

procedure TfrmPostoTanqueCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoTanqueId:= EmptyStr;
end;

procedure TfrmPostoTanqueCreatedEdit.act_GravarExecute(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TfrmPostoTanqueCreatedEdit.comboedit1ButtonClick(Sender: TObject);
begin
  try
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

procedure TfrmPostoTanqueCreatedEdit.comboedit1Change(Sender: TObject);
begin
  inherited;
  if (ComboEdit1.Text >= 'A') and (ComboEdit1.Text <= 'Z') then
    ComboEdit1.Hint:='LETRAS';

  if (ComboEdit1.Text >= '0') and (ComboEdit1.Text <= '9') then
    ComboEdit1.Hint:='NUMEROS';

  if ComboEdit1.Text = '' then
    ComboEdit1.Hint:='';
end;

procedure TfrmPostoTanqueCreatedEdit.comboedit1Exit(Sender: TObject);
var
  ACHOU: Boolean;
begin
  inherited;
  if ComboEdit1.Hint = 'LETRAS' then
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
  if ComboEdit1.Hint = 'NUMEROS' then
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

procedure TfrmPostoTanqueCreatedEdit.EdtToObj;
begin
  PostoTanque.numero:= StrToInt(lbe_Numero.text);
  PostoTanque.Descricao:= lbe_Descricao.text;
  PostoTanque.VolumeAtual:= TLibrary.StringToExtended(lbe_VolumeAtual.text);
  PostoTanque.Capacidade:= TLibrary.StringToExtended(lbe_Capacidade.text);
  PostoTanque.IdProduto:= StrToInt(comboedit1.Text);
end;

procedure TfrmPostoTanqueCreatedEdit.FormCreate(Sender: TObject);
begin
  inherited;
  TCustomEdit(lbe_capacidade).EditFloat();
  TCustomEdit(lbe_volumeatual).EditFloat();

  if TAuth.PostoTanqueId = EmptyStr then PostoTanque:= TPostoTanque.Create
  else PostoTanque:= TPostoTanque.find(TAuth.PostoTanqueId);
  ObjToEdt;
end;

procedure TfrmPostoTanqueCreatedEdit.ObjToEdt;
begin
  if (PostoTanque.Id = EmptyStr) then
  begin
    lbl_TitleForm.Caption:= 'Cadastro de Novo Tanque';
    Exit();
  end;
  lbl_TitleForm.Caption:= 'Alterar dados de Tanque';

  lbe_Numero.text:= IntToStr(PostoTanque.numero);
  lbe_Descricao.text:= PostoTanque.Descricao;
  lbe_VolumeAtual.text:= TLibrary.ExtendedToString(PostoTanque.VolumeAtual);
  lbe_Capacidade.text:= TLibrary.ExtendedToString(PostoTanque.Capacidade);
  comboedit1.text:= IntToStr(PostoTanque.IdProduto);
  comboedit1Exit(comboedit1);
end;

function TfrmPostoTanqueCreatedEdit.RemoveChar(const Texto: String): String;
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

procedure TfrmPostoTanqueCreatedEdit.save;
begin
  EdtToObj;
  if validateEdits and PostoTanque.save then
    Close;
end;

function TfrmPostoTanqueCreatedEdit.validateEdits: Boolean;
var
  v_required: Integer;
begin
  v_required:= 0;
  if (StrToInt(Trim(lbe_numero.Text)) <= 0) then
  begin
    setEditRequired(lbe_numero);
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
