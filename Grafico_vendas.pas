unit Grafico_vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, FMTBcd,
  SqlExpr, DB, Provider, DBClient, StdCtrls, Buttons, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeePrevi,
  VCLTee.TeExport;

type
  TFormGraficoVendas = class(TForm)
    DBChart1: TDBChart;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Series1: TBarSeries;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoVendas: TFormGraficoVendas;

implementation

uses Graficos;

{$R *.dfm}

procedure TFormGraficoVendas.FormCreate(Sender: TObject);
begin
 {while not FormGraficos.qry_data.Eof do
   begin
    DbChart1.Series[0].Add(FormGraficos.qry_data.FieldByName('SOMADEVALOR_TOTAL').AsCurrency,FormGraficos.qry_data.FieldByName('Data_Pedido').asstring,clBlue);
    FormGraficos.qry_data.Next;
end; }
end;

procedure TFormGraficoVendas.BitBtn1Click(Sender: TObject);
begin
//  teeBrazil.TeeSetBrazil;
DBChart1.PrintProportional := False; 
DBChart1.PrintMargins := Rect(5,5,5,5);
TeePreview(Self,dbChart1);
end;

procedure TFormGraficoVendas.BitBtn2Click(Sender: TObject);
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

procedure TFormGraficoVendas.BitBtn3Click(Sender: TObject);
begin
close;
end;

end.
