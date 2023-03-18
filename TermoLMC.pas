unit TermoLMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB,  QRCtrls, StdCtrls,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTermoLMC = class(TForm)
    QuickRep1: TQuickRep;
    dslivro: TDataSource;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    qrLivro: TFDQuery;
    QRDBText17: TQRDBText;
    QRLabel24: TQRLabel;
//    lbtotal_paginas: TLabelGeraNumExt;
    QRLabel25: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel26: TQRLabel;
    lbpag_extenso: TQRLabel;
    qrLivroCODIGO: TIntegerField;
    qrLivroCOD_FILIAL: TStringField;
    qrLivroFILIAL: TStringField;
    qrLivroENDERECO: TStringField;
    qrLivroBAIRRO: TStringField;
    qrLivroCEP: TStringField;
    qrLivroCIDADE: TStringField;
    qrLivroUF: TStringField;
    qrLivroIE: TStringField;
    qrLivroCNPJ: TStringField;
    qrLivroIM: TStringField;
    qrLivroDISTRIBUIDORA: TStringField;
    qrLivroCAPACIDADE: TIntegerField;
    qrLivroCOD_COMBUSTIVEL: TIntegerField;
    qrLivroNOME_COMBUSTIVEL: TStringField;
    qrLivroNUMERO: TStringField;
    qrLivroNUMERO_JUNTACOM: TStringField;
    qrLivroDATA_ABERTURA: TDateField;
    qrLivroNUMERO_ORDEM: TIntegerField;
    qrLivroPAGINA_ATUAL: TIntegerField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTermoLMC: TfrmTermoLMC;

implementation

uses AberFechLMC, ModulodeDados, Estenso;

{$R *.dfm}

procedure TfrmTermoLMC.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrLivro.Close;
  qrLivro.SQL.Clear;
  qrLivro.SQL.add('select * from LMC_ABERFECH where codigo = :codigo');
  qrLivro.Params.Parambyname('codigo').asinteger := xcodlmc;
  qrLivro.Open;
  //lbtotal_paginas.Numero := qrLivro.fieldbyname('pagina_atual').AsInteger;
//  lbpag_extenso.Caption := lbtotal_paginas.Caption;
  lbpag_extenso.Caption := ConversaoRecursiva(qrLivro.fieldbyname('pagina_atual').AsInteger);
  if xtermo = 'A' then
  begin
    qrlabel25.Caption := 'e servirá para o lançamento das operações do estabelecimento do contribuinte abaixo';
    qrlabel7.Caption := 'Termo de Abertura';
  end
  else
  begin
    qrlabel25.Caption := 'e serviu para o lançamento das operações do estabelecimento do contribuinte abaixo';
    qrlabel7.Caption := 'Termo de Encerramento';
  end;
end;

end.
