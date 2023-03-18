unit custosvendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Mask, DBCtrls, RXCtrls, ExtCtrls;

type
  TFormCustosVendas = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel50: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel51: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel13: TRxLabel;
    suiDBEdit1: TDBEdit;
    suiDBEdit3: TDBEdit;
    DBEdit14: TDBEdit;
    suiDBEdit5: TDBEdit;
    suiDBEdit9: TDBEdit;
    suiDBEdit4: TDBEdit;
    suiDBEdit13: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit10: TDBEdit;
    suiDBEdit12: TDBEdit;
    suiDBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    suiDBEdit6: TDBEdit;
    suiDBEdit8: TDBEdit;
    Panel3: TPanel;
    suiButton1: TsuiButton;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustosVendas: TFormCustosVendas;

implementation

{$R *.dfm}

procedure TFormCustosVendas.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCustosVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormCustosVendas:=nil;
end;

end.
