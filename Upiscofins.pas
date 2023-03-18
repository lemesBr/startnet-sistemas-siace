unit Upiscofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, SUIButton, ExtCtrls, RxToolEdit, sLabel;

type
  TFormPisCofins = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    suiButton1: TsuiButton;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    myLabel3d2: TsLabelFX;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPisCofins: TFormPisCofins;

implementation

uses ModulodeDadosConsultas5, ModulodeDados, URelPisCofins;

{$R *.dfm}

procedure TFormPisCofins.suiButton1Click(Sender: TObject);
begin
If DateEdit2.Date < DateEdit1.Date then
begin
ShowMessage('Data Inicial não pode ser maior que a Final');
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin

    DMC5.SQLD_REL_PIS_COFINS.Active:=False;
    DMC5.CDS_REL_PIS_COFINS.Active:=False;
    DMC5.SQLD_REL_PIS_COFINS.Params[0].AsDate:=DateEdit1.Date;
    DMC5.SQLD_REL_PIS_COFINS.Params[1].AsDate:=DateEdit2.Date;
    DMC5.SQLD_REL_PIS_COFINS.Params[2].AsInteger:=DM.SDS_EMPRESACODIGO.ASINTEGER;
    DMC5.SQLD_REL_PIS_COFINS.Active:=True;
    DMC5.CDS_REL_PIS_COFINS.Active:=True;
    if DMC5.CDS_REL_PIS_COFINS.EOF then
    Begin
    ShowMessage('Não Há Dados a emitir...');
    end
    else 
    begin
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormRelPisCofins := tFormRelPisCofins.create(Self);
     FormRelPisCofins.RLReport1.DefaultFilter.Destroy;
     FormRelPisCofins.RLReport1.Prepare;
     FormRelPisCofins.RLReport1.PreviewModal;
    end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormRelPisCofins := tFormRelPisCofins.create(Self);
     FormRelPisCofins.RLReport1.Prepare;
     FormRelPisCofins.RLReport1.PreviewModal;
      end;
     end;
  end;
end;

procedure TFormPisCofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
 FormPisCofins := nil;
end;

end.
