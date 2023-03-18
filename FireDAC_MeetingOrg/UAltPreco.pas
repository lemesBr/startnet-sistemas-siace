unit UAltPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,
  IBDatabase, DB, IBCustomDataSet, IBQuery, ComCtrls, pngimage,
  RxToolEdit, RxCurrEdit;

type
  TFrmAltPreco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TBitBtn;
    BtnOK: TBitBtn;
    Label1: TLabel;
    EdtValor: TCurrencyEdit;
    Label2: TLabel;
    EdtPromocao: TCurrencyEdit;
    QAlteraPreco: TIBQuery;
    IBTRPreco: TIBTransaction;
    Label3: TLabel;
    EdtCusto: TCurrencyEdit;
    StatusBar1: TStatusBar;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    EdtMLVarejoNormal: TCurrencyEdit;
    Label7: TLabel;
    EdtMLVarejoPro: TCurrencyEdit;
    Label11: TLabel;
    EdtProgramado: TCurrencyEdit;
    Label12: TLabel;
    EdtMLProgramado: TCurrencyEdit;
    GroupBox1: TGroupBox;
    LProduto: TLabel;
    Label13: TLabel;
    EdtMLVarejoNormalReal: TCurrencyEdit;
    Label14: TLabel;
    EdtMLVarejoProgReal: TCurrencyEdit;
    Label15: TLabel;
    EdtMLVarejoPromoReal: TCurrencyEdit;
    Label16: TLabel;
    EdtLucroVarejoNormal: TCurrencyEdit;
    Label17: TLabel;
    EdtLucroProg: TCurrencyEdit;
    Label18: TLabel;
    EdtLucroPromo: TCurrencyEdit;
    Image1: TImage;
    Label4: TLabel;
    Edit1: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtValorExit(Sender: TObject);
    procedure EdtMLVarejoNormalExit(Sender: TObject);
    procedure EdtMLVarejoProExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtMLProgramadoExit(Sender: TObject);
    procedure EdtMLVarejoNormalRealExit(Sender: TObject);
    procedure EdtMLVarejoProgRealExit(Sender: TObject);
    procedure EdtMLVarejoPromoRealExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltPreco: TFrmAltPreco;
    cPrecoCusto, CUSTO_MEDIO, PRECO_ANT : Real;

implementation

Uses UAlteraPreco, ModulodeDados;

{$R *.dfm}

procedure TFrmAltPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;


procedure TFrmAltPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      btncancelar.Click;
end;


procedure TFrmAltPreco.BtnCancelarClick(Sender: TObject);
begin
   close;
end;


