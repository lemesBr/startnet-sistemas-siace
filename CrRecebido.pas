unit CrRecebido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, XDBGrids, ExtCtrls, StdCtrls, Mask,
  SUIButton, FMTBcd, DB, SqlExpr, sPanel, Buttons, sBitBtn,
  sMaskEdit, sCustomComboEdit, sTooledit, sLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCrRecebido = class(TForm)
    Panel1: TPanel;
    Panel2: TsPanel;
    Panel3: TPanel;
    XDBGrid1: TXDBGrid;
    myLabel3d1: TsLabelFX;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    Label1: TsLabel;
    Label2: TsLabel;
    suiButton2: TsBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TsLabel;
    BtnConsPro: TSpeedButton;
    Spc_crediario_Recebido: TFDStoredProc;
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsProClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCrRecebido: TFormCrRecebido;
    dtmovi, dtmovf, codcli :string;

implementation

uses Principal, ModulodeDadosBaixas, CRCrediario, ConsClientes,
  ModulodeDados;

{$R *.dfm}

procedure TFormCrRecebido.suiButton2Click(Sender: TObject);
begin
    codcli := Edit1.Text;

    dtmovi:=datetostr(DATE);
    dtmovf:=datetostr(DATE);

    dtmovi:=dateedit1.TexT;
    dtmovf:=dateedit2.TexT;

    dmb.cds_Crediario_recebido.Active := FALSE;
    dmb.QRY_crediario_recebido.close;
    dmb.QRY_crediario_recebido.SQL.Clear;
    dmb.QRY_crediario_recebido.SQL.add('select * from CREDIARIO_RECEBIDO where CODIGO >0'+'');
    if dtmovi > ' / /   ' then
    dmb.QRY_crediario_recebido.SQL.add('and DATA_BAIXA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_BAIXA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
    if codcli > '' then
    dmb.QRY_crediario_recebido.SQL.add('and cod_cliente ='+QuotedStr(codcli)+'');
    dmb.QRY_crediario_recebido.SQL.add('ORDER BY DATA_BAIXA ASC');
    dmb.QRY_crediario_recebido.Open;
    dmb.cds_Crediario_recebido.Active :=TRUE;
   // dmb.cds_Crediario_recebido.Filtered := false;
    Label3.Caption := 'N° Títulos Recebidos no Período: ' + IntToStr(dmb.cds_Crediario_recebido.RecordCount);
     end;


procedure TFormCrRecebido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= CAFREE;
FormCrRecebido := nil;
end;

procedure TFormCrRecebido.FormShow(Sender: TObject);
begin
DateEdit1.Date := Date;
DateEdit2.Date := Date;
edit1.Text := formcrCrediario.cliente.text;
end;

procedure TFormCrRecebido.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    crediario : string;
begin
    crediario := DMB.Cds_crediario_RecebidoCOD_CREDIAIRIO.Text;

    dtmovi:=datetostr(DATE);
    dtmovi:= DMB.Cds_crediario_RecebidoDATA_BAIXA.Text;


if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin

    if (Key = VK_DELETE) then
    begin
    if Application.MESSAGEBOX('Confirma Exclusão da parcela recebida?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
    Spc_crediario_Recebido.Params[0].AsInteger := DMB.Cds_crediario_RecebidoCOD_CREDIAIRIO.AsInteger;
    Spc_crediario_Recebido.Params[1].Value     := 0;
    Spc_crediario_Recebido.Params[2].Value     := 0;
    Spc_crediario_Recebido.Params[3].AsFMTBCD    := DMB.Cds_crediario_RecebidoVALOR_PAGO.AsBCD;
    Spc_crediario_Recebido.Params[4].AsFMTBCD    := DMB.Cds_crediario_RecebidoJUROS_POSTERGADOS.AsBCD;
    Spc_crediario_Recebido.Execproc;


            // EXLCUI MOV. DO CAIXA
            dmb.CDS_MOV_DIARIO.Active := False;
            dmb.QRY_MOV_DIARIO.CLOSE;
            dmb.QRY_MOV_DIARIO.SQL.Clear;
            DMB.QRY_MOV_DIARIO.SQL.add('select * from MOVIMENTO_DIARIO where cod_crediario ='+(crediario)+' and DATA ='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi))));
            dmb.QRY_MOV_DIARIO.Open;
            DMB.CDS_MOV_DIARIO.Active := true;
            begin
            with DMB.CDS_MOV_DIARIO do
            while DMB.CDS_MOV_DIARIO.RecordCount > 0 do
            DMB.CDS_MOV_DIARIO.Delete;
            DMB.CDS_MOV_DIARIO.ApplyUpdates(0);
            end;


    dmb.Cds_crediario_Recebido.Delete;
    dmb.Cds_crediario_Recebido.ApplyUpdates(0);
  end;
end;
end;
end;

procedure TFormCrRecebido.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCrRecebido.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
end;

procedure TFormCrRecebido.BtnConsProClick(Sender: TObject);
begin
 FormConsClientes:=TFormConsClientes.Create(self);
   FormConsClientes.ShowModal;
    Edit1.Text := DM.SDS_ClientesCODIGO.text;
end;

end.
