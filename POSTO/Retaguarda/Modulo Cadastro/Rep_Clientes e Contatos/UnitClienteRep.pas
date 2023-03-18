unit UnitClienteRep;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, IBCustomDataSet, IBQuery, qrprntr,
 Placemnt;

type
 TClienteRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   QRBand1: TQRBand;
   QRLabel1: TQRLabel;
   QRLabel3: TQRLabel;
   QRBand3: TQRBand;
   QRDBText3: TQRDBText;
   QRBand4: TQRBand;
   QRSysData2: TQRSysData;
   QRLabel23: TQRLabel;
   QRSysData3: TQRSysData;
   QryFrmContClientes: TIBQuery;
   DtsQryFrmContClientes: TDataSource;
   QryFrmContContatos: TIBQuery;
   DtsQryFrmContContatos: TDataSource;
   QRSubDetail1: TQRSubDetail;
   QRLabel9: TQRLabel;
   QRLabel10: TQRLabel;
   QRLabel11: TQRLabel;
   QRLabel12: TQRLabel;
   QRLabel13: TQRLabel;
   QRLabel14: TQRLabel;
   QRLabel15: TQRLabel;
   QRLabel16: TQRLabel;
   QRDBText1: TQRDBText;
   QRDBText2: TQRDBText;
   QRDBText4: TQRDBText;
   QRDBText5: TQRDBText;
   QRDBText6: TQRDBText;
   QRDBText7: TQRDBText;
   QRDBText8: TQRDBText;
   QRDBText9: TQRDBText;
   QRDBText10: TQRDBText;
   QRDBText11: TQRDBText;
   QRSubDetail2: TQRSubDetail;
   QRDBText12: TQRDBText;
   QRDBText13: TQRDBText;
   QRLabel8: TQRLabel;
   QRLabel17: TQRLabel;
   QRLabel18: TQRLabel;
   QRLabel19: TQRLabel;
   QRLabel20: TQRLabel;
   QRLabel21: TQRLabel;
   QRLabel22: TQRLabel;
   QRLabel24: TQRLabel;
   QRBand2: TQRBand;
   QRLabel4: TQRLabel;
   QRBand5: TQRBand;
   QRSubDetail3: TQRSubDetail;
   QRBand6: TQRBand;
   QRLabel26: TQRLabel;
   QRLabel28: TQRLabel;
   QryFrmContClientesCODCLIFRM: TIntegerField;
   QryFrmContClientesCODCLI: TIntegerField;
   QryFrmContClientesDATAHORA: TDateTimeField;
   QryFrmContClientesCODTIPOFRM: TIntegerField;
   QryFrmContClientesOBS: TIBStringField;
   QryFrmContClientesNOME: TIBStringField;
   QryFrmContClientesVALOR: TIBStringField;
   QryFrmContClientesTIPO: TStringField;
   QryFrmContContatosCODCONTFRM: TIntegerField;
   QryFrmContContatosCODCONT: TIntegerField;
   QryFrmContContatosDATAHORA: TDateTimeField;
   QryFrmContContatosCODTIPOFRM: TIntegerField;
   QryFrmContContatosOBS: TIBStringField;
   QryFrmContContatosNOME: TIBStringField;
   QryFrmContContatosVALOR: TIBStringField;
   QryFrmContContatosTIPO: TStringField;
   QRDBText16: TQRDBText;
   QRLabel25: TQRLabel;
   QRLabel29: TQRLabel;
   QRLabel31: TQRLabel;
   QRDBText14: TQRDBText;
   QRDBText15: TQRDBText;
   QRDBText17: TQRDBText;
   QRLabel6: TQRLabel;
   QryTipo: TIBQuery;
   QRDBText18: TQRDBText;
   QRDBText19: TQRDBText;
   QRDBText20: TQRDBText;
   QRDBText21: TQRDBText;
   QRDBText22: TQRDBText;
   QRDBText23: TQRDBText;
   QRDBText24: TQRDBText;
   QRLabel5: TQRLabel;
   QRBand7: TQRBand;
   QRLabel33: TQRLabel;
   QRLabel34: TQRLabel;
   QRLabel35: TQRLabel;
   QRLabel36: TQRLabel;
   QRDBText26: TQRDBText;
   QRLabel37: TQRLabel;
   QRLabel38: TQRLabel;
   QRDBText28: TQRDBText;
   QRLabel39: TQRLabel;
   QRLabel40: TQRLabel;
   QRLabel41: TQRLabel;
   QRLabel42: TQRLabel;
   QRLabel7: TQRLabel;
   QRLabel27: TQRLabel;
   FormStorage1: TFormStorage;
    QRLabel2: TQRLabel;
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure FormCreate(Sender: TObject);
   procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
   procedure QRBand3BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
   procedure QuickRep1Preview(Sender: TObject);
   procedure QRBand1BeforePrint(Sender: TQRCustomBand;
     var PrintBand: boolean);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ClienteRepFrm: TClienteRepFrm;

