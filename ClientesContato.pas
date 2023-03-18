unit ClientesContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, RXCtrls, Mask, aDvGlowButton;

type
  TFormClientesContato = class(TForm)
    Bevel1: TBevel;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    db_nome: TDBEdit;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    suiDBRadioGroup2: TDBRadioGroup;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesContato: TFormClientesContato;

implementation

uses clientes, Principal;

{$R *.dfm}

procedure TFormClientesContato.btnSalvarClick(Sender: TObject);
begin
  Self.ModalResult:= mrOk;
end;

procedure TFormClientesContato.btnCancelarClick(Sender: TObject);
begin
  Self.ModalResult:= mrCancel;
end;

end.