procedure TFrmAltPreco.BtnOKClick(Sender: TObject);
var bInserido : boolean;
begin
   { ALTERA VALOR DE VENDA E PROMOÇÃO }
   if IBTRPreco.Active then
      IBTRPreco.Commit;
   IBTRPreco.StartTransaction;
   try
    try
       with QAlteraPreco do
          begin
             close;
             Parambyname('PRECO_VENDA').AsCurrency        := strtocurr(edtvalor.Text);
             Parambyname('PRECO_PROMOCAO').AsCurrency     := strtocurr(EdtPromocao.Text);
             Parambyname('PRECO_VENDA2').AsCurrency       := strtocurr(EdtProgramado.Text);
             Parambyname('preco_custo').AsCurrency        := strtocurr(EdtCusto.Text);
             Parambyname('NCM').AsString                  := Edit1.Text;
             Parambyname('CODPRO').AsInteger              := iAuxCodPro;
             ExecSQL;
          end;
       IBTRPreco.Commit;
     except
       IBTRPreco.Rollback;
       showmessage('Erro ao Atualizar o Preço do Produto');
     end;
   finally
     QAlteraPreco.Close;
   end;


  { BUSCA O CUSTO DO PRODUTO }
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.Consulta do
         begin
            close;
            sql.Clear;
            sql.add('SELECT PRECO_CUSTO, CUSTO_MEDIO, PRECO_VENDA FROM PRODUTOS WHERE CODIGO = :CODPRO');
            Parambyname('CODPRO').AsInteger:= iAuxCodPro;
            ExecQuery;

            cPrecoCusto:=  fieldbyname('preco_custo').AsCurrency;
            CUSTO_MEDIO := fieldbyname('custo_MEDIO').AsCurrency;
            PRECO_ANT   := fieldbyname('preco_VENDA').AsCurrency;
         end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao buscar o custo do produto');
    end;
  finally
    dm.Consulta.Close;
  end;


   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
   DM.ProxCod.Open;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with dm.logpro do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            Parambyname('ID_PRODUTO').AsInteger     := iAuxCodPro;
            parambyname('ID_OCORRENCIA').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('TIPO_ALTERACAO').AsInteger := 3;    //aleteração de precos
            Parambyname('DATA_HORA').Asdatetime     := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.Asinteger;
            Parambyname('P_COMPRA_ANT').Asfloat     := cPrecoCusto;
            Parambyname('P_CUSTO_ANT').Asfloat      := cPrecoCusto;
            Parambyname('P_CUSTO_MEDIO_ANT').Asfloat := CUSTO_MEDIO;
            Parambyname('P_VENDA_ANT').Asfloat      := preco_ant;
            Parambyname('P_COMPRA_NOVO').Asfloat    := strtocurr(EdtCusto.Text);
            Parambyname('P_CUSTO_NOVO').Asfloat     := strtocurr(EdtCusto.Text);
            Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat  := CUSTO_MEDIO;
            Parambyname('P_VENDA_NOVO').Asfloat     := strtocurr(edtvalor.Text);
            ExecSQL;
         end;
      DM.IBTransaction.Commit;

    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o log do produto, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;
  finally
    DM.LogPro.Close;
   end;

 if Tag = 1 then
 begin
   FrmAlteraPreco.BtnOk.Click;
 end ;

 if Tag = 2 then
 begin
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.Consulta do
         begin
            close;
            sql.Clear;
            sql.add('UPDATE notasfiscais_itens SET PRECO_VENDA = :PRECO_VENDA, PRECO_VENDA2 = :PRECO_VENDA2 WHERE CODIGO_PRODUTO = :CODPRO');
            Parambyname('PRECO_VENDA').AsFloat:= EdtValor.Value;
            Parambyname('PRECO_VENDA2').AsFloat:= EdtProgramado.Value;
            Parambyname('CODPRO').AsInteger:= iAuxCodPro;
            ExecQuery;
         end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro ao gravar os dados do produto na nota fiscal');
    end;
  finally
    dm.Consulta.Close;
  end;
 end ;

   close;

end;


procedure TFrmAltPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= caFree;
end;


procedure TFrmAltPreco.EdtValorExit(Sender: TObject);
begin
   if strtocurr(EdtCusto.Text) > 0 then
      begin
         with sender as TCurrencyEdit do
            begin
               if strtocurr(text) > 0 then
                  begin
                     if sender = EdtValor then
                        begin
                           EdtMLVarejoNormal.Text    := currtostr((((StrToCurr(EdtValor.text) - strtocurr(edtcusto.Text)) * 100) / strtocurr(EdtCusto.text)));
                           EdtMLVarejoNormalReal.Text:= currtostr((((strtocurr(EdtValor.Text) - strtocurr(EdtCusto.Text)) / strtocurr(EdtValor.Text)) * 100));
                           EdtLucroVarejoNormal.Text := currtostr(strtocurr(EdtValor.Text) - strtocurr(EdtCusto.Text));
                        end
                     else
                     if sender = EdtProgramado then
                        begin
                           EdtMLProgramado.Text     := currtostr((((StrToCurr(EdtProgramado.text) - strtocurr(edtcusto.Text)) * 100) / strtocurr(EdtCusto.text)));
                           EdtMLVarejoProgReal.Text := currtostr((((strtocurr(EdtProgramado.Text) - strtocurr(EdtCusto.Text)) / strtocurr(EdtProgramado.Text)) * 100));
                           EdtLucroProg.Text        := currtostr(strtocurr(EdtProgramado.Text) - strtocurr(EdtCusto.Text));
                        end
                     else
                     if sender = EdtPromocao then
                        begin
                           EdtMLVarejoPro.Text       := currtostr((((StrToCurr(EdtPromocao.text) - strtocurr(edtcusto.Text)) * 100) / strtocurr(EdtCusto.text)));
                           EdtMLVarejoPromoReal.Text := currtostr((((strtocurr(EdtPromocao.Text) - strtocurr(EdtCusto.Text)) / strtocurr(EdtPromocao.Text)) * 100));
                           EdtLucroPromo.Text        := currtostr(strtocurr(EdtPromocao.Text) - strtocurr(EdtCusto.Text));
                        end;
                  end;
            end;
      end
   else
      begin
         EdtMLVarejoNormal.Clear;
         EdtMLVarejoNormalReal.Clear;
         EdtLucroVarejoNormal.Clear;

         EdtMLProgramado.Clear;
         EdtMLVarejoProgReal.Clear;
         EdtLucroProg.Clear;

         EdtMLVarejoPro.Clear;
         EdtMLVarejoPromoReal.Clear;
         EdtLucroPromo.Clear;
      end;
