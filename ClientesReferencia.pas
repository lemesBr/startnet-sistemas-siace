unit ClientesReferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, aDvGlowButton, StdCtrls, Mask, DBCtrls, RXCtrls;

type
  TFormClientesReferencia = class(TForm)
    RxLabel4: TRxLabel;
    db_nome: TDBEdit;
    RxLabel1: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    DBEdit2: TDBEdit;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    Bevel1: TBevel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesReferencia: TFormClientesReferencia;

implementation

uses clientes, Principal;

{$R *.dfm}

procedure TFormClientesReferencia.btnCancelarClick(Sender: TObject);
begin
  Self.ModalResult:= mrCancel;
end;

procedure TFormClientesReferencia.btnSalvarClick(Sender: TObject);
begin
  Self.ModalResult:= mrOk;
end;

end.
