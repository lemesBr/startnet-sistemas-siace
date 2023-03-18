unit ConsLyBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, SUIDBCtrls, StdCtrls, RXCtrls, ExtCtrls;

type
  TFormConsLyBancos = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    suiDBGrid1: TsuiDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsLyBancos: TFormConsLyBancos;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;


{$R *.dfm}

procedure TFormConsLyBancos.Edit1Change(Sender: TObject);
begin
DM.SDS_lyBancos.Locate('DESCRICAO', Edit1.Text,[lopartialkey]);
end;

procedure TFormConsLyBancos.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsLyBancos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsLyBancos.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
END;
procedure TFormConsLyBancos.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsLyBancos.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsLyBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsLyBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsLyBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormConsLyBancos:=nil;
end;

procedure TFormConsLyBancos.FormShow(Sender: TObject);
begin
DM.sds_LyBancos.ACTIVE := FALSE;
DM.sds_LyBancos.ACTIVE := TRUE;
end;

end.
