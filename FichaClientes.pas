unit FichaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, aDvGlowButton, StdCtrls, sLabel;

type
  TFormFichaClie = class(TForm)
    myLabel3d2: TsLabelFX;
    BtnConsultar: TAdvGlowButton;
    FDvGlowButton1: TAdvGlowButton;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFichaClie: TFormFichaClie;

implementation

uses ModulodeDadosBaixas, ModulodeDadosRelatorios, CRCrediario;

{$R *.dfm}

procedure TFormFichaClie.BtnConsultarClick(Sender: TObject);
begin
  dmb.SDS_Crediario_Baixa.Filtered := False;
  DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente',False);
  DMR.RvRelatorios.Execute;
end;

procedure TFormFichaClie.FDvGlowButton1Click(Sender: TObject);
var
  CHEK:string;
begin
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
   DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'F';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);

 DMB.SDS_Crediario_Baixa.next;
end;
dmb.sds_crediario_baixa.First;
while not DMB.SDS_Crediario_Baixa.eof do
begin
  if FormCRCrediario.DBGrid1.SelectedRows.CurrentRowSelected = True then
  begin
  DMB.SDS_Crediario_Baixa.Edit;
  DMB.SDS_Crediario_BaixaCHEK_BOX.Text := 'T';
  DMB.SDS_Crediario_Baixa.post;
  DMB.SDS_Crediario_Baixa.ApplyUpdates(0);
  end;
 DMB.SDS_Crediario_Baixa.next;
end;
  CHEK := 'T';
  dmb.SDS_Crediario_Baixa.Filtered := False;
  DMB.SDS_Crediario_Baixa.Filter := 'CHEK_BOX ='+QuotedStr(CHEK);
  dmb.SDS_Crediario_Baixa.Filtered := True;

  IF dmb.SDS_Crediario_Baixa.RecordCount  > 0 then
  BEGIN
  DMR.RvRelatorios.SelectReport('Rp_Conta_Cliente',False);
  DMR.RvRelatorios.Execute;
  end else
  ShowMessage('NENHUM TITULO SELECIONADO PARA EMITIR....');

end;

procedure TFormFichaClie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dmb.SDS_Crediario_Baixa.Filtered := False;
Action := caFree;
FormFichaClie :=nil;
end;

end.
