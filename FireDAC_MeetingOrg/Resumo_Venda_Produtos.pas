unit Resumo_Venda_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIButton, StdCtrls, Mask, RzEdit, RzSpnEdt, RXCtrls;

type
  TFormResumovendas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    RxLabel8: TRxLabel;
    Panel8: TPanel;
    suiButton2: TsuiButton;
    suiButton4: TsuiButton;
    suiButton5: TsuiButton;
    Bevel1: TBevel;
    Image1: TImage;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    grp1: TGroupBox;
    grp2: TGroupBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RzEdit5: TRzEdit;
    RzEdit4: TRzEdit;
    RxLabel3: TRxLabel;
    RzEdit3: TRzEdit;
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzEdit3Enter(Sender: TObject);
    procedure RzEdit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResumovendas: TFormResumovendas;

implementation

uses ModulodeDadosConsultas5, Rel_resumo_Produtos, UResumoVdia;

{$R *.dfm}

procedure TFormResumovendas.FormShow(Sender: TObject);
var
 dtaux : TDateTime;
begin
   dtAux := date;

RzEdit1.Text := FormatDateTime('mm',dtAux);
RzEdit2.Text := FormatDateTime('yyyy',dtAux);
end;

procedure TFormResumovendas.suiButton2Click(Sender: TObject);
var
  mes, ano, diaI, mesi, anoi :string;
  begin

//cliente
mes:=RzEdit1.text;
ano:=RzEdit2.text;

diaI :=RzEdit3.text;
mesi :=RzEdit4.text;
anoi :=RzEdit5.text;

if mes > '' then
BEGIN
DMC5.Cds_RelRes_prod.Active :=FALSE;
              with DMC5.Qry_relRes_prod do
               begin
                  close;
                  Parambyname('MESI').AsString  := mes;
                  Parambyname('ANOI').AsString  := ANO;
                  Open;
               end;
DMC5.Cds_RelRes_prod.Active :=true;


if not DMC5.Cds_RelRes_prod.Eof then
begin
Form_Res_produtos := TForm_Res_produtos.Create(self);
Form_Res_produtos.RLReport1.Prepare;
Form_Res_produtos.RLReport1.PreviewModal;
end else
MessageDlg('Não ha dados a serem impressos', mtInformation,[mbOk], 0);
end else

if diaI > '' then
BEGIN
 DMC5.Cds_RelRes_prodd.Active :=FALSE;
              with DMC5.Qry_relRes_prodD do
               begin

                  close;
                  Params.Items[0].AsString := DIAi;
                  Params.Items[1].AsString := mesi;
                  Params.Items[2].AsString := ANOi;
                  {Parambyname('DIAI').AsString  := DIAI;
                  Parambyname('MESI').AsString  := mesI;
                  Parambyname('ANOI').AsString  := ANOI; }
                  Open;
               end;
DMC5.Cds_RelRes_prodD.Active :=true;

if not DMC5.Cds_RelRes_prodD.Eof then
begin
FormResumoVdia := TFormResumoVdia.Create(self);
FormResumoVdia.RLReport1.Prepare;
FormResumoVdia.RLReport1.PreviewModal;
end else
MessageDlg('Não ha dados a serem impressos', mtInformation,[mbOk], 0);
end;
end;

procedure TFormResumovendas.suiButton4Click(Sender: TObject);
begin
RzEdit1.Clear;
RzEdit2.Clear;
RzEdit3.Clear;
RzEdit4.Clear;
RzEdit5.Clear;
end;

procedure TFormResumovendas.suiButton5Click(Sender: TObject);
begin
Close;
end;

procedure TFormResumovendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormResumovendas := nil;
end;

procedure TFormResumovendas.RzEdit3Enter(Sender: TObject);
begin
RzEdit1.Clear;
RzEdit2.Clear;
end;

procedure TFormResumovendas.RzEdit1Enter(Sender: TObject);
begin
RzEdit3.Clear;
RzEdit4.Clear;
RzEdit5.Clear;

end;

end.
