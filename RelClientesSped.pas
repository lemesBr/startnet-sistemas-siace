unit RelClientesSped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Mask, RzPanel,
  SUIButton, ExtCtrls, DBClient, SimpleDS, Data.DBXFirebird, RxToolEdit;

type
  TFormRelClientesVendasMes = class(TForm)
    RzPanel2: TRzPanel;
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
    RzPanel1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    EvDateEdit1: TDateEdit;
    SP_CLIENTES: TSQLStoredProc;
    SDS_PARTICIPANTES: TSimpleDataSet;
    SDS_PARTICIPANTESCOD_SPED: TIntegerField;
    SDS_PARTICIPANTESNOME: TStringField;
    SDS_PARTICIPANTESIE: TStringField;
    SDS_PARTICIPANTESCNPJ_CPF: TStringField;
    SDS_PARTICIPANTESCOD_MUNICIPIO: TStringField;
    SDS_PARTICIPANTESLOGRADOURO: TStringField;
    SDS_PARTICIPANTESNUMERO: TIntegerField;
    SDS_PARTICIPANTESCOMPLEMENTO: TStringField;
    SDS_PARTICIPANTESBAIRRO: TStringField;
    SDS_PARTICIPANTESSUFRAMA: TStringField;
    SDS_PARTICIPANTESPAIS: TStringField;
    SDS_PARTICIPANTESCOD_CLIENTE: TIntegerField;
    SDS_PARTICIPANTESCOD_FORNECEDOR: TIntegerField;
    SDS_PARTICIPANTESCOD_EMPRESA: TIntegerField;
    SDS_PARTICIPANTESTIPO: TStringField;
    Label1: TLabel;
    SP_FORNECEDORES: TSQLStoredProc;
    Label2: TLabel;
    dts_participantes: TDataSource;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure timClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelClientesVendasMes: TFormRelClientesVendasMes;

implementation

uses ModulodeDados, relclientesmovmes;

{$R *.dfm}

procedure TFormRelClientesVendasMes.suiButton3Click(Sender: TObject);
var
  dtaux : TDateTime;
begin
            dtAux := (StrToDate(EvDateEdit1.Text));
             // GERA Clientes
            SDS_PARTICIPANTES.Active := False;
            SDS_PARTICIPANTES.Active := TRUE;

             //   Label4.Caption:='Geração dos Dados dos Participantes....';

            SDS_PARTICIPANTES.First;
           // with SDS_PARTICIPANTES do
            while not SDS_PARTICIPANTES.Eof do
            begin
            SDS_PARTICIPANTES.Delete;
           // SDS_PARTICIPANTES.Next;
            SDS_PARTICIPANTES.ApplyUpdates(0);
            end;
            SDS_PARTICIPANTES.Last;

            SP_FORNECEDORES.Params[0].Text :=  FormatDateTime('mm',dtAux);
            SP_FORNECEDORES.Params[1].Text :=  FormatDateTime('yyyy',dtAux);
            SP_FORNECEDORES.execproc;

            SP_CLIENTES.Params[0].Text :=  FormatDateTime('mm',dtAux);
            SP_CLIENTES.Params[1].Text :=  FormatDateTime('yyyy',dtAux);
            SP_CLIENTES.Execproc;

            SDS_PARTICIPANTES.Active := False;
            SDS_PARTICIPANTES.Active := TRUE;

    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
     BEGIN
       FormRelClientesMovMes := TFormRelClientesMovMes.Create(self);
       FormRelClientesMovMes.RLReport1.DefaultFilter.Destroy;
       FormRelClientesMovMes.RLReport1.Prepare;
       FormRelClientesMovMes.RLReport1.PreviewModal;
    END ELSE
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
    begin
       FormRelClientesMovMes := TFormRelClientesMovMes.Create(self);
       FormRelClientesMovMes.RLReport1.Prepare;
       FormRelClientesMovMes.RLReport1.PreviewModal;
    end;

end;

procedure TFormRelClientesVendasMes.suiButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelClientesVendasMes.timClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
 FormRelClientesVendasMes := nil;
end;

end.
