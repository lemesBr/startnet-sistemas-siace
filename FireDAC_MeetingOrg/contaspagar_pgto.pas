unit contaspagar_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DB, Collection, ExtCtrls,  StdCtrls, Mask,
  Buttons, Menus, DBCtrls,  aDvGlowButton, XDBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RxToolEdit, AdvGroupBox, RxCurrEdit, AdvPanel;

type
  Tfrmcontaspagar_pgto = class(TForm)
    qrcontaspagar: TFDQuery;
    qrcontaspagarsituacao2: TIntegerField;
    qrcontaspagarfornecedor: TStringField;
    qrcontaspagarconta: TStringField;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    FlatPanel7: TAdvPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    FlatPanel1: TAdvPanel;
    Label6: TLabel;
    FlatPanel2: TAdvPanel;
    RTOTAL_VALOR: TRxCalcEdit;
    FlatPanel3: TAdvPanel;
    RTOTAL_DESCONTO: TRxCalcEdit;
    FlatPanel4: TAdvPanel;
    RTOTAL_ACRESCIMO: TRxCalcEdit;
    FlatPanel5: TAdvPanel;
    RTOTAL_PAGO: TRxCalcEdit;
    Bevel3: TBevel;
    FlatPanel12: TAdvPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    rvalor_caixa: TRxCalcEdit;
    rvalor_banco: TRxCalcEdit;
    rvalor_terceiro: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    FlatPanel10: TAdvPanel;
    Label18: TLabel;
    Label5: TLabel;
    eplano: TEdit;
    blocplano: TBitBtn;
    enomeplano: TEdit;
    Edit1: TEdit;
    FlatPanel9: TAdvPanel;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    bterceiro: TAdvGlowButton;
    GroupBox1: TAdvGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    enomeconta: TEdit;
    econta: TEdit;
    blocconta: TBitBtn;
    Edit2: TEdit;
    DateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    qrcaixa_mov: TFDQuery;
    QInsCheque: TFDQuery;
    wwDBGrid1: TXDBGrid;
    qrcontaspagarCODIGO: TIntegerField;
    qrcontaspagarDATA_EMISSAO: TDateField;
    qrcontaspagarDATA_VENCIMENTO: TDateField;
    qrcontaspagarDATA_PAGAMENTO: TDateField;
    qrcontaspagarCODCONTA: TIntegerField;
    qrcontaspagarCODFORNECEDOR: TIntegerField;
    qrcontaspagarVALOR: TBCDField;
    qrcontaspagarVALORPAGO: TBCDField;
    qrcontaspagarLIQUIDO: TBCDField;
    qrcontaspagarDESCONTO: TBCDField;
    qrcontaspagarACRESCIMO: TBCDField;
    qrcontaspagarDOCUMENTO: TStringField;
    qrcontaspagarNOTAFISCAL: TStringField;
    qrcontaspagarHISTORICO: TStringField;
    qrcontaspagarC: TStringField;
    qrcontaspagarE: TStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TIntegerField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TIntegerField;
    Qrypagto: TFDQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FinalizarEdio1Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure econtaEnter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure blocplanoClick(Sender: TObject);
    procedure eplanoExit(Sender: TObject);
    procedure eplanoEnter(Sender: TObject);
    procedure eplanoKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_caixaEnter(Sender: TObject);
    procedure rvalor_caixaExit(Sender: TObject);
    procedure rvalor_caixaKeyPress(Sender: TObject; var Key: Char);
    procedure rvalor_bancoExit(Sender: TObject);
    procedure rvalor_bancoKeyPress(Sender: TObject; var Key: Char);
    procedure bterceiroClick(Sender: TObject);
    procedure rvalor_terceiroExit(Sender: TObject);
    procedure rvalor_terceiroKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1ColExit(Sender: TObject);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure qrcontaspagarAfterPost(DataSet: TDataSet);
    procedure qrcontaspagarAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontaspagar_pgto: Tfrmcontaspagar_pgto;
  acrescimo_a: real;
  desconto_a: real;
  pago_a: real;
  fornecedor: string;

implementation

uses principal, contaspagar, cheque,
  contaspagar_cheque, ModulodeDados, ConsContaBancariapas, ConsPlanoContas, Ubibli1;

{$R *.dfm}

procedure Tfrmcontaspagar_pgto.bcancelarClick(Sender: TObject);
begin
 // dm.Conexao.Rollback;
  CLOSE;
