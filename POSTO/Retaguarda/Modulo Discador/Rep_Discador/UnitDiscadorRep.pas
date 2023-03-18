unit UnitDiscadorRep;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
 Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrprntr, Placemnt;

type
 TDiscadorRepFrm = class(TForm)
   QuickRep1: TQuickRep;
   QRBand1: TQRBand;
   QRLabel1: TQRLabel;
   QRLabel3: TQRLabel;
   QRBand2: TQRBand;
   QRLabel7: TQRLabel;
   QRLabel4: TQRLabel;
   QRBand3: TQRBand;
   QRBand5: TQRBand;
   QRSysData2: TQRSysData;
   QRLabel23: TQRLabel;
   QRSysData3: TQRSysData;
   QRLabel5: TQRLabel;
   QRLabel6: TQRLabel;
   QRDBText2: TQRDBText;
   QRDBText3: TQRDBText;
   QRBand7: TQRBand;
   QRLabel39: TQRLabel;
   QRLabel8: TQRLabel;
   QRLabel9: TQRLabel;
   QRLabel13: TQRLabel;
   QRLabel14: TQRLabel;
   QRLabel15: TQRLabel;
   ChildBand1: TQRChildBand;
   QRMemo1: TQRMemo;
   QRShape1: TQRShape;
   QRDBText1: TQRDBText;
   FormStorage1: TFormStorage;
    QRLabel2: TQRLabel;
   procedure QRLabel11Print(Sender: TObject; var Value: string);
   procedure QRLabel12Print(Sender: TObject; var Value: string);
   procedure QRLabel13Print(Sender: TObject; var Value: string);
   procedure QRLabel14Print(Sender: TObject; var Value: string);
   procedure QRLabel15Print(Sender: TObject; var Value: string);
   procedure QRBand7BeforePrint(Sender: TQRCustomBand;
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
 DiscadorRepFrm: TDiscadorRepFrm;

implementation

uses UnitDiscadorList, UnitDiscadorFrm, UnitFrmPrincipal;

{$R *.dfm}

procedure TDiscadorRepFrm.QRLabel11Print(Sender: TObject; var Value: string);
begin
 if (DiscadorListFrm.QryChamadas['DISCAGEMMANUAL'] = 0) then
   Value := 'Automática'
 else
   Value := 'Manual';
end;

procedure TDiscadorRepFrm.QRLabel12Print(Sender: TObject; var Value: string);
begin
 if (DiscadorListFrm.QryChamadas['EFETUADA'] = 0) then
   Value := 'X'
 else
   Value := '';
end;

procedure TDiscadorRepFrm.QRLabel13Print(Sender: TObject; var Value: string);
begin
 if varisnull(DiscadorListFrm.qrychamadas['SETOR_USUARIO']) then
  begin
   qrlabel13.Font.Color := clRed;
   Value := '(Setor > Usuário Excluído)';
  end
 else
  begin
   qrlabel13.Font.Color := clWindowText;
   Value := discadorlistfrm.QryChamadas['SETOR_USUARIO'];
  end;
end;

procedure TDiscadorRepFrm.QRLabel14Print(Sender: TObject; var Value: string);
begin
 if (DiscadorListFrm.qrychamadas['DISCAGEMMANUAL'] = 0) and
   VARISNULL(DiscadorListFrm.qrychamadas['CLIENTE']) then
  begin
   qrlabel14.Font.Color := clRed;
   Value := '(Cliente Excluído)';
  end
 else
  begin
   qrlabel14.Font.Color := clwindowtext;
   if not varisnull(DiscadorListFrm.qrychamadas['CLIENTE']) then
     Value := DiscadorListFrm.qrychamadas['CLIENTE']
   else
     Value := '';
  end;
end;

procedure TDiscadorRepFrm.QRLabel15Print(Sender: TObject; var Value: string);
begin
 if (DiscadorListFrm.qrychamadas['DISCAGEMMANUAL'] = 0) and
   (DiscadorListFrm.qrychamadas['CODCONT'] <> 0) and
   VARISNULL(DiscadorListFrm.qrychamadas['CONTATO']) then
  begin
   qrlabel15.Font.Color := clRed;
   Value := '(Contato Excluído)';
  end
 else
  begin
   qrlabel15.Font.Color := clwindowtext;
   if not varisnull(DiscadorListFrm.qrychamadas['CONTATO']) then
     Value := DiscadorListFrm.qrychamadas['CONTATO']
   else
     Value := ''; 
  end;
end;

procedure TDiscadorRepFrm.QRBand7BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 qrband7.Height := qrband7.Height + qrmemo1.Lines.Count * qrmemo1.Height;
 qrmemo1.Height := qrmemo1.Lines.Count * qrmemo1.Height;
 if qrmemo1.Lines.Count = 1 then
   qrmemo1.Enabled := False;
 //se nenhuma informacao de filtragem de chamadas foi especificada
end;

procedure TDiscadorRepFrm.QuickRep1Preview(Sender: TObject);
begin
{ Application.CreateForm(TRepPreviewFrm, RepPreviewFrm);
 RepPreviewFrm.QrPreview1.qrPrinter := TqrPrinter(Sender);
 RepPreviewFrm.Show;}
end;

procedure TDiscadorRepFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
 var PrintBand: boolean);
begin
 Qrlabel1.Caption := principalfrm.logolabel.Caption;
end;

end.
