unit venda_contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, wwdblook, Mask,
  Grids, Wwdbigrd, Wwdbgrid, DB, Buttons, DBClient,
  DBGrids, SUIDBCtrls, FMTBcd, Provider, SqlExpr, IBCustomDataSet, IBQuery,
  aDvGlowButton, ImgList, acAlphaImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBCtrls, aDvDBLookupComboBox, RzDBCmbo,
  System.ImageList, RxToolEdit, RxCurrEdit;

type
  TfrmHotel_contasreceber = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    Label1: TLabel;
    Label2: TLabel;
    rqtde: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    rsoma: TRxCalcEdit;
    Label4: TLabel;
    rdiferenca: TRxCalcEdit;
    ViewSplit2: TViewSplit;
    TOPO: THeaderView;
    ViewSplit3: TViewSplit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1Parcela: TStringField;
    ClientDataSet1DataVencimento: TDateField;
    ClientDataSet1Comissao: TCurrencyField;
    ClientDataSet1ValorParcela: TFMTBCDField;
    DataSource1: TDataSource;
    DBGrid1: TsuiDBGrid;
    qPGTO: TSQLQuery;
    qPGTOCODIGO: TIntegerField;
    qPGTONUMERO_PAR: TIntegerField;
    qPGTOVARIACAO_DIAS: TIntegerField;
    qPGTOPIMEIRA_PAR: TIntegerField;
    qPGTOJUROS_DIA: TFMTBCDField;
    qPGTOMEDIA_DIAS: TIntegerField;
    qPGTOJUROS_BASE: TFMTBCDField;
    qPGTOTIPO_PAGAMENTO: TStringField;
    qPGTOSTATUS: TStringField;
    qPGTOUSUARIO: TStringField;
    qPGTODATA: TDateField;
    qPGTODESCRICAO: TStringField;
    qPGTOPG_ECF: TStringField;
    qPGTOCHEK: TStringField;
    DSP_PAGTO: TDataSetProvider;
    DTS_PAGTO: TDataSource;
    CDS_PAGTO: TClientDataSet;
    CDS_PAGTOCODIGO: TIntegerField;
    CDS_PAGTONUMERO_PAR: TIntegerField;
    CDS_PAGTOVARIACAO_DIAS: TIntegerField;
    CDS_PAGTOPIMEIRA_PAR: TIntegerField;
    CDS_PAGTOJUROS_DIA: TFMTBCDField;
    CDS_PAGTOMEDIA_DIAS: TIntegerField;
    CDS_PAGTOJUROS_BASE: TFMTBCDField;
    CDS_PAGTOTIPO_PAGAMENTO: TStringField;
    CDS_PAGTOSTATUS: TStringField;
    CDS_PAGTOUSUARIO: TStringField;
    CDS_PAGTODATA: TDateField;
    CDS_PAGTODESCRICAO: TStringField;
    CDS_PAGTOCHEK: TStringField;
    CDS_PAGTOPG_ECF: TStringField;
    SPC_CREDIARIO: TSQLStoredProc;
    qrcaixa_mov: TIBQuery;
    ImageList3: TsAlphaImageList;
    BtCancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    combocondpgto: TRzDBLookupComboBox;
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BGRAVARClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHotel_contasreceber: TfrmHotel_contasreceber;

implementation

uses fFechamento, Principal, ModulodeDados, fListApartamento, ModuleDados1;

{$R *.dfm}

procedure TfrmHotel_contasreceber.combocondpgtoEnter(Sender: TObject);
begin
{  lancando_contasreceber := false;

  tedit(sender).color := clyellow;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.indexfieldnames := 'condpgto';   } 

end;

