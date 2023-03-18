unit Empresa;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, TabNotBk, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, wwdbedit,
  DB, MDOCustomDataSet, MDODatabase, DBCtrls, Wwdotdot, Wwdbcomb;

type
  TfEmpresa = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    GRAVAR: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FANTASIA: TwwDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    wwDBEdit1: TwwDBEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    wwDBEdit2: TwwDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    wwDBEdit3: TwwDBEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    wwDBEdit4: TwwDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    wwDBEdit5: TwwDBEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    wwDBEdit6: TwwDBEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    wwDBEdit7: TwwDBEdit;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    wwDBEdit9: TwwDBEdit;
    Panel24: TPanel;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    dsdseEmpresa: TDataSource;
    dseEmpresa: TMDODataSet;
    Transacao: TMDOTransaction;
    wwDBEdit13: TwwDBEdit;
    Panel25: TPanel;
    Panel26: TPanel;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    Panel27: TPanel;
    Panel28: TPanel;
    DBEdit2: TDBEdit;
    Panel29: TPanel;
    Panel30: TPanel;
    DBEdit3: TDBEdit;
    Panel31: TPanel;
    Panel32: TPanel;
    wwDBComboBox1: TwwDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GRAVARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dseEmpresaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation
uses Menu;

{$R *.DFM}

procedure TfEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dseEmpresa.Active := False;
  Transacao.Commit;

  Action := CaFree;
end;

procedure TfEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfEmpresa.GRAVARClick(Sender: TObject);
begin
  if dseEmpresa.State in [dsEdit,dsInsert] then
  begin
    dseEmpresa.Post;
    ShowMessage('Gravado com Sucesso.');
  end;
  Close; 
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
  Left := ((Screen.Width  - Width) div 2)-5;
  Top  := ((Screen.Height - Height) div 2)-45;

  //Abrir tabelas
  dseEmpresa.Active := True;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
begin
  dseEmpresa.Edit;
end;

procedure TfEmpresa.dseEmpresaAfterPost(DataSet: TDataSet);
begin
  dseEmpresa.ApplyUpdates;
  try
    Transacao.CommitRetaining;
  except
    Transacao.Rollback;
    raise;
  end
end;

end.
