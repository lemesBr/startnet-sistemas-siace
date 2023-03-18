unit contaspagar_Ext;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Grids, XDBGrids, StdCtrls, Buttons,
  sBitBtn, Mask, sMaskEdit, sCustomComboEdit, sTooledit, sLabel, ExtCtrls;

type
  TFormContasPagar_ext = class(TForm)
    Panel1: TPanel;
    myLabel3d1: TsLabelFX;
    Label1: TsLabel;
    Label2: TsLabel;
    Label6: TsLabel;
    DateEdit1: TsDateEdit;
    DateEdit2: TsDateEdit;
    suiButton2: TsBitBtn;
    Edit1: TEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    XDBGrid1: TXDBGrid;
    Query: TFDQuery;
    DataSource1: TDataSource;
    QuerySEQ: TIntegerField;
    QueryCOD_PAGAR: TIntegerField;
    QueryVALOR_PAGO: TBCDField;
    QueryDATA_PAGTO: TDateField;
    QueryCODFORNECEDOR: TIntegerField;
    QueryHISTORICO: TStringField;
    QueryNOME: TStringField;
    QueryDOCUMENTO: TStringField;
    QuerySITUACAO: TIntegerField;
    QueryCODCAIXA: TIntegerField;
    BtnConsPro: TSpeedButton;
    procedure suiButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsProClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasPagar_ext: TFormContasPagar_ext;

implementation

uses DMOS1, ModulodeDados, Ubibli1, contaspagar, Principal, xloc_fornecedor;

{$R *.dfm}

procedure TFormContasPagar_ext.suiButton2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
  ShowMessage('Digite o codigo do fornecedor');
  Edit1.SetFocus;
  Exit;
