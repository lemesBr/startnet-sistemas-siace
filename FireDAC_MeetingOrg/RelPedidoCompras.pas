unit RelPedidoCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, Mask, SUIButton, Mylabel, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, RxToolEdit;

type
  TFormPedidoCompra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    myLabel3d1: TmyLabel3d;
    suiButton7: TsuiButton;
    Label5: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    RxLabel1: TRxLabel;
    fornec: TComboEdit;
    Label1: TLabel;
    grupo: TComboEdit;
    Panel4: TPanel;
    grupo2: TRxLabel;
    Label2: TLabel;
    Label3: TLabel;
    categoria: TComboEdit;
    Panel5: TPanel;
    categoria2: TRxLabel;
    qry_pedidos: TSQLQuery;
    Dsp_pedidos: TDataSetProvider;
    cds_pedidos: TClientDataSet;
    Dts_pedidos: TDataSource;
    cds_pedidosCOD_EMPRESA: TIntegerField;
    cds_pedidosCODIGO_SEQ: TIntegerField;
    cds_pedidosCOD_PRODUTO: TIntegerField;
    cds_pedidosCOD_USUARIO: TIntegerField;
    cds_pedidosDATA_FALTA: TDateField;
    cds_pedidosFRACAO: TIntegerField;
    cds_pedidosQUANT_FRACAO: TIntegerField;
    cds_pedidosQUANT_INTEIRA: TIntegerField;
    cds_pedidosDESCRICAO: TStringField;
    cds_pedidosPRECO_CUSTO: TFMTBCDField;
    cds_pedidosPRECO_VENDA: TFMTBCDField;
    cds_pedidosPRECO_VENDA2: TFMTBCDField;
    cds_pedidosMED_GENERICO: TStringField;
    cds_pedidosQTD_FRACIONADA: TFMTBCDField;
    cds_pedidosQTD_CAIXA: TFMTBCDField;
    cds_pedidosMED_CONTROLADO: TStringField;
    cds_pedidosPRINCIPIO_ATIVO: TStringField;
    cds_pedidosLABORATORIO: TStringField;
    cds_pedidosCOD_LABORATORIO: TIntegerField;
    cds_pedidosCODIGO_MARCA: TIntegerField;
    cds_pedidosNOME_GRUPO: TStringField;
    cds_pedidosNOME_SUBGRUPO: TStringField;
    cds_pedidosNOME_MARCA: TStringField;
    cds_pedidosCODIGO_SUBGRUPO: TIntegerField;
    cds_pedidosCODIGO_GRUPO: TIntegerField;
    cds_pedidosCATEGORIA: TIntegerField;
    cds_pedidosDESCRICAO1: TStringField;
    cds_pedidosVALOR_TOTAL: TFMTBCDField;
    qry_pedidosCOD_EMPRESA: TIntegerField;
    qry_pedidosCODIGO_SEQ: TIntegerField;
    qry_pedidosCOD_PRODUTO: TIntegerField;
    qry_pedidosCOD_USUARIO: TIntegerField;
    qry_pedidosDATA_FALTA: TDateField;
    qry_pedidosFRACAO: TIntegerField;
    qry_pedidosQUANT_FRACAO: TIntegerField;
    qry_pedidosQUANT_INTEIRA: TIntegerField;
    qry_pedidosDESCRICAO: TStringField;
    qry_pedidosPRECO_CUSTO: TFMTBCDField;
    qry_pedidosPRECO_VENDA: TFMTBCDField;
    qry_pedidosPRECO_VENDA2: TFMTBCDField;
    qry_pedidosMED_GENERICO: TStringField;
    qry_pedidosQTD_FRACIONADA: TFMTBCDField;
    qry_pedidosQTD_CAIXA: TFMTBCDField;
    qry_pedidosMED_CONTROLADO: TStringField;
    qry_pedidosPRINCIPIO_ATIVO: TStringField;
    qry_pedidosLABORATORIO: TStringField;
    qry_pedidosCOD_LABORATORIO: TIntegerField;
    qry_pedidosCODIGO_MARCA: TIntegerField;
    qry_pedidosNOME_GRUPO: TStringField;
    qry_pedidosNOME_SUBGRUPO: TStringField;
    qry_pedidosNOME_MARCA: TStringField;
    qry_pedidosCODIGO_SUBGRUPO: TIntegerField;
    qry_pedidosCODIGO_GRUPO: TIntegerField;
    qry_pedidosCATEGORIA: TIntegerField;
    qry_pedidosDESCRICAO1: TStringField;
    qry_pedidosVALOR_TOTAL: TFMTBCDField;
    CheckBox1: TCheckBox;
    procedure fornecButtonClick(Sender: TObject);
    procedure grupoButtonClick(Sender: TObject);
    procedure categoriaButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidoCompra: TFormPedidoCompra;

implementation

uses ModulodeDados, ConsGrupos, ConsCategoria,
  ImprimePedCompras,Ubibli1, xloc_fornecedor;

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

