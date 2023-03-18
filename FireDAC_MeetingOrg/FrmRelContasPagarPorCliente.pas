unit FrmRelContasPagarPorCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, frxClass,
  frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, rxToolEdit;

type
  TFRelContasPagarPorCliente = class(TForm)
    Bevel1: TBevel;
    edtIni: TDateEdit;
    edtNomeCliente: TEdit;
    SpeedButton1: TSpeedButton;
    lblCliente: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    edtFim: TDateEdit;
    Label2: TLabel;
    spbRelatorioContrato: TSpeedButton;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    qrRel: TFDQuery;
    qrRelDATA_HORA: TStringField;
    qrRelVALOR: TBCDField;
    qrRelJUROS: TBCDField;
    qrRelDESCONTO: TBCDField;
    qrRelPAGO: TBCDField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbRelatorioContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelContasPagarPorCliente: TFRelContasPagarPorCliente;

implementation

uses ModuleDados1, ModulodeDados, ConsClientes;

{$R *.dfm}

procedure TFRelContasPagarPorCliente.SpeedButton1Click(Sender: TObject);
begin
  try
    FormConsClientes:= TFormConsClientes.Create(nil);
    FormConsClientes.ShowModal;
  finally
    edtNomeCliente.Text:= DM.DTS_Clientes.DataSet.fieldbyname('NOME_RS').AsString;
    edtNomeCliente.Tag:= DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger;
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFRelContasPagarPorCliente.spbRelatorioContratoClick(
  Sender: TObject);
begin
  if edtNomeCliente.Tag <> 0 then
  begin
    frxReport.LoadFromFile('C:\siace\rel\RelContasPagasPorCliente.fr3');
    qrRel.Close;
    qrRel.ParamByName('CODIGO').AsInteger:= edtNomeCliente.Tag;
    qrRel.ParamByName('DTINI').AsDate:= edtIni.Date;
    qrRel.ParamByName('DTFIM').AsDate:= edtFim.Date;
    qrRel.Open;
    frxDBDataset.DataSet:= qrRel;
    frxReport.ShowReport;
  end
  else
  begin
    Application.MessageBox('É necessário pesquisar um cliente!','Atenção',MB_ICONWARNING);
  end;

end;

end.
