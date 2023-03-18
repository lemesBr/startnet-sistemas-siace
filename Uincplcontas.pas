unit Uincplcontas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, aDvGlowButton, ExtCtrls, Grids, XDBGrids, Mask,
   StdCtrls, Buttons,  FireDAC.Stan.Async, FireDAC.DApt,
  Menus,  AdvMenus, RxToolEdit, RxCurrEdit, AdvPanel;

type
  TFormLancPlcontas = class(TForm)
    FDvPanel1: TAdvPanel;
    Label9: TLabel;
    Label10: TLabel;
    BtnAddPro: TBitBtn;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    RxCalcEdit1: TRxCalcEdit;
    XDBGrid1: TXDBGrid;
    FlatPanel2: TAdvPanel;
    Label8: TLabel;
    Bevel3: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    RTOTAL: TRxCalcEdit;
    DataSource1: TDataSource;
    qrcontaspagar: TFDQuery;
    qrcontaspagarSEQ: TIntegerField;
    qrcontaspagarCODPLANO: TIntegerField;
    qrcontaspagarCODIGO_ID: TIntegerField;
    qrcontaspagarVALOR: TBCDField;
    qrcontaspagarconta: TStringField;
    Button1: TButton;
    Qrsoma: TFDQuery;
    Label1: TLabel;
    RxCalcEdit2: TRxCalcEdit;
    FDvPopupMenu1: TAdvPopupMenu;
    a1: TMenuItem;
    procedure BtnAddProClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bgravarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure a1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancPlcontas: TFormLancPlcontas;

implementation

uses contaspagar, ConsPlanoContas, ModulodeDados, Principal;

{$R *.dfm}

procedure TFormLancPlcontas.BtnAddProClick(Sender: TObject);
begin

     dm.ProxCod.Close;
     dm.ProxCod.SQL.Clear;
     dm.ProxCod.SQL.Add('select max(seq) as N_CODIGO FROM CONTAS_APAGAR_PLANO');
     DM.ProxCod.Open;

     qrcontaspagar.Insert;
     qrcontaspagar.fieldbyname('SEQ').asINTEGER        :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;
     qrcontaspagar.fieldbyname('CODIGO_ID').AsInteger  :=  FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codigo').AsInteger;
     qrcontaspagar.fieldbyname('CODPLANO').AsInteger   :=  StrToInt(Edit1.text) ;
     qrcontaspagar.fieldbyname('VALOR').AsFloat        :=  RxCalcEdit1.Value;
     qrcontaspagar.Post;

     qrcontaspagar.Refresh;

     Button1.Click;

     Edit1.SetFocus;
end;

procedure TFormLancPlcontas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TFormLancPlcontas.BitBtn1Click(Sender: TObject);
begin
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;

  Edit1.Text := DM.SDS_PLCONTASCODIGO.TEXT;
  Edit2.Text := DM.SDS_PlCONTASnome.TEXT;
  RxCalcEdit1.SetFocus;
end;

procedure TFormLancPlcontas.Edit1Exit(Sender: TObject);
begin
 TEdit(Sender).Color := clwindow;
  if Edit1.Text > '' then
  begin
    if not formprincipal.Locregistro(DM.SDS_PLCONTAS, Edit1.Text, 'codigo')
    then
      BitBtn1Click(FormConsPlanoContas)
    else
    begin
      RxCalcEdit1.setfocus;
      Edit2.Text := dm.sds_plcontas.fieldbyname('NOME').asstring;
    end;
   end  else
   Edit1.setfocus;
end;

procedure TFormLancPlcontas.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_delete then
begin
   if application.messagebox('DESEJA RELAMENTE APAGAR?', 'Atenção', mb_yesno + MB_ICONWARNING) = idyes   THEN
   BEGIN
   qrcontaspagar.Delete;
   Button1.Click;
   end;
end;
end;

procedure TFormLancPlcontas.bgravarClick(Sender: TObject);
begin
if RxCalcEdit2.Value > 0 then
begin
  ShowMessage('VALOR TOTAL NAO CONFERE COM O VALOR DA CONTA A PAGAR');
  Exit;
end else
BEGIN
CLOSE;
end;
end;

procedure TFormLancPlcontas.Button1Click(Sender: TObject);
begin
  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR) apagar from CONTAS_APAGAR_PLANO where CODIGO_ID = :ID ');
  Qrsoma.Params.ParamByName('ID').asstring := FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codigo').Text;
  Qrsoma.open;

  RTOTAL.Value := Qrsoma.FieldByName('apagar').asfloat;

  RxCalcEdit2.Value :=   RTOTAL.Value -  FRMCONTASPAGAR.qrcontaspagar.fieldbyname('valor').AsFloat;

end;

procedure TFormLancPlcontas.bcancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormLancPlcontas.FormShow(Sender: TObject);
begin
  qrcontaspagar.Close;
  qrcontaspagar.Params.ParamByName('ID').asstring := FRMCONTASPAGAR.qrcontaspagar.fieldbyname('codigo').Text;
  qrcontaspagar.open;

  Button1.Click;
end;

procedure TFormLancPlcontas.RxCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TFormLancPlcontas.a1Click(Sender: TObject);
begin
   if application.messagebox('DESEJA RELAMENTE APAGAR?', 'Atenção', mb_yesno + MB_ICONWARNING) = idyes   THEN
   BEGIN
   qrcontaspagar.Delete;
      Button1.Click;
   end;
end;

procedure TFormLancPlcontas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F10) then
      begin
      bgravar.Click;
      end;
end;

end.
