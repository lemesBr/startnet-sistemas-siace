unit fFechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, ComCtrls, DBCtrls,
  Grids, DBGrids, CurrEdit, DB, FMTBcd, SqlExpr, IBCustomDataSet, IBQuery,
  ImgList, acAlphaImageList, FDvGlowButton, IBDatabase;

type
  TF_Fechamento = class(TForm)
    Not1: TNotebook;
    Label1: TLabel;
    Label2: TLabel;
    EdDataSaida: TDateEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodHospede: TEdit;
    EdCodApartamento: TEdit;
    EdHoraEntrada: TEdit;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EdSubTotal: TRxCalcEdit;
    EdDescAcresc: TRxCalcEdit;
    EdTotal: TRxCalcEdit;
    EdApartamento: TEdit;
    EdHospede: TEdit;
    EdDataSaida1: TDateEdit;
    EdHoraSaida1: TMaskEdit;
    EdQtdDiaria: TRxCalcEdit;
    EdTotalDiaria: TRxCalcEdit;
    EdTotalBar: TRxCalcEdit;
    EdTotalLigacao: TRxCalcEdit;
    EdValorDiaria: TRxCalcEdit;
    EdDataEntrada: TDateEdit;
    DsBar: TDataSource;
    DsLigacao: TDataSource;
    EdHoraSaida: TDateTimePicker;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    CheckBox2: TCheckBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBGrid1: TDBGrid;
    SPC_MOV_DIARIO: TSQLStoredProc;
    qrcaixa_mov: TIBQuery;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    Label14: TLabel;
    EdtTotalLavagen: TRxCalcEdit;
    Ds_Lavagen: TDataSource;
    ImageList3: TsAlphaImageList;
    btnCancelar: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnNovo: TAdvGlowButton;
    FDvGlowButton3: TAdvGlowButton;
    FDvGlowButton4: TAdvGlowButton;
    FDvGlowButton5: TAdvGlowButton;
    FDvGlowButton7: TAdvGlowButton;
    FDvGlowButton2: TAdvGlowButton;
    FDvGlowButton6: TAdvGlowButton;
    FDvGlowButton8: TAdvGlowButton;
    IBTRAce: TIBTransaction;
    QBuscaItens: TIBQuery;
    DSQBuscaItens: TDataSource;
    QBuscaItensBAR_CONTROLE: TIntegerField;
    QBuscaItensBAR_CODENTRADA: TIBStringField;
    QBuscaItensBAR_CODPRODUTO: TIntegerField;
    QBuscaItensBAR_COMANDA: TIBStringField;
    QBuscaItensBAR_DATA: TDateField;
    QBuscaItensBAR_QUANTIDADE: TIBBCDField;
    QBuscaItensBAR_VALORUNITARIO: TIBBCDField;
    QBuscaItensBAR_VALORTOTAL: TIBBCDField;
    QBuscaItensBAR_EMPRESA: TIntegerField;
    QBuscaItensBAR_FRACAO: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    QBuscaItensAPLICACAO: TIBStringField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    QBuscaItensNCM_SH: TIBStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TIBStringField;
    QBuscaItensML_QUANT_BEB: TIBBCDField;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH1: TIBStringField;
    QBuscaItensPERC_TRIBU: TIBBCDField;
    QBuscaItensFONTE: TIBStringField;
    QBuscaItensALIC_NAC: TIBBCDField;
    QBuscaItensALIC_IMP: TIBBCDField;
    QBuscaItensVEICULO: TIBStringField;
    QBuscaItensCHASSI: TIBStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TIBStringField;
    QBuscaItensN_MOTOR: TIBStringField;
    QBuscaItensANO_FAB: TIBStringField;
    QBuscaItensANO_MOD_FAB: TIBStringField;
    QBuscaItensTIPO_VEIC: TIBStringField;
    QBuscaItensN_SERIE: TIBStringField;
    QBuscaItensCOD_MODELO: TIBStringField;
    QBuscaItensESPECIE_VEICULO: TIBStringField;
    QBuscaItensCOD_COR_DENATRAN: TIBStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TIBStringField;
    QBuscaItensPESOBRUTO: TIBBCDField;
    QBuscaItensPESOLIQUIDO: TIBBCDField;
    Label15: TLabel;
    Label16: TLabel;
    Shape1: TShape;
    edinheiro: TShape;
    Shape6: TShape;
    eprazo: TShape;
    Shape8: TShape;
    ecartao: TShape;
    Shape2: TShape;
    Label17: TLabel;
    echeque: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Shape15: TShape;
    rsoma: TRxCalcEdit;
    Shape16: TShape;
    rdiferenca: TRxCalcEdit;
    Shape18: TShape;
    Shape17: TShape;
    Label25: TLabel;
    rdinheiro: TRxCalcEdit;
    rcheque: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rcartao: TRxCalcEdit;
    CheckBox3: TCheckBox;
    EdtAdiantamento: TRxCalcEdit;
    Label26: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure EdDescAcrescExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeEnter(Sender: TObject);
    procedure rchequeExit(Sender: TObject);
    procedure rcartaoEnter(Sender: TObject);
    procedure rcartaoExit(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  F_Fechamento: TF_Fechamento;
  lancando_contasreceber :Boolean;
  
implementation

uses fR3, FrFNRH, ModuleDados1, ModulodeDados, Principal, UDadosAdm,
  LancCheques, venda_contasreceber, BoletosBanc, gerNFce, Ubibli1,
  gerNFSe;

{$R *.dfm}

procedure TF_Fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TF_Fechamento.FormDestroy(Sender: TObject);
begin
  F_Fechamento := Nil;
end;

procedure TF_Fechamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = Vk_Return Then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TF_Fechamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then Key := #0;
    if Key = #27 then
  Close;
end;

procedure TF_Fechamento.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Fechamento.BitBtn2Click(Sender: TObject);
begin
  If EdDataSaida.Text = '  /  /    ' Then
  Begin
    ShowMessage('A data da saída não pode ficar em branco.');
    EdDataSaida.SetFocus;
    Exit;
  End;

  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add( 'Select * From EntraHospede, clientes      ' );
  DM1.Qry0.SQL.Add( 'Where Ent_CodHospede = CODIGO And' );
  DM1.Qry0.SQL.Add( '      Ent_CodEntrada = :P00' );
  DM1.Qry0.Params[00].AsString := CodEntrada;
  DM1.Qry0.Open;

  EdDataSaida1.Date     := EdDataSaida.Date;
  EdHoraSaida1.Text     := TimeToStr(EdHoraSaida.Time);
  EdCodApartamento.Text := DM1.Qry0.FieldByName('ENT_CodApartamento').AsString;
  EdApartamento.Text    := Apartamento;
  EdCodHospede.Text     := DM1.Qry0.FieldByName('ENT_CodHospede' ).AsString;
  EdHospede.Text        := DM1.Qry0.FieldByName('NOME_RS'    ).AsString;
//  EdQtdAdultos.Value    := DM1.Qry0.FieldByName('ENT_QtdAdultos' ).AsInteger;
//  EdQtdCriancas.Value   := DM1.Qry0.FieldByName('ENT_QtdCriancas').AsInteger;
//  EdQtdPagantes.Value   := DM1.Qry0.FieldByName('ENT_QtdPagantes').AsInteger;
//  EdQtdNormal.Value     := DM1.Qry0.FieldByName('ENT_QtdNormal'  ).AsInteger;
//  EdVlrNormal.Value     := DM1.Qry0.FieldByName('ENT_VlrNormal'  ).AsFloat;
//  EdTotalNormal.Value   := DM1.Qry0.FieldByName('ENT_TotalNormal').AsFloat;
//  EdQtdExtra.Value      := DM1.Qry0.FieldByName('ENT_QtdExtra'   ).AsInteger;
//  EdVlrExtra.Value      := DM1.Qry0.FieldByName('ENT_VlrExtra'   ).AsFloat;
//  EdTotalExtra.Value    := DM1.Qry0.FieldByName('ENT_TotalExtra' ).AsFloat;
//  EdSubTotal.Value      := DM1.Qry0.FieldByName('ENT_SubTotal'   ).AsFloat;
  EdtAdiantamento.Value := DM1.Qry0.FieldByName('ENT_ADIANTAMENTO' ).AsFloat;
  EdValorDiaria.Value   := DM1.Qry0.FieldByName('ENT_ValorDiaria').AsFloat;
  EdDataEntrada.Date    := DM1.Qry0.FieldByName('ENT_DataEntrada').AsDateTime;
  EdHoraEntrada.Text    := DM1.Qry0.FieldByName('ENT_HoraEntrada').AsString;
//  EdPrevisao.Text       := DM1.Qry0.FieldByName('ENT_Previsao').AsString;
//  Edit1.Text            := CodEntrada;
  EdQtdDiaria.Value      := Trunc(EdDataSaida.Date - EdDataEntrada.Date);

 // DM1.Conf.Open;
  
  If TimeToStr(EdHoraSaida.Time) > DM.SDS_CONFIGURACOESCON_HORADIARIA.Value Then
    If EdQtdDiaria.Value <> 0 Then
      EdQtdDiaria.Value := EdQtdDiaria.Value + 1
    Else
      EdQtdDiaria.Value := EdQtdDiaria.Value + 1
  Else
    If EdQtdDiaria.Value = 0 Then
      EdQtdDiaria.Value := EdQtdDiaria.Value + 1
    Else
      EdQtdDiaria.Value := EdQtdDiaria.Value;

  //CALCULA O TOTAL DO BAR
  //==============================
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add('Select Sum(BAR_ValorTotal) As TotalBar From Bar ');
  DM1.Qry0.SQL.Add('Where Bar_CodEntrada =:P01');
  DM1.Qry0.Params[00].AsString := CodEntrada;
  DM1.Qry0.Open;
  EdTotalBar.Value := DM1.Qry0.FieldByName('TotalBar').AsFloat;

  //CALCULA O TOTAL De LAVAGENS
  //==============================
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add('Select Sum(LAV_ValorTotal) As TotalLav From LAVANDERIA ');
  DM1.Qry0.SQL.Add('Where Lav_CodEntrada =:P01');
  DM1.Qry0.Params[00].AsString := CodEntrada;
  DM1.Qry0.Open;
  EdtTotalLavagen.Value := DM1.Qry0.FieldByName('TotalLav').AsFloat;

  //CALCULA O TOTAL DO TELEFONE
  //==============================
  DM1.Qry0.Close;
  DM1.Qry0.SQL.Clear;
  DM1.Qry0.SQL.Add('Select Sum(LIG_Total) As TotalTelefone From Ligacao ');
  DM1.Qry0.SQL.Add('Where LIG_CodEntrada =:P00');
  DM1.Qry0.Params[00].AsString := CodEntrada;
  DM1.Qry0.Open;
  EdTotalLigacao.Value := DM1.Qry0.FieldByName('TotalTelefone').AsFloat;

  DM1.Bar.Close;
  DM1.Bar.SQL.Clear;
  DM1.Bar.SQL.Add('Select * From Bar, Produtos            ');
  DM1.Bar.SQL.Add('Where Bar_CodProduto = Codigo ');
  DM1.Bar.SQL.Add('And Bar_CodEntrada =:P00 ');
  DM1.Bar.Params[00].AsString := CodEntrada;
  DM1.Bar.Open;

  DM1.Ligacao.Close;
  DM1.Ligacao.SQL.Clear;
  DM1.Ligacao.SQL.Add('Select * From Ligacao      ');
  DM1.Ligacao.SQL.Add('Where LIG_CodEntrada =:P00 ');
  DM1.Ligacao.Params[00].AsString := CodEntrada;
  DM1.Ligacao.Open;


  DM1.Lavanderia.Close;
  DM1.Lavanderia.SQL.Clear;
  DM1.Lavanderia.SQL.Add('Select * From lavanderia, Produtos     ');
  DM1.Lavanderia.SQL.Add('Where Lav_CodProduto = Codigo ');
  DM1.Lavanderia.SQL.Add('And lav_CodEntrada =:P00 ');
  DM1.Lavanderia.Params[00].AsString := CodEntrada;
  DM1.Lavanderia.Open;

  EdTotalDiaria.Value := EdQtdDiaria.Value *
                         EdValorDiaria.Value;
  EdSubTotal.Value    := EdTOTALDiaria.Value    +
                         EdTOTALLigacao.Value   +
                         EdTOTALBar.Value + EdtTotalLavagen.Value;

  Not1.ActivePage := '2';
end;

procedure TF_Fechamento.BitBtn8Click(Sender: TObject);
begin
  EdTotal.Value := EdSubTotal.Value - EdtAdiantamento.value;
  Not1.ActivePage := '3';
  EdDescAcresc.SetFocus;
end;

procedure TF_Fechamento.BitBtn7Click(Sender: TObject);
begin
  Not1.ActivePage := '1';
end;

procedure TF_Fechamento.BitBtn9Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Fechamento.BitBtn4Click(Sender: TObject);
begin
  Not1.ActivePage := '2';
end;

procedure TF_Fechamento.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TF_Fechamento.BitBtn5Click(Sender: TObject);
var
  TAM : Integer;
  NItem, NValor, E :Integer;
begin
 if rsoma.Value < EdTotal.Value then
 begin
   ShowMessage('Total dos Pagamentos menor que o total do Fechamento');
   Exit;
 end;
        
             IF rdinheiro.Value > 0 then
             BEGIN
                   // lancto no caixa
                   
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_ENTRADA)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_ENTRADA)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DATE;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := (rdinheiro.Value);
                    qrcaixa_mov.parambyname('valor').asfloat := (rdinheiro.Value);

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ref Apto = '+ EdCodApartamento.Text +'-'+ EdApartamento.Text  +' - ' + EdHospede.text+ ' - em Dinheiro';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('COD_ENTRADA').Value  := CodEntrada;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              end;


         IF rcartao.Value > 0 then
         BEGIN
             Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
            // FrmDadosAdm.EdtValor.Value := rcartao.Value;
             FrmDadosAdm.EdtParcelamento.Text:= '1';
             FrmDadosAdm.Edtvalor.Value := rcartao.Value;
             FrmDadosAdm.EdtDoc.Text    := CodEntrada;
             FrmDadosAdm.dt_venda.Date  := Date;
             FrmDadosAdm.EdtCli.Text    :=  EdCodHospede.Text;
             FrmDadosAdm.EdtCli1.Text :=    EdHospede.Text;
             Application.ProcessMessages;
             FrmDadosAdm.showmodal;
             Application.ProcessMessages;
         end;

         IF rcrediario.Value > 0 then
         BEGIN
         Application.CreateForm(TfrmHotel_contasreceber, frmHotel_contasreceber);
         frmHotel_contasreceber.SHOWMODAL;
         IF lancando_contasreceber = False then
         begin
          Exit;
         end;
                     If DM.SDS_CONFIGURACOESBOLETO.Text = 'S' then
                     if Application.MESSAGEBOX('Confirma a Emissão do Boleto?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                      begin
                      try
                      If FormBoletos=nil then
                      begin
                      FormBoletos:=TFormBoletos.Create(self);
                      FormBoletos.Tag := 2;
                      FormBoletos.EDIT2.Text := CodEntrada;
                      FormBoletos.RXLABEL6.Caption := EdHospede.Text;
                      FormBoletos.ShowModal;
                      end;
                      except
                      ShowMessage('Houve um erro na emissão do Boleto');
                      end;
                      end;
         end;


         IF rcheque.Value > 0 then
         BEGIN

                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  DM.SDS_USUARIOS.FIELDBYNAME('DATA').ASdatetime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := (rcheque.Value);
                    qrcaixa_mov.parambyname('valor').asfloat := (rcheque.Value);

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ref Apto = ' + EdApartamento.Text  + ' - ' + EdHospede.text+' - Em Cheque';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('codigo_venda').Value  := NULL;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
             // fim lancto no caixa

             If FormCheques=nil then
             begin
              FormCheques:=TFormCheques.Create(self);
              FormCheques.Tag := 2;
              FormCheques.CurrencyEdit1.Value := rcheque.Value;
              FormCheques.ShowModal;
             end;
             {if formVendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.showmodal;
              END;  }
           end;

    Application.ProcessMessages;

  If Not DM.IBTransaction.InTransaction Then
    DM.IBTransaction.StartTransaction;

  Try
    if CheckBox3.Checked = False then
    begin
    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE Apartamento        ' +
                     'SET                       ' +
                     'APA_Situacao   =:P01 ,    ' +
                     'APA_CodEntrada =:P02      ' +
                     'WHERE                     ' +
                     'APA_CodApartamento = :P03 ');
    DM1.IBS1.Params[00].AsString := 'LIVRE';
    DM1.IBS1.Params[01].AsString := '';
    DM1.IBS1.Params[02].AsString := CodApartamento;
    DM1.IBS1.ExecQuery;


    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE EntraHospede       ' +
                     'SET                       ' +
                     'ENT_DataSaida    =:P00 ,  ' +
                     'ENT_HoraSaida    =:P01 ,  ' +
                     'ENT_QtdDiaria    =:P02 ,  ' +
                     'ENT_TotalBar     =:P03 ,  ' +
                     'ENT_TotalLigacao =:P04 ,  ' +
                     'ENT_TotalDiaria  =:P05 ,  ' +
                     'ENT_TotalGeral   =:P06 ,  ' +
                     'ENT_DescAcrescGeral =:P07 , ' +
                     'ENT_TotalPago       =:P08 , ' +
                     'ENT_FormaPagamento  =:P09,  ' +
                     'ENT_VALOR_LAV       =:P10  ' +
                     'WHERE                      ' +
                     'ENT_CodEntrada   =:P11     ');
    DM1.IBS1.Params[00].AsDate   := EdDataSaida.Date;
    DM1.IBS1.Params[01].AsTime   := EdHoraSaida.Time;
    DM1.IBS1.Params[02].AsFloat  := EdQtdDiaria.Value;
    DM1.IBS1.Params[03].AsFloat  := EdTotalBar.Value;
    DM1.IBS1.Params[04].AsFloat  := EdTotalLigacao.Value;
    DM1.IBS1.Params[05].AsFloat  := EdTotalDiaria.Value;
    DM1.IBS1.Params[06].AsFloat  := EdSubTotal.Value;
    DM1.IBS1.Params[07].AsFloat  := EdDescAcresc.Value;
    DM1.IBS1.Params[08].AsFloat  := EdTotal.Value + EdtAdiantamento.Value;
    DM1.IBS1.Params[09].AsInteger:= 0;
    DM1.IBS1.Params[10].AsFloat  := EdtTotalLavagen.value;
    DM1.IBS1.Params[11].AsString := CodEntrada;
    DM1.IBS1.ExecQuery;
    DM.IBTransaction.CommitRetaining;
    end else
    BEGIN
    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE EntraHospede       ' +
                     'SET                       ' +
                     'ENT_DataSaida    =:P00 ,  ' +
                     'ENT_HoraSaida    =:P01 ,  ' +
                     'ENT_QtdDiaria    =:P02 ,  ' +
                     'ENT_TotalBar     =:P03 ,  ' +
                     'ENT_TotalLigacao =:P04 ,  ' +
                     'ENT_TotalDiaria  =:P05 ,  ' +
                     'ENT_TotalGeral   =:P06 ,  ' +
                     'ENT_DescAcrescGeral =:P07 , ' +
                     'ENT_TotalPago       =:P08 , ' +
                     'ENT_FormaPagamento  =:P09,  ' +
                     'ENT_VALOR_LAV       =:P10,  ' +
                     'ENT_ADIANTAMENTO    =:P11  ' +
                     'WHERE                      ' +
                     'ENT_CodEntrada   =:P12     ');
    DM1.IBS1.Params[00].AsDate   := EdDataSaida.Date;
    DM1.IBS1.Params[01].AsTime   := EdHoraSaida.Time;
    DM1.IBS1.Params[02].AsFloat  := EdQtdDiaria.Value;
    DM1.IBS1.Params[03].AsFloat  := EdTotalBar.Value;
    DM1.IBS1.Params[04].AsFloat  := EdTotalLigacao.Value;
    DM1.IBS1.Params[05].AsFloat  := EdTotalDiaria.Value;
    DM1.IBS1.Params[06].AsFloat  := EdSubTotal.Value;
    DM1.IBS1.Params[07].AsFloat  := EdDescAcresc.Value;
    DM1.IBS1.Params[08].AsFloat  := EdTotal.Value;
    DM1.IBS1.Params[09].AsInteger:= 0;
    DM1.IBS1.Params[10].AsFloat  := EdtTotalLavagen.value;
    DM1.IBS1.Params[11].AsFloat  := EdTotal.Value;
    DM1.IBS1.Params[12].AsString := CodEntrada;
    DM1.IBS1.ExecQuery;

    DM.IBTransaction.CommitRetaining;

    lancando_contasreceber := True;
    end;

   if Application.MESSAGEBOX('Deseja Emitir a Nota do Hospede ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Begin
      DM1.Qry0.Close;
      DM1.Qry0.SQL.Clear;
      DM1.Qry0.SQL.Add( ' Select * From EntraHospede, clientes, Apartamento  ' );
      DM1.Qry0.SQL.Add( ' Where ' );
      DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
      DM1.Qry0.SQL.Add( ' ENT_CodHospede     = CODIGO             And  ' );
      DM1.Qry0.SQL.Add( ' ENT_CODENTRADA     = :P00                    ' );
      DM1.Qry0.Params[00].AsString := CodEntrada;
      DM1.Qry0.Open;


              DM1.Bar.Close;
              DM1.Bar.SQL.Clear;
              DM1.Bar.SQL.Add('Select * From Bar, Produtos            ');
              DM1.Bar.SQL.Add('Where Bar_CodProduto = Codigo ');
              DM1.Bar.SQL.Add('And Bar_CodEntrada =:P00 ');
              DM1.Bar.Params[00].AsString := CodEntrada;
              DM1.Bar.Open;

              DM1.Ligacao.Close;
              DM1.Ligacao.SQL.Clear;
              DM1.Ligacao.SQL.Add('Select * From Ligacao      ');
              DM1.Ligacao.SQL.Add('Where LIG_CodEntrada =:P00 ');
              DM1.Ligacao.Params[00].AsString := CodEntrada;
              DM1.Ligacao.Open;

              DM1.Lavanderia.Close;
              DM1.Lavanderia.SQL.Clear;
              DM1.Lavanderia.SQL.Add('Select * From Lavanderia, Produtos ');
              DM1.Lavanderia.SQL.Add('Where lav_CodProduto = Codigo ');
              DM1.Lavanderia.SQL.Add('And lav_CodEntrada =:P00 ');
              DM1.Lavanderia.Params[00].AsString := CodEntrada;
              DM1.Lavanderia.Open;


      If F_R3= Nil Then
      Application.CreateForm(TF_R3,F_R3);

      //      F_R3.ListApartOcupado.Preview;
      F_R3.ListApartOcupado.Preview;

    End;

     IF EdTotalBar.Value > 0 then
     BEGIN
         If DM.SDS_CONFIGURACOESUTILIZA_NFE.Text = 'S' then
         If formprincipal.NFCE = 'S' then
         if Application.MESSAGEBOX('Confirma Geração e Emissão da NFC-e dos Produtos no Bar?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
         begin

                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO');
                        dm.SDS_NFCE.ParamByName('NR_PEDIDO').AsInteger := -1;
                        dm.SDS_NFCE.open;
                        dm.sds_nfce_itens.Active:=false;
                        dm.sds_nfce_itens.Active:=true;

                        {dm.ProxCod1.Close;
                        dm.ProxCod1.SQL.Clear;
                        dm.ProxCod1.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota  where nfece_nota.cd_empresa =:cod_emp');
                        dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod1.open;
                        dm.ProxCod1.FetchAll;   }

                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota');
                        //dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod.open;
                      //  dm.ProxCod1.FetchAll;

                    DM1.Qry0.Close;
                    DM1.Qry0.SQL.Clear;
                    DM1.Qry0.SQL.Add( 'Select * From EntraHospede, clientes, cidades ' );
                    DM1.Qry0.SQL.Add( 'Where Ent_CodHospede = CODIGO And' );
                    DM1.Qry0.SQL.Add( 'clientes.cod_cidade = CIDADES.cod_cidade AND' );
                    DM1.Qry0.SQL.Add( '      Ent_CodEntrada = :P00' );
                    DM1.Qry0.Params[00].AsString := CodEntrada;
                    DM1.Qry0.Open;


                    DM1.Bar.Close;
                    DM1.Bar.SQL.Clear;
                    DM1.Bar.SQL.Add('Select * From Bar, Produtos            ');
                    DM1.Bar.SQL.Add('Where Bar_CodProduto = Codigo ');
                    DM1.Bar.SQL.Add('And Bar_CodEntrada =:P00 ');
                    DM1.Bar.Params[00].AsString := CodEntrada;
                    DM1.Bar.Open;
                    DM1.Bar.FetchAll;


                       dm.SDS_NFCE.Insert;
                      // dm.SDS_NFcE.EDIT;
                      //  dm.SPC_NOTA_NFE.ExecProc;

                        N:= (DM.ProxCodN_CODIGO.AsInteger + 1);
                        dm.SDS_NFCECD_EMPRESA.Text             := dm.SDS_EmpresaCODIGO.Text;
                        dm.sds_nfceNr_nota.AsInteger           :=  N ;
                        DM.sds_nfceDt_emissao.AsDateTime       :=  date;
                        DM.sds_nfceDt_lancamento.AsDateTime    :=  date;
                        DM.sds_nfcevl_mercadorias.Text         :=  EdTotalBar.Text;
                        DM.sds_nfceVl_descontos.AsFloat          :=  0;
                        DM.sds_nfceVl_total.Text               :=  EdTotalBar.Text;
                        dm.sds_nfcecod_cliente.Text            :=  EdCodHospede.Text;
                        dm.sds_nfceVl_acrescimos.AsFloat         :=  0;
                        DM.SDS_NFcECOD_PGTO.Text               :=  '1';
                        DM.SDS_NFcECD_FUNCIONARIO.Text         :=  DM.SDS_UsuariosCODIGO.text;
                        DM.SDS_NFcESERIE_NF.Text               :=  '1';
                      //  DM.SDS_NFcENR_PEDIDO.value             :=  null;
                        IF (rdinheiro.value > 0)  or (rcheque.Value > 0)  then
                        dm.SDS_NFcEVL_AVISTA.AsFloat              :=  rdinheiro.value + rcheque.Value
                        else
                        dm.SDS_NFcEVL_AVISTA.AsFloat           :=  0;
                        IF (rcrediario.Value > 0)  or (rcartao.value > 0)  then
                        DM.SDS_NFcEVL_PRAZO.asfloat              := ( rcrediario.Value + rcartao.value )
                        else
                        DM.SDS_NFcEVL_PRAZO.AsFloat            :=  0;
                        dm.SDS_NFcECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
                        //DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
                        DM.SDS_NFcECD_CFOP.Text                :=  '5102';//RxDBComboEdit2.Text;
                        DM.SDS_NFcECFOP_DESC.Text              :=  'VENDA DE MERCADORIA FDQUIRIDA OU RECEBIDA DE TERCEIROS';//suiEdit2.Text;
                        IF (rdinheiro.value > 0)  or (rcheque.Value > 0)  then
                        BEGIN
                        DM.SDS_NFcETP.TEXT                     :=  'A';
                        DM.SDS_NFcEPAGAMENTO.text              :=  'A VISTA';
                        end;
                         IF (rcrediario.Value > 0)  or (rcartao.value > 0)  then
                        BEGIN
                        DM.SDS_NFcETP.TEXT                     :=  'P';
                        DM.SDS_NFcEPAGAMENTO.text              :=  'A PRAZO';
                        end;
                        DM.SDS_NFcENOME_CLIENTE_FOR.Text       :=  DM1.Qry0.FieldByName('NOME_RS'    ).AsString;
                        DM.SDS_NFcEBAIRRO_CLIENTE_FORN.Text    :=  DM1.Qry0.FieldByName('BAIRRO'    ).AsString;
                        dm.SDS_NFcEEND_NUM_CLIENTE.Text        :=  DM1.Qry0.FieldByName('NUMERO'    ).AsString;
                        DM.SDS_NFcECEP_CLIENTE_FORN.Text       :=  DM1.Qry0.FieldByName('CEP'    ).AsString;
                        DM.SDS_NFcETELEFONE.Text               :=  DM1.Qry0.FieldByName('TELEFONE'    ).AsString;
                        dm.SDS_NFcECPF_CNPJ_CLIENTE_FORN.text  :=  DM1.Qry0.FieldByName('CPF_CNPJ'    ).AsString;
                        dm.SDS_NFcETIPO_PESSOA.text            :=  DM1.Qry0.FieldByName('TIPO'    ).AsString;
                        dm.SDS_NFcECOD_IBGE.Text               :=  DM1.Qry0.FieldByName('COD_IBGE'    ).AsString;
                        DM.SDS_NFcEPRODUTOR_RURAL.Text         :=  DM1.Qry0.FieldByName('PRODUTOR_RURAL'    ).AsString;
                        DM.SDS_NFcEIE_CLIENTE_FORN.Text        :=  DM1.Qry0.FieldByName('RG_IE'    ).AsString;
                        DM.SDS_NFcEIE_PRODUTOR.Text            :=  DM1.Qry0.FieldByName('INSC_PRODUTOR_RURAL'    ).AsString;
                        dm.SDS_NFcECIDADE_CLIENTE_FORN.text    :=  DM1.Qry0.FieldByName('CIDADE'    ).AsString;
                        DM.SDS_NFcEUF_CLIENTE_FORN.Text        :=  DM1.Qry0.FieldByName('UF'    ).AsString;
                        dm.SDS_NFcEENDERECO_CLI_FORN.Text      :=  DM1.Qry0.FieldByName('ENDERECO'    ).AsString;
                        DM.SDS_NFCEVL_TROCO.AsCurrency          := 0;
                        DM.SDS_NFcESTATUS.Text                 :=  'N';

                        Application.ProcessMessages;

                     {   IF RxDBComboEdit1.Text >'' then
                        BEGIN
                        DM.SDS_NFcECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
                        DM.SDS_NFcEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
                        DM.SDS_NFcENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
                        DM.SDS_NFcEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
                        DM.SDS_NFcECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
                        DM.SDS_NFcEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
                        end; }

                        DM.SDS_NFcE.Post;
                      //  DM.SDS_NFcE.ApplyUpdates(0);





                      DM1.BAR.First;
                      Contador := DM1.BAR.RecordCount;
                      For E:=1 to Contador do
                      begin
                       TRY
                        dm.sds_nfce_itens.Insert;
                        dm.sds_nfce_itens.Edit;
                        NValor:=1;
                        tam := length(RemoveChar(DM1.BarCODIGO_BARRAS.Text));

                        NItem:=NItem+NValor;
                        dm.sds_nfce_itensITEN.AsInteger               := NItem;
                        dm.sds_nfce_itensNR_SEQUENCIA.Text            := '1';
                        dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                        if tam = 13 then
                            begin
                        dm.sds_nfce_itensCOD_PRODUTO.Text             := DM1.BarCODIGO_BARRAS.Text;
                            end else
                            begin
                        dm.sds_nfce_itensCOD_PRODUTO.Text             := '';
                        end;


                           if IBTRAce.Active then
                              IBTRAce.Commit;
                           IBTRAce.StartTransaction;
                           with QBuscaItens do
                              begin
                                 close;
                                 Parambyname('cod_ven').AsString:= CodEntrada;
                                 Parambyname('codpro').AsInteger:= strtoint(DM1.BarBAR_CODPRODUTO.Text);
                                 open;
                                 Last;
                              end;
                           IBTRAce.CommitRetaining;

                      //  dm.sds_nfce_itensCD_ATUALIZACAO.Value         := NULL;
                        DM.sds_nfce_itensCODIGO_PROD.Text             := DM1.BarBAR_CODPRODUTO.Text;
                        dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := DM1.BarDESCRICAO.Text;
                        if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                        dm.sds_nfce_itensVL_DESCONTO.Text             := '0'
                        ELSE
                        dm.sds_nfce_itensVL_DESCONTO.Text             := '0';
                        dm.sds_nfce_itensQT_PRODUTO.AsFloat           := DM1.BarBAR_QUANTIDADE.asfloat;
                        if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                        dm.sds_nfce_itensVL_UNITARIO.Asfloat          := DM1.BarBAR_VALORTOTAL.AsFloat / DM1.BarBAR_QUANTIDADE.asfloat
                        ELSE
                        dm.sds_nfce_itensVL_UNITARIO.Asfloat          := DM1.BarBAR_VALORUNITARIO.AsFloat;

                        dm.sds_nfce_itensVL_TOTAL.Text                := DM1.BarBAR_VALORTOTAL.Text;
                        dm.sds_nfce_itensDESC_UNIDADE.Text            := DM1.BarDESC_UNIDADE.Text;
                        dm.sds_nfce_itensVL_OUTROS.Text               := '0';
                        //dm.sds_nfce_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                        DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
                        dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_VENDA.Text;

                        dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
                        dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
                        dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                        IF QBuscaItensNCM_SH.Text > '' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                        end else
                        IF QBuscaItensNCM_SH1.Text > '' THEN
                        begin
                        DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                        end;
                        IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                        end;
                        IF DM.sds_nfce_itensCOD_NCM.Text ='00000000' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                        end;
                        IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                        END;

                        dm.sds_nfce_itensALIQ_ICM.AsFloat               := 0 ;
                        dm.sds_nfce_itensVL_ICM.AsFloat                 := 0;
                        dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := 0;


                        dm.sds_nfce_itensALIQ_IPI.AsFloat               := 0 ;
                        dm.sds_nfce_itensVL_IPI.AsFloat                 := 0;
                        dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := 0;



                        dm.sds_nfce_itensALIQ_ISS.AsFloat               := 0 ;
                        dm.sds_nfce_itensVL_ISS.AsFloat                 := 0;
                        dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := 0 ;




                        dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := 0;
                        dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := 0;
                        DM.sds_nfce_itensALIQ_PIS.AsFloat               := 0;
                        DM.sds_nfce_itensALIQ_COFINS.AsFloat            := 0;
                        dm.sds_nfce_itensVL_PIS.AsFloat                 := 0 ;
                        dm.sds_nfce_itensVL_COFINS.AsFloat              := 0 ;

                        dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := 0;
                        dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := 0;
                        dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := 0;
                        dm.sds_nfce_itensCOD_EMPRESA.text               := dm.SDS_EmpresaCODIGO.Text;

                        dm.sds_nfce_itens.Post;
                        dm.sds_nfce_itens.ApplyUpdates(0);

                        DM1.BAR.next;

                        Application.ProcessMessages;
                        EXCEPT
                          ShowMessage('Erro ao gravar os itens da nfce...');
                        end;
                        end;
                      //  NOTA := IntToStr(N);
                        {DM.SDS_NFCE.Filtered := False;
                        DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
                        DM.SDS_NFCE.Filtered := True;}
                          dm.SDS_NFCE.Close;
                          dm.SDS_NFCE.SQL.clear;
                          dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA');
                          dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                          dm.SDS_NFCE.open;

                        DM.SDS_NFcE.Edit;
                        DM.SDS_NFcECD_CFOP.Text      :=     QBuscaItensCFOP_EST_VENDA.Text;
                        DM.SDS_NFcE.Post;
                       // DM.SDS_NFcE.ApplyUpdates(0);
                     //   DM.Conexao.Commit;

                        //confirmar.Enabled := True;
                        Application.ProcessMessages;


                         //   NOTA := QConsNfeNR_NOTA.TEXT;

                          IMPRIME := TRUE;

                          FormGeraNFce:=TFormGeraNFce.Create(self);
                          FormGeraNFce.combobox2.itemIndex := 0;
                          FormGeraNFce.combobox2.Enabled := False;
                          DM.SDS_CFOP.Active := False;
                          DM.SDS_CFOP.DataSet.CommandText:='select * from CFOP where codigo_cfop >=4000';
                          DM.SDS_CFOP.Active := true;
                          FormGeraNFce.RxDBComboEdit2.Text :=  QBuscaItensCFOP_EST_VENDA.Text;
                          {dm.SDS_NFCE.Active := false;
                          dm.SDS_NFCE.Active := True;
                          DM.SDS_NFCE.Filtered := False;
                          DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (INTTOSTR(N));
                          DM.SDS_NFCE.Filtered := True;}
                          dm.SDS_NFCE.Close;
                          dm.SDS_NFCE.SQL.Clear;
                          dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA');
                          dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                          dm.SDS_NFCE.open;
                          DM.sds_nfe_itens.Active := false;
                          DM.sds_nfe_itens.Active := true;
                          FormGeraNFce.Inserir.Enabled := False;
                          FormGeraNFce.confirmar.Enabled := TRUE;
                          FormGeraNFce.ShowModal;
                   end;
     end;

     if dm.SDS_UsuariosUTILIZA_NFSE.Text ='S'then
     begin
       if Application.MESSAGEBOX('Confirma Geração e Emissão da NFS-e da Hospedagem?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
         begin

                        DM.sds_nfse.Active:=false;
                        DM.sds_nfse.Active:=true;
                        DM.sds_nfse_itens.Active:=false;
                        DM.sds_nfse_itens.Active:=true;

                        dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(nr_nota) as n_codigo  from nfse_nota');
                        //dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod.open;
                      //  dm.ProxCod1.FetchAll;

                        DM1.Qry0.Close;
                        DM1.Qry0.SQL.Clear;
                        DM1.Qry0.SQL.Add( 'Select * From EntraHospede, clientes, cidades ' );
                        DM1.Qry0.SQL.Add( 'Where Ent_CodHospede = CODIGO And' );
                        DM1.Qry0.SQL.Add( 'clientes.cod_cidade = CIDADES.cod_cidade AND' );
                        DM1.Qry0.SQL.Add( '      Ent_CodEntrada = :P00' );
                        DM1.Qry0.Params[00].AsString := CodEntrada;
                        DM1.Qry0.Open;



                        DM.sds_nfse.Insert;
                        DM.sds_nfse.EDIT;
                       //  dm.SPC_NOTA_NFE.ExecProc;

                        N:= (DM.ProxCodN_CODIGO.AsInteger + 1);
                        DM.sds_nfseCD_EMPRESA.Text             := dm.SDS_EmpresaCODIGO.Text;
                        DM.sds_nfseNr_nota.AsInteger           :=  N ;
                        DM.sds_nfseDt_emissao.AsDateTime       :=  date;
                        DM.sds_nfseDt_lancamento.AsDateTime    :=  date;
                        DM.sds_nfsevl_mercadorias.AsFloat      :=  EdTotal.Value - EdTotalBar.Value;
                        DM.sds_nfseVl_descontos.AsFloat        :=  0;
                        DM.sds_nfseVl_total.AsFloat            :=  EdTotal.Value - EdTotalBar.Value;
                        DM.sds_nfsecod_cliente.Text            :=  EdCodHospede.Text;
                        DM.sds_nfseVl_acrescimos.AsFloat       :=  0;
                        DM.sds_nfseCOD_PGTO.Text               :=  '1';
                        DM.sds_nfseCD_FUNCIONARIO.Text         :=  DM.SDS_UsuariosCODIGO.text;
                        DM.sds_nfseSERIE_NF.Text               :=  '1';
                      //  DM.sds_nfseNR_PEDIDO.value             :=  null;
                        IF (rdinheiro.value > 0)  or (rcheque.Value > 0)  then
                        DM.sds_nfseVL_AVISTA.AsFloat           :=  rdinheiro.value + rcheque.Value - EdTotalBar.Value
                        else
                        DM.sds_nfseVL_AVISTA.AsFloat           :=  0;
                        IF (rcrediario.Value > 0)  or (rcartao.value > 0)  then
                        DM.sds_nfseVL_PRAZO.AsFloat            :=  rcrediario.Value + rcartao.value - EdTotalBar.Value
                        else
                        DM.sds_nfseVL_PRAZO.AsFloat            :=  0;
                        DM.sds_nfseCD_CFOP.Text                :=  '5949';
                        DM.sds_nfseCFOP_DESC.Text              :=  'OUTRA SAIDA DE MERCADORIA OU PRESTACAO DE SERVICO NAO ESPECIFICADO';//suiEdit2.Text;
                        IF (rdinheiro.value > 0)  or (rcheque.Value > 0)  then
                        BEGIN
                        DM.sds_nfseTP.TEXT                     :=  'A';
                        DM.sds_nfsePAGAMENTO.text              :=  'A VISTA';
                        end;
                         IF (rcrediario.Value > 0)  or (rcartao.value > 0) then
                        BEGIN
                        DM.sds_nfseTP.TEXT                     :=  'P';
                        DM.sds_nfsePAGAMENTO.text              :=  'A PRAZO';
                        end;
                        DM.sds_nfseNOME_CLIENTE_FOR.Text       :=  DM1.Qry0.FieldByName('NOME_RS'    ).AsString;
                        DM.sds_nfseBAIRRO_CLIENTE_FORN.Text    :=  DM1.Qry0.FieldByName('BAIRRO'    ).AsString;
                        DM.sds_nfseEND_NUM_CLIENTE.Text        :=  DM1.Qry0.FieldByName('NUMERO'    ).AsString;
                        DM.sds_nfseCEP_CLIENTE_FORN.Text       :=  DM1.Qry0.FieldByName('CEP'    ).AsString;
                        DM.sds_nfseTELEFONE.Text               :=  DM1.Qry0.FieldByName('TELEFONE'    ).AsString;
                        DM.sds_nfseCPF_CNPJ_CLIENTE_FORN.text  :=  DM1.Qry0.FieldByName('CPF_CNPJ'    ).AsString;
                        DM.sds_nfseTIPO_PESSOA.text            :=  DM1.Qry0.FieldByName('TIPO'    ).AsString;
                        DM.sds_nfseCOD_IBGE.Text               :=  DM1.Qry0.FieldByName('COD_IBGE'    ).AsString;
                        DM.sds_nfsePRODUTOR_RURAL.Text         :=  DM1.Qry0.FieldByName('PRODUTOR_RURAL'    ).AsString;
                        DM.sds_nfseIE_CLIENTE_FORN.Text        :=  DM1.Qry0.FieldByName('RG_IE'    ).AsString;
                        DM.sds_nfseIE_PRODUTOR.Text            :=  DM1.Qry0.FieldByName('INSC_PRODUTOR_RURAL'    ).AsString;
                        DM.sds_nfseCIDADE_CLIENTE_FORN.text    :=  DM1.Qry0.FieldByName('CIDADE'    ).AsString;
                        DM.sds_nfseUF_CLIENTE_FORN.Text        :=  DM1.Qry0.FieldByName('UF'    ).AsString;
                        DM.sds_nfseENDERECO_CLI_FORN.Text      :=  DM1.Qry0.FieldByName('ENDERECO'    ).AsString;
                        DM.SDS_NFSEIM_CLIENT_FOR.TEXT          :=  DM1.Qry0.FieldByName('INSC_MUNICIPAL').AsString;
                       // DM.sds_nfseVL_TROCO.AsCurrency          := 0;
                        DM.sds_nfseSTATUS.Text                 :=  'N';

                        Application.ProcessMessages;

                        DM.sds_nfse.Post;
                        DM.sds_nfse.ApplyUpdates(0);


                        // insere item da hospedagem
                        TRY
                        DM.sds_nfse_itens.Insert;
                        DM.sds_nfse_itens.Edit;
                        NValor:=1;
                        tam := length(RemoveChar(DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT));

                        NItem:=NItem+NValor;
                        DM.sds_nfse_itensITEN.AsInteger               := NItem;
                        DM.sds_nfse_itensNR_SEQUENCIA.Text            := '1';
                        DM.sds_nfse_itensNR_NOTA.AsInteger            := N;
                        if tam = 13 then
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                            end else
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                        end;


                        {   if IBTRAce.Active then
                              IBTRAce.Commit;
                           IBTRAce.StartTransaction;
                           with QBuscaItens do
                              begin
                                 close;
                                 Parambyname('cod_ven').AsString:= CodEntrada;
                                 Parambyname('codpro').AsInteger:= strtoint(DM1.BarBAR_CODPRODUTO.Text);
                                 open;
                                 Last;
                              end;
                           IBTRAce.CommitRetaining;  }

                      //  DM.sds_nfse_itensCD_ATUALIZACAO.Value         := NULL;
                        DM.sds_nfse_itensCODIGO_PROD.Text             := DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT;;
                        DM.sds_nfse_itensDESCRICAO_PRODUTO.Text       := 'SERVICOS DE HOSPEDAGENS';
                        if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0'
                        ELSE
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0';
                        DM.sds_nfse_itensQT_PRODUTO.AsFloat           := EdQtdDiaria.Value;
                        DM.sds_nfse_itensVL_UNITARIO.Asfloat          := (EdTotalDiaria.Value - EdDescAcresc.Value) / EdQtdDiaria.Value;

                        DM.sds_nfse_itensVL_TOTAL.asfloat                := EdTotalDiaria.Value - EdDescAcresc.Value;
                        DM.sds_nfse_itensDESC_UNIDADE.Text            := 'DR';
                        DM.sds_nfse_itensVL_OUTROS.Text               := '0';
                        //DM.sds_nfse_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                        DM.sds_nfse_itensCFOP.Text                    := '5949';
                        DM.sds_nfse_itensCST.Text                     := '090';

                        DM.sds_nfse_itensCST_PIS.Text                 := '';
                        DM.sds_nfse_itensCST_COFINS.Text              := '';
                        DM.sds_nfse_itensCST_IPI.Text                 := '';

                        DM.sds_nfse_itensCOD_NCM.Text                 := '99999999';

                        DM.sds_nfse_itensALIQ_ICM.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ICM.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ICM.AsFloat            := 0;


                        DM.sds_nfse_itensALIQ_IPI.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_IPI.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_IPI.AsFloat            := 0;



                        DM.sds_nfse_itensALIQ_ISS.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ISS.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ISS.AsFloat            := 0 ;




                        DM.sds_nfse_itensVL_BASE_PIS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_BASE_COFINS.AsFloat         := 0;
                        DM.sds_nfse_itensALIQ_PIS.AsFloat               := 0;
                        DM.sds_nfse_itensALIQ_COFINS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_PIS.AsFloat                 := 0 ;
                        DM.sds_nfse_itensVL_COFINS.AsFloat              := 0 ;

                        DM.sds_nfse_itensVL_BASE_ICM_SUBST.AsFloat      := 0;
                        DM.sds_nfse_itensALIQ_ICM_SUBST.AsFloat         := 0;
                        DM.sds_nfse_itensVL_ICM_SUBST.AsFloat           := 0;

                        DM.sds_nfse_itens.Post;
                        DM.sds_nfse_itens.ApplyUpdates(0);
                        Application.ProcessMessages;



                          // insere item das ligacoes

                        DM.sds_nfse_itens.Insert;
                        DM.sds_nfse_itens.Edit;
                        NValor:=1;
                        tam := length(RemoveChar(DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT));

                        NItem:=NItem+NValor;
                        DM.sds_nfse_itensITEN.AsInteger               := NItem;
                        DM.sds_nfse_itensNR_SEQUENCIA.Text            := '1';
                        DM.sds_nfse_itensNR_NOTA.AsInteger            := N;
                        if tam = 13 then
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                            end else
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                        end;


                        {   if IBTRAce.Active then
                              IBTRAce.Commit;
                           IBTRAce.StartTransaction;
                           with QBuscaItens do
                              begin
                                 close;
                                 Parambyname('cod_ven').AsString:= CodEntrada;
                                 Parambyname('codpro').AsInteger:= strtoint(DM1.BarBAR_CODPRODUTO.Text);
                                 open;
                                 Last;
                              end;
                           IBTRAce.CommitRetaining;  }

                      //  DM.sds_nfse_itensCD_ATUALIZACAO.Value         := NULL;
                        DM.sds_nfse_itensCODIGO_PROD.Text             := DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT;;
                        DM.sds_nfse_itensDESCRICAO_PRODUTO.Text       := 'SERVICOS DE LIGACOES';
                        if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0'
                        ELSE
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0';
                        DM.sds_nfse_itensQT_PRODUTO.AsFloat           := 1;

                        DM.sds_nfse_itensVL_UNITARIO.Asfloat          := EdTotalLigacao.Value;

                        DM.sds_nfse_itensVL_TOTAL.asfloat             := EdTotalLigacao.Value;
                        DM.sds_nfse_itensDESC_UNIDADE.Text            := 'LIG';
                        DM.sds_nfse_itensVL_OUTROS.Text               := '0';
                        //DM.sds_nfse_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                        DM.sds_nfse_itensCFOP.Text                    := '5949';
                        DM.sds_nfse_itensCST.Text                     := '090';

                        DM.sds_nfse_itensCST_PIS.Text                 := '';
                        DM.sds_nfse_itensCST_COFINS.Text              := '';
                        DM.sds_nfse_itensCST_IPI.Text                 := '';

                        DM.sds_nfse_itensCOD_NCM.Text                 := '99999999';

                        DM.sds_nfse_itensALIQ_ICM.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ICM.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ICM.AsFloat            := 0;


                        DM.sds_nfse_itensALIQ_IPI.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_IPI.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_IPI.AsFloat            := 0;



                        DM.sds_nfse_itensALIQ_ISS.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ISS.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ISS.AsFloat            := 0 ;




                        DM.sds_nfse_itensVL_BASE_PIS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_BASE_COFINS.AsFloat         := 0;
                        DM.sds_nfse_itensALIQ_PIS.AsFloat               := 0;
                        DM.sds_nfse_itensALIQ_COFINS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_PIS.AsFloat                 := 0 ;
                        DM.sds_nfse_itensVL_COFINS.AsFloat              := 0 ;

                        DM.sds_nfse_itensVL_BASE_ICM_SUBST.AsFloat      := 0;
                        DM.sds_nfse_itensALIQ_ICM_SUBST.AsFloat         := 0;
                        DM.sds_nfse_itensVL_ICM_SUBST.AsFloat           := 0;

                        DM.sds_nfse_itens.Post;
                        DM.sds_nfse_itens.ApplyUpdates(0);
                        Application.ProcessMessages;

                          // insere item das lavagens

                        DM.sds_nfse_itens.Insert;
                        DM.sds_nfse_itens.Edit;
                        NValor:=1;
                        tam := length(RemoveChar(DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT));

                        NItem:=NItem+NValor;
                        DM.sds_nfse_itensITEN.AsInteger               := NItem;
                        DM.sds_nfse_itensNR_SEQUENCIA.Text            := '1';
                        DM.sds_nfse_itensNR_NOTA.AsInteger            := N;
                        if tam = 13 then
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                            end else
                            begin
                        DM.sds_nfse_itensCOD_PRODUTO.Text             := '';
                        end;


                        {   if IBTRAce.Active then
                              IBTRAce.Commit;
                           IBTRAce.StartTransaction;
                           with QBuscaItens do
                              begin
                                 close;
                                 Parambyname('cod_ven').AsString:= CodEntrada;
                                 Parambyname('codpro').AsInteger:= strtoint(DM1.BarBAR_CODPRODUTO.Text);
                                 open;
                                 Last;
                              end;
                           IBTRAce.CommitRetaining;  }

                      //  DM.sds_nfse_itensCD_ATUALIZACAO.Value         := NULL;
                        DM.sds_nfse_itensCODIGO_PROD.Text             := DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT;;
                        DM.sds_nfse_itensDESCRICAO_PRODUTO.Text       := 'SERVICOS DE LAVAGEM DE ROUPAS';
                        if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0'
                        ELSE
                        DM.sds_nfse_itensVL_DESCONTO.Text             := '0';
                        DM.sds_nfse_itensQT_PRODUTO.AsFloat           := 1;

                        DM.sds_nfse_itensVL_UNITARIO.Asfloat          := EdtTotalLavagen.Value;

                        DM.sds_nfse_itensVL_TOTAL.asfloat               := EdtTotalLavagen.Value;
                        DM.sds_nfse_itensDESC_UNIDADE.Text            := 'LAV';
                        DM.sds_nfse_itensVL_OUTROS.Text               := '0';
                        //DM.sds_nfse_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                        DM.sds_nfse_itensCFOP.Text                    := '5949';
                        DM.sds_nfse_itensCST.Text                     := '090';

                        DM.sds_nfse_itensCST_PIS.Text                 := '';
                        DM.sds_nfse_itensCST_COFINS.Text              := '';
                        DM.sds_nfse_itensCST_IPI.Text                 := '';

                        DM.sds_nfse_itensCOD_NCM.Text                 := '99999999';

                        DM.sds_nfse_itensALIQ_ICM.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ICM.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ICM.AsFloat            := 0;


                        DM.sds_nfse_itensALIQ_IPI.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_IPI.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_IPI.AsFloat            := 0;



                        DM.sds_nfse_itensALIQ_ISS.AsFloat               := 0 ;
                        DM.sds_nfse_itensVL_ISS.AsFloat                 := 0;
                        DM.sds_nfse_itensVL_BASE_ISS.AsFloat            := 0 ;




                        DM.sds_nfse_itensVL_BASE_PIS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_BASE_COFINS.AsFloat         := 0;
                        DM.sds_nfse_itensALIQ_PIS.AsFloat               := 0;
                        DM.sds_nfse_itensALIQ_COFINS.AsFloat            := 0;
                        DM.sds_nfse_itensVL_PIS.AsFloat                 := 0 ;
                        DM.sds_nfse_itensVL_COFINS.AsFloat              := 0 ;

                        DM.sds_nfse_itensVL_BASE_ICM_SUBST.AsFloat      := 0;
                        DM.sds_nfse_itensALIQ_ICM_SUBST.AsFloat         := 0;
                        DM.sds_nfse_itensVL_ICM_SUBST.AsFloat           := 0;

                        DM.sds_nfse_itens.Post;
                        DM.sds_nfse_itens.ApplyUpdates(0);
                        Application.ProcessMessages;


                        EXCEPT
                          ShowMessage('Erro ao gravar os itens da nfs-e...');
                        end;


                        NOTA := IntToStr(N);
                        DM.sds_nfse.Filtered := False;
                        DM.sds_nfse.Filter:='NR_NOTA ='+QuotedStr (NOTA);
                        DM.sds_nfse.Filtered := True;


                        //confirmar.Enabled := True;
                        Application.ProcessMessages;


                         //   NOTA := QConsNfeNR_NOTA.TEXT;

                          IMPRIME := TRUE;

                          FormGeraNFSe:=TFormGeraNFSe.Create(self);
                          FormGeraNFSe.combobox2.itemIndex := 0;
                          FormGeraNFSe.combobox2.Enabled := False;
                          DM.SDS_CFOP.Active := False;
                          DM.SDS_CFOP.DataSet.CommandText:='select * from CFOP where codigo_cfop >=4000';
                          DM.SDS_CFOP.Active := true;
                          FormGeraNFSe.RxDBComboEdit2.Text :=  QBuscaItensCFOP_EST_VENDA.Text;
                          DM.sds_nfse.Active := false;
                          DM.sds_nfse.Active := True;
                          DM.sds_nfse.Filtered := False;
                          DM.sds_nfse.Filter:='NR_NOTA ='+QuotedStr (INTTOSTR(N));
                          DM.sds_nfse.Filtered := True;
                          DM.sds_nfe_itens.Active := false;
                          DM.sds_nfe_itens.Active := true;
                          FormGeraNFSe.Inserir.Enabled := False;
                          FormGeraNFSe.confirmar.Enabled := TRUE;
                          FormGeraNFSe.ShowModal;
         end;
     end;

    begin
         IF lancando_contasreceber = False then
         begin
          CLOSE;
         end;

       CLOSE;
    end;

  //  If CheckBox2.Checked = True Then
 { if Application.MESSAGEBOX('Deseja Emitir a Ficha Nacional de Registro de Hóspedes ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     Begin
      If F_rFNRH = Nil Then
      Application.CreateForm(TF_rFNRH,F_rFNRH);

      F_rFNRH.IBQuery1.Close;
      F_rFNRH.IBQuery1.SQL.Clear;
      F_rFNRH.IBQuery1.SQL.Add( ' Select * From EntraHospede, Clientes         ' );
      F_rFNRH.IBQuery1.SQL.Add( ' Where ' );
      F_rFNRH.IBQuery1.SQL.Add( ' ENT_CodHospede     = codigo             And  ' );
      F_rFNRH.IBQuery1.SQL.Add( ' ENT_CODENTRADA     = :P00                    ' );
      F_rFNRH.IBQuery1.Params[00].AsString := CodEntrada;
      F_rFNRH.IBQuery1.Open;

//      F_rFNRH.Relatorio1.Preview;
      F_rFNRH.Relatorio1.Preview;
    End;   }

  //  Close;

  Except
    DM.IBTransaction.Rollback;
    // Close;
    Raise;
  End;

end;

procedure TF_Fechamento.EdDescAcrescExit(Sender: TObject);
begin
  EdTotal.Value := EdSubTotal.Value + EdDescAcresc.Value - EdtAdiantamento.VALUE;
end;

procedure TF_Fechamento.FormShow(Sender: TObject);
begin
  EdHoraSaida.Time := Time;
  EdDataSaida.Date := Date;
end;

procedure TF_Fechamento.BitBtn10Click(Sender: TObject);
begin
  If Not DM.IBTransaction.InTransaction Then
    DM.IBTransaction.StartTransaction;

    DM1.IBS1.Close;
    DM1.IBS1.SQL.Clear;
    DM1.IBS1.SQL.Add('UPDATE EntraHospede       ' +
                     'SET                       ' +
                     'ENT_DataSaida    =:P00 ,  ' +
                     'ENT_HoraSaida    =:P01 ,  ' +
                     'ENT_QtdDiaria    =:P02 ,  ' +
                     'ENT_TotalBar     =:P03 ,  ' +
                     'ENT_TotalLigacao =:P04 ,  ' +
                     'ENT_TotalDiaria  =:P05 ,  ' +
                     'ENT_TotalGeral   =:P06 ,  ' +
                     'ENT_DescAcrescGeral =:P07 , ' +
                     'ENT_TotalPago       =:P08 , ' +
                     'ENT_FormaPagamento  =:P09,  ' +
                     'ENT_VALOR_LAV       =:P10  ' +
                     'WHERE                      ' +
                     'ENT_CodEntrada   =:P11     ');

    DM1.IBS1.Params[00].AsDate   := EdDataSaida.Date;
    DM1.IBS1.Params[01].AsTime   := EdHoraSaida.Time;
    DM1.IBS1.Params[02].AsFloat  := EdQtdDiaria.Value;
    DM1.IBS1.Params[03].AsFloat  := EdTotalBar.Value;
    DM1.IBS1.Params[04].AsFloat  := EdTotalLigacao.Value;
    DM1.IBS1.Params[05].AsFloat  := EdTotalDiaria.Value;
    DM1.IBS1.Params[06].AsFloat  := EdSubTotal.Value;
    DM1.IBS1.Params[07].AsFloat  := EdDescAcresc.Value;
    DM1.IBS1.Params[08].AsFloat  := EdTotal.Value;
    DM1.IBS1.Params[09].AsInteger:= 0;
    DM1.IBS1.Params[10].AsFloat  := EdtTotalLavagen.value;
    DM1.IBS1.Params[11].AsString := CodEntrada;
    DM1.IBS1.ExecQuery;

    DM.IBTransaction.CommitRetaining;


  //  If CheckBox1.Checked = True Then
   if Application.MESSAGEBOX('Deseja Emitir a Nota Prévia do Fechamento ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    Begin
      DM1.Qry0.Close;
      DM1.Qry0.SQL.Clear;
      DM1.Qry0.SQL.Add( ' Select * From EntraHospede, clientes, Apartamento  ' );
      DM1.Qry0.SQL.Add( ' Where ' );
      DM1.Qry0.SQL.Add( ' ENT_CodApartamento = APA_CodApartamento And  ' );
      DM1.Qry0.SQL.Add( ' ENT_CodHospede     = CODIGO             And  ' );
      DM1.Qry0.SQL.Add( ' ENT_CODENTRADA     = :P00                    ' );
      DM1.Qry0.Params[00].AsString := CodEntrada;
      DM1.Qry0.Open;


              DM1.Bar.Close;
              DM1.Bar.SQL.Clear;
              DM1.Bar.SQL.Add('Select * From Bar, Produtos            ');
              DM1.Bar.SQL.Add('Where Bar_CodProduto = Codigo ');
              DM1.Bar.SQL.Add('And Bar_CodEntrada =:P00 ');
              DM1.Bar.Params[00].AsString := CodEntrada;
              DM1.Bar.Open;

              DM1.Ligacao.Close;
              DM1.Ligacao.SQL.Clear;
              DM1.Ligacao.SQL.Add('Select * From Ligacao      ');
              DM1.Ligacao.SQL.Add('Where LIG_CodEntrada =:P00 ');
              DM1.Ligacao.Params[00].AsString := CodEntrada;
              DM1.Ligacao.Open;

              DM1.Lavanderia.Close;
              DM1.Lavanderia.SQL.Clear;
              DM1.Lavanderia.SQL.Add('Select * From Lavanderia, Produtos ');
              DM1.Lavanderia.SQL.Add('Where lav_CodProduto = Codigo ');
              DM1.Lavanderia.SQL.Add('And lav_CodEntrada =:P00 ');
              DM1.Lavanderia.Params[00].AsString := CodEntrada;
              DM1.Lavanderia.Open;


      If F_R3= Nil Then
      Application.CreateForm(TF_R3,F_R3);

      //      F_R3.ListApartOcupado.Preview;
      F_R3.ListApartOcupado.Preview;
    End;
end;


procedure TF_Fechamento.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rcheque.value +
                 rcartao.value +
                 rcrediario.Value;
  rdiferenca.Value := EdTotal.Value - rsoma.Value;
end;

procedure TF_Fechamento.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  edinheiro.Brush.Color := $00A8FFFF;;
end;

procedure TF_Fechamento.rchequeEnter(Sender: TObject);
begin
 tedit(sender).color := $00A8FFFF;;
  echeque.Brush.Color := $00A8FFFF;;
end;

procedure TF_Fechamento.rchequeExit(Sender: TObject);
begin
    tedit(sender).color := clwindow;
  echeque.Brush.Color := clwindow;

    rsoma.Value := rdinheiro.value +
                 rcheque.value +
                 rcartao.value +
                 rcrediario.Value;
  rdiferenca.Value := edtotal.Value - rsoma.Value;
end;

procedure TF_Fechamento.rcartaoEnter(Sender: TObject);
begin
    tedit(sender).color := $00A8FFFF;;
  ecartao.Brush.Color := $00A8FFFF;;
end;

procedure TF_Fechamento.rcartaoExit(Sender: TObject);
begin
    tedit(sender).color := clwindow;
  ecartao.Brush.Color := clwindow;
  rsoma.Value := rdinheiro.value +
                 rcheque.value +
                 rcartao.value +
                 rcrediario.Value;
  rdiferenca.Value := edtotal.Value - rsoma.Value;
end;

procedure TF_Fechamento.rcrediarioEnter(Sender: TObject);
begin
tedit(sender).color := $00A8FFFF;;
  rcrediario.Brush.Color := $00A8FFFF;;
end;

procedure TF_Fechamento.rcrediarioExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
    rcrediario.Brush.Color := clwindow;
    rsoma.Value := rdinheiro.value +
                 rcheque.value +
                 rcartao.value +
                 rcrediario.Value;
  rdiferenca.Value := edtotal.Value - rsoma.Value;
end;

end.
