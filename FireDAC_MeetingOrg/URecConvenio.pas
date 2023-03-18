unit URecConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, AlignEdit, Buttons, ComCtrls, ExtCtrls, Grids,
  DBGrids, DB, IBCustomDataSet, IBQuery, IBDatabase,
  IBSQL, IBStoredProc, RxToolEdit, RxCurrEdit ;

type
  TFrmRecConvenio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    BtnConsCon: TSpeedButton;
    cod_con: TAlignEdit;
    EdtNomeCon: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EdtDataIni: TMaskEdit;
    EdtDataFin: TMaskEdit;
    BtnSair: TBitBtn;
    BtnOK: TBitBtn;
    Label2: TLabel;
    EdtTotal: TCurrencyEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    EdtData: TDateTimePicker;
    Label7: TLabel;
    ComboTipo: TComboBox;
    BtnRec: TButton;
    QConsCTR: TIBQuery;
    DSQConsCTR: TDataSource;
    QConsCTRCODCLI: TIntegerField;
    QConsCTRNOMECLI: TIBStringField;
    QConsCTRDOCCLI: TIBStringField;
    QConsCTRTOTAL: TIBBCDField;
    IBTRBaixa: TIBTransaction;
    IBSPBaixa: TIBStoredProc;
    CheckEmp: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BtnConsConClick(Sender: TObject);
    procedure cod_conExit(Sender: TObject);
    procedure cod_conKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cod_conKeyPress(Sender: TObject; var Key: Char);
    procedure EdtDataIniExit(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure cod_conEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecConvenio: TFrmRecConvenio;

implementation
Uses Ubibli1, UConsConvenio, ModulodeDados;

{$R *.dfm}

procedure TFrmRecConvenio.FormShow(Sender: TObject);
begin
   cod_con.Clear;
   EdtNomeCon.Clear;
   edtdataini.Text:= datetostr(date);
   edtdatafin.Text:= datetostr(date);
   edttotal.Clear;
   edtdata.Date:= date;
   ComboTipo.ItemIndex:= 0;
   CheckEmp.Checked:= true;
   cod_con.SetFocus;
end;

procedure TFrmRecConvenio.BtnConsConClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsConvenio, FrmConsConvenio);
   FrmConsConvenio.Tag:= 9;
   FrmConsConvenio.ShowModal;
end;

procedure TFrmRecConvenio.cod_conExit(Sender: TObject);
begin
   if btnsair.Focused then
      exit;
   EdtNomeCon.Text := consulta('convenio', cod_con, 'cod_con', 'nome_con', dm.IBTransaction, dm.qConsulta);
   if EdtNomeCon.Text = '' then
      begin
         showmessage('Convênio não Cadastrado');
         cod_con.SetFocus;
      end;
end;

procedure TFrmRecConvenio.cod_conKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsCon.Click;
end;

procedure TFrmRecConvenio.cod_conKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFrmRecConvenio.EdtDataIniExit(Sender: TObject);
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

procedure TFrmRecConvenio.BtnOKClick(Sender: TObject);
var vl_total : real;
begin
   vl_total:= 0;
   if cod_con.Text = '' then
      begin
         showmessage('Digite o Código do Convênio');
         cod_con.SetFocus;
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
   with QConsCTR do
      begin
         close;
         Parambyname('codcon').Value   := cod_con.Text;
         if (not CheckEmp.Checked) then
            Parambyname('codemp').AsInteger:= iEmp
         else
            Parambyname('codemp').Value := null;
         Parambyname('dataini').AsDate  := strtodate(EdtDataIni.Text);
         Parambyname('datafin').AsDate  := strtodate(EdtDataFin.Text);
         open;
         DisableControls;
         First;
         while not eof do
            begin
               vl_total:= vl_total + QConsCTRTOTAL.Value;
               next;
            end;
         First;
         EnableControls;
      end;
   EdtTotal.Text:= floattostr(vl_total);
end;

procedure TFrmRecConvenio.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRecConvenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   QConsCTR.Close;
   Action:= caFree;
end;

procedure TFrmRecConvenio.BtnRecClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma o Recebimento?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
      begin
         if IBTRBaixa.Active then
            IBTRBaixa.Commit;
         IBTRBaixa.StartTransaction;
         try
           try
             with IBSPBaixa do
                begin
                   close;
                   Parambyname('dataini').Value   := edtdataini.Text;
                   Parambyname('datafin').Value   := edtdatafin.Text;
                   Parambyname('codcon').Value    := cod_con.Text;
                   Parambyname('codcai').Value    := iCaixa;
                   case ComboTipo.ItemIndex of
                      0: Parambyname('tiporec').Value  := 'D';  //dinheiro
                      1: Parambyname('tiporec').Value  := 'C';  //cheque
                      2: Parambyname('tiporec').value  := 'B';  //depósito
                   end;
                   Parambyname('dtpagto').Value   := EdtData.Date;
                   ExecProc;
                end;
             IBTRBaixa.Commit;
           except
             IBTRBaixa.Rollback;
             showmessage('Erro ao Baixar as Parcelas');
           end;
         finally
           IBSPBaixa.Close;
           BtnOK.Click;
         end;
      end;
end;

procedure TFrmRecConvenio.cod_conEnter(Sender: TObject);
begin
   cod_con.SelectAll;
end;

end.
