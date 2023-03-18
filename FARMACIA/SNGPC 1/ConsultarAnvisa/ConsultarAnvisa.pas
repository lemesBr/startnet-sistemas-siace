unit ConsultarAnvisa;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, MDOCustomDataSet, MDODatabase, MDOQuery, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, InvokeRegistry, Rio, SOAPHTTPClient;

type
  TfConsultarAnvisa = class(TForm)
    BitBtn1: TBitBtn;
    qryEmpresa: TMDOQuery;
    Transacao: TMDOTransaction;
    bSair: TBitBtn;
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    procedure PROSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultarAnvisa: TfConsultarAnvisa;

implementation
uses ConsultarArquivo;

{$R *.DFM}

procedure TfConsultarAnvisa.PROSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsultarAnvisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryEmpresa.Active := False;
  Transacao.Commit;
  Action := CaFree;
end;

procedure TfConsultarAnvisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfConsultarAnvisa.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  // Abrir
  qryEmpresa.Active := True;
end;

procedure TfConsultarAnvisa.BitBtn1Click(Sender: TObject);
var
  wbSNGPC : sngpcSoap;
  Retorno : String;

begin
  Memo1.Lines.add('Consultando, aguarde...');

  Retorno := '';

  wbSNGPC := HTTPRIO1 AS sngpcsoap;

  Memo1.Lines.add('Usuário e Senha: '+wbSNGPC.ValidarUsuario(qryEmpresa.FieldByName('E_MAIL_TRANSMISSAO').AsString, qryEmpresa.FieldByName('SENHA_TRANSMISSAO').AsString));

  Retorno := wbSNGPC.ConsultaDadosArquivoSNGPC(Trim(qryEmpresa.FieldByName('E_MAIL_TRANSMISSAO').AsString),
                                              Trim(qryEmpresa.FieldByName('SENHA_TRANSMISSAO').AsString),
                                              Trim(qryEmpresa.FieldByName('CNPJ').AsString),
                                              '00000000000000');

  Memo1.Lines.add('');
  Memo1.Lines.add(Retorno);
  Memo1.Lines.add('');
    
end;

procedure TfConsultarAnvisa.bSairClick(Sender: TObject);
begin
  Close;
end;

end.
