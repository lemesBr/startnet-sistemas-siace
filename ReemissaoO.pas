unit ReemissaoO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIButton, ExtCtrls,  
  DBCtrls, RXCtrls, Mask, SUIDlg;

type
  TFormReemissaoO = class(TForm)
    Panel1: TPanel;
    suiButton1: TsuiButton;
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBText2: TDBText;
    RxLabel4: TRxLabel;
    DBText1: TDBText;
    RxLabel5: TRxLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    RxLabel6: TRxLabel;
    DBText5: TDBText;
    RxLabel7: TRxLabel;
    DBText6: TDBText;
    RxLabel8: TRxLabel;
    DBText7: TDBText;
    MessageLocCli: TsuiMessageDialog;
    MessageCli: TsuiMessageDialog;
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
  FormReemissaoO: TFormReemissaoO;

implementation

uses ModulodeDadosConsultas, Z_RotinasGerais, ModulodeDadosRelatorios,
  Principal, ModulodeDados, RelOrcamentos;

{$R *.dfm}

procedure TFormReemissaoO.suiButton1Click(Sender: TObject);
var
Endercompo, Clio, ORCA: String;
      begin

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := edit1.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;

    Endercompo:= (DMc.Cds_OrcamentosENDERECO.Text + ' / ' + DMC.Cds_OrcamentosBAIRRO.Text
    + ' - ' + DMC.Cds_OrcamentosCIDADE.Text + ' - ' + DMC.Cds_OrcamentosFONE.Text);
    Clio:= (DMC.Cds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + DMC.Cds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento',False);
    DMR.RvRelatorios.Execute;
    end else

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    BEGIN
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := edit1.Text;;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;

    Endercompo:= (DMC.Cds_OrcamentosENDERECO.Text + ' / ' + DMC.Cds_OrcamentosBAIRRO.Text
    + ' - ' + DMC.Cds_OrcamentosCIDADE.Text + ' - ' + DMC.Cds_OrcamentosFONE.Text);
    Clio:= (DMC.Cds_OrcamentosCODIGO_CLIENTE.Text + ' - ' + DMC.Cds_OrcamentosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteoAPELIDO.Text + ')');
    DMR.RvRelatorios.SetParam('Endero',Endercompo);
    DMR.RvRelatorios.SetParam('Clienteo',Clio);
    DMR.RvRelatorios.SelectReport('Rp_Orcamento1',False);
    DMR.RvRelatorios.Execute;
    end;

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
    BEGIN
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := edit1.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.DefaultFilter.Destroy;
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.Print;
     END ELSE

    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
    begin
    DM.SDS_Empresa.Active := False;
    DM.SDS_CONFIGURACOES.Active:=False;
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := edit1.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
    DM.SDS_Empresa.Active := true;
    DM.SDS_CONFIGURACOES.Active:=true;
    FormRelOrcamentos := TFormRelOrcamentos.Create(self);
    FormRelOrcamentos.RLReport1.Prepare;
    FormRelOrcamentos.RLReport1.Print;
    end;
    end;

procedure TFormReemissaoO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormReemissaoO:=nil;
end;

procedure TFormReemissaoO.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormReemissaoO.Edit1KeyPress(Sender: TObject;
  var Key: Char);
  var
    ORCA : string;
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;

   ORCA:= Edit1.Text;

If  Edit1.Text= '' then
    Begin
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.CDS_Orcamentos.Active:=False;
    Messagecli.ShowModal;
    Edit1.SetFocus;
    end else
If  Edit1.Text <> '' then
    Begin
    DMC.SDS_Clienteo.Active:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.SQLD_Orcamentos.Active:=False;
    DMC.CDS_Orcamentos.Active:=False;
    DMC.SQLD_Orcamentos.Params[0].AsString := Edit1.Text;
    DMC.SQLD_Orcamentos.Active:=True;
    DMC.CDS_Orcamentos.Active:=True;
    DMC.SDS_Orcamento_Itens.Active:= True;
    DMC.SDS_Clienteo.Active:= True;
If DMC.CDS_Orcamentos.Locate('CODIGO',Edit1.Text,[])= True then
begin
      SuiButton1.Enabled:= True;
      SuiButton1.SetFocus;
end
else
begin
    Edit1.color:= clWhite;
    SuiButton1.Enabled:= False;
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.CDS_Orcamentos.Active:=False;
    MessageLocCli.ShowModal;
    Edit1.color:= clYellow;
    Edit1.Clear;
    Edit1.SetFocus;
end;
end;
end;
end;

procedure TFormReemissaoO.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormReemissaoO.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormReemissaoO.FormShow(Sender: TObject);
begin
    DMC.SDS_Orcamento_Itens.Active:= False;
    DMC.CDS_Orcamentos.Active:=False;
    SuiButton1.Enabled:= False;
end;

procedure TFormReemissaoO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
