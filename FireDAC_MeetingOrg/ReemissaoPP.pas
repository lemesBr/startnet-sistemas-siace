unit ReemissaoPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIButton, ExtCtrls, RpRender,
  RpRenderCanvas, RpRenderPrinter, RpRave, RpDefine, DB, RpBase, RpSystem,
  DBCtrls, RXCtrls, Mask, rxToolEdit, SUIDlg, RLFilters,
  RLDraftFilter, RpRenderText, RpRenderRTF, RpRenderHTML, RpRenderPDF,
  FMTBcd, SqlExpr, ACBrECF, ACBrRFD, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts,
  RzPrgres, RzDBProg, RzBorder, Gauges;

type
  TFormReemissaoPP = class(TForm)
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
    Impressao: TsuiMessageDialog;
    Contrato: TsuiMessageDialog;
    ecfimprimir: TsuiMessageDialog;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    SPC_N_CUPOM: TSQLStoredProc;
    mFormas: TMemo;
    edCod: TEdit;
    mResp: TMemo;
    Panel3: TPanel;
    Gauge2: TRzDBProgressBar;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo2: TMemo;
    Label7: TLabel;
    Timer1: TTimer;
    Gauge1: TGauge;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CarregaFPG;
    Procedure AtualizaMemos(VerificaEstado : Boolean = true) ;
    procedure suiButton1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
     Function Converte( cmd : String) : String;
  public
    { Public declarations }
    Total, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma,  desct, A, B, C, acresc :Double;
    Cod,Contador, I, NItem, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp: String;
    TipoCupom : Char ;
    
  end;

 const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;
   
var
  FormReemissaoPP: TFormReemissaoPP;
    sCodigo, sDescricao, sAliquota, sTipoQtde, sQtde, sValor, sTipo, sDesconto : string;
    sAcreDesc, sForma, sMensagem, sConfirma, sTipoDesconto, sUnidade : String;
     sValorDesc :real;

     
implementation

uses ModulodeDadosConsultas, Z_RotinasGerais, ModulodeDadosRelatorios,
  Principal, ModulodeDados, ConsultaPedidoDireto, printPedidos,
  ModulodeDadosConsultas5,  duplicata, ContratoVEnda,
  ECFTeste1, EmiteEcf, BoletosBanc, ImpNotafiscal, ModulodeDadosConsultas3;

{$R *.dfm}

function TFormReemissaoPP.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
  end;
  
procedure TFormReemissaoPP.AtualizaMemos(VerificaEstado : Boolean = true) ;
begin
 // mEnviado.Text := Converte( ACBrECF1.ComandoEnviado );
  mResp.Lines.Add( Converte( formECF.ACBrECF1.RespostaComando) );
  mResp.Lines.Add('- + - + - + - + - + - + - + - + - + - + - + -') ;
  if VerificaEstado then
  //   StatusBar1.Panels[0].Text :=  EstadoECF ;
end;

