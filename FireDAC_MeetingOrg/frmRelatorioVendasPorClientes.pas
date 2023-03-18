unit frmRelatorioVendasPorClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, StdCtrls, Mask,
  rxToolEdit, Buttons, ExtCtrls;

type
  TFRelatorioVendasPorCliente = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    spbRelatorioContrato: TSpeedButton;
    Bevel1: TBevel;
    lblCliente: TLabel;
    Label2: TLabel;
    spbPesquisa: TSpeedButton;
    edtInicial: TDateEdit;
    edtFinal: TDateEdit;
    cbxTodos: TCheckBox;
    edtFuncionario: TEdit;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    qrRel: TFDQuery;
    qrRelLANCAMENTO: TDateField;
    qrRelUSUARIO: TStringField;
    qrRelFUNCIONARIO: TStringField;
    qrRelVALOR: TBCDField;
    qrRelMOTIVO: TStringField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioVendasPorCliente: TFRelatorioVendasPorCliente;

implementation

{$R *.dfm}

end.
