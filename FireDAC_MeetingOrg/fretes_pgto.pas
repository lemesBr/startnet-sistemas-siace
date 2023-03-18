unit fretes_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB,  ExtCtrls, TFlatPanelUnit, StdCtrls, Mask,
   wwdbedit, Wwdotdot, Wwdbcomb, Buttons, Menus, DBCtrls, IBCustomDataSet, IBQuery, XDBGrids,
  IBDatabase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxToolEdit, RxCurrEdit,
  AdvGlowButton;

type
  TFormFretes_pgto = class(TForm)
    qrcontaspagar: TFDQuery;
    qrcontaspagarfornecedor: TStringField;
    dscontaspagar: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    FlatPanel7: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    RTOTAL_VALOR: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    r_vale: TRxCalcEdit;
    FlatPanel5: TFlatPanel;
    RTOTAL_PAGO: TRxCalcEdit;
    Bevel3: TBevel;
    FlatPanel12: TFlatPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Bevel4: TBevel;
    rvalor_caixa: TRxCalcEdit;
    rvalor_banco: TRxCalcEdit;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Edit2: TEdit;
    rvalor_terceiro: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    FlatPanel10: TFlatPanel;
    Label5: TLabel;
    Edit1: TEdit;
    FlatPanel9: TFlatPanel;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    bterceiro: TAdvGlowButton;
    EACRESCIMO: TwwDBEdit;
    EDESCONTO: TwwDBEdit;
    qrcontaspagarCOD_EMPRESA: TIntegerField;
    qrcontaspagarCOD_LACTO: TIntegerField;
    qrcontaspagarDATA_LACTO: TDateField;
    qrcontaspagarN_MINUTA: TIntegerField;
    qrcontaspagarCOD_FRETEIRO: TIntegerField;
    qrcontaspagarQTDE_ANIMAIS: TIntegerField;
    qrcontaspagarCOD_VEICULO: TIntegerField;
    qrcontaspagarORIGEM_FRETE: TStringField;
    qrcontaspagarDESTINO_FRETE: TStringField;
    qrcontaspagarGERA_IMPOSTO: TStringField;
    qrcontaspagarUSER: TStringField;
    qrcontaspagarCOD_PAGADOR: TIntegerField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarDATA_BAIXA: TDateField;
    qrcontaspagarCOD_CAIXA: TIntegerField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcaixa_mov: TFDQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    wwDBGrid1: TXDBGrid;
    QInsCheque: TFDQuery;
    DateEdit2: TDateEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    qrcontaspagarCOD_CHEQUE: TIntegerField;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    FlatPanel4: TFlatPanel;
    R_combustivel: TRxCalcEdit;
    FlatPanel6: TFlatPanel;
    R_pedagio: TRxCalcEdit;
    Label13: TLabel;
    FlatPanel8: TFlatPanel;
    R_Credito: TRxCalcEdit;
    Qbaixa: TFDQuery;
    qrcontaspagarVALOR_FRETE: TBCDField;
    qrcontaspagarVALOR_PAGO: TBCDField;
    qrcontaspagarIMPOSTO: TBCDField;
    qrcontaspagarLIQUIDO: TBCDField;
    qrcontaspagarDISTANCIA: TBCDField;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure qrcontaspagarAfterInsert(DataSet: TDataSet);
    procedure EDESCONTOExit(Sender: TObject);
    procedure FinalizarEdio1Click(Sender: TObject);
    procedure qrcontaspagarAfterEdit(DataSet: TDataSet);
    procedure qrcontaspagarAfterPost(DataSet: TDataSet);
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFretes_pgto: TFormFretes_pgto;
  acrescimo_a: real;
  desconto_a: real;
  pago_a: real;
  fornecedor: string;

implementation

uses principal, ModulodeDados, ConsContaBancariapas, Ubibli1, fretes_cheque,
  UpagarFretes, ModulodeDadosConsultas, chequefrete;

{$R *.dfm}