procedure TFormReemissaoPP.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
  with FormECF do
  begin
     { Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente }
     if (FormECF.ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  { força carregar, se ainda nao o fez }

     for A := 0 to formECF.ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              formECF.ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              formECF.ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
     end ;
  end ;
  end;


procedure TFormReemissaoPP.suiButton1Click(Sender: TObject);
var
Endercomp, Cli, cpf_cnpj, prod: String;
   Resp : TModalResult ;
   Percent, EncFin, PerEnc, EF, VF, VD: Real;

   PG, CD, PAG : String;
   cFormaPgto      : String;
   cAcresDesc      : string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago      : String;
   cMsgPromocional : String;
   cAcresc         : string;
   cValorDesc      : string;
   Desc : Char ;
   I :Integer;
   Descricao, cupon : String ;
   FPG : TACBrECFFormaPagamento ;

begin
If  Edit1.text <> '' then
  Begin
    DMC.SDS_Pedido_Itens.Active := False;
    DMC.SQLD_Pedidos.Active := False;
    DMC.CDS_Pedidos.Active := False;
    DMC.SQLD_Pedidos.Params[0].AsString := Edit1.text;
    DMC.SQLD_Pedidos.Active := True;
    DMC.CDS_Pedidos.Active := True;
    DMC.SDS_Pedido_Itens.Active := True;
    If DMC.CDS_Pedidos.Locate('CODIGO',Edit1.text,[])= True then
     Begin
    // if Impressao.ShowModal = mryes then
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Pedido?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     // Exit;
      TRY
       begin
        IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
        IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
        BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
        DMC.SQLD_Pedidos.Active :=True;
        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
        + ' - ' + DMC.CDS_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text + ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
        DMR.RvRelatorios.Execute;
            end else

       IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
       IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
       BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
        DMC.SQLD_Pedidos.Active :=True;
        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
        + ' - ' + DMC.CDS_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text+ ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDireto2',False);
        DMR.RvRelatorios.Execute;
        end;

             IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    ImprimirPedidos.RLReport1.DefaultFilter.Destroy;
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.PreviewModal;
                    END ELSE
                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                   // ImprimirPedidos.RLReport1.DefaultFilter.ClassNameIs('RLDraftFilter1');
                    ImprimirPedidos.RLReport1.PreviewModal;
                    end;

                    end;

                    except
                   showmessage('Erro na Impressão do Pedido!');
                    end;
                    end;


        if DMC.CDS_PedidosTP.Text = 'C' then
        IF DM.SDS_CONFIGURACOESDUPLICATA.Value = 'S' THEN
         BEGIN
         // If duplicata.ShowModal = mryes then
         if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Duplicata?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        // Exit;
         try
          {begin
          IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
           BEGIN
           DMC5.SDS_Pedido_Itens.Active:= False;
           DMC5.SDS_Cliente.Active:= False;
           DMC5.SQLD_Pedidos.Active:=False;
           DMC5.CDS_Pedidos.Active:=False;
           DMC5.SQLD_Pedidos.Params[0].AsString:= Edit1.text;
           DMC5.SQLD_Pedidos.Active:=True;
           DMC5.CDS_Pedidos.Active:=True;
           DMC5.SDS_Pedido_Itens.Active:= True;
           DMC5.SDS_Cliente.Active:= True;
           Endercomp:= (Sds_pedidosENDERECO.Text + ' / ' + Sds_pedidosBAIRRO.Text
            + ' - ' + Sds_pedidosCIDADE.Text);
           Cli:= (Sds_pedidosCODIGO_CLIENTE.Text + ' - ' + Sds_pedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
           DMR.RvRelatorios.SetParam('Ender',Endercomp);
           DMR.RvRelatorios.SetParam('Cliente',Cli);
           DMR.RvRelatorios.SelectReport('Rp_DuplicataPedidos',False);
           DMR.RvRelatorios.Execute;
           end
           end;}

          //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
          IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
          BEGIN
          DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= Edit1.text;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
          formduplicatas := Tformduplicatas.Create(self);
          formduplicatas.RLReport1.DefaultFilter.Destroy;
          formduplicatas.RLReport1.Prepare;
          formduplicatas.RLReport1.PreviewModal;
          END ELSE
           //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= Edit1.text;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
           Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
           + ' - ' + DMC.CDS_PedidosCIDADE.Text);
           Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
           formduplicatas := Tformduplicatas.Create(self);
           formduplicatas.RLReport1.Prepare;
           formduplicatas.RLReport1.PreviewModal;
           end;
           except
                ShowMessage('Erro na Impressão da duplicata!');
            end;
           end;



            if DMC.CDS_PedidosTP.Text = 'C' then
             IF DM.SDS_CONFIGURACOESCONTRATO.TEXT = 'S' THEN
                 BEGIN
              //  If contrato.ShowModal = mryes then
               if MESSAGEBOX(Application.Handle, 'Confirma a Impressão do Contrato?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 try
                    BEGIN
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    FormContratoVenda := TFormContratoVenda.Create(self);
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.DefaultFilter.Destroy;
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.Print;
                     END ELSE
                     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.Print;
                     end;
                    end;

                    except
                ShowMessage('Erro na Impressão do Contrato!');
                end;
                end;

   If DM.SDS_CONFIGURACOESCUPOM.Text = 'S' then
    begin
     // If ecfimprimir.ShowModal = mryes then
     if MESSAGEBOX(Application.Handle, 'Confirma Imprimir o ECF?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Begin
      try
       begin
        //  Desc := '%' ;
      //  if Formvendas.RbValor.Checked then
        Desc := '$' ;

                      formECF := nil;
                      formecf := tformECF.Create(self);
                      formECF.Ativcar1.Click;
                      formECF.Desativar1.Click;
                      formECF.Ativcar1.Click;

                        Panel2.Visible := false;
                        Panel3.Visible := True;

                          if formECF.ACBrECF1.Estado = estRequerZ then
                           begin
                           if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                           'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                            exit ;
                            if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                             exit ;
                            // end ;
                            Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

                            if Resp = mrYes then
                            formECF.ACBrECF1.ReducaoZ( now )
                            else if Resp = mrNo then
                            formECF.ACBrECF1.ReducaoZ( )
                            else
                            exit ;
                            mResp.Lines.Add( 'Reduçao Z');
                            AtualizaMemos ;
                            end;


                      begin
                       formEcf.ACBrECF1.AbreCupom();
                       formecf.mResp.Lines.Add( 'AbreCupom' );
                       end;
                       begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=edit1.Text;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                     //  DM.SDS_CondPagamento.Active:=true;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;

                       For I:=1 to Contador do
                       begin

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= (DMC.cDS_pedidosRG_IE.AsString);
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString +#13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString;

                       // parametros
                       B := DMC.SDS_Pedido_ItensQuantidade.AsFloat;
                       A :=StrtoFloat(DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString);
                       //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := {(A + EF)} DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat;
                       Desct:= DMC.CDS_PedidosVALOR_DESCONTO.AsFloat;
                       ValCompra := DMC.CDS_PedidosVALOR_TOTAL.AsFloat;
                       // fim parametros


                       sCodigo        := DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     := DMC.SDS_Pedido_ItensDescricao_produto.AsString;
                       sAliquota      := (DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').AsString);
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := DMC.SDS_Pedido_ItensQUANTIDADE.AsString;  //FormatFloat('##.##0.000',B);
                       sValor         := DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString;    //('##.##0.00',VF);

                      // sTipoDesconto  := '$';
                       cValorDesc := DMc.SDS_Pedido_ItensDESCONTO.AsString; //'0000';

                     //  sValorDesc := vd * (-1);

                      // cValorDesc := FormatFloat('0',CValorDesc);


                       FormEcf.ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000 ),
                               StrToFloatDef(sValor ,0.00),
                               StrToFloatDef(cValorDesc ,0.00), Sunidade,
                               desc);

                       mResp.Lines.Add( 'Vende Item: Cod:'+ sCodigo +
                            ' Desc'+ sDescricao +
                            ' Aliq:'+sAliquota +
                            ' Qtd:'+sQtde +
                            ' Preço:'+sValor +
                            ' Desc:'+cValorDesc +
                            ' Un:'+sUnidade +
                            ' Desc:'+desc );

                       DMC.SDS_Pedido_Itens.Next;
                       end;

                       begin
                       CD:= DMC.CDS_PedidosTP.AsString;
                       IF CD = 'A' THEN BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       end else
                       IF CD = 'V' THEN BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       end;

                        //  Desct := desct * (-1); // converte para valor negativo

                         // acresc := dmc.CDS_PedidosENC_FINANCEIRO.AsFloat;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsString >'0' then
                          BEGIN
                          desct := (DMC.CDS_PedidosVALOR_DESCONTO.AsFloat *(-1));
                          end else

                          if DMC.CDS_PedidosENC_FINANCEIRO.Text >'0' then
                          BEGIN
                          desct := DMC.CDS_PedidosENC_FINANCEIRO.AsFloat;
                          end;

                          cFormaPgto      := PG;
                        //  cAcresDesc      := 'D';
                        //  cTipoAcresDesc  := '$';

                         // cAcresc         := FormatFloat('0.00',acresc);
                          cValorAcresDesc := FormatFloat('0.00',desct);
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.AsString)+#13+#13+#10'Venda:'+ dmc.CDS_PedidosCODIGO.Text+#13+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;



                         Descricao := PAG;
                         begin
                          FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                         if FPG = nil then
                         // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                         edCod.Text := FPG.Indice ;
                         cFormaPgto      := edCod.Text;
                         { Bematech permite cadastrar formas de Pagamento dinamicamente }
                         if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                         (pos( FPG.Descricao, mFormas.Text ) = 0) then
                         CarregaFPG ;
                         end ;

                           BEGIN
                          formecf.ACBrECF1.Subtotal;
                          formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(cValorAcresDesc));
                       //   formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                        //  formecf.ACBrECF1.Subtotal;
                         // formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                           formEcf.mResp.Lines.Add( 'Subtotaliza Cupom: '+cValorAcresDesc);
                          end;

                          begin
                          if TipoCupom <> 'N' then
                          { formECF.ACBrECF1.EfetuaPagamento(formECF.ACBrECF1.FormasPagamento[0].Indice,
                          (formECF.ACBrECF1.Subtotal - formECF.ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');}

                          FormEcf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                           FormEcf.mResp.Lines.Add( 'Efetua Pagamento: '+cFormaPgto +
                          ' Valor: '+cValorPago );
                          end;

                          begin
                          formecf.ACBrECF1.FechaCupom(cMsgPromocional);
                          formEcf.mResp.Lines.Add( 'Fecha Cupom: '+ cMsgPromocional );
                          end;
                          end;
                          AtualizaMemos;
                          //suiButton1.Default := True;
                         // suiButton2.Default := True;
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(Edit1.text);
                          SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(formECF.ACBrECF1.NumCupom);
                          SPC_N_CUPOM.Params[2].AsString  :=  formECF.ACBrECF1.NumECF;
                          SPC_N_CUPOM.ExecProc;
                          end;
                         end;

                         Panel3.Visible := False;
                         Panel2.Visible := true;
                          except
                           //MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
                          ShowMessage('Erro ao Tentar emitir o cupom, Estado: '+ Estados[ formECF.ACBrECF1.Estado ] + '...');
                          end;


                          end;
                          end;


             if DMC.CDS_PedidosTP.Text = 'C' then
             If DM.SDS_CONFIGURACOESBOLETO.Text = 'S' then
                     begin
                   //  If boleto.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Emissão do Boleto?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                     try
                      begin
                      If FormBoletos=nil then
                      begin
                      FormBoletos:=TFormBoletos.Create(self);
                      FormBoletos.ShowModal;
                      end;
                      end;
                       except
                      ShowMessage('Erro na Emissão do Boleto');
                      end;
                      end;


                   IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    BEGIN
                   // If NOTA.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Nota?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    try
                    begin
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:=Edit1.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    FormImpNotaFiscal := TFormImpNotaFiscal.Create(self);
                    FormImpNotaFiscal.RLReport1.Prepare;
                    FormImpNotaFiscal.RLReport1.PreviewModal;
                    end;
                     except
                      ShowMessage('Erro na Emissão da Nota Fiscal');
                    end;
                    end;

   end;

   end;

procedure TFormReemissaoPP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormReemissaoPP:=nil;
formecf:=nil;
end;

procedure TFormReemissaoPP.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormReemissaoPP.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;

If  Edit1.Text= '' then
    Begin
    DMC.SDS_Pedido_Itens.Active:= False;
    DMC.SQLD_Pedidos.Active:=False;
    DMC.CDS_Pedidos.Active:=False;
    Messagecli.ShowModal;
    Edit1.SetFocus;
    end else
If  Edit1.Text <> '' then
    Begin
    DMC.SDS_Pedido_Itens.Active := False;
    DMC.SQLD_Pedidos.Active := False;
    DMC.CDS_Pedidos.Active := False;
    DMC.SQLD_Pedidos.Params[0].AsString := Edit1.Text;
    DMC.SQLD_Pedidos.Active := True;
    DMC.CDS_Pedidos.Active := True;
    DMC.SDS_Pedido_Itens.Active := True;
If DMC.CDS_Pedidos.Locate('CODIGO',Edit1.Text,[])= True then
begin
      SuiButton1.Enabled:= True;
      SuiButton1.SetFocus;
end
else
begin
    Edit1.color:= clWhite;
    SuiButton1.Enabled:= False;
    DMC.SDS_Pedido_Itens.Active:= False;
    DMC.SQLD_Pedidos.Active:=False;
    DMC.CDS_Pedidos.Active:=False;
    MessageLocCli.ShowModal;
    Edit1.color:= clYellow;
    Edit1.Clear;
    Edit1.SetFocus;
end;
end;
end;
end;

procedure TFormReemissaoPP.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormReemissaoPP.Edit1Exit(Sender: TObject);
begin
If  Edit1.Text= '' then
    Begin
    DMC.SDS_Pedido_Itens.Active:= False;
    DMC.SQLD_Pedidos.Active:=False;
    DMC.CDS_Pedidos.Active:=False;
    Messagecli.ShowModal;
    Edit1.SetFocus;
    end else
If  Edit1.Text <> '' then
    Begin
    DMC.SDS_Pedido_Itens.Active := False;
    DMC.SQLD_Pedidos.Active := False;
    DMC.CDS_Pedidos.Active := False;
    DMC.SQLD_Pedidos.Params[0].AsString := Edit1.Text;
    DMC.SQLD_Pedidos.Active := True;
    DMC.CDS_Pedidos.Active := True;
    DMC.SDS_Pedido_Itens.Active := True;
If DMC.CDS_Pedidos.Locate('CODIGO',Edit1.Text,[])= True then
begin
      SuiButton1.Enabled:= True;
      SuiButton1.SetFocus;
end
else
begin
    Edit1.color:= clWhite;
    SuiButton1.Enabled:= False;
    DMC.SDS_Pedido_Itens.Active:= False;
    DMC.SQLD_Pedidos.Active:=False;
    DMC.CDS_Pedidos.Active:=False;
    MessageLocCli.ShowModal;
    Edit1.color:= clYellow;
    Edit1.Clear;
    Edit1.SetFocus;
end;
end;
CorSaida(Sender);

end;

procedure TFormReemissaoPP.FormShow(Sender: TObject);
begin
    DMC.SDS_Pedido_Itens.Active:= False;
    DMC.SQLD_Pedidos.Active:=False;
    DMC.CDS_Pedidos.Active:=False;
    DM.SDS_Empresa.active := FALSE;
    SuiButton1.Enabled:= False;
    //DMC3.CDS_Pedidos.Active:=False;

   Edit1Exit(Sender);
end;

procedure TFormReemissaoPP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormReemissaoPP.suiButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  suiButton1.Default := True;
  end;
end;

procedure TFormReemissaoPP.Timer1Timer(Sender: TObject);
begin
Gauge1.Progress := Gauge1.Progress +1;
if Gauge1.Progress = 10 then
Label7.Caption := 'Aguarde imprimindo Cupom...';
if Gauge1.Progress = 50 then
Label7.Caption := 'Aguarde imprimindo Cupom...';
if Gauge1.Progress = 70 then
Label7.Caption := 'Finalizando impressão...';
if Gauge1.Progress = 100 then
Label7.Caption := 'Cupom Impresso...';
begin
Timer1.Enabled := false;
end;

end;

end.