end;

procedure TFrmAltPreco.EdtMLVarejoNormalExit(Sender: TObject);
begin
   if strtocurr(EdtValor.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLVarejoNormal.text) > 0) then
             edtvalor.Text:= currtostr((((strtocurr(EdtCusto.Text) * strtocurr(EdtMLVarejoNormal.Text)) / 100) + strtocurr(EdtCusto.Text)));
         EdtValorExit(EdtValor);
      end
   else
      begin
         EdtMLVarejoNormal.Clear;
         EdtLucroVarejoNormal.Clear;
      end;
end;

procedure TFrmAltPreco.EdtMLVarejoProExit(Sender: TObject);
begin
   if strtocurr(EdtPromocao.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLVarejoPro.text) > 0) then
            EdtPromocao.Text:= currtostr((((strtocurr(EdtCusto.Text) * strtocurr(EdtMLVarejoPro.Text)) / 100) + strtocurr(EdtCusto.Text)));
       //  EdtValorExit(EdtPromocao);
      end
   else
      begin
         EdtMLVarejoPro.Clear;
         EdtLucroPromo.Clear;
      end;
end;

procedure TFrmAltPreco.FormShow(Sender: TObject);
begin
   EdtValorExit(edtvalor);
   EdtValorExit(EdtProgramado);
   EdtValorExit(EdtPromocao);
end;

procedure TFrmAltPreco.EdtMLProgramadoExit(Sender: TObject);
begin
   if strtocurr(EdtProgramado.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLProgramado.text) > 0) then
             EdtProgramado.Text:= currtostr((((strtocurr(EdtCusto.Text) * strtocurr(EdtMLProgramado.Text)) / 100) + strtocurr(EdtCusto.Text)));
       //  EdtValorExit(EdtProgramado);
      end
   else
      begin
         EdtMLProgramado.Clear;
         EdtLucroProg.Clear;
      end;
end;

procedure TFrmAltPreco.EdtMLVarejoNormalRealExit(Sender: TObject);
begin
   if strtocurr(EdtValor.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLVarejoNormalReal.text) > 0) then
             edtvalor.Text:= currtostr(strtocurr(EdtCusto.Text) / (1 - (strtocurr(EdtMLVarejoNormalReal.Text) / 100)));
         EdtValorExit(EdtValor);
      end
   else
      begin
         EdtMLVarejoNormalReal.Clear;
         EdtLucroVarejoNormal.Clear;
      end;
end;

procedure TFrmAltPreco.EdtMLVarejoProgRealExit(Sender: TObject);
begin
   if strtocurr(EdtProgramado.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLVarejoProgReal.text) > 0) then
             EdtProgramado.Text:= currtostr(strtocurr(EdtCusto.Text) / (1 - (strtocurr(EdtMLVarejoProgReal.Text) / 100)));
         EdtValorExit(EdtProgramado);
      end
   else
      begin
         EdtMLVarejoProgReal.Clear;
         EdtLucroProg.Clear;
      end;
end;

procedure TFrmAltPreco.EdtMLVarejoPromoRealExit(Sender: TObject);
begin
   if strtocurr(EdtPromocao.Text) > 0 then
      begin
         if (strtocurr(EdtCusto.Text) > 0) and (strtocurr(EdtMLVarejoPromoReal.text) > 0) then
             EdtPromocao.Text:= currtostr(strtocurr(EdtCusto.Text) / (1 - (strtocurr(EdtMLVarejoPromoReal.Text) / 100)));
         EdtValorExit(EdtPromocao);
      end
   else
      begin
         EdtMLVarejoPromoReal.Clear;
         EdtLucroPromo.Clear;
      end;
end;

end.