implementation

uses UnitDataM1, UnitClienteList, UnitFrmPrincipal;

{$R *.dfm}

procedure TClienteRepFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 QryTipo.Close;
 QryTipo.UnPrepare;

 QryFrmContClientes.Close;
 QryFrmContClientes.UnPrepare;

 QryFrmContContatos.Close;
 QryFrmContContatos.UnPrepare;

 action := cafree;
end;

procedure TClienteRepFrm.FormCreate(Sender: TObject);
begin
 QryTipo.Prepare;
 QryTipo.Open;

 QryFrmContClientes.Prepare;
 QryFrmContClientes.Open;

 QryFrmContContatos.Prepare;
 QryFrmContContatos.Open;
end;

procedure TClienteRepFrm.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 if not varisnull(ClienteListFrm.QryContatos['DATANASCFUND']) then
   QRLabel7.Caption := ClienteListFrm.QryContatos['DATANASCFUND']
 else
   QRLabel7.Caption := 'Não disponível';

 if not (QryFrmContContatosTIPO.AsString = '') then
  begin
   QRBand6.Enabled := True;
   QRSubDetail3.Enabled := True;
  end
 else
  begin
   QRBand6.Enabled := False;
   QRSubDetail3.Enabled := False;
  end;
end;

procedure TClienteRepFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 // SE CADASTRO É DO TIPO PESSOA FISICA
 if ClienteListFrm.QryClientes['TIPOPESSOA'] = 'Física' then
  begin
   qrlabel35.Caption := 'Física';
   qrlabel34.Caption := 'Nascimento:';
   qrlabel15.Caption := 'RG:';
   qrlabel16.Caption := 'CPF:';
   qrlabel36.Caption := 'Renda:';
  end;

 // SE CADASTRO É DO TIPO PESSOA JURIDICA
 if ClienteListFrm.QryClientes['TIPOPESSOA'] = 'Jurídica' then
  begin
   qrlabel35.Caption := 'Jurídica';
   qrlabel34.Caption := 'Fundação:';
   qrlabel15.Caption := 'Insc. Est.:';
   qrlabel16.Caption := 'CGC:';
   qrlabel36.Caption := 'Capital Social:';
  end;

 //SE CADASTRO É DO TIPO CLIENTE OU FORNECEDOR
 if ClienteListFrm.QryClientes['TIPO'] = 'C' then
   qrlabel42.Caption := 'C - Cliente'
 else
   qrlabel42.Caption := 'F - Fornecedor';

 if not varisnull(ClienteListFrm.QryContatos['DATANASCFUND']) then
   QRLabel27.Caption := ClienteListFrm.QryContatos['DATANASCFUND']
 else
   QRLabel27.Caption := 'Não disponível';
 
 if QryFrmContClientes.RecordCount = 0 then
  begin
   QRBand5.Enabled := False;
   QRSubDetail1.Enabled := False;
  end
 else
  begin
   QRBand5.Enabled := True;
   QRSubDetail1.Enabled := True;
  end;

 if ClienteListFrm.QryContatos.RecordCount = 0 then
  begin
   QRBand2.Enabled := False;
   QRSubDetail2.Enabled := False;
  end
 else
  begin
   QRBand2.Enabled := True;
   QRSubDetail2.Enabled := True;
  end;
 if not (QryFrmContContatosTIPO.AsString = '') then
  begin
   QRBand6.Enabled := True;
   QRSubDetail3.Enabled := True;
  end
 else
  begin
   QRBand6.Enabled := False;
   QRSubDetail3.Enabled := False;
  end;
end;

procedure TClienteRepFrm.QuickRep1Preview(Sender: TObject);
begin
{ Application.CreateForm(TRepPreviewFrm, RepPreviewFrm);
 RepPreviewFrm.QrPreview1.qrPrinter := TqrPrinter(Sender);
 RepPreviewFrm.Show;}
end;

procedure TClienteRepFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 Qrlabel1.Caption := principalfrm.logolabel.Caption;
end;

end.
