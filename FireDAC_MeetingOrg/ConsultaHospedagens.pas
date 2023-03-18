unit ConsultaHospedagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, aDvObj, BaseGrid, aDvGrid, DBAdvGrid,
  ExtCtrls, Mask, rxToolEdit, DB, IBCustomDataSet, IBQuery, Menus, AdvUtil;

type
  TFormConsHospedagens = class(TForm)
    Panel2: TPanel;
    SuidbGrid1: TDBAdvGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Cliente: TComboEdit;
    RxLabel2: TRxLabel;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Qry1: TIBQuery;
    DataSource1: TDataSource;
    Qry1ENT_CODENTRADA: TIBStringField;
    Qry1ENT_CODAPARTAMENTO: TIBStringField;
    Qry1ENT_DATAENTRADA: TDateField;
    Qry1ENT_HORAENTRADA: TTimeField;
    Qry1ENT_VALORDIARIA: TIBBCDField;
    Qry1ENT_QTDNORMAL: TIntegerField;
    Qry1ENT_VLRNORMAL: TIBBCDField;
    Qry1ENT_QTDEXTRA: TIBBCDField;
    Qry1ENT_VLREXTRA: TIBBCDField;
    Qry1ENT_SUBTOTAL: TIBBCDField;
    Qry1ENT_DESCACRESC: TIBBCDField;
    Qry1ENT_DATASAIDA: TDateField;
    Qry1ENT_HORASAIDA: TTimeField;
    Qry1ENT_QTDDIARIA: TIntegerField;
    Qry1ENT_TOTALBAR: TIBBCDField;
    Qry1ENT_TOTALLIGACAO: TIBBCDField;
    Qry1ENT_TOTALDIARIA: TIBBCDField;
    Qry1ENT_TOTALGERAL: TIBBCDField;
    Qry1ENT_PREVISAO: TDateField;
    Qry1ENT_DESCACRESCGERAL: TIBBCDField;
    Qry1ENT_TOTALPAGO: TIBBCDField;
    Qry1ENT_QTDADULTOS: TIntegerField;
    Qry1ENT_QTDCRIANCAS: TIntegerField;
    Qry1ENT_QTDPAGANTES: TIntegerField;
    Qry1ENT_FORMAPAGAMENTO: TIntegerField;
    Qry1ENT_CODHOSPEDE: TIntegerField;
    Qry1ENT_VALOR_LAV: TIBBCDField;
    Qry1APA_CODAPARTAMENTO: TIBStringField;
    Qry1APA_APARTAMENTO: TIBStringField;
    Qry1APA_SITUACAO: TIBStringField;
    Qry1APA_CODENTRADA: TIBStringField;
    Qry1APA_CODCATEGORIA: TIBStringField;
    Panel8: TPanel;
    RxLabel7: TRxLabel;
    RxLabel3: TRxLabel;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    ReimprimirFechamento1: TMenuItem;
    procedure ClienteChange(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ReimprimirFechamento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsHospedagens: TFormConsHospedagens;

implementation

uses ModulodeDados, ConsClientes, ModuleDados1, fR3;

{$R *.dfm}

procedure TFormConsHospedagens.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
begin
EDIT2.Text:='';
RXLabel6.Caption:= '';
RXLabel7.Caption:= '';
QRY1.Close;
end;

end;

procedure TFormConsHospedagens.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      ClienteChange(Sender);
      Cliente.Text := DM.SDS_ClientesCODIGO.Text;
    //  RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
      RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
     // suiButton4Click(Sender);
   //   BTBaixaTotal.SetFocus;

     // keybd_event(VK_RETURN, 0, 0, 0);
      //ClienteExit(sender);
      With Qry1 do
      begin
        Close;
        SQL.Clear;
               Sql.Add(' select * from entrahospede, apartamento                           ');
               Sql.Add(' WHERE  entrahospede.ent_codapartamento = apartamento.apa_codapartamento and entrahospede.ENT_CODHOSPEDE  =:P00 ');
               Sql.Add(' ORDER BY  ENTRAHOSPEDE.ent_dataentrada DESC  ');
               Params[00].AsString :=  Cliente.Text ;


        Open;
        fetchall;
      end;
end;
end;

procedure TFormConsHospedagens.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key = #13 then
BEGIN
If  Cliente.Text >'' then
BEGIN
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

//IF ACHOU=FALSE THEN
//begin
ClienteButtonClick(sender);
//end ELSE

{IF ACHOU=TRUE THEN
BEGIN
Cliente.Text := DM.SDS_ClientesCODIGO.Text;
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
end;}
end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  //ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
//RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;


With Qry1 do
      begin
        Close;
        SQL.Clear;
               Sql.Add(' select * from entrahospede, apartamento                           ');
               Sql.Add(' WHERE  entrahospede.ent_codapartamento = apartamento.apa_codapartamento and entrahospede.ENT_CODHOSPEDE  =:P00 ');
               Sql.Add(' ORDER BY  ENTRAHOSPEDE.ent_dataentrada DESC');
               Params[00].AsString :=  Cliente.Text ;


        Open;
        fetchall;
      end;
end;
end ELSE
begin
 Qry1.Close;
end;
end;
end;

procedure TFormConsHospedagens.FormShow(Sender: TObject);
begin
Cliente.SetFocus;
end;

procedure TFormConsHospedagens.ClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  SuidbGrid1.SetFocus;
end;
end;

procedure TFormConsHospedagens.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #27 then
  Close;
end;

procedure TFormConsHospedagens.ReimprimirFechamento1Click(Sender: TObject);
var
   CodEntrada :string;
begin
   CodEntrada := Qry1ENT_CODENTRADA.Text;

  // if not Qry1.Eof then
 //  begin
    if Application.MESSAGEBOX('Deseja Emitir a Nota do Fechamento ?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
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
  //  end else
  //  ShowMessage('Sem dados a emitir');
end;

end.