procedure TfrmHotel_contasreceber.combocondpgtoExit(Sender: TObject);
var prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if combocondpgto.text <> '' then
  begin
{    if frmmodulo.qrcondpgto.locate('condpgto',combocondpgto.text,[loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.sql.clear;
      frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = '''+frmmodulo.qrcondpgto.fieldbyname('codigo').asstring+''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          frmmodulo.qrvenda_contasreceber.Insert;
          frmmodulo.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := strtodate(data_caixa)+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := frmvenda_fechamento.rcrediario.Value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);
          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          frmmodulo.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring := numero_cupom +'/'+inttostr(prestacao);
          frmmodulo.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CREDIÁRIO';
          frmmodulo.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        frmmodulo.qrvenda_contasreceber.Refresh;
        rsoma.value := frmvenda_fechamento.rCREDIARIO.Value;
        rdiferenca.Value := 0;

        wwdbgrid1.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
        combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!','Aviso',mb_ok+MB_ICONERROR);
      combocondpgto.setfocus;
    end;
  end
  else
  begin    }

    rqtde.Text := CDS_PAGTONUMERO_PAR.Text;

    rqtde.setfocus;
  end;


end;

procedure TfrmHotel_contasreceber.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmHotel_contasreceber.rqtdeEnter(Sender: TObject);
begin
//  lancando_contasreceber := false;

  IF RQTDE.VALUE = 0 THEN RQTDE.VALUE := 1;
  tedit(sender).color := clyellow;
end;

procedure TfrmHotel_contasreceber.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
vp : real;

DT: TDateTime;
Days: Extended;
Y: Byte;
tp : string;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin
      {  prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := frmvenda_fechamento.rCREDIARIO.value / qtde;

        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;
        while QTDE <> 0 do
        begin
          frmmodulo.qrvenda_contasreceber.Insert;
          frmmodulo.qrvenda_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').asdatetime := incmonth(strtodate(data_caixa),prestacao);
          frmmodulo.qrvenda_contasreceber.fieldbyname('valor').asfloat := valor;
          frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring := numero_cupom +'/'+inttostr(prestacao);
          frmmodulo.qrvenda_contasreceber.FieldByName('TIPO').asstring := 'CREDIÁRIO';
          frmmodulo.qrvenda_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;
        rsoma.value := frmvenda_fechamento.rCREDIARIO.Value;
        rdiferenca.Value := 0;

        frmmodulo.qrvenda_contasreceber.Refresh;
        wwdbgrid1.SetFocus;  }
        
rdiferenca.Value := 0;
rsoma.value   := F_Fechamento.EdTotal.Value;

VP:= (F_Fechamento.EdTotal.Value/rqtde.value);

DBGrid1.Enabled:= TRUE;
Days:= CDS_PAGTOVARIACAO_DIAS.AsInteger;
DT:= (Date + CDS_PAGTOPIMEIRA_PAR.AsInteger) - Days;
//Libera_Insert := True;
//DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(CDS_PAGTONUMERO_PAR.Text) do
begin
if ClientDataSet1.RecordCount < Y then
ClientDataSet1.Insert
else
ClientDataSet1.Edit;
     DT:= DT +Days;
     ClientDataset1.FieldByname('CodigoCliente').AsString:= F_Fechamento.EdCodHospede.text;
     ClientDataset1.FieldByname('CodigoCompra').value:= null;
     ClientDataset1.FieldByname('Vendedor').AsString:=FormPrincipal.UserLogado;
     ClientDataset1.FieldByname('Historico').AsString:= 'Referente a Hospedagen no Apto '+' '+ F_Fechamento.EdApartamento.Text;
     ClientDataset1.FieldByname('DataCompra').AsDateTime:= Date;
     ClientDataset1.FieldByname('ValorParcela').Value:= VP;
     ClientDataset1.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+rqtde.Text);
     ClientDataset1.FieldByname('DataVencimento').Value:= DT;
     ClientDataSet1.FieldByName('Comissao').Value := null;
     ClientDataSet1.Post;
     ClientDataSet1.Next;
     ClientDataSet1.Last;
     end;
    // Libera_Insert := False;
     ClientDataSet1.First;

     bgravar.Enabled:= True;
    // suiButton2.SetFocus;

    BGRAVAR.SetFocus;

  end;

end;

procedure TfrmHotel_contasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure TfrmHotel_contasreceber.BGRAVARClick(Sender: TObject);
var
  dtaux : TDateTime;
  Contador, i : Integer;
begin
 dtaux := Date;
{  if frmmodulo.qrvenda_contasreceber.State = dsedit then
  begin
    frmmodulo.qrvenda_contasreceber.post;
    lancando_contasreceber := false;
  end;

  if rdiferenca.Value <> 0 then
  begin
    application.MessageBox('Os valores informados nas parcelas não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    wwdbgrid1.setfocus;
    exit;
  end;



  CONTINUAR := TRUE;   }

          if ClientDataSet1.RecordCount >0 then
          begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_CREDIARIO.Params[0].Value       :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  F_Fechamento.EdCodHospede.Text;
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO.Params[4].AsString    :=  ClientDataSet1Historico.Text;
           SPC_CREDIARIO.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  ClientDataset1.FieldByname('ValorParcela').Text;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := ClientDataset1.FieldByname('Parcela').text;
           SPC_CREDIARIO.Params[13].AsInteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'DPL';
           SPC_CREDIARIO.Params[15].AsString   := F_Fechamento.EdHospede.Text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].Value      := null;
           SPC_CREDIARIO.Params[21].AsString   := CodEntrada;
           SPC_CREDIARIO.ExecProc;
           ClientDataset1.Next;
           end;


                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_ENTRADA)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_ENTRADA)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=  1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := rsoma.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AP').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 4; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ref Apartamento = ' + F_Fechamento.EdApartamento.Text  + ' - em Dinheiro';
                    qrcaixa_mov.parambyname('tipo').AsString  := 'P';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PRZ';
                    qrcaixa_mov.parambyname('COD_ENTRADA').AsString  := CodEntrada;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              end;

           lancando_contasreceber := True;

          CLOSE;
end;

procedure TfrmHotel_contasreceber.wwDBGrid1Enter(Sender: TObject);
begin
//  lancando_contasreceber := true;
end;

procedure TfrmHotel_contasreceber.BCANCELARClick(Sender: TObject);
begin
  lancando_contasreceber := false;
  CLOSE;
end;

procedure TfrmHotel_contasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmHotel_contasreceber.FormShow(Sender: TObject);
var
  tipo : string;
begin
{        frmmodulo.qrvenda_contasreceber.close;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('delete from cl00002');
        frmmodulo.qrvenda_contasreceber.ExecSQL;
        frmmodulo.qrvenda_contasreceber.sql.clear;
        frmmodulo.qrvenda_contasreceber.SQL.Add('select * from cl00002 order by prestacao');
        frmmodulo.qrvenda_contasreceber.open;   }

  lancando_contasreceber := False;

  TOPO.Caption := 'CLIENTE: '+ F_Fechamento.EdCodHospede.Text +' - '+
                  F_Fechamento.EdHospede.Text ;

   tipo := 'C';

   CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;

end;

procedure TfrmHotel_contasreceber.FormCreate(Sender: TObject);
begin
{   if FileExists('C:\SIACE\PARCELADO1.xml') then
  begin
     DeleteFile('C:\SIACE\PARCELADO1.xml');
  end;}
 with clientDataset1 do
  Begin
  //Filename:=ExtractFilepath(paramstr(0))+'PARCELADO1.xml';
 // if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'DataVencimento';
  open;
  end; 
end;

end.
