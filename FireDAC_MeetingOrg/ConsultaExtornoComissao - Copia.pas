unit ConsultaExtornoComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, SUIDBCtrls, RXCtrls, Grids, DBGrids, ToolEdit,
  SUIButton, StdCtrls, Mask, ExtCtrls, SUIDlg;

type
  TFormConsultaExtornoComissao = class(TForm)
    Panel5: TPanel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    suiButton8: TsuiButton;
    Edit1: TComboEdit;
    suiDBGrid5: TsuiDBGrid;
    Panel19: TPanel;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel25: TRxLabel;
    suiDBEdit21: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    suiDBEdit26: TsuiDBEdit;
    suiDBEdit27: TsuiDBEdit;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    Panel1: TPanel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    suiButton2: TsuiButton;
    suiDBNavigator1: TsuiDBNavigator;
    Bevel1: TBevel;
    MSG_ERRO: TsuiMessageDialog;
    MSG_NR: TsuiMessageDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton8Click(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure DateEdit5Enter(Sender: TObject);
    procedure DateEdit6Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit5Exit(Sender: TObject);
    procedure DateEdit6Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaExtornoComissao: TFormConsultaExtornoComissao;

implementation

uses ModulodeDadosConsultas3, ConsUsuarios, ModulodeDados, Z_RotinasGerais,
  Principal;

{$R *.dfm}

procedure TFormConsultaExtornoComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaExtornoComissao:=nil;
end;

procedure TFormConsultaExtornoComissao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then Close;
end;

procedure TFormConsultaExtornoComissao.suiButton8Click(Sender: TObject);
var
X: Real;
begin
Try
    DMC3.SQLD_ExtComissao.Active:=False;
    DMC3.CDS_ExtComissao.Active:=False;
    DMC3.SQLD_ExtComissao.Params[0].AsDate:=DateEdit5.Date;
    DMC3.SQLD_ExtComissao.Params[1].AsDate:=DateEdit6.Date;
    DMC3.SQLD_ExtComissao.Params[2].AsString:=Edit1.Text;
    DMC3.SQLD_ExtComissao.Active:=True;
    DMC3.CDS_ExtComissao.Active:=True;
    X:= X + DMC3.CDS_ExtComissao.FieldByname('VALOR').AsFloat;
    DMC3.CDS_ExtComissao.Next;
    RXLabel9.Caption:= FormatFloat('R$: ##,##0.00',X);
    While not DMC3.CDS_ExtComissao.Eof do
    begin
    X:= X + DMC3.CDS_ExtComissao.FieldByname('VALOR').AsFloat;
    DMC3.CDS_ExtComissao.Next;
    RXLabel9.Caption:= FormatFloat('R$: ##,##0.00',X);
    end;
    DMC3.CDS_ExtComissao.First;

    If  DMC3.CDS_ExtComissao.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
   end;

procedure TFormConsultaExtornoComissao.Edit1ButtonClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      Edit1.Text:= DM.SDS_UsuariosUSUARIO.Text;
      suiButton8.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormConsultaExtornoComissao.DateEdit5Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaExtornoComissao.DateEdit6Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaExtornoComissao.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsultaExtornoComissao.DateEdit5Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaExtornoComissao.DateEdit6Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaExtornoComissao.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsultaExtornoComissao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
