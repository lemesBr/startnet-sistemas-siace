unit URelConv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, Mask, AlignEdit;

type
  TFrmRelConv = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    cod_con: TAlignEdit;
    BtnConsCon: TSpeedButton;
    EdtNomeCon: TEdit;
    RDG: TRadioGroup;
    GroupBox2: TGroupBox;
    EdtDataIni: TMaskEdit;
    QConvDet: TIBQuery;
    DSQConvDet: TDataSource;
    QConvRes: TIBQuery;
    DSQConvRes: TDataSource;
    EdtDataFin: TMaskEdit;
    Label1: TLabel;
    QConsConv: TIBQuery;
    QConsConvNOME_CON: TIBStringField;
    QConsConvDIA_REFERENCIA_CON: TIntegerField;
    BtnVis: TBitBtn;
    BtnImp: TBitBtn;
    BtnSair: TBitBtn;
    CheckEmp: TCheckBox;
    QConvDetCODCTR: TIntegerField;
    QConvDetCODCLI: TIntegerField;
    QConvDetSEQCTR: TIBStringField;
    QConvDetDATACTR: TDateField;
    QConvDetVALORCTR: TIBBCDField;
    QConvDetNOMECLI: TIBStringField;
    QConvDetDOCCLI: TIBStringField;
    QConvResCODCLI: TIntegerField;
    QConvResNOMECLI: TIBStringField;
    QConvResDOCCLI: TIBStringField;
    QConvResTOTAL: TIBBCDField;
    procedure cod_conKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cod_conKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsConClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnvisClick(Sender: TObject);
    procedure EdtDataIniExit(Sender: TObject);
    procedure BtnsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cod_conExit(Sender: TObject);
    procedure cod_conEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConv: TFrmRelConv;

implementation
Uses Ubibli1, UConsConvenio, UQRelConvDet, UQRelConvRes, ModulodeDados,
  Principal;

{$R *.dfm}

procedure TFrmRelConv.cod_conKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsCon.Click;
end;

procedure TFrmRelConv.cod_conKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFrmRelConv.BtnConsConClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsConvenio, FrmConsConvenio);
   FrmConsConvenio.Tag:= 4;
   FrmConsConvenio.ShowModal;
end;

procedure TFrmRelConv.FormShow(Sender: TObject);
begin
   cod_con.Clear;
   EdtNomeCon.Clear;
   edtdataini.Clear;
   edtdatafin.Clear;
   rdg.ItemIndex:= 0;
   cod_con.SetFocus;
end;

procedure TFrmRelConv.BtnvisClick(Sender: TObject);
begin
   if cod_con.Text = '' then
      begin
         showmessage('Digite o Código do Convênio');
         cod_con.setfocus;
         exit;
      end;
   if strtodate(edtdatafin.Text) < strtodate(edtdataini.Text) then
      begin
         showmessage('A data final não pode ser menor que a data inicial');
         edtdataini.SetFocus;
         exit;
      end;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   if rdg.ItemIndex = 0 then //detalhado
      begin
         with QConvDet do
            begin
               close;
               Parambyname('codcon').AsInteger:= strtoint(cod_con.Text);
               if (not CheckEmp.Checked) then
                  Parambyname('codemp').AsInteger:= iEmp
               else
                  Parambyname('codemp').Value:= null;
               Parambyname('dataini').AsDate  := strtodate(EdtDataIni.Text);
               Parambyname('datafin').AsDate  := strtodate(EdtDataFin.Text);
               open;
               Application.CreateForm(TFrmQRelConvDetalhado, FrmQRelConvDetalhado);
               FrmQRelConvDetalhado.QRLNomeEmpresa.Caption:= formprincipal.suistatusbar1.Panels[0].Text;
               FrmQRelConvDetalhado.QRLConv.Caption       := EdtNomeCon.Text;
               FrmQRelConvDetalhado.QRLData.Caption       := EdtDataIni.text + ' a ' + EdtDataFin.Text;
               if sender = btnvis then
                  begin
                     FrmQRelConvDetalhado.QRCli.PreviewInitialState:= wsMaximized;
                     FrmQRelConvDetalhado.QRCli.Preview;
                  end
               else
                  begin
                     FrmQRelConvDetalhado.QRCli.PrinterSetup;
                     FrmQRelConvDetalhado.QRCli.Print;
                  end;
               FrmQRelConvDetalhado.QRCli.QRPrinter:= nil;
               dm.IBTransaction.Commit;
               QConvDet.Close;
            end;
      end
   else
      begin
         with QConvRes do
            begin
               close;
               Parambyname('codcon').AsInteger:= strtoint(cod_con.Text);
               if (not CheckEmp.Checked) then
                  Parambyname('codemp').AsInteger:= iEmp
               else
                  Parambyname('codemp').Value:= null;
               Parambyname('dataini').AsDate  := strtodate(EdtDataIni.Text);
               Parambyname('datafin').AsDate  := strtodate(EdtDataFin.Text);
               open;
               Application.CreateForm(TFrmQRelConvRes, FrmQRelConvRes);
               FrmQRelConvRes.QRLNomeEmpresa.Caption      := formprincipal.Suistatusbar1.Panels[0].Text;
               FrmQRelConvRes.QRLConv.Caption             := EdtNomeCon.Text;
               FrmQRelConvRes.QRLData.Caption             := EdtDataIni.text + ' a ' + EdtDataFin.Text;
               if sender = btnvis then
                  begin
                     FrmQRelConvRes.QRCli.PreviewInitialState:= wsMaximized;
                     FrmQRelConvRes.QRCli.Preview;
                  end
               else
                  begin
                     FrmQRelConvRes.QRCli.PrinterSetup;
                     FrmQRelConvRes.QRCli.Print;
                  end;
               FrmQRelConvRes.QRCli.QRPrinter:= nil;
               dm.IBTransaction.Commit;
               QConvRes.Close;
            end;
      end;
