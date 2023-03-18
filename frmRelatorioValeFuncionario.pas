unit frmRelatorioValeFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, StdCtrls, Mask, Buttons, ExtCtrls,
  rxToolEdit;

type
  TFRelatorioValeFuncionario = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    spbRelatorioContrato: TSpeedButton;
    Bevel1: TBevel;
    lblCliente: TLabel;
    Label2: TLabel;
    edtInicial: TDateEdit;
    edtFinal: TDateEdit;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    qrRel: TFDQuery;
    cbxTodos: TCheckBox;
    spbPesquisa: TSpeedButton;
    edtFuncionario: TEdit;
    qrRelLANCAMENTO: TDateField;
    qrRelUSUARIO: TStringField;
    qrRelFUNCIONARIO: TStringField;
    qrRelMOTIVO: TStringField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    qrRelVALOR: TFMTBCDField;
    procedure cbxTodosClick(Sender: TObject);
    procedure spbPesquisaClick(Sender: TObject);
    procedure spbRelatorioContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioValeFuncionario: TFRelatorioValeFuncionario;

implementation

uses ModulodeDados, ConsClientes;

{$R *.dfm}

procedure TFRelatorioValeFuncionario.cbxTodosClick(Sender: TObject);
begin
  if cbxTodos.Checked = True then
  begin
    edtFuncionario.Text:= '';
    spbPesquisa.Enabled:= False;
  end
  else
    spbPesquisa.Enabled:= True;
end;

procedure TFRelatorioValeFuncionario.spbPesquisaClick(Sender: TObject);
begin
  try
    FormConsClientes:=  TFormConsClientes.Create(self);
    FormConsClientes.ShowModal;
    edtFuncionario.Text:= dm.SDS_ClientesNOME_RS.AsString;
    edtFuncionario.tag:= dm.SDS_ClientesCODIGO.asinteger;
  finally
    FreeAndNil(FormConsClientes);
  end;
end;

procedure TFRelatorioValeFuncionario.spbRelatorioContratoClick(
  Sender: TObject);
var
  SQL: string;
begin
  SQL:= 'SELECT '+
    'FV.LANCAMENTO,'+
    'FV.USUARIO, '+
    'CL.NOME_RS AS FUNCIONARIO,'+
    'FV.VALOR,'+
    'FV.MOTIVO,'+
    'EP.NOME_FANTASIA AS EMPRESA,'+
    'EP.CNPJ AS EMPRESA_CNPJ,'+
    'EP.TELEFONE AS EMPRESA_FONE,'+
    'EP.LOGOMARCA AS EMPRESA_LOGO '+
    'FROM FUNCIONARIO_VALE FV '+
    'INNER JOIN CLIENTES CL ON (CL.CODIGO = FV.ID_CLIENTE) '+
    'INNER JOIN EMPRESA EP ON (EP.CODIGO = 1)';

  qrRel.Close;
  qrRel.SQL.Clear;
  if cbxTodos.Checked = True then
  begin
    qrRel.SQL.Add(SQL +' WHERE FV.LANCAMENTO BETWEEN :DTINI AND :DTFIM');
  end
  else
  begin
    qrRel.SQL.Add(SQL +
    ' WHERE ID_CLIENTE = ' +IntToStr(edtFuncionario.Tag)+ ' AND FV.LANCAMENTO BETWEEN :DTINI AND :DTFIM');
  end;

  qrRel.ParamByName('DTINI').AsDate:= edtInicial.Date;
  qrRel.ParamByName('DTFIM').AsDate:= edtFinal.Date;
  qrRel.Open;

  frxReport.LoadFromFile('rel\relvalefuncionario.fr3');
  frxReport.ShowReport;
end;

end.
