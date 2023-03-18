
unit BEMA_LeituraX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  SUIButton,
  ACBrECF, ACBrRFD, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts, IniFiles,
  DB, IBCustomDataSet, IBQuery;

type
  TForm_LeituraX = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    suiButton2: TsuiButton;
    suiButton1: TsuiButton;
    Bevel1: TBevel;
    ACBrECF1: TACBrECF;
    cbxModelo: TComboBox;
    qrCupom: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure LerINIecf;
    procedure cbxModeloChange(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Redução Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;

var
  Form_LeituraX: TForm_LeituraX;

implementation

uses Principal, Z_DeclaracoesBemaFi32, ECFTeste1, ModulodeDados;

{$R *.dfm}

procedure  TForm_LeituraX.LerINIecf;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',cbxModelo.ItemIndex);
     cbxModeloChange(nil);
     ACBrECF1.porta  := INI.ReadString('ECF','Porta',ACBrECF1.Porta);
    { seTimeOut.Value := INI.ReadInteger('ECF','TimeOut',seTimeOut.Value);
     seIntervaloAposComando.Value := INI.ReadInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     chTentar.Checked := INI.ReadBool('ECF','TentarNovamente',chTentar.Checked);
     chBloqueia.Checked := INI.ReadBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     chExibeMsg.Checked := INI.ReadBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     chArredondaPorQtd.Checked := INI.ReadBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     chDescricaoGrande.Checked := INI.ReadBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     chGavetaSinalInvertido.Checked := INI.ReadBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     mMsg.Text := StringReplace(INI.ReadString('ECF','MensagemAguarde',mMsg.Text),'|',sLineBreak,[rfReplaceAll]);
     edLog.Text := INI.ReadString('ECF','ArqLog',edLog.Text); }
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
    // edOperador.Text := INI.ReadString('ECF','Operador','');

  finally
     INI.Free ;
  end ;
end;

procedure TForm_LeituraX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
formECF := nil;
Form_LeituraX:=nil;
end;

procedure TForm_LeituraX.suiButton2Click(Sender: TObject);
begin
  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
 begin
  iRetorno := Bematech_FI_LeituraX();
  //  FormPrincipal.Analisa_iRetorno();
  Analisa_Retorno_Bematech(bMFD);
  //FormPrincipal.Retorno_Impressora();
  Close;
 end else
 if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
 begin
   // formECF := nil;
   {formecf := tformECF.Create(self);
   // FormEcf.Show;
   formECF.Ativcar1Click( Sender );
   formECF.Desativar1Click(sender);
   formECF.Ativcar1Click( Sender ); }

  LerINIecf;

  ACBrECF1.Ativar;

   if ACBrECF1.Estado = Estlivre then
    begin
   ACBrECF1.LeituraX;
   end else
   begin
     ShowMessage('Não será possivel a emissão da Leitura X!!'+#10+#10+'Estado: '+ Estados[ formECF.ACBrECF1.Estado ]);
   end;
  end;
  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '3' then
  begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcupom.close;
                    qrcupom.parambyname('comando').AsString := 'LEITURAX';
                    qrcupom.parambyname('NUMERO').VALUE := 0;
                    qrcupom.parambyname('DESCONTO').ASFLOAT := 0;
                    qrcupom.parambyname('ACRESCIMO').ASFLOAT := 0;
                    qrcupom.parambyname('DINHEIRO').ASFLOAT := 0;
                    qrcupom.parambyname('CHEQUEAV').ASFLOAT := 0;
                    qrcupom.parambyname('CHEQUEAP').ASFLOAT := 0;
                    qrcupom.parambyname('CARTAOCRED').ASFLOAT := 0;
                    qrcupom.parambyname('CARTAODEB').ASFLOAT := 0;
                    qrcupom.parambyname('PROMISSORIA').ASFLOAT := 0;
                    qrcupom.parambyname('CLIENTE').ASSTRING := '1-LEITURAX';
                    qrcupom.parambyname('ENDERECO').VALUE := '-';
                    qrcupom.parambyname('CIDADE').ASSTRING := '-';
                    qrcupom.parambyname('CPF').VALUE := '-';
                    qrcupom.parambyname('CONVENIO').VALUE := '-';
                    qrcupom.parambyname('VENDEDOR').ASSTRING := FORMPRINCIPAL.USERLOGADO;
                    qrcupom.parambyname('sequencia').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcupom.parambyname('RG_IE').VALUE := '-';
                    qrcupom.parambyname('PRODUTOR_RURAL').VALUE := '-';
                    qrcupom.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
             CLOSE;
  end;
end;

procedure TForm_LeituraX.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TForm_LeituraX.suiButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TForm_LeituraX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TForm_LeituraX.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
end;

procedure TForm_LeituraX.cbxModeloChange(Sender: TObject);
begin
try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;
end;

end.
