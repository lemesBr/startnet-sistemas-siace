unit ConsultaOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, db, RXCtrls, ExtCtrls, 
  Buttons, ToolEdit, SUIButton, Mask, SUIDlg, sBitBtn, XDBGrids;

type
  TFormConsOS = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid: TXDBGrid;
    GroupBox3: TGroupBox;
    BitBtn1: TsBitBtn;
    BitBtn2: TsBitBtn;
    GroupBox4: TGroupBox;
    DBGrid1: TXDBGrid;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    RxLabel1: TRxLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    suiButton2: TsBitBtn;
    DateEdit3: TDateEdit;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Cliente: TComboEdit;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsBitBtn;
    suiButton3: TsBitBtn;
    Combobox1: TComboBox;
    Edit3: TEdit;
    ComboEdit1: TComboEdit;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    Label1: TLabel;
    Impressao: TsuiMessageDialog;
    Edit2: TEdit;
    Edit60: TEdit;
    Edit62: TEdit;
    Label4: TLabel;
    Label9: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDblClick(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TXColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
  private
    { Private declarations }

  public
    { Public declarations }
    A, B :Real;
  end;

var
  FormConsOS: TFormConsOS;


implementation

uses DMOS1, Z_RotinasGerais, Principal, ModulodeDados, ConsClientes,
  Udmcob, relatorioaberturaos, RelSolucaoOs, os_impressao;

{$R *.dfm}

procedure TFormConsOS.Edit1Change(Sender: TObject);
begin
dmos.SDS_OS.Locate('CONSUMIDOR_NOME',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormConsOS.Edit1Enter(Sender: TObject);
begin
Edit1.Clear;
//Edit2.Clear;
CorEntrada(Sender);
end;

procedure TFormConsOS.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);   
DBGrid.SetFocus;
end;

procedure TFormConsOS.FormShow(Sender: TObject);
begin
//DMOS.SDS_OS.Active:= False;
//DMOS.SDS_os.Active:= True;
end;

procedure TFormConsOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormConsOS:=nil;
end;

procedure TFormConsOS.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TComboEdit) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConsOS.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsOS.DBGridDblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsOS.suiButton3Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit4.Clear;
DateEdit3.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
RxLabel6.Caption :='';
end;

procedure TFormConsOS.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormConsOS.ClienteButtonClick(Sender: TObject);
begin
 dm.SDS_Clientes.Filtered := false;
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       RxLabel6.Caption   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConsOS.ClienteExit(Sender: TObject);
begin

 if edit3.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.Text := '';
 Cliente.SetFocus;
end else

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where codigo like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  RxLabel6.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;

