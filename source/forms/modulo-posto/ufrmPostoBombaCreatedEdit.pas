unit ufrmPostoBombaCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCreatedEdit, System.Actions,
  Vcl.ActnList, AdvGlowButton, AdvPanel, Vcl.ExtCtrls, Vcl.StdCtrls, svcAuth,
  mPostoBomba, svcLibrary, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, mPostoBico;

type
  TfrmPostoBombaCreatedEdit = class(TfrmBaseCreatedEdit)
    lbe_Numero: TLabeledEdit;
    lbe_Modelo: TLabeledEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    lbe_Serie: TLabeledEdit;
    lbe_Fabricante: TLabeledEdit;
    lbe_Descricao: TLabeledEdit;
    DBGrid: TDBGrid;
    fdmt_Bico: TFDMemTable;
    ds_Bico: TDataSource;
    fdmt_BicoID_BICO: TStringField;
    fdmt_BicoID_TANQUE: TStringField;
    fdmt_BicoBICO: TStringField;
    fdmt_BicoTANQUE: TStringField;
    fdmt_BicoPRODUTO: TStringField;
    pnl_BtnRemoveBico: TPanel;
    pnl_BtnAddBico: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure act_GravarExecute(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
    procedure pnl_BtnAddBicoClick(Sender: TObject);
    procedure pnl_BtnRemoveBicoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    PostoBomba: TPostoBomba;
    function validateEdits: Boolean;
    procedure ObjToEdt;
    procedure EdtToObj;
    procedure save();
  public
    { Public declarations }
  end;

var
  frmPostoBombaCreatedEdit: TfrmPostoBombaCreatedEdit;

implementation

{$R *.dfm}

uses ufrmPostoBicoList;

{ TfrmPostoBombaCreatedEdit }

procedure TfrmPostoBombaCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  TAuth.PostoBombaId:= EmptyStr;
end;

procedure TfrmPostoBombaCreatedEdit.act_GravarExecute(Sender: TObject);
begin
  inherited;
  Save;
end;

procedure TfrmPostoBombaCreatedEdit.EdtToObj;
begin
  PostoBomba.numero:= StrToInt(lbe_Numero.text);
  PostoBomba.Modelo:= lbe_Modelo.text;
  PostoBomba.Serie:= lbe_Serie.text;
  PostoBomba.Fabricante:= lbe_Fabricante.text;
  PostoBomba.Descricao:= lbe_Descricao.text;

  PostoBomba.Bicos.Clear;
  with fdmt_Bico do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      PostoBomba.Bicos.Add(TPostoBico.Create);
      PostoBomba.Bicos.Last.Id:= fdmt_BicoID_BICO.AsString;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TfrmPostoBombaCreatedEdit.FormCreate(Sender: TObject);
begin
  inherited;
  if TAuth.PostoBombaId = EmptyStr then PostoBomba:= TPostoBomba.Create
  else PostoBomba:= TPostoBomba.find(TAuth.PostoBombaId);
  ObjToEdt;
end;

procedure TfrmPostoBombaCreatedEdit.FormShow(Sender: TObject);
begin
  inherited;
  ArredondarComponente(pnl_BtnAddBico, 4);
  ArredondarComponente(pnl_BtnRemoveBico, 4);
end;

procedure TfrmPostoBombaCreatedEdit.ObjToEdt;
begin
  if (PostoBomba.Id = EmptyStr) then
  begin
    lbl_TitleForm.Caption:= 'Cadastro de Nova Bomba';
    Exit();
  end;
  lbl_TitleForm.Caption:= 'Alterar dados de Bomba';

  lbe_Numero.text:= IntToStr(PostoBomba.numero);
  lbe_Modelo.text:= PostoBomba.Modelo;
  lbe_Serie.text:= PostoBomba.Serie;
  lbe_Fabricante.text:= PostoBomba.Fabricante;
  lbe_Descricao.text:= PostoBomba.Descricao;
  TPostoBomba.listBicos(PostoBomba.Id, fdmt_Bico);
end;

procedure TfrmPostoBombaCreatedEdit.pnl_BtnAddBicoClick(Sender: TObject);
var
  vPostoBico: TPostoBico;
begin
  TAuth.PostoBicoId:= EmptyStr;
  TLibrary.showForm(TfrmPostoBicoList, 1);
  if TAuth.PostoBicoId <> EmptyStr then
  begin
    fdmt_Bico.DisableControls;
    fdmt_Bico.Filter:= 'ID_BICO = ' + QuotedStr(TAuth.PostoBicoId);
    fdmt_Bico.Filtered:= True;

    if fdmt_Bico.RecordCount > 0 then
    begin
      fdmt_Bico.EnableControls;
      fdmt_Bico.Filtered:= False;
      exit;
    end;

    try
      vPostoBico:= TPostoBico.find(TAuth.PostoBicoId);
      if Assigned(vPostoBico) then
      begin
        fdmt_Bico.Open();
        fdmt_Bico.Filtered:= False;
        fdmt_Bico.Append;
        fdmt_BicoID_BICO.AsString:= vPostoBico.Id;
        fdmt_BicoID_TANQUE.AsString:= vPostoBico.IdTanque;
        fdmt_BicoBICO.AsString:= vPostoBico.CodigoBico + ' - ' +
        vPostoBico.Descricao;
        fdmt_BicoTANQUE.AsString:= IntToStr(vPostoBico.Tanque.Numero) + ' - ' +
        vPostoBico.Tanque.Descricao;
        fdmt_BicoPRODUTO.AsString:= IntToStr(vPostoBico.Tanque.Produto.Codigo) + ' - ' +
        vPostoBico.Tanque.Produto.Descricao;
        fdmt_Bico.Post;
        fdmt_Bico.First;
        fdmt_Bico.EnableControls;
      end;
    finally
      FreeAndNil(vPostoBico);
    end;
  end;
end;

procedure TfrmPostoBombaCreatedEdit.pnl_BtnRemoveBicoClick(Sender: TObject);
begin
  if fdmt_bico.RecordCount > 0 then
    fdmt_Bico.Delete;
end;

procedure TfrmPostoBombaCreatedEdit.save;
begin
  EdtToObj;
  if validateEdits and PostoBomba.save then
    Close;
end;

function TfrmPostoBombaCreatedEdit.validateEdits: Boolean;
var
  v_required: Integer;
begin
  v_required:= 0;
  if (StrToInt(Trim(lbe_numero.Text)) <= 0) then
  begin
    setEditRequired(lbe_numero);
    Inc(v_required);
  end;


  Result:= (v_required = 0);
  if (not Result) then  TLibrary.showMessage('Atenção', 'Campos necessários', 0);
end;

end.