end
else
begin
  Query.close;
  Query.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  Query.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  Query.Params.ParamByName('CODF').AsString   := Edit1.TEXT;
  Query.open;

  if edit1.TEXT = '' then
   fornecedor := ''
  else
  fornecedor := ' and codfornecedor = ''' + edit1.Text + '''';

  frmcontaspagar.qrcontaspagar.close;
  frmcontaspagar.qrcontaspagar.sql.clear;
  frmcontaspagar.qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo is not null ' +
  fornecedor + '');
 // frmcontaspagar.qrcontaspagar.sql.Add( ' and data_pagamento  >= :datai and data_pagamento  <= :dataf ');
  frmcontaspagar.qrcontaspagar.sql.Add( ' order by data_pagamento');
 // frmcontaspagar.qrcontaspagar.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
 // frmcontaspagar.qrcontaspagar.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  frmcontaspagar.qrcontaspagar.open;
end;
end;

procedure TFormContasPagar_ext.FormShow(Sender: TObject);
begin
DateEdit1.Date := Date;
DateEdit2.Date := Date;
end;

procedure TFormContasPagar_ext.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmcontaspagar.bitbtn1.Click;
 Action := cafree;
 FormContasPagar_ext := nil;
end;

procedure TFormContasPagar_ext.XDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

 if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
 if (Key = VK_DELETE) then
 begin
  if Application.MESSAGEBOX('Confirma o Extorno da conta paga?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin

      DM.SDS_USUARIOS.locate('codigo', '99', [loCaseInsensitive]);
      if query.FieldByName('data_pagto').asdatetime = DM.SDS_Usuarios.FieldByName('data').asdatetime  then
      begin
            if (DM.SDS_USUARIOS.FieldByName('codigo').asstring = query.FieldByName('codcaixa').asstring) then
            begin
              if DM.SDS_USUARIOS.FieldByName('situacao').ASINTEGER = 1 then // caixa aberto
              begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    frmcontaspagar.qrcaixa_mov.close;

                    frmcontaspagar.qrcaixa_mov.sql.clear;
                    frmcontaspagar.qrcaixa_mov.sql.add('insert into movimento_diario');
                    frmcontaspagar.qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    frmcontaspagar.qrcaixa_mov.sql.add('values');
                    frmcontaspagar.qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    frmcontaspagar.qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    frmcontaspagar.qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    frmcontaspagar.qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    frmcontaspagar.qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    frmcontaspagar.qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    frmcontaspagar.qrcaixa_mov.parambyname('valor_entrada').asfloat := query.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcaixa_mov.parambyname('valor').asfloat := query.FieldByName('valor_pago').asfloat;

                    DM.SDS_CONFIGURACOES.open;
                    frmcontaspagar.qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    frmcontaspagar.qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    frmcontaspagar.qrcaixa_mov.parambyname('historico').asstring := 'Estorno de Pagto. Docto. ' + QUERY.FieldByName('documento').asstring;
                    frmcontaspagar.qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    frmcontaspagar. qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                    // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    frmcontaspagar.qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

                    //frmcontaspagar.qrcontaspagar.locate('codigo', QUERY.FieldByName('COD_PAGAR').asstring, []);

                     frmcontaspagar.qrcontaspagar.close;
                      frmcontaspagar.qrcontaspagar.sql.clear;
                      frmcontaspagar.qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo = '+ QUERY.FieldByName('COD_PAGAR').asstring );
                      frmcontaspagar.qrcontaspagar.open;



                    frmcontaspagar.qrcontaspagar.edit;
                    frmcontaspagar.qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
                    frmcontaspagar.qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
                    frmcontaspagar.qrcontaspagar.FieldByName('valorpago').asfloat := frmcontaspagar.qrcontaspagar.FieldByName('valorpago').asfloat -
                     QUERY.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcontaspagar.FieldByName('liquido').asfloat := frmcontaspagar.qrcontaspagar.FieldByName('liquido').asfloat +
                    QUERY.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                    frmcontaspagar.qrcontaspagar.post;
                    frmcontaspagar.qrcontaspagar.refresh;

                     if dm.IBTransaction.Active then
                         dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;

                        try
                          with dm.Consulta do
                             begin
                                close;
                                sql.Clear;
                                sql.add('DELETE FROM CONTAS_APAGAR_PAGO WHERE SEQ = :SEQ');
                                Parambyname('SEQ').AsInteger:= QUERY.FieldByName('SEQ').ASINTEGER;
                                ExecQuery;
                             end;
                          dm.IBTransaction.Commit;
                        except
                          dm.IBTransaction.StartTransaction;
                          showmessage('Erro ao excluir a conta paga');
                        end;
              end
              else
              begin
                application.messagebox
                  ('Não há caixa aberto para este operador! Impossível prosseguir com o estorno!',
                  'Aviso', mb_ok + MB_ICONWARNING);
              end;
            end
            else
            begin
              texto := PAnsiChar('Esta conta foi baixada pelo caixa ' +
                frmcontaspagar.qrcontaspagar.FieldByName('codcaixa').asstring +
                '. Apenas ele tem autorização para extorná-la!');
              application.messagebox(texto, 'Atenção', mb_ok + MB_ICONWARNING);
            end;
      end
      else
      begin
        texto := PAnsiChar('O pagamento desta conta foi lançFDo no caixa do dia: ' +
          frmcontaspagar.qrcontaspagar.FieldByName('data_pagamento').asstring +
          '. Não será possível fazer um lançamento de estorno no caixa atual! Deseja prosseguir com o estorno?');
        if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING) = idyes
        then
        begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    frmcontaspagar.qrcaixa_mov.close;

                    frmcontaspagar.qrcaixa_mov.sql.clear;
                    frmcontaspagar.qrcaixa_mov.sql.add('insert into movimento_diario');
                    frmcontaspagar.qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
                    frmcontaspagar.qrcaixa_mov.sql.add('values');
                    frmcontaspagar.qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

                    cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    frmcontaspagar.qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    frmcontaspagar.qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    frmcontaspagar.qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    frmcontaspagar.qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
                    frmcontaspagar.qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    frmcontaspagar.qrcaixa_mov.parambyname('valor_entrada').asfloat := query.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcaixa_mov.parambyname('valor').asfloat := query.FieldByName('valor_pago').asfloat;

                    DM.SDS_CONFIGURACOES.open;
                    frmcontaspagar.qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_DUPLICATA_NFE').asstring;
                    frmcontaspagar.qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
                    frmcontaspagar.qrcaixa_mov.parambyname('historico').asstring := 'Estorno de Pagto. Docto. ' + query.FieldByName('documento').asstring;
                    frmcontaspagar.qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    frmcontaspagar.qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
                   // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
                    frmcontaspagar.qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;


                  //  frmcontaspagar.qrcontaspagar.locate('codigo', QUERY.FieldByName('COD_PAGAR').asstring, []);
                    frmcontaspagar.qrcontaspagar.close;
                    frmcontaspagar.qrcontaspagar.sql.clear;
                    frmcontaspagar.qrcontaspagar.sql.Add('select * from CONTAS_APAGAR where codigo = '+ QUERY.FieldByName('COD_PAGAR').asstring );
                    frmcontaspagar.qrcontaspagar.open;

                    frmcontaspagar.qrcontaspagar.edit;
                    frmcontaspagar.qrcontaspagar.FieldByName('situacao').ASINTEGER := 1;
                    frmcontaspagar.qrcontaspagar.FieldByName('filtro').ASINTEGER := 0;
                    frmcontaspagar.qrcontaspagar.FieldByName('valorpago').asfloat := frmcontaspagar.qrcontaspagar.FieldByName('valorpago').asfloat -
                     QUERY.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcontaspagar.FieldByName('liquido').asfloat := frmcontaspagar.qrcontaspagar.FieldByName('liquido').asfloat +
                    QUERY.FieldByName('valor_pago').asfloat;
                    frmcontaspagar.qrcontaspagar.FieldByName('data_pagamento').asstring := '';
                    frmcontaspagar.qrcontaspagar.post;
                    frmcontaspagar.qrcontaspagar.Refresh;

                       if dm.IBTransaction.Active then
                         dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;

                        try
                          with dm.Consulta do
                             begin
                                close;
                                sql.Clear;
                                sql.add('DELETE FROM CONTAS_APAGAR_PAGO WHERE SEQ = :SEQ');
                                Parambyname('SEQ').AsInteger:= QUERY.FieldByName('SEQ').ASINTEGER;
                                ExecQuery;
                             end;
                          dm.IBTransaction.Commit;
                        except
                          dm.IBTransaction.StartTransaction;
                          showmessage('Erro ao excluir a conta paga');
                        end;


        end;
      end;
       suiButton2.Click;
       
     formprincipal.log(codigo_usuario,'C.PAGAR',FRMCONTASPAGAR.qrcontaspagar.fieldbyname('documento').asstring,'EXTORNOU',' Estornou Conta a Pagar Conta Nr: ' +
      frmcontaspagar.qrcontaspagar.fieldbyname('documento').asstring +
      ' Fornecedor: ' +  frmcontaspagar.qrcontaspagar.fieldbyname('fornecedor').asstring,);
    end;
  end;
end;
end;
procedure TFormContasPagar_ext.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
end;

procedure TFormContasPagar_ext.BtnConsProClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
     frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

      edit1.Text := DM.SDS_FornecedoresCODIGO.Text;
end;

end.
