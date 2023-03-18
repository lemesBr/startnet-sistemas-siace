unit ClientesDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FDvGlowButton, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFormClientesDocumento = class(TForm)
    Bevel1: TBevel;
    db_nome: TDBEdit;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesDocumento: TFormClientesDocumento;

implementation

uses clientes;

{$R *.dfm}

procedure TFormClientesDocumento.btnCancelarClick(Sender: TObject);
begin
  Self.ModalResult:= mrCancel;
end;

procedure TFormClientesDocumento.btnSalvarClick(Sender: TObject);
begin
  Self.ModalResult:= mrOk;
end;

end.
