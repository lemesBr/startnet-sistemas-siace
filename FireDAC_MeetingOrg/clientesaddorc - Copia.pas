unit clientesaddorc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  TFormClientesaddorc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesaddorc: TFormClientesaddorc;

implementation

uses Vendas, ModulodeDados;

{$R *.dfm}

procedure TFormClientesaddorc.DBEdit1Enter(Sender: TObject);
begin
  Formvendas.Sds_orcamentos.Edit;
end;

procedure TFormClientesaddorc.DBEdit2Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
end;

procedure TFormClientesaddorc.DBEdit6Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
end;

procedure TFormClientesaddorc.DBEdit7Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
end;

procedure TFormClientesaddorc.DBEdit3Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
if RadioButton1.Checked then
begin
Formvendas.Sds_OrcamentosCPF_CNPJ.EditMask:= '999.999.999-99;0;_';
end else
if RadioButton2.Checked then
begin
Formvendas.Sds_OrcamentosCPF_CNPJ.EditMask:= '99.999.999/9999-99;0;_';
end;
end;

procedure TFormClientesaddorc.DBEdit4Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
end;

procedure TFormClientesaddorc.DBEdit5Enter(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Edit;
end;

procedure TFormClientesaddorc.BitBtn1Click(Sender: TObject);
begin
  Formvendas.Sds_Orcamentos.Post;
end;

procedure TFormClientesaddorc.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormClientesaddorc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormClientesaddorc:= nil;
end;

procedure TFormClientesaddorc.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
