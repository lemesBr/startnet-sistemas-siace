unit ecfFrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, SUIImagePanel, ExtCtrls,ACBrECF,ACBrBase, ACBrDevice, ACBrECFClass,
  StdCtrls, Buttons, AdvGlowButton;

type
  TFormCaixaEcf = class(TForm)
    suiImagePanel1: TPanel;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    suiButton4: TAdvGlowButton;
    suiButton5: TAdvGlowButton;
    suiButton6: TAdvGlowButton;
    suiButton7: TAdvGlowButton;
    suiButton8: TAdvGlowButton;
    suiButton9: TAdvGlowButton;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
const
  // ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Redução Z', 'Requer Leitura X', 'Nao Fiscal' );
     _C = 'tYk*5W@' ;


var
  FormCaixaEcf: TFormCaixaEcf;

implementation

uses Principal, BEMA_LeituraX, BEMA_ReducaoZ, LancamentosCaixa,
  LancamentosCaixaSaida, Z_DeclaracoesBemaFi32, ModulodeDados, ECFTeste1, CaixaEspecifico, RegPedido,
  caixa;

{$R *.dfm}

procedure TFormCaixaEcf.suiButton1Click(Sender: TObject);
begin
try
if Form_LeituraX=nil   then
    begin
     Form_LeituraX:=TForm_LeituraX.Create(self);
      Form_LeituraX.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormCaixaEcf.suiButton2Click(Sender: TObject);
Var Resp : TModalResult ;
begin
Try
if Form_ReducaoZ=nil   then
    begin
     Form_ReducaoZ:=TForm_ReducaoZ.Create(self);
      Form_ReducaoZ.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormCaixaEcf.suiButton5Click(Sender: TObject);
begin
Try
if frmcaixa=nil   then
    begin
     frmcaixa:=Tfrmcaixa.Create(self);
      frmcaixa.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormCaixaEcf.suiButton6Click(Sender: TObject);
begin
Try
if frmcaixa=nil   then
    begin
     frmcaixa:=Tfrmcaixa.Create(self);
      frmcaixa.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário!!');
end;
end;

procedure TFormCaixaEcf.suiButton8Click(Sender: TObject);
begin
if dm.sds_configuracoesmodelo_ecf.Text = '1' then
begin
  if  FormCupomFiscal.ClientDataSet1.Eof then
  begin
  iRetorno := Bematech_FI_CancelaCupom();
  FormPrincipal.Analisa_iRetorno();
  //MsgInfiscal.Text:=  'Cupom Fiscal Cancelado';
  // MsgInfiscal.ShowModal;
  FormPrincipal.Retorno_Impressora();
  end else
 if not FormCupomFiscal.ClientDataSet1.Eof then
 begin
   showMessage('Venda não pode ser cancelada por esta rotina');
 end;

end else

if dm.sds_configuracoesmodelo_ecf.text = '2' then
begin
 if FormCupomFiscal.ACBrECF1.Estado = estbloqueada then
    begin
     ShowMessage('Erro na Redução Z! '+#10+#10+'Estado: '+ Estados[ formECF.ACBrECF1.Estado ]);
      //formECF.mResp.Lines.Add( 'Reduçao Z');
     // formECF.AtualizaMemos ;
     //Close;
    end else

 if FormCupomFiscal.ACBrECF1.Estado = estVenda then
 begin
  showMessage('Venda não pode ser cancelada por esta rotina');
 end else
   begin
 FormCupomFiscal.ACBrECF1.CancelaCupom ;
 MessageDlg('Cupon Fiscal Cancelado',mtInformation,[mbOK], 0);
end;
end;
end;

procedure TFormCaixaEcf.suiButton4Click(Sender: TObject);
begin
if dm.sds_configuracoesmodelo_ecf.Text = '1' then
begin                                 
  // Função para Abrir a gaveta de dinheiro
  iRetorno := Bematech_FI_AcionaGaveta();
  // Procedure que analisa o retorno da função
  FormPrincipal.Analisa_iRetorno();
  // Procedure que analisa o retorno da Impressora
  FormPrincipal.Retorno_Impressora();
end else
if dm.sds_configuracoesmodelo_ecf.Text = '2' then
begin
// formecf := tformECF.Create(self);
// formECF.Ativcar1.Click;
 FormCupomFiscal.ACBrECF1.AbreGaveta ;
end;
end;

procedure TFormCaixaEcf.suiButton7Click(Sender: TObject);
begin
if dm.sds_configuracoesmodelo_ecf.text = '2' then
begin
MessageDlg( 'Estado: '+ Estados[ FormCupomFiscal.ACBrECF1.Estado ], mtInformation,[mbOK],0);
end;
end;

procedure TFormCaixaEcf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
  FormCaixaEcf := nil;
end;

procedure TFormCaixaEcf.suiButton9Click(Sender: TObject);
begin
IF FormPrincipal.PCaixaEspecifico = 'S' THEN
BEGIN
Try
if FormCaixaEspecifico=nil   then
    begin
//     FormMenuCaixa.Visible:=False;
     FormCaixaEspecifico:=TFormCaixaEspecifico.Create(self);
     FormCaixaEspecifico.ShowModal;
//     FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCaixaEcf.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
end;

procedure TFormCaixaEcf.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key =#27 then
  begin
  Close;
  end;
end;

end.
