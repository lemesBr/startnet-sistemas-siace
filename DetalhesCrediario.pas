unit DetalhesCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls,  StdCtrls, SUIDlg, Mask, DBCtrls,
  SUIDBCtrls, sDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, JvDBGridFooter,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormDetCrediario = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    suiDBEdit1: TsDBEdit;
    suiDBEdit2: TsDBEdit;
    suiDBEdit4: TsDBEdit;
    suiDBEdit5: TsDBEdit;
    suiDBEdit6: TsDBEdit;
    suiDBEdit7: TsDBEdit;
    suiDBEdit8: TsDBEdit;
    suiDBEdit9: TsDBEdit;
    suiDBEdit10: TsDBEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    suiDBEdit3: TsDBEdit;
    suiDBEdit11: TsDBEdit;
    Label7: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1ID_EMPRESA: TIntegerField;
    FDQuery1ID_CBR_RETORNO: TLargeintField;
    FDQuery1ID_CBR_RETORNO_TITULOS: TLargeintField;
    FDQuery1TITULO: TLargeintField;
    FDQuery1TITULO_LOCALIZADO: TStringField;
    FDQuery1TITULO_JALIQUIDADO: TStringField;
    FDQuery1TITULO_SEMREGISTRO: TStringField;
    FDQuery1TITULO_LIQUIDADO_LIMITEP: TStringField;
    FDQuery1TITULO_RECUSADO: TStringField;
    FDQuery1SEU_NUMERO: TStringField;
    FDQuery1NOSSO_NUMERO: TStringField;
    FDQuery1VALOR_DOCUMENTO: TFMTBCDField;
    FDQuery1VALOR_PAGO: TFMTBCDField;
    FDQuery1VALOR_RECEBIDO: TFMTBCDField;
    FDQuery1VALOR_JUROS: TFMTBCDField;
    FDQuery1VALOR_DESCONTO: TFMTBCDField;
    FDQuery1VALOR_DESPESA: TFMTBCDField;
    FDQuery1DATA_OCORRENCIA: TDateField;
    FDQuery1ID_BANCO: TStringField;
    FDQuery1ID_AGENCIA: TStringField;
    FDQuery1ORIGEM: TStringField;
    FDQuery1FORMA_PAGAMENTO: TStringField;
    FDQuery1TIPO_OCORRENCIA: TIntegerField;
    FDQuery1TIPO_OCORRENCIA_DESC: TStringField;
    FDQuery1MOT_REJ_COMANDO: TStringField;
    FDQuery1MOT_REJ_COMANDO_DESC: TStringField;
    FDQuery1HISTORICO: TStringField;
    JvDBGridFooter1: TJvDBGridFooter;
    JvDBGrid1: TJvDBGrid;
    Label8: TLabel;
    sDBEdit1: TsDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetCrediario: TFormDetCrediario;

implementation

uses ModulodeDadosBaixas, Acesso, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormDetCrediario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetCrediario:=nil;
end;

procedure TFormDetCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormDetCrediario.FormShow(Sender: TObject);
begin
                      if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      FDQuery1.Close;
                      FDQuery1.ParamByName('id_cbr').asinteger  := dmb.SDS_Crediario_BaixaRETORNO_ID_CBR_RETORNO.AsInteger;
                      FDQuery1.ParamByName('boleto').asinteger  := dmb.SDS_Crediario_BaixaNUMBOLETO1.AsInteger;
                      FDQuery1.Open;
                      dm.IBTransaction.CommitRetaining;
end;

procedure TFormDetCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
