unit UConsCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, AlignEdit, Buttons, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TFrmConsCheque = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ComboCons: TComboBox;
    GB2: TGroupBox;
    BtnCons: TSpeedButton;
    EdtCons: TEdit;
    edtcod: TAlignEdit;
    EdtNome: TEdit;
    BtnOk: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Ladepositar: TLabel;
    LDepositados: TLabel;
    Ldevolvidos: TLabel;
    LPagos: TLabel;
    Label6: TLabel;
    LTotal: TLabel;
    DBGrid1: TDBGrid;
    BtnLocalizar: TButton;
    BtnSair: TButton;
    QConsCheque: TIBQuery;
    DSQConsCheque: TDataSource;
    CheckEmp: TCheckBox;
    EdtDataIni: TDateTimePicker;
    EdtDataFin: TDateTimePicker;
    Label7: TLabel;
    QConsChequeCOD_CHEQUE: TIntegerField;
    QConsChequeVALOR: TIBBCDField;
    QConsChequeDATA_EMISSAO: TDateField;
    QConsChequeDATA_VENCIMENTO: TDateField;
    QConsChequePAGO: TIBStringField;
    QConsChequeORIGEM: TIBStringField;
    QConsChequeDOCUMENTO_ORIGEM: TIntegerField;
    QConsChequeCOD_CONTA: TIntegerField;
    QConsChequeCOMP_NA_INCLUSAO: TIBStringField;
    QConsChequeDATA_COMPENSACAO: TDateField;
    QConsChequeHISTORICO: TIBStringField;
    QConsChequeNUMERO_CHEQUE: TIntegerField;
    QConsChequeCOD_USUARIO: TIntegerField;
    QConsChequeCOD_EMPRESA: TIntegerField;
    QConsChequeTROCO: TIBStringField;
    QConsChequeFAVORECIDO: TIBStringField;
    QConsChequeCOD_VENDA: TIntegerField;
    QConsChequeCOD_COMPRA: TIntegerField;
    QConsChequeOBSERVACAO: TIBStringField;
    QConsChequeCOD_CLI: TIntegerField;
    QConsChequeCOD_FORN: TIntegerField;
    QConsChequeDATA_RETORNO: TDateField;
    QConsChequeRETORNADO: TIBStringField;
    QConsChequeTITULAR: TIBStringField;
    QConsChequeCONTA: TIBStringField;
    QConsChequeBANCO: TIBStringField;
    QConsChequeNOME_RS: TIBStringField;
    QConsChequeNOME: TIBStringField;
    QConsChequeDIGITO: TIBStringField;
    QConsChequeAGENCIA: TIBStringField;
    QConsChequePL_CONTA: TIntegerField;
    QConsChequeNOME1: TIBStringField;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    spbImprimir: TSpeedButton;
    procedure BtnSairClick(Sender: TObject);
    procedure edtcodKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcodExit(Sender: TObject);
    procedure _(Sender: TObject);
    procedure ComboConsChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcodEnter(Sender: TObject);
    procedure spbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsCheque: TFrmConsCheque;

implementation
Uses  Ubibli1, ConsClientes, ModulodeDados, ConsContaBancariapas,
  Cheques_emitidos;
var sSql : string;

{$R *.dfm}

procedure TFrmConsCheque.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmConsCheque.edtcodKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key:= #0;
end;

procedure TFrmConsCheque.edtcodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      begin
         if combocons.ItemIndex = 1 then
            begin
               Application.CreateForm(TFormConsClientes, FormConsclientes);
             //  FrmConsCli.Tag:= 2;
                edtcod.text := dm.sds_clientesCodigo.text;
                edtnome.text := dm.sds_clientesNome_rs.text;
               FormConsClientes.ShowModal;
            end
         else
            if combocons.ItemIndex = 3 then
               begin
                  Application.CreateForm(TFormConsContaBancaria, FormConsContaBancaria);
                  //FrmConsBanco.Tag:= 2;
                  edtcod.text := dm.sds_conta_bancariaCodigo.text;
                  edtnome.text := dm.sds_conta_bancariaTitular.text;
                  FormConsContaBancaria.ShowModal;
               end;
      end;
end;