end;

procedure Tfrmcontaspagar_pgto.bgravarClick(Sender: TObject);
  var
  cod_caixa : Integer;
  cheque :string;
begin
 // try
      if RVALOR_BANCO.Value <> 0 then
      begin
        if econta.Text = '' then
        begin
          application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Atenção', mb_ok + MB_ICONWARNING);
          econta.setfocus;
          exit;
        end;
      end;

  if qrcontaspagar.RecordCount = 1 then
   begin
    if rsoma.value > RTOTAL_PAGO.value then
    begin
      application.MessageBox('O Valor informado não confere com o somatório das contas! Favor verificar!', 'Atençã!', mb_ok + MB_ICONWARNING);
      wwDBGrid1.setfocus;
      exit;
    end
    else
    begin
       if Application.MESSAGEBOX('Confirma o pagamento parcial ou pagto da conta a pagar selecionada?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       begin
              // dm.qrcaixa_mov.open;
          if rvalor_caixa.Value <> 0 then // pagamento com caixa
           begin

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RVALOR_CAIXA.VALUE;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RVALOR_CAIXA.VALUE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Contas a Pagar '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                   // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    qrcaixa_mov.ExecSQL;
                   // dm.IBTransaction.CommitRetaining;
             end;


           if rVALOR_BANCO.VALUE <> 0 then // pagamento com banco
           begin


          if (CheckBox2.Checked = false) then
            begin
                     cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

                   {  if IBTRAce.Active then
                       IBTRAce.Commit;
                    IBTRAce.StartTransaction;  }
                         begin
                          try
                           try
                              with QInsCheque do
                                 begin
                                    close;
                                    Parambyname('cod_cheque').AsInteger     := strtoint(cheque);
                                    Parambyname('valor').Value              := rvalor_banco.Value;
                                    Parambyname('data_emissao').AsDate      := DateEdit1.Date;
                                    Parambyname('data_Vencimento').AsDate   := DateEdit2.Date;
                                    if CheckBox1.Checked = True then
                                    Parambyname('pago').AsString            := 'T'
                                    ELSE
                                    Parambyname('pago').AsString            := 'F';
                                    Parambyname('origem').AsString            := 'AV';
                                    Parambyname('documento_origem').Value     := Null;
                                    Parambyname('Cod_conta').AsInteger         := StrToInt(econta.Text);
                                    if CheckBox1.Checked = True then
                                    Parambyname('comp_na_inclusao').Asstring     := 'T'
                                    else
                                    Parambyname('comp_na_inclusao').Asstring     := 'F';
                                    Parambyname('data_compensacao').AsDate      := DATE;
                                    Parambyname('historico').Asstring           := edit1.text;
                                    Parambyname('numero_cheque').AsInteger      := StrToInt(Edit2.Text);
                                    Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
                                    Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
                                    Parambyname('Troco').AsString               := 'F';
                                    Parambyname('Favorecido').Asstring          := qrcontaspagarfornecedor.Text;
                                    Parambyname('cod_venda').Value              := Null;
                                    Parambyname('cod_compra').VALUE             := null;
                                    Parambyname('observacao').AsString          := 'Lançamento de cheque ref a pagto de minutas de fretes' ;
                                    ExecSQL;
                                 end;
                             // IBTRAce.Commit;
                             // Botoes('G');
                            except
                            //  IBTRAce.Rollback;
                             showmessage('Erro ao Gravar o Cheque');
                            end;
                          finally
                            QInsCheque.Close;
                          end;
                          end;
                end;


                   // compensa cheque e lança depósito na conta
                   if (CheckBox1.Checked = True ) or (CheckBox2.Checked = True) then
                   begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

               {     if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction; }
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DateEdit1.Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RVALOR_BANCO.VALUE ;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RVALOR_BANCO.VALUE ;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 26; // cheques  emitidos
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                  //  qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').asINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
               //     dm.IBTransaction.CommitRetaining;
                    end;
             Application.ProcessMessages;
         end;

         if rVALOR_TERCEIRO.VALUE <> 0 then // pagamento com cheque de terceiros
         begin
                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                        DM.ProxCod.Open;

                       { if dm.IBTransaction.Active then
                        dm.IBTransaction.Commit;
                        dm.IBTransaction.StartTransaction;  }
                        qrcaixa_mov.close;
                        qrcaixa_mov.sql.clear;
                        qrcaixa_mov.sql.add('insert into movimento_diario');
                        qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                        qrcaixa_mov.sql.add('values');
                        qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                        qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                        qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                        qrcaixa_mov.parambyname('data').asdatetime      := DateEdit1.date;
                        qrcaixa_mov.parambyname('Valor_saida').asfloat := rvalor_terceiro.VALUE;
                        qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                        qrcaixa_mov.parambyname('valor').asfloat := rvalor_terceiro.VALUE;

                        DM.SDS_CONFIGURACOES.open;
                        qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                        qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
                        qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ (qrcontaspagarfornecedor.Text);
                        qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                        qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                       // qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                        qrcaixa_mov.ExecSQL;
                       // dm.IBTransaction.CommitRetaining;
         end;

          qrcontaspagar.first;
          while not qrcontaspagar.eof do
          begin
            qrcontaspagar.edit;
            if rsoma.value = RTOTAL_PAGO.value then
            qrcontaspagar.fieldbyname('situacao').AsInteger := 2
            else
            qrcontaspagar.fieldbyname('situacao').asinteger := 1;

            qrcontaspagar.fieldbyname('filtro').asinteger := 0;
            qrcontaspagar.fieldbyname('data_pagamento').asdatetime := dateedit1.Date;
            qrcontaspagar.FieldByName('movimento').asinteger := 99;

            if (rvalor_caixa.Value > 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then
            begin
            qrcontaspagar.FieldByName('movimento').asinteger := 25;
            qrcontaspagar.FieldByName('liquido').AsFloat :=  qrcontaspagar.FieldByName('valor').AsFloat -  (qrcontaspagar.FieldByName('valorpago').AsFloat  +  rvalor_caixa.Value);
            qrcontaspagar.FieldByName('valorpago').AsFloat := qrcontaspagar.FieldByName('valorpago').AsFloat  +  rvalor_caixa.Value;
            end;
            if (rvalor_caixa.Value = 0) and (rvalor_banco.value > 0) and (rvalor_terceiro.value = 0) then
            begin
            qrcontaspagar.FieldByName('movimento').asinteger := 26;
            qrcontaspagar.FieldByName('liquido').AsFloat :=  qrcontaspagar.FieldByName('valor').AsFloat -  (qrcontaspagar.FieldByName('valorpago').AsFloat  + rvalor_banco.value);
            qrcontaspagar.FieldByName('valorpago').AsFloat :=  qrcontaspagar.FieldByName('valorpago').AsFloat  + rvalor_banco.value;
            end;
            if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value > 0) then
            begin
            qrcontaspagar.FieldByName('movimento').asinteger := 27;
            qrcontaspagar.FieldByName('liquido').AsFloat :=  qrcontaspagar.FieldByName('valor').AsFloat -  (qrcontaspagar.FieldByName('valorpago').AsFloat  + rvalor_terceiro.value);
            qrcontaspagar.FieldByName('valorpago').AsFloat := qrcontaspagar.FieldByName('valorpago').AsFloat  + rvalor_terceiro.value;
            end;
            qrcontaspagar.fieldbyname('codcaixa').asstring := dm.sds_usuarios.fieldbyname('codigo').asstring;
            qrcontaspagar.post;

             Qrypagto.close;
             Qrypagto.sql.clear;
             Qrypagto.sql.add(' INSERT INTO CONTAS_APAGAR_PAGO (SEQ, COD_PAGAR, VALOR_PAGO, DATA_PAGTO)');
             Qrypagto.sql.add(' VALUES (:SEQ, :COD_PAGAR, :VALOR_PAGO,:DATA_PAGTO)');
             Qrypagto.Params.ParamByName('SEQ').AsInteger := 0;
             Qrypagto.Params.ParamByName('COD_PAGAR').AsInteger := qrcontaspagar.FieldByName('codigo').asinteger;
             if (rvalor_caixa.Value > 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then
             begin
             Qrypagto.Params.ParamByName('VALOR_PAGO').AsFloat := rvalor_caixa.Value;
             end;
             if (rvalor_caixa.Value = 0) and (rvalor_banco.value > 0) and (rvalor_terceiro.value = 0) then
             begin
             Qrypagto.Params.ParamByName('VALOR_PAGO').AsFloat := rvalor_banco.value;
             end;
             if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value > 0) then
             begin
             Qrypagto.Params.ParamByName('VALOR_PAGO').AsFloat :=  rvalor_terceiro.value;
             end;
             Qrypagto.Params.ParamByName('DATA_PAGTO').AsDate := Date;
             Qrypagto.ExecSQL;
            qrcontaspagar.next;
          end;
          end;
    end;

  end;

  if qrcontaspagar.RecordCount > 1 then
  begin
      if rsoma.value <> RTOTAL_PAGO.value then
      begin
          application.MessageBox('O Valor informado não confere com o somatório das contas! Favor verificar!', 'Atençã!', mb_ok + MB_ICONWARNING);
          wwDBGrid1.setfocus;
        end
        else
    begin
           // dm.qrcaixa_mov.open;
      if rvalor_caixa.Value <> 0 then // pagamento com caixa
      begin

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                   { if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;  }
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DateEdit1.Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RVALOR_CAIXA.VALUE;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RVALOR_CAIXA.VALUE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Contas a Pagar '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                   // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    qrcaixa_mov.ExecSQL;
                   // dm.IBTransaction.CommitRetaining;


         end;


      if rVALOR_BANCO.VALUE <> 0 then // pagamento com banco
      begin


          if (CheckBox2.Checked = false) then
            begin
                     cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

                   {  if IBTRAce.Active then
                       IBTRAce.Commit;
                    IBTRAce.StartTransaction;  }
                         begin
                          try
                           try
                              with QInsCheque do
                                 begin
                                    close;
                                    Parambyname('cod_cheque').AsInteger     := strtoint(cheque);
                                    Parambyname('valor').Value              := rvalor_banco.Value;
                                    Parambyname('data_emissao').AsDate      := DateEdit1.Date;
                                    Parambyname('data_Vencimento').AsDate   := DateEdit2.Date;
                                    if CheckBox1.Checked = True then
                                    Parambyname('pago').AsString            := 'T'
                                    ELSE
                                    Parambyname('pago').AsString            := 'F';
                                    Parambyname('origem').AsString            := 'AV';
                                    Parambyname('documento_origem').Value     := Null;
                                    Parambyname('Cod_conta').AsInteger         := StrToInt(econta.Text);
                                    if CheckBox1.Checked = True then
                                    Parambyname('comp_na_inclusao').Asstring     := 'T'
                                    else
                                    Parambyname('comp_na_inclusao').Asstring     := 'F';
                                    Parambyname('data_compensacao').AsDate      := DATE;
                                    Parambyname('historico').Asstring           := edit1.text;
                                    Parambyname('numero_cheque').AsInteger      := StrToInt(Edit2.Text);
                                    Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
                                    Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
                                    Parambyname('Troco').AsString               := 'F';
                                    Parambyname('Favorecido').Asstring          := qrcontaspagarfornecedor.Text;
                                    Parambyname('cod_venda').Value              := Null;
                                    Parambyname('cod_compra').VALUE             := null;
                                    Parambyname('observacao').AsString          := 'Lançamento de cheque ref a pagto de minutas de fretes' ;
                                    ExecSQL;
                                 end;
                             // IBTRAce.Commit;
                             // Botoes('G');
                            except
                            //  IBTRAce.Rollback;
                             showmessage('Erro ao Gravar o Cheque');
                            end;
                          finally
                            QInsCheque.Close;
                          end;
                          end;
                end;


                   // compensa cheque e lança depósito na conta
                   if (CheckBox1.Checked = True ) or (CheckBox2.Checked = True) then
                   begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

               {     if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction; }
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DateEdit1.Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RVALOR_BANCO.VALUE ;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RVALOR_BANCO.VALUE ;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 26; // cheques  emitidos
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                  //  qrcaixa_mov.parambyname('COD_CONTAS_PAGAR').AsString  := DM.SDS_CP_BaixarCODIGO_GERA.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').asINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
                    qrcaixa_mov.ExecSQL;
               //     dm.IBTransaction.CommitRetaining;
                    end;
             Application.ProcessMessages;
       end;

      if rVALOR_TERCEIRO.VALUE <> 0 then // pagamento com cheque de terceiros
      begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                   { if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;  }
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := DateEdit1.date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := rvalor_terceiro.VALUE;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := rvalor_terceiro.VALUE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                   // qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
                   // dm.IBTransaction.CommitRetaining;
      end;
     end;


     qrcontaspagar.first;
      while not qrcontaspagar.eof do
      begin
        qrcontaspagar.edit;
        qrcontaspagar.fieldbyname('situacao').asinteger := 2;
        qrcontaspagar.fieldbyname('filtro').asinteger := 0;
        qrcontaspagar.fieldbyname('data_pagamento').asdatetime := dateedit1.Date;
        qrcontaspagar.FieldByName('movimento').asinteger := 99;
        qrcontaspagar.FieldByName('valorpago').AsFloat :=  qrcontaspagar.FieldByName('liquido').AsFloat;

        if (rvalor_caixa.Value <> 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then
        qrcontaspagar.FieldByName('movimento').asinteger := 25;

        if (rvalor_caixa.Value = 0) and (rvalor_banco.value <> 0) and (rvalor_terceiro.value = 0) then
        qrcontaspagar.FieldByName('movimento').asinteger := 26;

        if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value <> 0) then
        qrcontaspagar.FieldByName('movimento').asinteger := 27;

        qrcontaspagar.fieldbyname('codcaixa').asstring := dm.sds_usuarios.fieldbyname('codigo').asstring;
        qrcontaspagar.FieldByName('liquido').AsFloat := 0;
        qrcontaspagar.post;

         Qrypagto.close;
         Qrypagto.sql.clear;
         Qrypagto.sql.add(' INSERT INTO CONTAS_APAGAR_PAGO (SEQ, COD_PAGAR, VALOR_PAGO, DATA_PAGTO)');
         Qrypagto.sql.add(' VALUES (:SEQ, :COD_PAGAR, :VALOR_PAGO,:DATA_PAGTO)');
         Qrypagto.Params.ParamByName('SEQ').AsInteger := 0;
         Qrypagto.Params.ParamByName('COD_PAGAR').AsInteger := qrcontaspagar.FieldByName('codigo').asinteger;
         Qrypagto.Params.ParamByName('VALOR_PAGO').AsFloat := qrcontaspagar.FieldByName('valorpago').AsFloat;
         Qrypagto.Params.ParamByName('DATA_PAGTO').AsDate := Date;
         Qrypagto.ExecSQL;
        qrcontaspagar.next;
      end;
    end;

      if rtotal_pago.value > 0 then
      begin
        //Mizael erro comunicacao
        //ecf_sangriaX(ecf_modelo, FORMATFLOAT('##############0.00', RTOTAL_PAGO.value));

      end;


      qrcontaspagar.Refresh;

      {frmprincipal.logUC('Pagou Conta a Pagar Conta Nr: ' +
      qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' +  qrcontaspagar.fieldbyname('fornecedor').asstring, 3);}

      formprincipal.log(codigo_usuario, 'C.PAGAR',
          qrcontaspagar.FieldByName('documento').asstring, 'PAGOU',
          qrcontaspagar.FieldByName('FORNECEDOR').asstring);

      FRMCONTASPAGAR.qrcontaspagar.Refresh;
      close;

// conferencia dos valores
{  except
    application.messagebox('Houve falha no pagamento destas contas! Este processamento foi cancelado!', 'Erro', mb_ok + mb_iconerror);
    //dm.Conexao.Rollback;
  end; }
end;



procedure Tfrmcontaspagar_pgto.FinalizarEdio1Click(Sender: TObject);
begin
  EDIT1.setfocus;
end;

procedure Tfrmcontaspagar_pgto.wwDBGrid1Exit(Sender: TObject);
begin
  if qrcontaspagar.State = dsedit then qrcontaspagar.Post;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  dateedit1.Date := DM.SDS_USUARIOS.fieldbyname('data').asdatetime;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;





end;

procedure Tfrmcontaspagar_pgto.Edit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcontaspagar_pgto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then EPLANO.SETFOCUS;

end;

procedure Tfrmcontaspagar_pgto.Gravar1Click(Sender: TObject);
begin
  BGRAVAR.SETFOCUS;
  BGRAVAR.Click;
end;

procedure Tfrmcontaspagar_pgto.bloccontaClick(Sender: TObject);
begin
  FormConsContaBancaria := tFormConsContaBancaria.create(self);
  FormConsContaBancaria.showmodal;
  enomeconta.text := dm.SDS_Conta_BancariaCONTA.asstring;
  econta.text     := dm.SDS_Conta_BancariaCODIGO.asstring;
  EDIT2.SETFOCUS;

end;

procedure Tfrmcontaspagar_pgto.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
   if eCONTA.text <> '' then
  begin
    if not FormPrincipal.Locregistro(dm.SDS_Conta_Bancaria, econta.text, 'CODIGO') then
    begin
      bloccontaclick(frmcontaspagar_pgto);
    end
    else
    begin
      enomeconta.text := dm.SDS_Conta_Bancaria.fieldbyname('CONTA').asstring;
      econta.text := dm.SDS_Conta_Bancaria.fieldbyname('codigo').asstring;
      DateEdit2.Date := DateEdit1.Date;
      edit2.setfocus;
    end;
  end
  else
  begin
    blocconta.SetFocus;
  end;
end;

procedure Tfrmcontaspagar_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM.Coneccao.Rollback;
 action := cafree;
end;

procedure Tfrmcontaspagar_pgto.FormShow(Sender: TObject);
begin
  {FRMMODULO.QRCONTACORRENTE.Close;
  FRMMODULO.QRCONTACORRENTE.SQL.CLEAR;
  FRMMODULO.QRCONTACORRENTE.SQL.Add('SELECT * FROM C000041 ORDER BY CONTA');
  FRMMODULO.QRCONTACORRENTE.OPEN;
  FRMMODULO.QRCONTACORRENTE.INDEXFIELDNAMES := 'CONTA';

  if qrcontaspagar.RecordCount = 1 then // verificar se ha mais de uma conta para o pagamento em cheque
  begin
    edit1.text := qrcontaspagar.fieldbyname('historico').asstring;
    eplano.text := qrcontaspagar.fieldbyname('codconta').asstring;
    enomeplano.text := qrcontaspagar.fieldbyname('conta').asstring;
    fornecedor := 'Pgto. ' + qrcontaspagar.fieldbyname('fornecedor').AsString + ' - Docto: ' + qrcontaspagar.fieldbyname('Documento').asstring;
  end
  else
  begin
    edit1.text := '';
    enomeplano.text := '';
    eplano.text := '';
    fornecedor := 'Pgto. de vários fornecedores';
  end;
  dateedit1.Date := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
    }
    
  dm.SDS_Conta_Bancaria.Close;
  dm.SDS_Conta_Bancaria.Open;

  if qrcontaspagar.RecordCount = 1 then // verificar se ha mais de uma conta para o pagamento em cheque
  begin
 //   edit1.text := qrcontaspagar.fieldbyname('historico').asstring;
  //  eplano.text := qrcontaspagar.fieldbyname('codconta').asstring;
  //  enomeplano.text := qrcontaspagar.fieldbyname('conta').asstring;
    fornecedor := 'Pgto. ' + qrcontaspagar.fieldbyname('fornecedor').AsString + ' - Docto: ' + qrcontaspagar.fieldbyname('DOCUMENTO').asstring;
  end
  else
  begin
    edit1.text := '';
    //enomeplano.text := '';
   // eplano.text := '';
    fornecedor := 'Pgto. de vários fornecedores';
  end;
  dateedit1.Date := DM.SDS_Usuarios.fieldbyname('data').asdatetime;
  rvalor_caixa.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.econtaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Enter(Sender: TObject);
begin
  TEdit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.Edit2Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
  if rsoma.Value = RTOTAL_PAGO.VALUE then BGRAVAR.SETFOCUS else rvalor_terceiro.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.econtaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.blocplanoClick(Sender: TObject);
begin
  FormConsPlanoContas := tFormConsPlanoContas.create(self);
  FormConsPlanoContas.showmodal;
  eplano.text := dm.sds_plcontas.fieldbyname('CODIGO').asstring;
  enomeplano.Text := dm.sds_plcontas.fieldbyname('nome').asstring;
  RVALOR_CAIXA.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.eplanoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
 // eplano.text := frmprincipal.zerarcodigo(eplano.text, 6);
 // if eplano.text <> '000000' then

    if not formprincipal.Locregistro(dm.sds_plcontas, eplano.text, 'codigo') then
    begin
      blocplanoclick(frmcontaspagar_pgto);
    end
    else
    begin
      enomeplano.Text := DM.sds_plcontas.fieldbyname('nome').asstring;

      RVALOR_CAIXA.SETFOCUS;

    end;

    blocplano.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.eplanoEnter(Sender: TObject);
begin
  eplano.Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.eplanoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;

  if RTOTAL_PAGO.value = rsoma.value then bgravar.setfocus else rvalor_banco.setfocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_caixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  if rvalor_banco.Value <> 0 then
    econta.setfocus
  else
    rvalor_terceiro.SetFocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_bancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then econta.setfocus;
end;

procedure Tfrmcontaspagar_pgto.bterceiroClick(Sender: TObject);
begin

  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bgravar.setfocus;

end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bterceiro.setfocus
end;

procedure Tfrmcontaspagar_pgto.rvalor_terceiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bterceiro.setfocus;
end;

procedure Tfrmcontaspagar_pgto.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then EDIT1.SETFOCUS;
end;

procedure Tfrmcontaspagar_pgto.wwDBGrid1ColExit(Sender: TObject);
begin
 if wwDBGrid1.SelectedField = QRCONTASPAGARDESCONTO THEN
  IF wwDBGrid1.COLUMNS.Grid.Fields[4].Value > 0 then
  begin
    if QRCONTASPAGAR.state in [dsinsert, dsedit] then
  begin
    QRCONTASPAGAR.FIELDBYNAME('VALORPAGO').ASFLOAT :=
      QRCONTASPAGAR.FIELDBYNAME('VALOR').ASFLOAT +
      QRCONTASPAGAR.FIELDBYNAME('ACRESCIMO').ASFLOAT -
      QRCONTASPAGAR.FIELDBYNAME('DESCONTO').ASFLOAT;
  end;
  // DBGRID.COLUMNS.Grid.Fields[5].FocusControl;
  wwDBGrid1.COLUMNS.Grid.Fields[5].FocusControl;
  QRCONTASPAGAR.Post;
  end;

  if wwDBGrid1.SelectedField = QRCONTASPAGARACRESCIMO THEN
  IF wwDBGrid1.COLUMNS.Grid.Fields[5].Value > 0 then
  begin
    if QRCONTASPAGAR.state in [dsinsert, dsedit] then
  begin
    QRCONTASPAGAR.FIELDBYNAME('VALORPAGO').ASFLOAT :=
      QRCONTASPAGAR.FIELDBYNAME('VALOR').ASFLOAT +
      QRCONTASPAGAR.FIELDBYNAME('ACRESCIMO').ASFLOAT -
      QRCONTASPAGAR.FIELDBYNAME('DESCONTO').ASFLOAT;
      QRCONTASPAGAR.Post;
  end;
  // QRCONTASPAGAR.Next;
   wwDBGrid1.COLUMNS.Grid.Fields[4].FocusControl;
  end;
 

end;

procedure Tfrmcontaspagar_pgto.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
       begin

           Case wwDBGrid1.SelectedIndex of
           4: wwDBGrid1.SelectedIndex := 5;
           5: wwDBGrid1.SelectedIndex := 6;
          // 2: DBgrid.SelectedIndex := 3;
          // 3: DBgrid.SelectedIndex := 4;
          // 4: DBgrid.SelectedIndex := 6;
          //5: DBgrid.SelectedIndex := 6;
           ELSE

             wwDBGrid1.SelectedIndex := wwDBGrid1.SelectedIndex + 1;
            QRCONTASPAGAR.next;

            wwDBGrid1.SelectedIndex := 4;  // código da proxima linha
            QRCONTASPAGAR.Edit;
            wwDBGrid1.COLUMNS.Grid.Fields[0].FocusControl;



end;
end;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
 QRCONTASPAGAR.Cancel;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterPost(DataSet: TDataSet);
begin
  rtotal_desconto.Value := rtotal_desconto.value + qrcontaspagar.fieldbyname('desconto').asfloat - desconto_a;
  rtotal_acrescimo.Value := rtotal_acrescimo.value + qrcontaspagar.fieldbyname('acrescimo').asfloat - acrescimo_a;
  rtotal_pago.Value := rtotal_pago.value + qrcontaspagar.fieldbyname('valorpago').asfloat - pago_a;
end;

procedure Tfrmcontaspagar_pgto.qrcontaspagarAfterEdit(DataSet: TDataSet);
begin
  desconto_a := qrcontaspagar.fieldbyname('desconto').asfloat;
  acrescimo_a := qrcontaspagar.fieldbyname('acrescimo').asfloat;
  pago_a := qrcontaspagar.fieldbyname('valorpago').asfloat;
end;

end.
