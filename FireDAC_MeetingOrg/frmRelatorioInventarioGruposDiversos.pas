unit frmRelatorioInventarioGruposDiversos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, ImgList, DB, FireDAC.Comp.DataSet, ExtCtrls, Grids, DBGrids,
  Buttons;

type
  TFRelatorioInventarioGruposDiversos = class(TForm)
    spbRelatorioContrato: TSpeedButton;
    Grid: TDBGrid;
    Panel1: TPanel;
    qrCategorias: TFDQuery;
    qrCategoriasCODIGO: TIntegerField;
    qrCategoriasDESCRICAO: TStringField;
    qrCategoriasMARK: TIntegerField;
    dsCategorias: TDataSource;
    img: TImageList;
    qrCategoria: TFDMemTable;
    qrCategoriaMARK: TIntegerField;
    qrCategoriaCODIGO: TStringField;
    qrCategoriaDESCRICAO: TStringField;
    procedure spbRelatorioContratoClick(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pesquisa: String;
  end;

var
  FRelatorioInventarioGruposDiversos: TFRelatorioInventarioGruposDiversos;

implementation

{$R *.dfm}

procedure TFRelatorioInventarioGruposDiversos.spbRelatorioContratoClick(
  Sender: TObject);
begin
  Pesquisa:= '';
  qrCategoria.First;

  while not qrCategoria.eof do
  begin
    if qrCategoriaMARK.AsInteger = 1 then
    begin
      if Pesquisa = '' then
        Pesquisa:= 'NOME_GRUPO = '+QuotedStr(qrCategoriaDESCRICAO.AsString)
      else
        Pesquisa:= Pesquisa + ' OR NOME_GRUPO = ' + QuotedStr(qrCategoriaDESCRICAO.AsString);
    end;

    qrCategoria.Next;
  end;

  if Pesquisa = '' then
  begin
    ShowMessage('É necssário Selecionar uma Grupo!!');
    Exit;
  end
  else
    Close;
end;

procedure TFRelatorioInventarioGruposDiversos.GridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Se o DataSorce Não for Vazio
  if not TDBGrid(Sender).DataSource.DataSet.IsEmpty then
  begin
    TDBGrid(Sender).Canvas.Brush.Color:= clBtnFace;
    TDBGrid(Sender).Canvas.Font.Style:= [];
    TDBGrid(Sender).Canvas.Font.Color:= clBlack;

    //Passa Cores para Grid
    If gdselected in state then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= $00FFCF9F;
      TDBGrid(Sender).Canvas.Font.Style:= [];
      TDBGrid(Sender).Canvas.Font.Color:= clBlack;
    end;
  end;

  //Pinta Grid
  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).columns[datacol].Field, State);

  //Se o DataSorce não For Vazio
  if not dsCategorias.DataSet.IsEmpty then
  begin
    //Se existir uma coluna MARk
    if Column.FieldName = 'MARK' then
    begin
      Grid.Canvas.FillRect(Rect);
      //Se for 0 esta desmarcada se for 1 está marcada
      case dsCategorias.dataset.FieldByName('MARK').AsInteger of
        0:img.Draw(Grid.Canvas,Rect.Left + 7, Rect.Top + 1, 0);
        1:img.Draw(Grid.Canvas,Rect.Left + 7, Rect.Top + 1, 1);
      end;
    end;
  end;
end;

procedure TFRelatorioInventarioGruposDiversos.GridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then
  begin
    qrCategoria.Edit;
    //Marca ou Desmarca
    if qrCategoriaMARK.AsInteger = 1 then
      qrCategoriaMARK.AsInteger:= 0
    else
      qrCategoriaMARK.AsInteger:= 1;
    qrCategoria.Post;
  end;
end;

procedure TFRelatorioInventarioGruposDiversos.FormCreate(Sender: TObject);
begin
  qrCategoria.Open;
  qrCategorias.Open;

  qrCategorias.First;
  while not qrCategorias.Eof do
  begin
    qrCategoria.Insert;
    qrCategoriaMARK.AsInteger:= 0;
    qrCategoriaCODIGO.AsString:= IntToStr(qrCategoriasCODIGO.asInteger);
    qrCategoriaDESCRICAO.AsString:= qrCategoriasDESCRICAO.AsString;
    qrCategoria.Post;
    qrCategorias.Next;
  end;
end;

procedure TFRelatorioInventarioGruposDiversos.FormDestroy(Sender: TObject);
begin
  qrCategoria.Close;
  qrCategorias.Close;
end;

end.