end;

procedure TFrmRelConv.EdtDataIniExit(Sender: TObject);
begin
   if btnsair.Focused then
      exit;
   with sender as TMaskEdit do
      begin
         try
           strtodate(Text);
         except
           showmessage('Data Inválida');
           SetFocus;
         end;
      end;
end;

procedure TFrmRelConv.BtnsairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRelConv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   QConvDet.Close;
   QConvRes.Close;
   Action:= caFree;
end;

procedure TFrmRelConv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFrmRelConv.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmRelConv.cod_conExit(Sender: TObject);
var vl_dia, vl_mes, vl_ano : word;
begin
   if btnsair.Focused then
      exit;
   if cod_con.Text = '' then
      begin
         showmessage('Digite o código do convênio');
         cod_con.SetFocus;
         exit;
      end;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with QConsConv do
          begin
             close;
             Parambyname('codcon').Value:= cod_con.Text;
             open;
             if recordcount > 0 then
                begin
                   EdtNomeCon.Text:= QConsConvNOME_CON.Value;
                   if not QConsConvDIA_REFERENCIA_CON.IsNull then
                      begin
                         decodedate(date, vl_ano, vl_mes, vl_dia);
                         if (vl_mes in [4, 6, 9, 11]) and (QConsConvDIA_REFERENCIA_CON.Value = 31) then
                            edtdatafin.Text:= datetostr(encodedate(vl_ano, vl_mes, 30))
                         else
                            if vl_mes = 2 then
                               begin
                                  if (AnoBiSexto(vl_ano)) and (QConsConvDIA_REFERENCIA_CON.Value in [30, 31]) then
                                     edtdatafin.Text:= datetostr(encodedate(vl_ano, vl_mes, 29))
                                  else
                                     if (not AnoBiSexto(vl_ano)) and (QConsConvDIA_REFERENCIA_CON.Value in [29,30,31]) then
                                        edtdatafin.Text:= datetostr(encodedate(vl_ano, vl_mes, 28))
                                     else
                                        EdtDataFin.Text:= datetostr(encodedate(vl_ano, vl_mes, QConsConvDIA_REFERENCIA_CON.Value));
                               end
                            else
                               edtdatafin.Text:= datetostr(encodedate(vl_ano, vl_mes, QConsConvDIA_REFERENCIA_CON.Value));
                         edtdataini.Text:= datetostr(strtodate(edtdatafin.Text) - 30);
                      end
                   else
                      begin
                         edtdataini.Clear;
                         edtdatafin.Clear;
                      end;
                   edtdataini.SetFocus;
                end
             else
                begin
                   EdtNomeCon.Clear;
                   edtdataini.Clear;
                   edtdatafin.Clear;
                   showmessage('Convênio não cadastrado');
                   cod_con.SetFocus;
                   cod_con.SelectAll;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o convênio');
       EdtNomeCon.Clear;
       edtdataini.Clear;
       edtdatafin.Clear;
       showmessage('Convênio não cadastrado');
       cod_con.SetFocus;
       cod_con.SelectAll;
     end;
   finally
     QConsConv.close;
   end;
end;

procedure TFrmRelConv.cod_conEnter(Sender: TObject);
begin
   cod_con.SelectAll;
end;

end.
