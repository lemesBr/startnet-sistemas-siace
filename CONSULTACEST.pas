unit CONSULTACEST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, Buttons, RXCtrls, ExtCtrls, DB;

type
  TFormConsCest = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    XDBGrid1: TXDBGrid;
    Edit2: TEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    cbxpesquisa: TComboBox;
    procedure m(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCest: TFormConsCest;
    ACHOU:BOOLEAN;

implementation

uses ModulodeDados, Principal;

{$R *.dfm}

procedure TFormConsCest.m(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
          if edit2.Text='LETRAS' THEN
          BEGIN
          if cbxpesquisa.ItemIndex= 0 then
          begin
          dm.SDS_cest.Filtered := false;
          dm.SDS_cest.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
          dm.SDS_cest.Filtered := True;
          end else

          begin
          if cbxpesquisa.ItemIndex= 1 then
          begin
          dm.SDS_cest.Filtered := false;
          ACHOU := dm.SDS_cest.Locate('DESCRICAO',EDIT1.Text,[loPartialKey]);

          IF ACHOU=FALSE THEN
          SHOWMESSAGE('cest Não Localizado');

          IF ACHOU=TRUE THEN
          xDBGrid1.SetFocus;
          //Edit1.SetFocus;
          end;
          end;
          end else

          IF EDIT2.Text='NUMEROS' THEN
          BEGIN
          if cbxpesquisa.ItemIndex= 2 then
          begin
          dm.SDS_cest.Filtered := false;
          dm.SDS_cest.Filter:='CEST =' +Edit1.Text +'';
          dm.SDS_cest.Filtered := True;
          end;
          if cbxpesquisa.ItemIndex= 1 then
          begin
          dm.SDS_cest.Filtered := false;
          ACHOU := dm.SDS_cest.Locate('cest',EDIT1.Text,[loPartialKey]);

          IF ACHOU=FALSE THEN
          SHOWMESSAGE('Cest Não Localizado');

          IF ACHOU=TRUE THEN
          xDBGrid1.SetFocus;
          end;
          if cbxpesquisa.ItemIndex= 3 then
          begin
          dm.SDS_cest.Filtered := false;
          ACHOU := dm.SDS_cest.Locate('NCM',EDIT1.Text,[loPartialKey]);

          IF ACHOU=FALSE THEN
          SHOWMESSAGE('NCM Não Localizado');

          IF ACHOU=TRUE THEN
          xDBGrid1.SetFocus;
          end;
        end;
end;
end;

procedure TFormConsCest.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormConsCest.XDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsCest.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
{//DtVen:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Value;
If dm.SDS_cestANALITICO.TEXT = 'N' then
XDbgrid1.Canvas.Font.Color:= clRed;
If dm.SDS_cestANALITICO.TEXT = 'S' then
XDbgrid1.Canvas.Font.Color:= clBlack;
XDbgrid1.DefaultDrawDataCell(Rect, Xdbgrid1.columns[datacol].field, State);
   }

  if not odd(dm.SDS_cest.RecNo) then
  if not (gdselected in State) then
    begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
   XDBGrid1.Canvas.FillRect(Rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;


end;

procedure TFormConsCest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConscest := NIL;
end;

procedure TFormConsCest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
      if (Key=VK_F2) then
      begin
      EDIT1.SetFocus;
      end;
end;

procedure TFormConsCest.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsCest.XDBGrid1DblClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFormConsCest.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
end;
end;

end.
