unit graficomes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.DBChart, VCLTee.TeeDBCrossTab, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart,  VCLTee.TeePrevi,   VCLTee.TeExport, VCLTEE.TeCanvas;

type
  TFormGrafico_mes = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Chart1: TChart;
    Series1: TPieSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrafico_mes: TFormGrafico_mes;

implementation

uses Graficos;

{$R *.dfm}

procedure TFormGrafico_mes.BitBtn1Click(Sender: TObject);
begin
//teeBrazil.TeeSetBrazil;
Chart1.PrintProportional := False;
Chart1.PrintMargins := Rect(5,5,5,5);
TeePreview(Self,Chart1);
end;

procedure TFormGrafico_mes.BitBtn2Click(Sender: TObject);
begin

//teeBrazil.TeeSetBrazil;
Chart1.PrintProportional := False;
Chart1.PrintMargins := Rect(5,5,5,5);
  with TTeeExportForm.Create(Self) do
  try
    ExportPanel:=Chart1;
    ShowModal();
  finally
    Free();
  end;
end;

procedure TFormGrafico_mes.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormGrafico_mes.FormCreate(Sender: TObject);
var
mes, MES1 : string;
begin
{ mes := FormGraficos.qry_MES.FieldByName('mes').AsString;
                      IF MES = '1' THEN BEGIN
                       MES1:= 'Janeiro';
                       end else
                       IF MES = '2' THEN BEGIN
                       MES1:= 'Fevereiro';
                       end else
                       IF mes = '3' THEN BEGIN
                       mes1:= 'Março';
                       end else
                       IF mes = '4' THEN BEGIN
                       mes1:= 'Abril';
                       end else
                       IF mes = '5' THEN BEGIN
                       mes1:= 'Maio';
                       end;
                        IF mes = '6' THEN BEGIN
                       mes1:= 'Junho';
                       end;
                        IF mes = '7' THEN BEGIN
                       mes1:= 'Julho';
                       end;
                        IF mes = '8' THEN BEGIN
                       mes1:= 'Agosto';
                       end;
                        IF mes = '9' THEN BEGIN
                       mes1:= 'Setembro';
                       end;
                        IF mes = '10' THEN BEGIN
                       mes1:= 'Outubro';
                       end;
                        IF mes = '11' THEN BEGIN
                       mes1:= 'Novembro';
                       end;
                        IF mes = '12' THEN BEGIN
                       mes1:= 'Dezembro';
                       end;
 while not FormGraficos.qry_MES.Eof do
   begin
    Chart1.Series[0].Add(FormGraficos.qry_MES.FieldByName('TOTAL').AsCurrency,mes);
    FormGraficos.qry_data.Next;
end; }

DBCrossTabSource1.Active := True;
end;

end.
