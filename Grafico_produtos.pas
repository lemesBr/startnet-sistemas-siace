unit Grafico_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls,
  VCLTee.DBChart,  VCLTee.TeeGDIPlus, VCLTee.Teexport, VCLTee.TeePrevi,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart;

type
  TFormGraficoProdutos = class(TForm)
    DBChart1: TDBChart;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoProdutos: TFormGraficoProdutos;

implementation

uses Graficos;

{$R *.dfm}

procedure TFormGraficoProdutos.BitBtn1Click(Sender: TObject);
begin
//teeBrazil.TeeSetBrazil;
DBChart1.PrintProportional := False;
DBChart1.PrintMargins := Rect(5,5,5,5);
//ChartPreviewer(Self,dbChart1);
TeePreview(Self,dbChart1);

end;

procedure TFormGraficoProdutos.BitBtn2Click(Sender: TObject);
begin
 // teeBrazil.TeeSetBrazil;
  DBChart1.PrintProportional := False;
  DBChart1.PrintMargins := Rect(5,5,5,5);
  with TTeeExportForm.Create(Self) do
  try
    ExportPanel:=dbChart1;
    ShowModal();
  finally
    Free();
  end;
end;

procedure TFormGraficoProdutos.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
