unit graficoquant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls,     VclTee.Teexport, VclTee.TeePrevi ,
  StdCtrls, Buttons, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart;

type
  TFormGrafico_quant = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBChart1: TDBChart;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrafico_quant: TFormGrafico_quant;

implementation

uses Graficos;

{$R *.dfm}

procedure TFormGrafico_quant.BitBtn1Click(Sender: TObject);
begin
//teeBrazil.TeeSetBrazil;
DBChart1.PrintProportional := False;
DBChart1.PrintMargins := Rect(5,5,5,5);
//ChartPreviewer(Self,dbChart1);
TeePreview(Self,dbChart1);
end;

procedure TFormGrafico_quant.BitBtn2Click(Sender: TObject);
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

procedure TFormGrafico_quant.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
