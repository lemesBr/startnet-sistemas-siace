unit Ufretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, Grids, XDBGrids, StdCtrls,
  RzEdit, RzBtnEdt, ADvToolBar, ADvGlowButton, ExtCtrls, RXCtrls, Menus,
  FireDAC.Stan.Intf,   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficePager, AdvOfficePagerStylers, AdvPanel, AdvMenus;

type
  TFormFretes = class(TForm)
    Panel2: TAdvPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bRelatorio: TAdvGlowMenuButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    Panel1: TAdvPanel;
    Label4: TLabel;
    Label49: TLabel;
    Cliente: TRzButtonEdit;
    Panel3: TAdvPanel;
    FDvGlowButton1: TAdvGlowButton;
    XDbgrid1: TXDBGrid;
    sDateEdit1: TsDateEdit;
    Label1: TLabel;
    sDateEdit2: TsDateEdit;
    SDS_FRETES: TFDQuery;
    DTS_FRETES: TDataSource;
    RxLabel6: TRxLabel;
    Edit2: TEdit;
    FDvPopupMenu1: TAdvPopupMenu;
    M1: TMenuItem;
    A1: TMenuItem;
    FDvPanelStyler1: TAdvPanelStyler;
    FDvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    FDvPopupMenu2: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    SDS_FRETESCOD_EMPRESA: TIntegerField;
    SDS_FRETESCOD_LACTO: TIntegerField;
    SDS_FRETESDATA_LACTO: TDateField;
    SDS_FRETESN_MINUTA: TIntegerField;
    SDS_FRETESCOD_FRETEIRO: TIntegerField;
    SDS_FRETESQTDE_ANIMAIS: TIntegerField;
    SDS_FRETESCOD_VEICULO: TIntegerField;
    SDS_FRETESORIGEM_FRETE: TStringField;
    SDS_FRETESDESTINO_FRETE: TStringField;
    SDS_FRETESDISTANCIA: TBCDField;
    SDS_FRETESGERA_IMPOSTO: TStringField;
    SDS_FRETESVALOR_FRETE: TBCDField;
    SDS_FRETESVALOR_PAGO: TBCDField;
    SDS_FRETESIMPOSTO: TBCDField;
    SDS_FRETESUSER: TStringField;
    SDS_FRETESCOD_PAGADOR: TIntegerField;
    SDS_FRETESFILTRO: TIntegerField;
    SDS_FRETESDATA_BAIXA: TDateField;
    SDS_FRETESCOD_CAIXA: TIntegerField;
    SDS_FRETESSITUACAO: TIntegerField;
    SDS_FRETESCOD_CHEQUE: TIntegerField;
    SDS_FRETESLIQUIDO: TBCDField;
    Label11: TLabel;
    veiculo: TRzButtonEdit;
    RxLabel1: TRxLabel;
    procedure XDbgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClienteButtonClick(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FDvGlowButton1Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure veiculoButtonClick(Sender: TObject);
    procedure veiculoChange(Sender: TObject);
    procedure veiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFretes: TFormFretes;
  ACHOU :Boolean;

implementation

uses ModulodeDados, ConsClientes, Ubibli1, Principal, UminutaFrete,
  UpagarFretes, ValeTroco, lista_frete2, lista_frete3, xloc_veiculo,
  Valecomb;

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


procedure TFormFretes.XDbgrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin

If SDS_FRETESSITUACAO.Text = '1' then
XDbgrid1.Canvas.Font.Color:= clRed
ELSE
xDbgrid1.Canvas.Font.Color:= clBlack;
xDbgrid1.DefaultDrawDataCell(Rect, Xdbgrid1.columns[datacol].field, State);

  if not odd(SDS_fretes.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;
end;

procedure TFormFretes.bfecharClick(Sender: TObject);
begin
Close;
end;

procedure TFormFretes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormFretes := nil;
end;

procedure TFormFretes.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if Cliente.Text >'' then
     begin
      FormConsClientes.Edit1.Text := Cliente.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      ClienteChange(Sender);
      Cliente.Text := DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;


      end;

end;

procedure TFormFretes.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormFretes.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
 IF Key = #13 then
 begin
 If  Cliente.Text >'' then
  BEGIN

 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
   end;
    except
     ShowMessage('erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(Cliente.Text),[]);
  Cliente.Text := RemoveChar(Cliente.Text);


IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin

  RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

end;
end;
end;
end;
end;

procedure TFormFretes.FormShow(Sender: TObject);
begin
sDateEdit1.Date :=  Date;
sDateEdit2.Date :=  Date;
  
SDS_FRETES.Close;
SDS_FRETES.SQL.Clear;
SDS_FRETES.SQL.Add('SELECT * FROM FRETES WHERE DATA_LACTO between  :datai and :dataf ORDER BY COD_LACTO ASC');
SDS_FRETES.Params.ParamByName('DATAI').AsDate := sDateEdit1.Date;
SDS_FRETES.Params.ParamByName('DATAF').AsDate := sDateEdit2.Date;
SDS_FRETES.Open;
end;


procedure TFormFretes.FDvGlowButton1Click(Sender: TObject);
var
  fornecedor, periodo, veic: string;
begin
 if cliente.TEXT = '' then
    fornecedor := ''
  else
    fornecedor := ' and cod_freteiro = ''' + Cliente.text + '''';

  if veiculo.Text = '' then
  veic := ''
  else
  begin
  veic := ' and COD_VEICULO = ''' + veiculo.text + '''';
  end;

   periodo := ' and data_lacto >= :datai and data_lacto <= :dataf ';

  SDS_FRETES.close;
  SDS_FRETES.sql.clear;
  SDS_FRETES.sql.Add('select * from fretes where cod_lacto is not null' +
    fornecedor + periodo + veic + ' order by data_lacto');
  SDS_FRETES.Params.ParamByName('datai').asdatetime := sDateEdit1.DATE;
  SDS_FRETES.Params.ParamByName('dataf').asdatetime := sDateEdit2.DATE;
  SDS_FRETES.open;


   {
IF sDateEdit1.Text <> '  /  /    ' then
BEGIN
SDS_FRETES.Close;
SDS_FRETES.SQL.Clear;
SDS_FRETES.SQL.Add('SELECT * FROM FRETES WHERE DATA_LACTO between  :datai and :dataf ORDER BY COD_LACTO ASC');
SDS_FRETES.Params.ParamByName('DATAI').AsDate := sDateEdit1.Date;
SDS_FRETES.Params.ParamByName('DATAF').AsDate := sDateEdit2.Date;
SDS_FRETES.Open;
end else
IF (sDateEdit1.Text <> '  /  /    ') and (Cliente.TEXT >'') then
BEGIN
SDS_FRETES.Close;
SDS_FRETES.SQL.Clear;
SDS_FRETES.SQL.Add('SELECT * FROM FRETES WHERE DATA_LACTO between  :datai and :dataf AND COD_FRETEIRO =:FRETEIRO ORDER BY COD_LACTO ASC');
SDS_FRETES.Params.ParamByName('DATAI').AsDate := sDateEdit1.Date;
SDS_FRETES.Params.ParamByName('DATAF').AsDate := sDateEdit2.Date;
SDS_FRETES.Params.ParamByName('FRETEIRO').AsInteger := StrToInt(CLIENTE.TEXT);
SDS_FRETES.Open;
end else
IF (Cliente.TEXT >'') then
begin
SDS_FRETES.Close;
SDS_FRETES.SQL.Clear;
SDS_FRETES.SQL.Add('SELECT * FROM FRETES WHERE COD_FRETEIRO =:FRETEIRO ORDER BY COD_LACTO ASC');
SDS_FRETES.Params.ParamByName('FRETEIRO').AsInteger := StrToInt(CLIENTE.TEXT);
SDS_FRETES.Open;
END; }
end;

procedure TFormFretes.bincluirClick(Sender: TObject);
begin
 if FormPrincipal.Label3.Caption ='N'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(cod_LACTO) as N_CODIGO FROM FRETES');
   DM.ProxCod.Open;

 
   if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;

   SDS_FRETES.Insert;
   SDS_FRETESCOD_LACTO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
   SDS_FRETESUSER.Text:= FormPrincipal.UserLogado;    

   Application.CreateForm( TFormMinutaFrete, FormMinutaFrete );
   FormMinutaFrete.Showmodal;
end;
end;

procedure TFormFretes.bexcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin

 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Excluir/Alterao o Registro. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if FormPrincipal.Label1.Caption ='S'then
begin

 if SDS_FRETES.FieldByName('situacao').ASINTEGER = 1 then
 begin
   if dm.Coneccao.Connected then
      dm.Coneccao.Commit;
    dm.Coneccao.StartTransaction;
  try
      if Application.MESSAGEBOX('Confirma a exclusão do frete?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
     if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from crediario where crediario.cod_frete =:frete');
         ParamByName('frete').AsInteger := FormFretes.SDS_FRETESCOD_LACTO.asinteger;
         ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;

    FormFretes.SDS_FRETES.Delete;
    dm.Coneccao.Commit;


    end;
    except
      DM.IBTransaction.Rollback;
     dm.Coneccao.Rollback;
     MessageDlg('Erro ao excluir o frete', mtInformation,[mbOk], 0);
    Exit;
    end;
   end
    else
    begin
      application.messagebox('Este frete já foi pago! Impossível excluir!',
        'Atenção!!', mb_ok + mb_iconerror);
    end;
end;
end;

procedure TFormFretes.A1Click(Sender: TObject);
begin
  Application.CreateForm( TFormPagarFretes, FormPagarFretes );
   FormPagarFretes.veiculo.Text := veiculo.Text;
   FormPagarFretes.Cliente.Text := Cliente.Text;
   FormPagarFretes.RxLabel6.Caption := RxLabel6.Caption;
   FormPagarFretes.RxLabel1.Caption := RxLabel1.Caption;

   FormPagarFretes.Showmodal;

   FDvGlowButton1.Click;
end;

procedure TFormFretes.M1Click(Sender: TObject);
begin
     Application.CreateForm( TFormValeComb, FormValeComb );
     FormValeComb.showmodal;
end;

procedure TFormFretes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_F2) then
      begin
      bincluir.Click;
      end;
      if (Key=VK_F5) then
      begin
      bexcluir.Click;
      end;
      if (Key=VK_F7) then
      begin
      bRelatorio.Click;
      end;
end;

procedure TFormFretes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #27 then
Close;
end;

procedure TFormFretes.MenuItem1Click(Sender: TObject);
begin
Application.CreateForm( Tformlista_frete, formlista_frete );
formlista_frete.Showmodal;
end;

procedure TFormFretes.MenuItem2Click(Sender: TObject);
begin
Application.CreateForm( Tformlista_acertos, formlista_acertos );
formlista_acertos.Showmodal;
end;

procedure TFormFretes.veiculoButtonClick(Sender: TObject);
begin
    DM.SDS_VEICULOS.Active:= False;
    dm.SDS_veiculos.SQL.Clear;
    dm.SDS_veiculos.SQL.Add('select * from veiculo order by NOME ASC');
    DM.SDS_VEICULOS.Active:= True;


if frmxloc_veiculo=nil   then
    begin
     frmxloc_veiculo:=Tfrmxloc_veiculo.Create(self);
     if veiculo.Text >'' then
     begin
    //  frmxloc_veiculo.LOC.Text := freteiro.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      frmxloc_veiculo.ShowModal;


      veiculo.Text     := RESULTADO_PESQUISA1;
      RXLabel1.Caption := RESULTADO_PESQUISA2;
      //cliente.text    :=   resultado_pesquisa4;
      Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
       dm.SDS_Clientes.SQL.Clear;
      DM.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
       dm.SDS_Clientes.SQL.Clear;
       DM.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
       dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
      cliente.Text := RemoveChar(cliente.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString; 
end;
end;

procedure TFormFretes.veiculoChange(Sender: TObject);
begin
IF (veiculo.Text>='A') AND (veiculo.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (veiculo.Text>='0') AND (veiculo.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF veiculo.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormFretes.veiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF (Key = vk_return) or (Key = vk_tab) then
 begin
  If  veiculo.Text >'' then
  BEGIN
 if edit2.Text='LETRAS' THEN
  BEGIN
   dm.SDS_VEICULOS.Active := false;
   dm.SDS_veiculos.SQL.Clear;
   dm.SDS_veiculos.SQL.Add('select * from veiculo where NOME like ' + #39 + '%' + veiculo.Text + '%' + #39+'order by NOME ASC');
   dm.SDS_VEICULOS.Active := True;
   ACHOU := DM.SDS_VEICULOS.locate('nome',veiculo.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  veiculoButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel1.Caption:= DM.SDS_veiculosNOME.Text;
 //  ComboBox1.SetFocus;
   end;
    except
     ShowMessage('Erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF veiculo.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 veiculo.SetFocus;
end else

  dm.SDS_VEICULOS.Active := false;
  dm.SDS_veiculos.SQL.Clear;
  dm.SDS_veiculos.SQL.Add('select * from veiculo where CODIGO like ' + #39 + '%' + veiculo.Text + '%' + #39+'order by NOME ASC');
  dm.SDS_veiculos.Active := True;
  ACHOU:= DM.SDS_VEICULOS.locate('CODIGO', RemoveChar(veiculo.Text),[]);
  veiculo.Text := RemoveChar(veiculo.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Veículo Não Localizado');
veiculo.SetFocus;
end;

IF ACHOU=TRUE THEN
begin
  RxLabel1.Caption    := DM.SDS_VEICULOS.Fieldbyname('NOME').AsString;

       Cliente.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
       dm.SDS_Clientes.Active := false;
       dm.SDS_Clientes.SQL.Clear;
       DM.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
       dm.SDS_Clientes.Active := True;
       ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
       cliente.Text := RemoveChar(cliente.Text);
       RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
end;
end;
end;
end;
end;

end.
