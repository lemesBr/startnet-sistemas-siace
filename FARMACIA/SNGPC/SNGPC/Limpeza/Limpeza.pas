unit Limpeza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, MDOCustomDataSet, MDOQuery, MDODatabase,
  ExtCtrls;

type
  TfLimpeza = class(TForm)
    Transacao: TMDOTransaction;
    MDOQuery1: TMDOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    tbProdutos: TCheckBox;
    tbMedicos: TCheckBox;
    Label1: TLabel;
    tbLabDistr: TCheckBox;
    tbClientes: TCheckBox;
    MDOQuery2: TMDOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLimpeza: TfLimpeza;

implementation
uses
  Menu, Senha;

{$R *.dfm}

procedure TfLimpeza.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2);
  Top  := ((Screen.Height - Height) div 2)+27;
end;

procedure TfLimpeza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Transacao.Commit;
  Action := CaFree;
end;

procedure TfLimpeza.BitBtn1Click(Sender: TObject);
var
  vQtde : Integer;
begin
  fSenha.Label1.Caption := 'Digite a Senha para LIMPEZA DA BASE DE DADOS';
  fsenha.ShowModal;
  if (fSenha.Senha.Text <> '110784') then // Data de Nascimento
  begin
    ShowMessage('ATENÇÃO! Senha Invalida.');
    Exit;
  end;

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM SAIDAS');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM CAB_ENTRADAS');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM PERDAS');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM TRANSFERENCIA');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM CONTROLE_ENVIO');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM ESTOQUE_LOTE');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM INVENTARIO');
  MDOQuery1.ExecSQL;
  //*******************************************

  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO1=0');   // Guto 18/04/2011
  MDOQuery1.ExecSQL;
  //*******************************************

  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO2=0'); // Guto 18/04/2011
  MDOQuery1.ExecSQL;
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO3=0'); // Guto 18/04/2011
  MDOQuery1.ExecSQL;
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('UPDATE PRODUTOS SET SALDO_PSICO4=0'); // Guto 18/04/2011
  MDOQuery1.ExecSQL;
 //*******************************************

  try
    Transacao.Commit;
  except
    Transacao.Rollback;
    raise;
  end;
  //******************************************

  if tbLabDistr.Checked then
  begin
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM LABORATORIO');
  MDOQuery1.ExecSQL;
  //*******************************************
  end;

  if tbClientes.Checked then
  begin
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM CLIENTES');
  MDOQuery1.ExecSQL;
  //*******************************************
  end;

  if tbProdutos.Checked then
  begin
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM PRODUTOS');
  MDOQuery1.ExecSQL;
  //*******************************************
  end;

  if tbMedicos.Checked then
  begin
  //*******************************************
  MDOQuery1.Active := False;
  MDOQuery1.SQL.Clear;
  MDOQuery1.SQL.Add('DELETE FROM MEDICO');
  MDOQuery1.ExecSQL;
  //*******************************************
  end;

  //*******************************************
  try
    Transacao.Commit;
  except
    Transacao.Rollback;
    raise;
  end;
  //******************************************

  Transacao.Commit;
  ShowMessage('Limpeza Concluida com sucesso.');
end;

procedure TfLimpeza.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