procedure TFormConsOS.suiButton2Click(Sender: TObject);
var
  codcli, VEND, os: string;
  inicio, final :string;
  dtmovi, dtmovf :string;
  DtVen: string;
  begin

    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit3.TexT;
    final:=dateedit4.TexT;

    dtmovi:=datetostr(DATE);
    dtmovf:=datetostr(DATE);

    dtmovi:=dateedit1.TexT;
    dtmovf:=dateedit2.TexT;

    codcli:=Cliente.text;
    os := edit1.text;
    VEND := COMBOEDIT1.TEXT;

 //   Edit2.Date := Date;
  //  DtVen:= edit2.text;
  //  Dtven:= datetostr(DATE);
  //  CID:= DBLookupComboBox1.Text;

    if ComboBox1.ItemIndex = 0 then
    If DateEdit4.Date < DateEdit3.Date Then
    begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit4.Date := DateEdit3.Date;
    end  Else
     begin
   // DM.SDS_Clientes.Open;
  //  DMCOB.SDS_CLIENTES.Active :=False;
    dmos.CDS_OS.Active :=FALSE;
    DMOS.SDS_PRODUTOS.Active := False;
    dmos.qry_os.close;
    dmos.qry_os.SQL.Clear;
    dmos.qry_os.SQL.add('select * from OS_ORDEMSERVICO where ID_EMPRESA >0'+'');
    if codcli > '' then
    dmos.qry_os.SQL.add('and ID_CLIENTE ='+(codcli)+'');
    if os > '' then
    dmos.qry_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
    if VEND > '' then
    dmos.qry_os.SQL.add('and ID_TECNICORESPONSAVEL ='+(VEND)+'');
    if inicio > ' / /   ' then
    dmos.qry_os.SQL.add('and DATA_ENTRADA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_ENTRADA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    if dtmovi > ' / /   ' then
    dmos.qry_os.SQL.add('and DATA_SOLUCAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_SOLUCAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
    dmos.qry_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO DESC');
    dmos.qry_os.Open;
    dmos.CDS_OS.Active :=TRUE;
    dmos.CDS_OS.Filtered := false;
    DMOS.SDS_PRODUTOS.Active := True;
end;
end;

procedure TFormConsOS.BitBtn1Click(Sender: TObject);
var
  OS: string;
begin
  Edit2.text:= DMOS.CDS_OSID_OS_ORDEMSERVICO.Text;
  OS := Edit2.Text;
    //   Impressao.Text :='Confirma Impressão da Abertura da Ordem de Serviço?';
    //       if Impressao.ShowModal = mryes then
               begin
                     DMOS.SDS_Clientes.Active:= False;
                    DM.SDS_Empresa.active := false;
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    if os > '' then
                    DMOS.Qry_rel_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO ASC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
                    //DMOS.SDS_REL_OS.DataSet.CommandText:='SELECT * from V_ORDEM_SERVICO WHERE ID_OS_ORDEMSERVICO like ' + #39 + '%' + dbEdit1.Text + '%' + #39+'' +'order by ID_OS_ORDEMSERVICO asc';
                    DMOS.SDS_ClienteS.Active:= True;
                    DM.SDS_Empresa.active := true;

                 //   IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  {{  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end else

                   //  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                   IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    //   FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end;
                 {  iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    begin
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end else
                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelAbertuaOs := TFormRelAbertuaOs.Create(self);
                    // FormRelAbertuaOs.RLReport1.DefaultFilter.Destroy;
                    FormRelAbertuaOs.RLReport1.Prepare;
                    FormRelAbertuaOs.RLReport1.PreviewModal;
                    end; }

                    
                    frmos_impressao := Tfrmos_impressao.Create(self);
                    frmos_impressao.edit1.Text := Edit2.Text;
                    frmos_impressao.showmodal;
                 end;

end;

procedure TFormConsOS.BitBtn2Click(Sender: TObject);
var
  OS: string;

begin
{  Edit2.Text:= DMOS.CDS_OSID_OS_ORDEMSERVICO.Text;
  os:= Edit2.Text;

       //   Impressao.Text :='Confirma Impressão da Solução da Ordem de Serviço?';
        //  if Impressao.ShowModal = mryes then
               begin
                    DMOS.SDS_Clientes.Active:= False;
                    DM.SDS_Empresa.active := false;
                    DMOS.cds_rel_os.Active := FALSE;
                    DMOS.SDS_REL_PRODUTO.Active := false;
                    DMOS.Qry_rel_os.close;
                    DMOS.Qry_rel_os.SQL.Clear;
                    DMOS.Qry_rel_os.SQL.add('SELECT * from V_ORDEM_SERVICO where ID_EMPRESA >0'+'');
                    if os > '' then
                    DMOS.Qry_rel_os.SQL.add('and ID_OS_ORDEMSERVICO ='+(os)+'');
                    DMOS.Qry_rel_os.SQL.add('ORDER BY ID_OS_ORDEMSERVICO ASC');
                    DMOS.Qry_rel_os.Open;
                    DMOS.cds_rel_os.Active := True;
                    DMOS.SDS_REL_PRODUTO.Active := True;
                    //DMOS.SDS_REL_OS.DataSet.CommandText:='SELECT * from V_ORDEM_SERVICO WHERE ID_OS_ORDEMSERVICO like ' + #39 + '%' + dbEdit1.Text + '%' + #39+'' +'order by ID_OS_ORDEMSERVICO asc';
                    DMOS.SDS_ClienteS.Active:= True;
                    DM.SDS_Empresa.active := true;

                    DMOS.SDS_REL_PRODUTO.First;
                    A:= 0;
                    B:= 0;
                    A:= A + DMOS.SDS_REL_PRODUTOVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_REL_PRODUTOQUANTIDADE.AsFloat;
                    DMOS.SDS_REL_PRODUTO.Next;
                    Edit60.Text:= FloatToStr(A);
                    Edit62.Text:= FloatToStr(B);

                    While not  DMOS.SDS_REL_PRODUTO.Eof do
                    begin
                    A:= A + DMOS.SDS_REL_PRODUTOVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_REL_PRODUTOQUANTIDADE.AsFloat;
                    DMOS.SDS_REL_PRODUTO.Next;
                    Edit60.Text:= FloatToStr(A);
                    Edit62.Text:= FloatToStr(B);
                    end;
                    DMOS.SDS_REL_PRODUTO.last;

                  //  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                {    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end else
                  //  IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;

                  {  iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    begin
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                    FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end else
                    iF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    begin
                    FormSolucaoOS := TFormSolucaoOS.Create(self);
                   // FormSolucaoOS.RLReport1.DefaultFilter.Destroy;
                    FormSolucaoOS.RLReport1.Prepare;
                    FormSolucaoOS.RLReport1.PreviewModal;
                    end;


                 end;    }

end;

procedure TFormConsOS.suiButton1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormConsOS.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
if not odd(DMOS.CDS_OS.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid.Canvas.Brush.Color := $00FDE2BD;
    DBGrid.Canvas.FillRect(Rect);
    DBGrid.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormConsOS.DBGridCellClick(Column: TXColumn);
begin
                    A:= 0;
                    B:= 0;
                    A:= A + DMOS.SDS_PRODUTOSVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_PRODUTOSQUANTIDADE.AsFloat;
                    DMOS.SDS_PRODUTOS.Next;
                    Edit60.Text:= FloatToStr(A);
                    Edit62.Text:= FloatToStr(B);

                    While not  DMOS.SDS_PRODUTOS.Eof do
                    begin
                    A:= A + DMOS.SDS_PRODUTOSVALOR_TOTAL.AsFloat;
                    B:= B + DMOS.SDS_PRODUTOSQUANTIDADE.AsFloat;
                    DMOS.SDS_PRODUTOS.Next;
                    Edit60.Text:= FloatToStr(A);
                    Edit62.Text:= FloatToStr(B);
                    end;
                    DMOS.SDS_PRODUTOS.last;
end;

procedure TFormConsOS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
if not odd(DMOS.SDS_PRODUTOS.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.
