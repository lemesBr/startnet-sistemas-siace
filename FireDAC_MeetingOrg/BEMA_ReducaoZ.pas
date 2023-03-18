
unit BEMA_ReducaoZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Mask, SUIEdit, SUIImagePanel,
  SUIGroupBox, ACBrECF, ACBrRFD, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts,
  SUIButton, RzPanel, DB, IBCustomDataSet, IBQuery;

type
  TForm_ReducaoZ = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    RzPanel1: TRzPanel;
    suiButton3: TsuiButton;
    Label3: TLabel;
    cbxModelo: TComboBox;
    ACBrECF1: TACBrECF;
    qrCupom: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
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
  Form_ReducaoZ: TForm_ReducaoZ;

implementation

uses Principal, Z_DeclaracoesBemaFi32, ECFTeste1, ModuleDados1,
  ModulodeDados;

{$R *.dfm}


function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TForm_ReducaoZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
  formECF := nil;
Form_ReducaoZ:=nil;
end;

procedure TForm_ReducaoZ.suiButton2Click(Sender: TObject);
Var Resp : TModalResult ;
I : Integer;
data , hora: string;
begin
Try
 if DM.sds_configuracoesmodelo_ecf.text = '1' then
    begin
  if Application.MESSAGEBOX('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
     'Continua assim mesmo ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then

     Resp := Application.MESSAGEBOX('Envia hora atual ?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1);
  // MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

  if Resp = ID_Yes then
     BEGIN
   {  begin
     suiButton3Click(Sender);
     end; }
  //   suiButton3Click(Sender);

     data := datetoStr(date);
     hora := timetoStr(time);
     //FormEcf.ACBrECF1.ReducaoZ( now );
     iRetorno := Bematech_FI_Reducaoz( data, hora);
     FormPrincipal.Analisa_iRetorno();
     FormPrincipal.Retorno_Impressora()

    end else
  if Resp = ID_No then
   begin
    { begin
     suiButton3Click(Sender);
     end; }

    iRetorno := Bematech_FI_Reducaoz('', '');
    FormPrincipal.Analisa_iRetorno();
    FormPrincipal.Retorno_Impressora();

   // suiButton3Click(Sender);
    end;

   // Close;
   end else

    if DM.sds_configuracoesmodelo_ecf.text = '2' then
    begin
   // formECF := nil;
  {  formecf := tformECF.Create(self);
  // FormEcf.Show;
  // CoUninitialize;
   formECF.Ativcar1Click( Sender );
   formECF.Desativar1Click(sender);
   formECF.Ativcar1Click( Sender );  }


    if ACBrECF1.Estado = estbloqueada then
    begin
     ShowMessage('Não sera possivel emitir a Redução Z! '+#10+#10+'Estado: '+ Estados[ FormEcf.ACBrECF1.Estado ]);
      //FormEcf.mResp.Lines.Add( 'Reduçao Z');
     // FormEcf.AtualizaMemos ;
     //Close;
    end else

     //if FormEcf.ACBrECF1.Estado = estRequerZ then
    begin
     if Application.MESSAGEBOX('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
     'Continua assim mesmo ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     // exit ;
    // if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
      //            'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then


      if Application.MESSAGEBOX('Você tem certeza ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_yES then
    //  exit ;
    // if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
     //   exit ;


     Resp := Application.MESSAGEBOX('Envia hora atual ?','Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1);
 // MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

  if Resp = ID_Yes then
     BEGIN
   {  if (formECF.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
     ecfQuattro])then
     begin
     suiButton3Click(Sender);
     end;  }

     formECF.ACBrECF1.ReducaoZ( now );


    end else
  if Resp = ID_No then
   begin
    {  if (formECF.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
     ecfQuattro])then
     begin
     suiButton3Click(Sender);
     end;  }

     formECF.ACBrECF1.ReducaoZ( );
     end;


     end;
   end;
   if DM.sds_configuracoesmodelo_ecf.text = '3' then
    begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcupom.close;
                    qrcupom.parambyname('comando').AsString := 'REDUCAOZ';
                    qrcupom.parambyname('NUMERO').VALUE := 0;
                    qrcupom.parambyname('DESCONTO').ASFLOAT := 0;
                    qrcupom.parambyname('ACRESCIMO').ASFLOAT := 0;
                    qrcupom.parambyname('DINHEIRO').ASFLOAT := 0;
                    qrcupom.parambyname('CHEQUEAV').ASFLOAT := 0;
                    qrcupom.parambyname('CHEQUEAP').ASFLOAT := 0;
                    qrcupom.parambyname('CARTAOCRED').ASFLOAT := 0;
                    qrcupom.parambyname('CARTAODEB').ASFLOAT := 0;
                    qrcupom.parambyname('PROMISSORIA').ASFLOAT := 0;
                    qrcupom.parambyname('CLIENTE').ASSTRING := '1-REDUCAO';
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

except

      ShowMessage('Erro na Redução Z! '+#10+#10+'Estado: '+ Estados[ FormEcf.ACBrECF1.Estado ]);

end;
end;

procedure TForm_ReducaoZ.suiButton1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TForm_ReducaoZ.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TForm_ReducaoZ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TForm_ReducaoZ.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
end;

procedure TForm_ReducaoZ.suiButton3Click(Sender: TObject);
var
I, iConta :Integer;
NumeroCaixa, Reducoes, NumeroSerie, Intervencoes, sDataMovimento,
cModeloImp :string;

begin
     if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
     begin
   //  iRetorno := Bematech_FI_DadosUltimaReducao();

     dm1.Sds_ecf.Active := False;
     dm1.Sds_ecf.Active := true;
     dm1.Sds_ecf.insert;
     dm1.Sds_ecfCOD_MOD.TEXT:= '2D';

     for iConta := 1 to 4 do NumeroCaixa := NumeroCaixa + ' ';
     iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
     dm1.Sds_ecfECF_CX.text := NumeroCaixa;

     for iConta := 1 to 15 do NumeroSerie := NumeroSerie + ' ';
     iRetorno := Bematech_FI_NumeroSerie( NumeroSerie );
     DM1.Sds_ecfECF_FAB.text := NumeroSerie;

     for iConta := 1 to 11 do cModeloImp := cModeloImp + ' ';
     iRetorno := Bematech_FI_ModeloImpressora( cModeloImp );
     //Analisa_Retorno_Bematech();
     dm1.Sds_ecfECF_MOD.text := cModeloImp;
     dm1.sds_ecf.Post;
     dm1.sds_ecf.ApplyUpdates(0);

   // gera dados pro sped

   {  dm1.Sds_Red_Z.Active := False;
     dm1.Sds_Red_Z.Active := true;
     dm1.Sds_Red_Z.Insert;
     dm1.Sds_Red_ZDT_COD.AsDateTime  := DATE;

     for iConta := 1 to 4 do NumeroCaixa := NumeroCaixa + ' ';
     iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
     dm1.Sds_Red_ZECF_CX.text        := NumeroCaixa;

     for iConta := 1 to 6 do NumeroCupom := NumeroCupom + ' ';
     iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
     dm1.Sds_Red_ZCOO.value          := NumeroCupom;

     for iConta := 1 to 4 do Reducoes := Reducoes + ' ';
     iRetorno := Bematech_FI_NumeroReducoes( Reducoes );
     dm1.Sds_Red_ZCRZ.Text          := Reducoes;

     for iConta := 1 to 4 do Intervencoes := Intervencoes + ' ';
     iRetorno := Bematech_FI_NumeroIntervencoes( Intervencoes );
     dm1.Sds_Red_ZCrO.TEXT          := Intervencoes;

     for iConta := 1 to 18 do GrandeTotal := GrandeTotal + ' ';
     iRetorno := Bematech_FI_GrandeTotaL( GrandeTotal );
     dm1.Sds_Red_ZGT_FIN.AsFloat     := StrToFloatDef(GrandeTotal,0.00);

     dm1.Sds_Red_ZVL_BRT.AsFloat     := FormEcf.ACBrECF1.DadosReducaoZClass.ValorVendaBruta;
     dm1.Sds_Red_Z.Post;
     dm1.Sds_Red_Z.ApplyUpdates(0);
     iRetorno = Bematech_FI_MapaResumO()

     dm1.SDS_TOTAL_Z.Active := False;
     dm1.Sds_TOTAL_Z.Active := true;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
     for I := 0 to ICMS.Count -1 do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       for iConta := 1 to 4 do NumeroCaixa := NumeroCaixa + ' ';
       iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroCaixa; //(ICMS[I].Indice );

       for i:= 1 to 6 do
       sDataMovimento:= sDataMovimento + ' ';
       iRetBematech:= Bematech_FI_DataMovimento(sDataMovimento);
       Analisa_Retorno_Bematech(bMFD);
       DM1.SDS_TOTAL_ZDATA.AsDateTime := sDataMovimento; //( 'Tipo      : ' + ICMS[I].Tipo );


       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ICMS[I].Tipo )+ removechar(FormatFloat('00.00',ICMS[I].Aliquota));
       dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00', ICMS[I].Total);
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ICMS[I].Indice);
       dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Icms';
       dm1.SDS_TOTAL_ZT_SIT_TRIB.text := removechar(FormatFloat('0.00',ICMS[I].Aliquota)) ;
       DM1.SDS_TOTAL_Z.Post;
       DM1.SDS_TOTAL_Z.Next;
       DM1.SDS_TOTAL_Z.Last;
       end;

     for I := 0 to ISSQN.Count -1 do
     begin
        DM1.SDS_TOTAL_Z.Insert;
        DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; // + ISSQN[I].Indice );
        DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
        DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ISSQN[I].Tipo + RemoveChar(FormatFloat('00.00', ISSQN[I].Aliquota)));
        dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('###,##0.00', ISSQN[I].Total);
        DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ISSQN[I].Indice );
        dm1.SDS_TOTAL_ZDESCRICAO.Text := 'ISSQN';
        DM1.SDS_TOTAL_Z.Post;
        DM1.SDS_TOTAL_Z.Next;
        DM1.SDS_TOTAL_Z.Last;
     end;
     //dm1.SDS_TOTAL_Z.post;
     DM1.sds_total_z.ApplyUpdates(0);
    end; }
    end;

     if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
     begin
    formECF.ACBrECF1.DadosReducaoZ;

    {if (FormECF.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
     ecfQuattro])then   }
    begin
     dm1.Sds_ecf.Active := False;
     dm1.Sds_ecf.Active := true;
     dm1.Sds_ecf.insert;
     dm1.Sds_ecfCOD_MOD.TEXT:= '2D';
     dm1.Sds_ecfECF_CX.text := FormEcf.ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     DM1.Sds_ecfECF_FAB.text := FormEcf.ACBrECF1.DadosReducaoZClass.NumeroDeSerie;
     dm1.Sds_ecfECF_MOD.text := FormEcf.ACBrECF1.ModeloStr;
     dm1.sds_ecf.Post;
     dm1.sds_ecf.ApplyUpdates(0);
       // gera dados pro sped

     dm1.Sds_Red_Z.Active := False;
     dm1.Sds_Red_Z.Active := true;
     dm1.Sds_Red_Z.Insert;
     dm1.Sds_Red_ZDT_COD.AsDateTime  := FormEcf.ACBrECF1.DadosReducaoZClass.DataDoMovimento;
     dm1.Sds_Red_ZECF_CX.text        := FormEcf.ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     dm1.Sds_Red_ZCOO.value          := FormEcf.ACBrECF1.DadosReducaoZClass.COO;
     dm1.Sds_Red_ZCRZ.value          := FormEcf.ACBrECF1.DadosReducaoZClass.CRZ;
     dm1.Sds_Red_ZCrO.value          := FormEcf.ACBrECF1.DadosReducaoZClass.CrO;
     dm1.Sds_Red_ZGT_FIN.AsFloat     := FormEcf.ACBrECF1.DadosReducaoZClass.ValorGrandeTotal;
     dm1.Sds_Red_ZVL_BRT.AsFloat     := FormEcf.ACBrECF1.DadosReducaoZClass.ValorVendaBruta;
     dm1.Sds_Red_Z.Post;
     dm1.Sds_Red_Z.ApplyUpdates(0);


     dm1.SDS_TOTAL_Z.Active := False;
     dm1.Sds_TOTAL_Z.Active := true;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
     for I := 0 to ICMS.Count -1 do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; //(ICMS[I].Indice );
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento; //( 'Tipo      : ' + ICMS[I].Tipo );
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ICMS[I].Tipo )+ removechar(FormatFloat('00.00',ICMS[I].Aliquota));
       dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00', ICMS[I].Total);
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ICMS[I].Indice);
       dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Icms';
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text := FormatFloat('0.00',ICMS[I].Aliquota) ;
       DM1.SDS_TOTAL_Z.Post;
       DM1.SDS_TOTAL_Z.Next;
       DM1.SDS_TOTAL_Z.Last;
       end;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-T';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'I1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00',IsentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'AT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',AcrescimoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'F1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'N1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',NaoTributadoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     for I := 0 to ISSQN.Count -1 do
     begin
        DM1.SDS_TOTAL_Z.Insert;
        DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; // + ISSQN[I].Indice );
        DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
        DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ISSQN[I].Tipo + RemoveChar(FormatFloat('00.00', ISSQN[I].Aliquota)));
        dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('###,##0.00', ISSQN[I].Total);
        DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ISSQN[I].Indice );
        dm1.SDS_TOTAL_ZDESCRICAO.Text := 'ISSQN';
        DM1.SDS_TOTAL_Z.Post;
        DM1.SDS_TOTAL_Z.Next;
        DM1.SDS_TOTAL_Z.Last;
     end;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DS';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     //dm1.SDS_TOTAL_Z.post;

     with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-S';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

      with FormEcf.ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'FS1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     end;
     DM1.sds_total_z.ApplyUpdates(0);
     end;
  end;
end;

end.
