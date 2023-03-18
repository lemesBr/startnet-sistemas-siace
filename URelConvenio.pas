unit URelConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMRELATORIO, StdCtrls, ExtCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ComCtrls;


type
  TFrmRelConvenio = class(TFrmRelatorio)
    QRelConv: TIBQuery;
    DSQRelConv: TDataSource;
    QRelConvCOD_CON: TIntegerField;
    QRelConvNOME_CON: TIBStringField;
    QRelConvTEL_CON: TIBStringField;
    QRelConvRESPONSAVEL_CON: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnVisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConvenio: TFrmRelConvenio;

implementation
Uses Udm, UQRelCadConvenio, UComercioSuper;

{$R *.dfm}

procedure TFrmRelConvenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  QRelConv.Close;
  action:= caFree;
end;

procedure TFrmRelConvenio.BtnVisClick(Sender: TObject);
begin
  inherited;
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  with QRelConv do
     begin
        close;
        sql.Clear;
        if rdg.ItemIndex = 0 then
           sql.Add('SELECT COD_CON, NOME_CON, TEL_CON, RESPONSAVEL_CON FROM CONVENIO ORDER BY COD_CON')
        else
           sql.Add('SELECT COD_CON, NOME_CON, TEL_CON, RESPONSAVEL_CON FROM CONVENIO ORDER BY NOME_CON');
        open;
     end;
  Application.CreateForm(TFrmQRelConv, FrmQRelConv);
  FrmQRelConv.QRLNomeEmpresa.Caption:= frmmenu.SB.Panels[3].Text;
  if sender = btnvis then
     begin
        FrmQRelConv.QRConv.PreviewInitialState:= wsMaximized;
        FrmQRelConv.QRConv.Preview;
     end
  else
     begin
        FrmQRelConv.QRConv.PrinterSetup;
        FrmQRelConv.QRConv.Print;
     end;
  FrmQRelConv.QRConv.QRPrinter:= nil;
  dm.IBTransaction.Commit;
  QRelConv.Close;
end;

end.
