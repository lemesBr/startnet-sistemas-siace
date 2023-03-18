unit ClientesProfissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  RXDBCtrl, StdCtrls, ExtCtrls, DBCtrls, RXCtrls, Mask, AdvGlowButton,
  RxToolEdit;

type
  TFormClienteProfissao = class(TForm)
    db_nome: TDBEdit;
    RxLabel4: TRxLabel;
    Bevel1: TBevel;
    RxLabel1: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel3: TRxLabel;
    DBEdit3: TDBEdit;
    RxLabel5: TRxLabel;
    DBEdit4: TDBEdit;
    suiDBRadioGroup2: TDBRadioGroup;
    RxLabel6: TRxLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxLabel7: TRxLabel;
    DBDateEdit5: TDBDateEdit;
    RxLabel8: TRxLabel;
    DBEdit7: TDBEdit;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel11: TRxLabel;
    DBEdit9: TDBEdit;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClienteProfissao: TFormClienteProfissao;

implementation

uses clientes;

{$R *.dfm}

procedure TFormClienteProfissao.btnCancelarClick(Sender: TObject);
begin
  Self.ModalResult:= mrCancel;
end;

procedure TFormClienteProfissao.btnSalvarClick(Sender: TObject);
begin
  Self.ModalResult:= mrOk;
end;

end.