procedure TFrmConsCheque.edtcodExit(Sender: TObject);
begin
   if (btnsair.Focused) or (combocons.Focused) then
      exit;
   case combocons.ItemIndex of
    1: begin
            edtnome.Text:= consulta('clientes', edtcod, 'codigo', 'nome_rs', dm.IBTransaction, dm.qConsulta);
            if edtnome.Text = '' then
               begin
                  showmessage('Cliente não Cadastrado');
                  edtcod.SetFocus;
               end;
         end;
    2:   begin
            edtnome.Text:= consulta('CONTA_BANCARIA', edtcod, 'codigo', 'titular', dm.IBTransaction, dm.qConsulta);
            if edtnome.Text = '' then
               begin
                  showmessage('Banco não Cadastrado');
                  edtcod.SetFocus;
               end;
         end;

      6: begin
            edtnome.Text:= consulta('clientes', edtcod, 'codigo', 'nome_rs', dm.IBTransaction, dm.qConsulta);
            if edtnome.Text = '' then
               begin
                  showmessage('Cliente não Cadastrado');
                  edtcod.SetFocus;
               end;
         end;
   end;
end;

procedure TFrmConsCheque._(Sender: TObject);
begin
   case combocons.ItemIndex of
    1: begin
           Application.CreateForm(TFormConsClientes, FormConsclientes);
             //  FrmConsCli.Tag:= 2;
              DM.SDS_Clientes.Active:= False;
              dm.SDS_Clientes.SQL.Clear;
             DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
              DM.SDS_Clientes.Active:= True;

                edtcod.text := dm.sds_clientesCodigo.text;
                edtnome.text := dm.sds_clientesNome_rs.text;
               FormConsClientes.ShowModal;
         end;
    2:   begin
            Application.CreateForm(TFormConsContaBancaria, FormConsContaBancaria);
            DM.SDS_Conta_Bancaria.Close;
            DM.SDS_Conta_Bancaria.Open;
           //FrmConsBanco.Tag:= 2;
            edtcod.text := dm.sds_conta_bancariaCodigo.text;
            edtnome.text := dm.sds_conta_bancariaTitular.text;
            FormConsContaBancaria.ShowModal;
         end;

        6: begin
           Application.CreateForm(TFormConsClientes, FormConsclientes);
             //  FrmConsCli.Tag:= 2;
              DM.SDS_Clientes.Active:= False;
              dm.SDS_Clientes.SQL.Clear;
             DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'0'+'order by NOME_RS ASC');
              DM.SDS_Clientes.Active:= True;

               edtcod.text := dm.sds_clientesCodigo.text;
                edtnome.text := dm.sds_clientesNome_rs.text;
               FormConsClientes.ShowModal;
         end;
   end;
end;

procedure TFrmConsCheque.ComboConsChange(Sender: TObject);
begin
   case combocons.ItemIndex of
    0:begin
         gb2.Caption          := 'Código';
         edtcod.Visible       := false;
         btncons.Visible      := false;
         edtnome.Visible      := false;
         edtdataini.Visible   := false;
         edtdatafin.Visible   := false;
         label7.Visible       := false;
         edtcons.Visible      := true;
         edtcons.Clear;
      end;
    1:begin
         gb2.Caption       := 'Cliente';
         edtcod.Visible       := True;
         btncons.Visible      := true;
         edtnome.Visible      := true;
         edtdataini.Visible   := false;
         edtdatafin.Visible   := false;
         label7.Visible       := false;
         edtcons.Visible      := false;
         edtcod.Clear;
         edtnome.Clear;
      end;
    2:begin
        gb2.Caption          := 'Banco';
        edtcod.Visible       := true;
        btncons.Visible      := true;
        edtnome.Visible      := true;
        edtdataini.Visible   := false;
        edtdatafin.Visible   := false;
        label7.Visible       := false;
        edtcons.Visible      := false;
        edtcod.Clear;
        edtnome.Clear;
      end;
    3:begin
         gb2.Caption          := 'Emissão';
         edtcod.Visible       := false;
         btncons.Visible      := false;
         edtnome.Visible      := false;
         edtdataini.Visible   := true;
         edtdatafin.Visible   := true;
         label7.Visible       := true;
         edtcons.Visible      := false;
         edtdataini.Date      := date;
         edtdatafin.Date      := date;
      end;
    4:begin
         gb2.Caption          := 'Vencimento';
         edtcod.Visible       := false;
         btncons.Visible      := false;
         edtnome.Visible      := false;
         edtdataini.Visible   := true;
         edtdatafin.Visible   := true;
         label7.Visible       := true;
         edtcons.Visible      := false;
         edtdataini.Date      := date;
         edtdatafin.Date      := date;
      end;
    5:begin
         gb2.Caption          := 'Número do Cheque';
         edtcod.Visible       := false;
         btncons.Visible      := false;
         edtnome.Visible      := false;
         edtdataini.Visible   := false;
         edtdatafin.Visible   := false;
         label7.Visible       := false;
         edtcons.Visible      := true;
         edtcons.Clear;
      end;
    6:begin
         gb2.Caption       := 'Favorecido';
         edtcod.Visible       := True;
         btncons.Visible      := true;
         edtnome.Visible      := true;
         edtdataini.Visible   := false;
         edtdatafin.Visible   := false;
         label7.Visible       := false;
         edtcons.Visible      := false;
         edtcod.Clear;
         edtnome.Clear;
      end;
    end;
