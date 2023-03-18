unit RelatorioCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, RXCtrls, SUIButton, StdCtrls, Mask, ExtCtrls,
  SUIEdit, SUIDlg, RxToolEdit, RxCurrEdit, AdvReflectionImage;

type
  TFormRelatorioCompras = class(TForm)
    Label1: TLabel;
    Label13: TLabel;
    DateEdit1: TDateEdit;
    Label14: TLabel;
    DateEdit2: TDateEdit;
    suiButton10: TsuiButton;
    Label3: TLabel;
    Label6: TLabel;
    Edit1: TDBLookupComboBox;
    suiButton3: TsuiButton;
    Label2: TLabel;
    NEdit: TCurrencyEdit;
    Label4: TLabel;
    RxLabel2: TRxLabel;
    RxLabel1: TRxLabel;
    suiButton1: TsuiButton;
    Msge: TsuiMessageDialog;
    Msgi: TsuiMessageDialog;
    img: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure NEditEnter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure NEditExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton10Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCompras: TFormRelatorioCompras;

implementation

uses Z_RotinasGerais, ModulodeDados, ModulodeDadosConsultas3,
  ModulodeDadosRelatorios, ModulodeDadosConsultas, Principal;

{$R *.dfm}

procedure TFormRelatorioCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelatorioCompras:=nil;
end;

procedure TFormRelatorioCompras.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioCompras.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCompras.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCompras.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCompras.NEditEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormRelatorioCompras.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCompras.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCompras.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCompras.NEditExit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormRelatorioCompras.FormShow(Sender: TObject);
begin
DM.SDS_Fornecedores.Active:= False;
DM.SDS_Fornecedores.Active:= True;
end;

procedure TFormRelatorioCompras.suiButton10Click(Sender: TObject);
var
DI, DF: String;
begin
//Try
    DMC3.SQLD_ComprasPeriodo.Active:=False;
    DMC3.CDS_ComprasPeriodo.Active:=False;
    DMC3.SQLD_ComprasPeriodo.Params[0].AsDate:=DateEdit1.Date;
    DMC3.SQLD_ComprasPeriodo.Params[1].AsDate:=DateEdit2.Date;
    DMC3.SQLD_ComprasPeriodo.Active:=True;
    DMC3.CDS_ComprasPeriodo.Active:=True;
    If  DMC3.CDS_ComprasPeriodo.EOF then
Begin
      Msgi.Text:= 'Não Há Entrada de Mercadorias No Período Informado!';
      Msgi.ShowModal;
    end
  else
  begin
    DI:= DateEdit1.Text;
    DF:= DateEdit2.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_EntradasPeriodo',False);
    DMR.RvRelatorios.Execute;
  end;
{      Except
     Msge.ShowModal;
   end;  }
end;

procedure TFormRelatorioCompras.suiButton3Click(Sender: TObject);
var
Forn: String;
begin
Try
    DMC3.SQLD_ComprasFornecedor.Active:=False;
    DMC3.CDS_ComprasFornecedor.Active:=False;
    DMC3.SQLD_ComprasFornecedor.Params[0].AsString:=Edit1.Text;
    DMC3.SQLD_ComprasFornecedor.Active:=True;
    DMC3.CDS_ComprasFornecedor.Active:=True;
    If  DMC3.CDS_ComprasFornecedor.EOF then
Begin
      Msgi.Text:= 'Não Há Entrada de Mercadorias Do Fornecedor Informado!';
      Msgi.ShowModal;
    end
  else
  begin
    Forn:= Edit1.Text;
    DMR.RvRelatorios.SetParam('For',Forn);
    DMR.RvRelatorios.SelectReport('Rp_EntradasFornecedor',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end;
end;

procedure TFormRelatorioCompras.suiButton1Click(Sender: TObject);
begin
Try
    DMC.SQLD_Entradas.Active:=False;
    DMC.CDS_Entradas.Active:=False;
    DMC.SQLD_Entradas.Params[0].AsString:=NEdit.Text;
    DMC.SQLD_Entradas.Active:=True;
    DMC.CDS_Entradas.Active:=True;
    DMC.SDS_EntradasItens.Active:=True;

    If  DMC.CDS_Entradas.EOF then
Begin
      Msgi.Text:= 'Não Há Entrada de Mercadorias Com o Número Informado!';
      Msgi.ShowModal;
    end
  else
  begin
    DMR.RvRelatorios.SelectReport('Rp_EntradasDetalhes',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end;
end;

procedure TFormRelatorioCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