procedure TFormFretes_pgto.bcancelarClick(Sender: TObject);
begin
  //dm.Conexao.Rollback;
  CLOSE;
end;

procedure TFormFretes_pgto.bgravarClick(Sender: TObject);
var
  cod_caixa : Integer;
  cheque :string;
begin
 // try
    if rsoma.value <> RTOTAL_PAGO.value then
    begin
      application.MessageBox('O Valor informado não confere com o somatório das contas! Favor verificar!', 'Atençã!', mb_ok + MB_ICONWARNING);
      wwDBGrid1.setfocus;
    end
    else
    begin

      if RVALOR_BANCO.Value <> 0 then
      begin
        if econta.Text = '' then
        begin
          application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Atenção', mb_ok + MB_ICONWARNING);
          econta.setfocus;
          exit;
        end;
      end;

    //  frmmodulo.qrcaixa_mov.open;
      if rvalor_caixa.Value <> 0 then // pagamento com caixa
      begin

      {  frmmodulo.qrcaixa_mov.Insert;
        frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
        frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;

//      IF rvalor_caixa.Value > 0 THEN
//      BEGIN
        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := RVALOR_CAIXA.VALUE;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := RVALOR_CAIXA.VALUE * (-1);
//      END
//      ELSE
//      BEGIN
//        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0 ;
//        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := RVALOR_CAIXA.VALUE* (-1);
//        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := RVALOR_CAIXA.VALUE* (-1);
 //     END;

        frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := EPLANO.TEXT;
        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 25; // pgto. conta - caixa
        frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := EDIT1.TEXT;
        frmmodulo.qrcaixa_mov.post; }

                 // lancamento no caixa
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;


                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, fretes, COD_FRETEIRO, COD_VEICULO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :fretes, :COD_FRETEIRO, :COD_VEICULO)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DateEdit1.Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := RVALOR_CAIXA.VALUE;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := RVALOR_CAIXA.VALUE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ (qrcontaspagarfornecedor.Text);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                    qrcaixa_mov.parambyname('fretes').AsInteger := 1;
                    qrcaixa_mov.parambyname('COD_FRETEIRO').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
                    qrcaixa_mov.parambyname('COD_VEICULO').AsInteger := qrcontaspagarCOD_VEICULO.AsInteger;

                 //   qrcaixa_mov.parambyname('COD_FRETE').AsString  := qrcontaspagarCOD_LACTO.Text;
                    qrcaixa_mov.ExecSQL;


      end;

      if rVALOR_BANCO.VALUE <> 0 then // pagamento com banco
      begin
            if (CheckBox2.Checked = false) then
            begin
                     cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

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

                             // Botoes('G');
                            except
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

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC, fretes, COD_FRETEIRO, COD_VEICULO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC, :fretes, :COD_FRETEIRO, :COD_VEICULO)');

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
                    qrcaixa_mov.parambyname('fretes').AsInteger := 1;
                    qrcaixa_mov.parambyname('COD_FRETEIRO').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
                    qrcaixa_mov.parambyname('COD_VEICULO').AsInteger := qrcontaspagarCOD_VEICULO.AsInteger;
                    qrcaixa_mov.ExecSQL;
                    end;
             Application.ProcessMessages;
             
            if Application.MESSAGEBOX('Deseja emitir o chque para o Freteiro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
             begin
            dmc.Qrcheques.close;
            dmc.Qrcheques.Params.ParamByName('cheque').Text := cheque;
            dmc.Qrcheques.open;

             Application.CreateForm( TFormChequeFrete, FormChequeFrete );
           //  FormChequeFrete.RLReport1.DefaultFilter.Destroy;
             FormChequeFrete.RLReport1.Prepare;
             FormChequeFrete.RLReport1.PreviewModal;
            end;

      end;

      if rVALOR_TERCEIRO.VALUE <> 0 then // pagamento com cheque de terceiros
      begin

                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem, fretes, COD_FRETEIRO, COD_VEICULO)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem, :fretes, :COD_FRETEIRO, :COD_VEICULO)');

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
                    qrcaixa_mov.parambyname('fretes').AsInteger := 1;
                    qrcaixa_mov.parambyname('COD_FRETEIRO').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
                    qrcaixa_mov.parambyname('COD_VEICULO').AsInteger := qrcontaspagarCOD_VEICULO.AsInteger;
                   // qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
      end;


      qrcontaspagar.first;
      while not qrcontaspagar.eof do
      begin
        qrcontaspagar.edit;
        qrcontaspagar.fieldbyname('situacao').asinteger := 2;
        qrcontaspagar.fieldbyname('filtro').asinteger := 0;
        qrcontaspagar.fieldbyname('data_baixa').asdatetime := dateedit1.Date;
       // qrcontaspagar.FieldByName('movimento').asinteger := 99;
       // if (rvalor_caixa.Value <> 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value = 0) then qrcontaspagar.FieldByName('movimento').asinteger := 25;
       // if (rvalor_caixa.Value = 0) and (rvalor_banco.value <> 0) and (rvalor_terceiro.value = 0) then qrcontaspagar.FieldByName('movimento').asinteger := 26;
       // if (rvalor_caixa.Value = 0) and (rvalor_banco.value = 0) and (rvalor_terceiro.value <> 0) then qrcontaspagar.FieldByName('movimento').asinteger := 27;
        qrcontaspagar.fieldbyname('cod_caixa').AsInteger  := cod_caixa;
        qrcontaspagar.fieldbyname('cod_cheque').AsString := cheque;
        qrcontaspagar.post;
        qrcontaspagar.next;
      end;
      qrcontaspagar.Refresh;


      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 2 , valetroco.data_pagto = :DATA_PAGTO ' +
        ' where tipo = ''A'' and data >= :datai and data <= :dataf and situacao = 1 and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA_PAGTO').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('datai').asdatetime := FormPagarFretes.DateEdit1.DATE;
      Qbaixa.Params.ParamByName('dataf').asdatetime := FormPagarFretes.DateEdit2.DATE;
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
      Qbaixa.ExecSQL;

      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 2, valetroco.data_pagto = :DATA_PAGTO ' +
        ' where tipo = ''C'' and data >= :datai and data <= :dataf and situacao = 1 and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA_PAGTO').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('datai').asdatetime := FormPagarFretes.DateEdit1.DATE;
      Qbaixa.Params.ParamByName('dataf').asdatetime := FormPagarFretes.DateEdit2.DATE;
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
      Qbaixa.ExecSQL;

      Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 2, valetroco.data_pagto = :DATA_PAGTO ' +
        ' where tipo = ''V'' and data >= :datai and data <= :dataf and situacao = 1 and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA_PAGTO').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('datai').asdatetime := FormPagarFretes.DateEdit1.DATE;
      Qbaixa.Params.ParamByName('dataf').asdatetime := FormPagarFretes.DateEdit2.DATE;
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
      Qbaixa.ExecSQL;

       Qbaixa.close;
      Qbaixa.sql.clear;
      Qbaixa.sql.Add('UPDATE valetroco SET valetroco.situacao = 2, valetroco.data_pagto = :DATA_PAGTO ' +
        ' where tipo = ''P'' and data >= :datai and data <= :dataf and situacao = 1 and cod_cliente = :cod_cli');
      Qbaixa.Params.ParamByName('DATA_PAGTO').asdatetime := DateEdit1.DATE;
      Qbaixa.Params.ParamByName('datai').asdatetime := FormPagarFretes.DateEdit1.DATE;
      Qbaixa.Params.ParamByName('dataf').asdatetime := FormPagarFretes.DateEdit2.DATE;
      Qbaixa.Params.ParamByName('cod_cli').AsInteger := StrToInt(FormPagarFretes.Cliente.text);
      Qbaixa.ExecSQL;


    //  dm.Conexao.Commit;

      if rtotal_pago.value > 0 then
      begin
        //Mizael erro comunicacao
        //ecf_sangriaX(ecf_modelo, FORMATFLOAT('##############0.00', RTOTAL_PAGO.value));
      end;



     { formprincipal.log('Pagou fretes Conta Nr: ' +
      qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' +  qrcontaspagar.fieldbyname('fornecedor').asstring, 3);  }

      FormPagarFretes.qrcontaspagar.Refresh;
      close;
    end; // conferencia dos valores
{  except
    application.messagebox('Houve falha no pagamento destas contas! Este processamento foi cancelado!', 'Erro', mb_ok + mb_iconerror);
    dm.Conexao.Rollback;
  end; }
end;

procedure TFormFretes_pgto.qrcontaspagarAfterInsert(DataSet: TDataSet);
begin
  QRCONTASPAGAR.Cancel;
end;

procedure TFormFretes_pgto.EDESCONTOExit(Sender: TObject);
begin
  if QRCONTASPAGAR.state in [dsinsert, dsedit] then
  begin
    QRCONTASPAGAR.FIELDBYNAME('VALOR_PAGO').ASFLOAT :=
      QRCONTASPAGAR.FIELDBYNAME('LIQUIDO').ASFLOAT;
  end;
end;

procedure TFormFretes_pgto.FinalizarEdio1Click(Sender: TObject);
begin
  EDIT1.setfocus;
end;

procedure TFormFretes_pgto.qrcontaspagarAfterEdit(DataSet: TDataSet);
begin
//  desconto_a := qrcontaspagar.fieldbyname('desconto').asfloat;
//  acrescimo_a := qrcontaspagar.fieldbyname('acrescimo').asfloat;
  pago_a := qrcontaspagar.fieldbyname('valor_pago').asfloat;
end;

procedure TFormFretes_pgto.qrcontaspagarAfterPost(DataSet: TDataSet);
begin
 // rtotal_desconto.Value := rtotal_desconto.value + qrcontaspagar.fieldbyname('desconto').asfloat - desconto_a;
 // rtotal_acrescimo.Value := rtotal_acrescimo.value + qrcontaspagar.fieldbyname('acrescimo').asfloat - acrescimo_a;

  rtotal_pago.Value := rtotal_pago.value + qrcontaspagar.fieldbyname('valor_pago').asfloat - pago_a;

end;

procedure TFormFretes_pgto.wwDBGrid1Exit(Sender: TObject);
begin
  if qrcontaspagar.State = dsedit then qrcontaspagar.Post;
end;

procedure TFormFretes_pgto.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  dateedit1.Date := dm.sds_usuarios.fieldbyname('data').asdatetime;
end;

procedure TFormFretes_pgto.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TFormFretes_pgto.Edit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure TFormFretes_pgto.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TFormFretes_pgto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rvalor_caixa.SETFOCUS;

end;

procedure TFormFretes_pgto.Gravar1Click(Sender: TObject);
begin
  BGRAVAR.SETFOCUS;
  BGRAVAR.Click;
end;

procedure TFormFretes_pgto.bloccontaClick(Sender: TObject);
begin
  FormConsContaBancaria := tFormConsContaBancaria.create(self);
  FormConsContaBancaria.showmodal;
  enomeconta.text := dm.SDS_Conta_BancariaCONTA.asstring;
  econta.text     := dm.SDS_Conta_BancariaCODIGO.asstring;
  EDIT2.SETFOCUS;

end;

procedure TFormFretes_pgto.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if eCONTA.text <> '' then
  begin
    if not FormPrincipal.Locregistro(dm.SDS_Conta_Bancaria, econta.text, 'CODIGO') then
    begin
      bloccontaclick(FormFretes_pgto);
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

procedure TFormFretes_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFormFretes_pgto.FormShow(Sender: TObject);
begin

  dm.SDS_Conta_Bancaria.Close;
  dm.SDS_Conta_Bancaria.Open;

  if qrcontaspagar.RecordCount = 1 then // verificar se ha mais de uma conta para o pagamento em cheque
  begin
 //   edit1.text := qrcontaspagar.fieldbyname('historico').asstring;
  //  eplano.text := qrcontaspagar.fieldbyname('codconta').asstring;
  //  enomeplano.text := qrcontaspagar.fieldbyname('conta').asstring;
    fornecedor := 'Pgto. ' + qrcontaspagar.fieldbyname('fornecedor').AsString + ' - Docto: ' + qrcontaspagar.fieldbyname('N_MINUTA').asstring;
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

procedure TFormFretes_pgto.econtaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TFormFretes_pgto.Edit2Enter(Sender: TObject);
begin
  TEdit(sender).Color := $00A0FAF8;
end;

procedure TFormFretes_pgto.Edit2Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
  if rsoma.Value = RTOTAL_PAGO.VALUE then BGRAVAR.SETFOCUS else rvalor_terceiro.SETFOCUS;
end;

procedure TFormFretes_pgto.econtaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TFormFretes_pgto.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormFretes_pgto.blocplanoClick(Sender: TObject);
begin
{  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  eplano.text := m.sds_plano_contas.fieldbyname('CODIGO').asstring;
  enomeplano.Text := m.sds_plano_contas.fieldbyname('conta').asstring;
  RVALOR_CAIXA.SETFOCUS; }
end;

procedure TFormFretes_pgto.eplanoExit(Sender: TObject);
begin
{  tedit(sender).Color := clwindow;
 // eplano.text := frmprincipal.zerarcodigo(eplano.text, 6);
  //if eplano.text <> '000000' then
  begin
    if not formprincipal.Locregistro(dm.sds_plano_contas, eplano.text, 'codigo') then
    begin
      blocplanoclick(FormFretes_pgto);
    end
    else
    begin
      enomeplano.Text := dm.sds_plano_contas.fieldbyname('conta').asstring;

      RVALOR_CAIXA.SETFOCUS;

    end;
  end
  else
    blocplano.SetFocus;  }

end;

procedure TFormFretes_pgto.eplanoEnter(Sender: TObject);
begin
//  eplano.Color := $00A0FAF8;
end;

procedure TFormFretes_pgto.eplanoKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key = #13 then bgravar.setfocus;
end;

procedure TFormFretes_pgto.rvalor_caixaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TFormFretes_pgto.rvalor_caixaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;

  if RTOTAL_PAGO.value = rsoma.value then bgravar.setfocus else rvalor_banco.setfocus;


end;

procedure TFormFretes_pgto.rvalor_caixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFormFretes_pgto.rvalor_bancoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  if rvalor_banco.Value <> 0 then
    econta.setfocus
  else
    rvalor_terceiro.SetFocus;

end;

procedure TFormFretes_pgto.rvalor_bancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then econta.setfocus;
end;

procedure TFormFretes_pgto.bterceiroClick(Sender: TObject);
begin
  FormFretes_cheque := tFormFretes_cheque.create(self);
  FormFretes_cheque.showmodal;

  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bgravar.setfocus;  

end;

procedure TFormFretes_pgto.rvalor_terceiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rsoma.value := rvalor_caixa.value + rvalor_banco.value + rvalor_terceiro.value;
  bterceiro.setfocus
end;

procedure TFormFretes_pgto.rvalor_terceiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bterceiro.setfocus;
end;

procedure TFormFretes_pgto.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then EDIT1.SETFOCUS;
end;

procedure TFormFretes_pgto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#27 then
   begin
     Close;
   end;

end;

procedure TFormFretes_pgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key=VK_F10) then
      begin
      bgravar.Click;
      end;
end;

procedure TFormFretes_pgto.DateEdit2Exit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
 if DateEdit2.date <> date then
 begin
   CheckBox1.Checked := False;
   CheckBox2.Checked := False;
 end;
end;

end.