end;

procedure TFrmConsCheque.FormShow(Sender: TObject);
begin
   {busca a posicao do combo}
  try
    ComboCons.ItemIndex:= strtoint(dm.LeINI('Siace.ini', 'PosicaoCombobox', 'FrmConsCheque.ComboCons'));
  except
    ComboCons.ItemIndex:= 0;
  end;

   Ladepositar.Caption := '0,00';
   LDepositados.Caption:= '0,00';
   Ldevolvidos.Caption := '0,00';
   LPagos.Caption      := '0,00';
   LTotal.Caption      := '0,00';
   comboconschange(sender);
   sSql:= QConsCheque.SQL.Text;
   iEmp := DM.SDS_EmpresaCODIGO.AsInteger;
   end;

procedure TFrmConsCheque.BtnOkClick(Sender: TObject);
var caDepositar, cDepositado, cDevedor, cPago : currency;
begin
   caDepositar := 0;
   cDepositado := 0;
   cDevedor    := 0;
   cPago       := 0;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with QConsCheque do
      begin
         close;
         sql.clear;
         sql.Text:= sSql;
         case combocons.ItemIndex of
          0:begin //código
               if edtcons.Text = '' then
                  begin
                     if (not CheckEmp.Checked) then
                        begin
                           sql.Add(' WHERE C.COD_EMPRESA = :CODEMP ORDER BY C.COD_CHEQUE');
                           Parambyname('codemp').AsInteger:= iEmp;
                        end
                     else
                        sql.add(' ORDER BY C.COD_CHEQUE');
                  end
               else
                  begin
                     if (not CheckEmp.Checked) then
                        begin
                           sql.Add(' WHERE C.COD_CHEQUE = :CODCHE AND C.COD_EMPRESA = :CODEMP');
                           Parambyname('codemp').AsInteger:= iEmp;
                        end
                     else
                        sql.Add(' WHERE C.COD_CHEQUE = :CODCHE');
                     parambyname('codche').AsInteger:= strtoint(edtcons.Text);
                   end;
            end;
          1:begin //Cliente
               if (not CheckEmp.Checked) then
                   begin
                      sql.Add(' WHERE C.COD_CLI = :CLIENTE ' +
                              ' AND C.COD_EMPRESA = :CODEMP ORDER BY C.COD_CHEQUE');
                      Parambyname('codemp').AsInteger:= iEmp;
                   end
               else
                  sql.Add(' WHERE C.COD_CLI = :CLIENTE ' +
                          ' ORDER BY C.COD_CHEQUE');
               Parambyname('cliente').AsInteger:= strtoint(edtcod.Text);
             //  Parambyname('codemi').AsInteger:= strtoint(edtcod.Text);
            end;
          2:begin //Banco
               if (not CheckEmp.Checked) then
                  begin
                   sql.Add(' WHERE C.COD_CONTA = :CODBAN AND C.COD_EMPRESA = :CODEMP ORDER BY C.COD_CHEQUE');
                   Parambyname('codemp').AsInteger:= iEmp;
                  end
               else
                   sql.add(' WHERE C.COD_CONTA = :CODBAN ORDER BY C.COD_CHEQUE');
               Parambyname('codban').AsInteger:= strtoint(edtcod.Text);
            end;
          3:begin //Data emissão
               if (not CheckEmp.Checked) then
                  begin
                     sql.add(' WHERE C.DATA_EMISSAO BETWEEN :DATAINI AND :DATAFIN AND ' +
                             ' C.COD_EMPRESA = :CODEMP ORDER BY C.DATA_EMISSAO, C.COD_CHEQUE');
                     Parambyname('codemp').AsInteger:= iEmp;
                  end
               else
                  sql.add(' WHERE C.DATA_EMISSAO BETWEEN :DATAINI AND :DATAFIN ORDER BY C.DATA_EMISSAO, C.COD_CHEQUE');
               Parambyname('dataini').AsDate := edtdataini.Date;
               Parambyname('datafin').AsDate := EdtDataFin.Date;
            end;
          4:begin //data vencimento
               if (not CheckEmp.Checked) then
                  begin
                     sql.add(' WHERE C.DATA_VENCIMENTO BETWEEN :DATAINI AND :DATAFIN AND ' +
                             'C.COD_EMPRESA = :CODEMP ORDER BY C.DATA_VENCIMENTO, C.COD_CHEQUE');
                     Parambyname('codemp').AsInteger:= iEmp;
                  end
               else
                   sql.add(' WHERE C.DATA_VENCIMENTO BETWEEN :DATAINI AND :DATAFIN ORDER BY C.DATA_VENCIMENTO, C.COD_CHEQUE');
               Parambyname('dataini').AsDate := edtdataini.Date;
               Parambyname('datafin').AsDate := EdtDataFin.Date;
            end;
          5:begin //numero do cheque
               if (not CheckEmp.Checked) then
                  begin
                     sql.Add(' WHERE C.NUMERO_CHEQUE = ' + #39 + edtcons.Text + #39 + ' AND C.COD_EMPRESA = :CODEMP');
                     Parambyname('codemp').AsInteger:= iEmp;
                  end
               else
                   sql.Add(' WHERE C.NUMERO_CHEQUE = ' + #39 + edtcons.Text + #39);
            end;
           6:begin //favorecido
               if (not CheckEmp.Checked) then
                   begin
                      sql.Add(' WHERE C.FAVORECIDO = :CLIENTE ' +
                              ' AND C.COD_EMPRESA = :CODEMP ORDER BY C.COD_CHEQUE');
                      Parambyname('codemp').AsInteger:= iEmp;
                   end
               else
                  sql.Add(' WHERE C.FAVORECIDO = :CLIENTE ' +
                          ' ORDER BY C.COD_CHEQUE');
               Parambyname('cliente').AsString:= EdtNome.Text;
             //  Parambyname('codemi').AsInteger:= strtoint(edtcod.Text);
            end;
         end;
         Open;

         if not QConsChequeCOD_CHEQUE.IsNull then
            begin
               btnlocalizar.Enabled:= true;
               first;
               while not eof do
                 begin
                    if QConsChequeDATA_COMPENSACAO.IsNull then
                       caDepositar:= caDepositar + QConsChequeVALOR.AsCurrency
                    else
                       if (not QConsChequeDATA_COMPENSACAO.IsNull and QConsChequeDATA_RETORNO.IsNull) then
                           cDepositado:= cDepositado + QConsChequeVALOR.AsCurrency
                       else
                          if QConsChequePAGO.Text = 'T' then
                             cPago:= cPago + QConsChequeVALOR.AsCurrency
                          else
                             cDevedor:= cDevedor + QConsChequeVALOR.AsCurrency;
                    next;
                 end;
               first;
               Ladepositar.Caption   := currtostrf(caDepositar, ffnumber, 2);
               LDepositados.Caption  := currtostrf(cDepositado, ffnumber, 2);
               Ldevolvidos.Caption   := currtostrf(cDevedor, ffnumber, 2);
               LPagos.Caption        := currtostrf(cPago, ffnumber, 2);
               LTotal.Caption        := currtostrf(caDepositar + cDepositado + cDevedor + cPago, ffnumber, 2);
               btnlocalizar.Enabled:= true;
               dbgrid1.SetFocus;
            end
         else
            begin
               btnlocalizar.Enabled:= false;
               Ladepositar.Caption   := '0,00';
               LDepositados.Caption  := '0,00';
               Ldevolvidos.Caption   := '0,00';
               LPagos.Caption        := '0,00';
               LTotal.Caption        := '0,00';
            end;
      end;
end;

procedure TFrmConsCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   QConsCheque.SQL.Clear;
   QConsCheque.SQL.Text:= sSql;
   QConsCheque.Close;

   {grava a posicao do combo}
   dm.GravaIni('Siace.ini', 'PosicaoCombobox', 'FrmConsCheque.ComboCons', inttostr(ComboCons.itemIndex));
   Action:= caFree;
end;

procedure TFrmConsCheque.BtnLocalizarClick(Sender: TObject);
begin
   if tag = 0 then //form de cadastro de Cheque
     begin
        with Form_Cheques do
           begin
             // ededit(Form_Cheques, false);
              Limpaedit(Form_Cheques);
              edit2.Text           := QConsChequeNUMERO_CHEQUE.AsString;
              EdtCodCliente.Text   := QConsChequeCOD_CLI.AsString;
              edtnomecli.Text      := QConsChequeNOME_RS.AsString;
              conta.Text           := QConsChequeCOD_CONTA.AsString;
              Edit6.Text           := QConsChequeCOD_CHEQUE.AsString;
              DateEdit1.Date       := QConsChequeDATA_EMISSAO.AsDateTime;
              DateEdit2.Date       := QConsChequeDATA_VENCIMENTO.AsDateTime;
              CurrencyEdit3.Text   := QConsChequeVALOR.AsString;
              Edit5.Text           := QConsChequeOBSERVACAO.AsString;
              Edit4.Text            := QConsChequeFAVORECIDO.AsString;
              EdtCodForn.Text      := QConsChequeCOD_FORN.AsString;
              EdtNomeForn.Text     := QConsChequeNOME.AsString;
              econta.text           := QConsChequepl_conta.AsString;
              enomeconta.Text       := QConsChequeNOME1.Text;
              if QConsChequeCOMP_NA_INCLUSAO.Text = 'T' THEN
              CheckBox1.Checked    := True
              else
              CheckBox1.Checked    := False;
              contaExit(Sender);
              CurrencyEdit3Exit(Sender);
              bGrava := False;
              BuscaItens;

              FrmConsCheque.close;
             // Tag:= 1;
             // FormShow(sender);
             // Show;

           end;
     end;
end;

procedure TFrmConsCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmConsCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      btnsair.Click;
end;

procedure TFrmConsCheque.edtcodEnter(Sender: TObject);
begin
   edtcod.SelectAll;
end;

procedure TFrmConsCheque.spbImprimirClick(Sender: TObject);
var
  qr: TFDQuery;
begin
  try
    frxReport.LoadFromFile('C:\siace\rel\ChequesConsulta.fr3');
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT EP.NOME_FANTASIA AS EMPRESA,EP.CNPJ AS EMPRESA_CNPJ, '+
               'EP.TELEFONE AS EMPRESA_FONE,EP.LOGOMARCA AS EMPRESA_LOGO,'+
               'C.COD_CHEQUE,O.BANCO,C.NUMERO_CHEQUE,C.DATA_EMISSAO,'+
               'O.AGENCIA,O.CONTA,O.DIGITO,C.VALOR,C.FAVORECIDO,'+
               'CL.NOME_RS AS CLIENTE,CL.CPF_CNPJ AS CLIENTE_CNPJ,'+
               'CL.TELEFONE AS CLIENTE_FONE,FR.NOME AS FORNECEDOR, '+
               'FR.CNPJ AS FORNECEDOR_CNPJ,FR.TELEFONE AS FORNECEDOR_FONE '+
               'FROM cheques_emitidos C '+
               'INNER JOIN CONTA_BANCARIA O ON (C.COD_CONTA = O.CODIGO)'+
               'LEFT JOIN CLIENTES CL ON (C.COD_CLI = CL.CODIGO)'+
               'LEFT JOIN FORNECEDORES FR ON (C.COD_FORN = FR.CODIGO)'+
               'LEFT JOIN EMPRESA EP ON (EP.CODIGO = 1)'+
               'WHERE C.DATA_EMISSAO BETWEEN :INICIO AND :FINAL');

    qr.ParamByName('INICIO').AsDateTime:= EdtDataIni.date;
    qr.ParamByName('FINAL').AsDateTime:= EdtDataFin.date;

    frxDBDataset.DataSet:= qr;
    qr.Open;

    frxReport.ShowReport;
  finally
    qr.Destroy;
  end;
end;

end.
