unit ufrmBaseCreatedEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBase, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvGlowButton, AdvPanel, System.Actions, Vcl.ActnList;

type
  TfrmBaseCreatedEdit = class(TfrmBase)
    Label2: TLabel;
    lbl_TitleForm: TLabel;
    pnl_Base: TPanel;
    Label3: TLabel;
    Panel2: TAdvPanel;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Action: TActionList;
    act_Cancelar: TAction;
    act_Gravar: TAction;
    procedure pnl_BtnCancellClick(Sender: TObject);
    procedure act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCreatedEdit: TfrmBaseCreatedEdit;

implementation

{$R *.dfm}

uses Principal;

procedure TfrmBaseCreatedEdit.act_CancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBaseCreatedEdit.pnl_BtnCancellClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
