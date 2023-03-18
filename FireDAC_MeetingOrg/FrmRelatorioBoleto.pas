unit FrmRelatorioBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, StdCtrls, Mask,
  rxToolEdit, Buttons, ExtCtrls;

type
  TFRelatorioBoletos = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    spbRelatorioContrato: TSpeedButton;
    Bevel1: TBevel;
    lblCliente: TLabel;
    Label2: TLabel;
    cbxSelecione: TComboBox;
    edtInicial: TDateEdit;
    edtFinal: TDateEdit;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    qrRel: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioBoletos: TFRelatorioBoletos;

implementation

{$R *.dfm}

end.
