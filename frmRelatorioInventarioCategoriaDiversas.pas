unit frmRelatorioInventarioCategoriaDiversas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Grids, DBGrids, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Buttons, StdCtrls,
  DBCtrls, ImgList, ExtCtrls, System.ImageList;

type
  TFRelatorioInventarioCategoriaDiversas = class(TForm)
    spbRelatorioContrato: TSpeedButton;
    qrCategorias: TFDQuery;
    Grid: TDBGrid;
    qrCategoriasCODIGO: TIntegerField;
    qrCategoriasDESCRICAO: TStringField;
    dsCategorias: TDataSource;
    Panel1: TPanel;
    img: TImageList;
    qrCategoriasMARK: TIntegerField;
    qrCategoria: TFDMemTable;
    qrCategoriaMARK: TIntegerField;
    qrCategoriaCODIGO: TStringField;
    qrCategoriaDESCRICAO: TStringField;
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spbRelatorioContratoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Pesquisa: string;
  end;

var
  FRelatorioInventarioCategoriaDiversas: TFRelatorioInventarioCategoriaDiversas;

implementation

uses uDMMovimentacao, ModulodeDados, ModulodeDadosConsultas,
  UInventario_custo;

{$R *.dfm}

procedure TFRelatorioInventarioCategoriaDiversas.GridDrawColumnCell(
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

procedure TFRelatorioInventarioCategoriaDiversas.spbRelatorioContratoClick(
  Sender: TObject);
begin
  Pesquisa:= '';
  qrCategoria.First;

  while not qrCategoria.eof do
  begin
    if qrCategoriaMARK.AsInteger = 1 then
    begin
      if Pesquisa = '' then
        Pesquisa:= 'CATEGORIA = ' + qrCategoriaCODIGO.AsString
      else
        Pesquisa:= Pesquisa + ' OR CATEGORIA = ' + qrCategoriaCODIGO.AsString;
    end;
    qrCategoria.Next;
  end;

  if Pesquisa = '' then
  begin
    ShowMessage('É necssário Selecionar uma Categoria!!');
    Exit;
  end
  else
    Close;
end;

procedure TFRelatorioInventarioCategoriaDiversas.FormCreate(
  Sender: TObject);
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

procedure TFRelatorioInventarioCategoriaDiversas.FormDestroy(
  Sender: TObject);
begin
  qrCategoria.Close;
  qrCategorias.Close;
end;

procedure TFRelatorioInventarioCategoriaDiversas.GridKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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

end.
