unit consotica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RXCtrls, Grids, XDBGrids, ExtCtrls;

type
  TFormConsOtica = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    XDBGrid1: TXDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsOtica: TFormConsOtica;

implementation

uses ModulodeDados;

{$R *.dfm}

procedure TFormConsOtica.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormConsOtica.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
          if edit2.Text='LETRAS' THEN
          BEGIN
          dm.SDS_otica.Filtered := false;
          dm.SDS_otica.Filter:='NOME like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
          dm.SDS_otica.Filtered := True;

          xDBGrid1.SetFocus;

          end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          dm.SDS_otica.Filtered := false;
          dm.SDS_otica.Filter:='CODIGO =' +Edit1.Text +'';
          dm.SDS_otica.Filtered := True;

          XDBGrid1.SetFocus;


          end;

end;
end;

procedure TFormConsOtica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormConsOtica:=nil;
end;

procedure TFormConsOtica.XDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsOtica.XDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsOtica.BitBtn1Click(Sender: TObject);
begin
  if edit2.Text='LETRAS' THEN
          BEGIN
          dm.SDS_otica.Filtered := false;
          dm.SDS_otica.Filter:='NOME like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
          dm.SDS_otica.Filtered := True;

          xDBGrid1.SetFocus;

          end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          dm.SDS_otica.Filtered := false;
          dm.SDS_otica.Filter:='CODIGO =' +Edit1.Text +'';
          dm.SDS_otica.Filtered := True;

          XDBGrid1.SetFocus;


          end;

end;

procedure TFormConsOtica.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then Close;
end;

end.
