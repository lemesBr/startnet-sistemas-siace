unit monitorOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, StdCtrls, DBCtrls, SUIDBCtrls, Buttons, db;

type
  TFormMonitorOS = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid1: TXDBGrid;
    GroupBox6: TGroupBox;
    texto8: TsuiDBMemo;
    GroupBox7: TGroupBox;
    texto9: TsuiDBMemo;
    GroupBox1: TGroupBox;
    suiDBMemo1: TsuiDBMemo;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMonitorOS: TFormMonitorOS;

implementation

uses DMOS1, OSLancamento, ConsultaOs;

{$R *.dfm}

procedure TFormMonitorOS.FormShow(Sender: TObject);
begin
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO DESC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
end;

procedure TFormMonitorOS.DBGrid1DblClick(Sender: TObject);
begin
if FormOS=nil   then
    begin
    FormOS := TFormOS.Create(self);
    //  FormOS.Show;
     FormOS.Tag := 1;
     DMOS.SDS_OS.Locate('ID_OS_ORDEMSERVICO',DMOS.CDS_rel_OSID_OS_ORDEMSERVICO.TEXT, [loCaseInsensitive]);

     FormOS.DBComboCliente.Text := DMOS.CDS_rel_OSID_CLIENTE.TEXT ;
     FormMonitorOS.Close;
      end;
end;

procedure TFormMonitorOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormMonitorOS.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormMonitorOS.BitBtn1Click(Sender: TObject);
begin
 if FormOS=nil   then
    begin
    FormOS := TFormOS.Create(self);
    FormOS.btnNovoClick(sender);
    //  FormOS.Show;
    // DMOS.SDS_OS.Locate('ID_OS_ORDEMSERVICO',DMOS.CDS_OS_relID_OS_ORDEMSERVICO.TEXT, [loCaseInsensitive]);
    FormMonitorOS.Close;
    end;
end;

procedure TFormMonitorOS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
 Var
    status : string;
   // DtVen: TDateTime;
begin

status:= DMOS.cds_rel_osSITUACAO.text;
If status = 'ABERTA' then
BEGIN
Dbgrid1.Canvas.Font.Color:= clRed;
END ELSE
Dbgrid1.Canvas.Font.Color:= clBlack;
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);


  if not odd(DMOS.cds_REL_OS.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;

end;

procedure TFormMonitorOS.BitBtn2Click(Sender: TObject);
begin
if FormConsOS=nil   then
    begin
    FormConsOS:=TFormConsOS.Create(self);
      FormConsOS.Showmodal;
end;
end;

end.
