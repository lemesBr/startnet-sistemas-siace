unit ReemissaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIButton, ExtCtrls, SUIDlg, DBCtrls, RXCtrls,
  Buttons, sBitBtn;

type
  TFormReemissaoDuplicata = class(TForm)
    Panel1: TPanel;
    suiButton1: TsBitBtn;
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBText2: TDBText;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    RxLabel8: TRxLabel;
    DBText7: TDBText;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    DBText1: TDBText;
    DBText5: TDBText;
    Edit1: TEdit;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReemissaoDuplicata: TFormReemissaoDuplicata;

implementation

uses ModulodeDadosConsultas5, Z_RotinasGerais, ModulodeDadosRelatorios,
  Principal;

{$R *.dfm}

procedure TFormReemissaoDuplicata.suiButton1Click(Sender: TObject);
var
Endercomp, Cli: String;
begin
    DMC5.SDS_Pedido_Itens.Active:= False;
    DMC5.SDS_Cliente.Active:= False;
    DMC5.SQLD_Pedidos.Active:=False;
    DMC5.CDS_Pedidos.Active:=False;
    DMC5.SQLD_Pedidos.Params[0].AsString:=Edit1.Text;
    DMC5.SQLD_Pedidos.Active:=True;
    DMC5.CDS_Pedidos.Active:=True;
    DMC5.SDS_Pedido_Itens.Active:= True;
    DMC5.SDS_Cliente.Active:= True;
    Endercomp:= (DMC5.SDS_ClienteENDERECO.Text + ' / ' + DMC5.SDS_ClienteBAIRRO.Text
    + ' - ' + DMC5.SDS_ClienteCIDADE.Text + ' - ' + DMC5.SDS_ClienteUF.Text);
    Cli:= (DMC5.SDS_ClienteCODIGO.Text + ' - ' + DMC5.SDS_ClienteNOME_RS.Text + ' - ('+ DMC5.SDS_ClienteAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Ender',Endercomp);
    DMR.RvRelatorios.SetParam('Cliente',Cli);
    DMR.RvRelatorios.SelectReport('Rp_DuplicataPedidos',False);
    DMR.RvRelatorios.Execute;
end;

procedure TFormReemissaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormReemissaoDuplicata:=nil;
end;

procedure TFormReemissaoDuplicata.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormReemissaoDuplicata.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;

If  Edit1.Text= '' then
    Begin
    DMC5.SDS_Pedido_Itens.Active:= False;
    DMC5.SQLD_Pedidos.Active:=False;
    DMC5.CDS_Pedidos.Active:=False;
    ShowMessage('Digite algo a pesquisar');
    Edit1.SetFocus;
    end else
If  Edit1.Text <> '' then
    Begin
    DMC5.SDS_Pedido_Itens.Active:= False;
    DMC5.SQLD_Pedidos.Active:=False;
    DMC5.CDS_Pedidos.Active:=False;
    DMC5.SQLD_Pedidos.Params[0].AsString:=Edit1.Text;
    DMC5.SQLD_Pedidos.Active:=True;
    DMC5.CDS_Pedidos.Active:=True;
    DMC5.SDS_Pedido_Itens.Active:= True;
If DMC5.CDS_Pedidos.Locate('CODIGO',Edit1.Text,[])= True then
begin
      SuiButton1.Enabled:= True;
      SuiButton1.SetFocus;
end
else
begin
    Edit1.color:= clWhite;
    SuiButton1.Enabled:= False;
    DMC5.SDS_Pedido_Itens.Active:= False;
    DMC5.SQLD_Pedidos.Active:=False;
    DMC5.CDS_Pedidos.Active:=False;
    ShowMessage('CLIENTE NÃO LOCALIZADO');
    Edit1.color:= clYellow;
    Edit1.Clear;
    Edit1.SetFocus;
end;
end;
end;
end;

procedure TFormReemissaoDuplicata.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormReemissaoDuplicata.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormReemissaoDuplicata.FormShow(Sender: TObject);
begin
    DMC5.SDS_Pedido_Itens.Active:= False;
    DMC5.SQLD_Pedidos.Active:=False;
    DMC5.CDS_Pedidos.Active:=False;
    SuiButton1.Enabled:= False;
end;

procedure TFormReemissaoDuplicata.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