procedure TFormPedidoCompra.fornecButtonClick(Sender: TObject);
begin
Try
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);
      fornec.Text := dm.SDS_FornecedoresCODIGO.Text;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Conveniados!!');
end;
end;

procedure TFormPedidoCompra.grupoButtonClick(Sender: TObject);
begin
 Try
if FormConsGrupos=nil   then
    begin
    FormConsGrupos:=TFormConsGrupos.Create(self);
      FormConsGrupos.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
Grupo.Clear;
Grupo2.Caption := DM.SDS_GruposDESCRICAO.Text;
Grupo.Text:= DM.SDS_GruposCodigo.AsString;
end;

procedure TFormPedidoCompra.categoriaButtonClick(Sender: TObject);
begin
Try
if FormConsCategoria=nil   then
    begin
    FormConsCategoria:=TFormConsCategoria.Create(self);
      FormConsCategoria.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
categoria.Clear;
categoria2.Caption:= DM.SDS_categoriaDESCRICAO.Text;
categoria.Text:= DM.SDS_CATEGORIACodigo.AsString;
end;

procedure TFormPedidoCompra.FormShow(Sender: TObject);
begin
DM.SDS_Fornecedores.Active := False;
DM.SDS_Grupos.Active := False;
DM.SDS_CATEGORIA.Active := false;
DM.SDS_Fornecedores.Active := true;
DM.SDS_Grupos.Active := True;
DM.SDS_CATEGORIA.Active :=true;
end;

procedure TFormPedidoCompra.suiButton7Click(Sender: TObject);
var
 inicio, final,codcli,port :string;
  dtmovi, dtmovf :string;
  DtVen: string;
  grupo1 : string;
  categ : string;
  begin

    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

    grupo1:=grupo.TexT;

  if CheckBox1.Checked = True then
   begin
   If DateEdit4.Date < DateEdit3.Date Then
   begin
   ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
   DateEdit4.Date := DateEdit3.Date;
   end Else
   begin
    cds_pedidos.Active :=FALSE;
    qry_pedidos.close;
    qry_pedidos.SQL.Clear;
    qry_pedidos.SQL.add('select * from V_PRODUTOS_P_COMPRA where COD_EMPRESA >0'+'');
    if inicio > ' / /   ' then
    qry_pedidos.SQL.add('and DATA_FALTA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_FALTA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_pedidos.SQL.add('ORDER BY DESCRICAO ASC');
    qry_pedidos.Open;
    cds_pedidos.Active :=TRUE;
    FormRelPedidocompra := TFormRelPedidocompra.Create(self);
    FormRelPedidocompra.RLReport1.Prepare;
    FormRelPedidocompra.RLReport1.PreviewModal;
    end;
 end else

   if grupo.text > '0' then
   begin
   If DateEdit4.Date < DateEdit3.Date Then
   begin
   ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
   DateEdit4.Date := DateEdit3.Date;
   end Else
   begin
    cds_pedidos.Active :=FALSE;
    qry_pedidos.close;
    qry_pedidos.SQL.Clear;
    qry_pedidos.SQL.add('select * from V_PRODUTOS_P_COMPRA where COD_EMPRESA >0'+'');
    if grupo1 > '' then
    qry_pedidos.SQL.add('and CODIGO_GRUPO ='+(grupo1)+'');
    if inicio > ' / /   ' then
     qry_pedidos.SQL.add('and DATA_FALTA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_FALTA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_pedidos.SQL.add('ORDER BY DESCRICAO ASC');
    qry_pedidos.Open;
    cds_pedidos.Active :=TRUE;
    FormRelPedidocompra := TFormRelPedidocompra.Create(self);
    FormRelPedidocompra.RLReport1.Prepare;
    FormRelPedidocompra.RLReport1.PreviewModal;
    end;
 end else

  if categoria.text > '0' then
    begin
    If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
   DateEdit4.Date := DateEdit3.Date;
   end Else
    begin
    cds_pedidos.Active :=FALSE;
    qry_pedidos.close;
    qry_pedidos.SQL.Clear;
    qry_pedidos.SQL.add('select * from V_PRODUTOS_P_COMPRA where COD_EMPRESA >0'+'');
    if categ > '' then
    qry_pedidos.SQL.add('and CATEGORIA ='+(categ)+'');
    if inicio > ' / /   ' then
     qry_pedidos.SQL.add('and DATA_FALTA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_FALTA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    qry_pedidos.SQL.add('ORDER BY DESCRICAO ASC');
    qry_pedidos.Open;
    cds_pedidos.Active :=TRUE;
    FormRelPedidocompra := TFormRelPedidocompra.Create(self);
    FormRelPedidocompra.RLReport1.Prepare;
    FormRelPedidocompra.RLReport1.PreviewModal;
    end;
   end;
   end;
procedure TFormPedidoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormPedidoCompra := nil;
end;

procedure TFormPedidoCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
