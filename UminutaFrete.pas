unit UminutaFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls,
  ExtCtrls, TFlatPanelUnit, RzCmboBx, RzDBCmbo, sMaskEdit,
  sCustomComboEdit, sTooledit, sDBDateEdit,  DB, RXCtrls, RzEdit,
  RzBtnEdt, FMTBcd, SqlExpr, sCurrEdit, sCurrencyEdit,
  RXDBCtrl, AdvPanel, AdvOfficePager, AdvOfficePagerStylers, AdvGlowButton,
  RxToolEdit, RxCurrEdit;

type
  TFormMinutaFrete = class(TForm)
    pgravar: TAdvPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    FDvOfficePager1: TAdvOfficePager;
    FDvOfficePager11: TAdvOfficePage;
    FDvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    FDvPanel1: TAdvPanel;
    FDvPanelStyler1: TAdvPanelStyler;
    sDBDateEdit1: TsDBDateEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    freteiro: TRzButtonEdit;
    RxLabel6: TRxLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RxLabel1: TRxLabel;
    veiculo: TRzButtonEdit;
    Label11: TLabel;
    Edit2: TEdit;
    Label12: TLabel;
    pagador: TRzButtonEdit;
    RxLabel2: TRxLabel;
    MaskEdit1: TMaskEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    ComboBox1: TComboBox;
    LIQUIDO: TsCurrencyEdit;
    DBEdit11: TRxDBCalcEdit;
    SPC_CREDIARIO: TSQLStoredProc;
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure freteiroButtonClick(Sender: TObject);
    procedure freteiroChange(Sender: TObject);
    procedure freteiroKeyPress(Sender: TObject; var Key: Char);
    procedure veiculoButtonClick(Sender: TObject);
    procedure veiculoChange(Sender: TObject);
    procedure veiculoKeyPress(Sender: TObject; var Key: Char);
    procedure pagadorButtonClick(Sender: TObject);
    procedure pagadorChange(Sender: TObject);
    procedure pagadorKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMinutaFrete: TFormMinutaFrete;

implementation

uses Ufretes, ModulodeDados, Ubibli1, ConsClientes, xloc_veiculo,
  Principal;

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


procedure TFormMinutaFrete.bgravarClick(Sender: TObject);
var
  dtaux : TDateTime;
begin
If DBEdit4.Text = '' then
begin
 MessageDlg('Informe o Codigo da Minuta Frete', mtInformation,[mbOk], 0);
DBEdit4.SetFocus;
Exit;
 Abort;
end else

If sDBDateEdit1.Text = '  /  /    ' then
begin
 MessageDlg('Informe a data da minuta', mtInformation,[mbOk], 0);
sDBDateEdit1.SetFocus;
Exit;
 Abort;
end else

If veiculo.Text = '' then
begin
 MessageDlg('Informe o Codigo do veículo', mtInformation,[mbOk], 0);
veiculo.SetFocus;
Exit;
 Abort;
end else
If pagador.Text = '' then
begin
 MessageDlg('Informe o Codigo do Pagador do Frete', mtInformation,[mbOk], 0);
pagador.SetFocus;
Exit;
 Abort;
end else

If freteiro.Text = '' then
begin
 MessageDlg('Informe o Codigo do Freteiro', mtInformation,[mbOk], 0);
 freteiro.SetFocus;
Exit;
 Abort;
end else

If DBEdit3.Text = '' then
begin
 MessageDlg('Informe a quantidade de animais a serem transportados', mtInformation,[mbOk], 0);
 DBEdit3.SetFocus;
Exit;
 Abort;
end else

If DBEdit1.Text = '' then
begin
 MessageDlg('Informe a origem do frete', mtInformation,[mbOk], 0);
 DBEdit1.SetFocus;
Exit;
 Abort;
end else

If DBEdit9.Text = '' then
begin
 MessageDlg('Informe o destino do frete', mtInformation,[mbOk], 0);
 DBEdit9.SetFocus;
Exit;
 Abort;
end else

If DBEdit10.Text = '' then
begin
 MessageDlg('Informe a distância do frete', mtInformation,[mbOk], 0);
 DBEdit10.SetFocus;
Exit;
 Abort;
end else

If DBEdit11.Text = '' then
begin
 MessageDlg('Informe o Valor do frete', mtInformation,[mbOk], 0);
 DBEdit11.SetFocus;
Exit;
Abort;
end else

If MaskEdit1.Text = '' then
begin
 MessageDlg('Informe o Valor do frete', mtInformation,[mbOk], 0);
 MaskEdit1.SetFocus;
Exit;
Abort;
end else

 try
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(cod_LACTO) as N_CODIGO FROM FRETES');
   DM.ProxCod.Open;

    FormFretes.SDS_FRETES.Edit;
    FormFretes.SDS_FRETESCOD_LACTO.ASINTEGER := DM.ProxCodN_CODIGO.ASINTEGER + 1;
    FormFretes.SDS_FRETESUSER.Text:= FormPrincipal.UserLogado;
    FormFretes.SDS_FRETESCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.text;
    FormFretes.SDS_FRETESCOD_FRETEIRO.Text := freteiro.Text;
    FormFretes.SDS_FRETESCOD_VEICULO.Text  := veiculo.Text;
    FormFretes.SDS_FRETESCOD_PAGADOR.Text  := pagador.Text;
    FormFretes.SDS_FRETESSITUACAO.Text  := '1';
   
    if ComboBox1.ItemIndex = 0 then
    BEGIN
    FormFretes.SDS_FRETESGERA_IMPOSTO.Text := 'S';
    FormFretes.SDS_FRETESIMPOSTO.AsFloat := (FormFretes.SDS_FRETESVALOR_FRETE.AsFloat * StrToFloat(RemoveChar(MaskEdit1.TEXT)) /100)  ;
    LIQUIDO.Value:= (FormFretes.SDS_FRETESVALOR_FRETE.AsFloat - FormFretes.SDS_FRETESIMPOSTO.AsFloat)   ;
    end else
    BEGIN
    FormFretes.SDS_FRETESGERA_IMPOSTO.Text := 'N';
    FormFretes.SDS_FRETESIMPOSTO.AsFloat := 0;
    LIQUIDO.Value:= FormFretes.SDS_FRETESVALOR_FRETE.AsFloat;
    end;
    FormFretes.SDS_FRETES.Post;
    dm.Coneccao.Commit;
 except
  dm.Coneccao.Rollback;
  MessageDlg('Erro ao gravar o frete', mtInformation,[mbOk], 0);
  Exit;
 end;

           // LANCAMENTOS CREDITOS PRAZO
           if not  FormFretes.SDS_FRETES.Eof  then
           begin
           SPC_CREDIARIO.Params[0].Value       :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  StrToInt(pagador.Text);
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date + 30;
           SPC_CREDIARIO.Params[4].AsString    :=  Copy('Ref frete da Minuta Nº '+DBEdit2.Text+' / '+ RxLabel2.Caption,1,70);
           SPC_CREDIARIO.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  FormFretes.SDS_FRETESVALOR_FRETE.Text;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   :=  '1/1';
           SPC_CREDIARIO.Params[13].value  :=  DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   :=  'DPL';
           SPC_CREDIARIO.Params[15].Value  :=  pagador.Text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].value      := null;
           SPC_CREDIARIO.Params[21].Value      := StrToInt(FormFretes.SDS_FRETESCOD_LACTO.Text);
           SPC_CREDIARIO.ExecProc;
           end;

           // PAGAR FRETEIROS
        {   if not  FormFretes.SDS_FRETES.Eof  then
           begin
           SPC_CREDIARIO.Params[0].Value       :=  null;
           SPC_CREDIARIO.Params[1].Value       :=  StrToInt(pagador.Text);
           SPC_CREDIARIO.Params[2].AsDate      :=  Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  Date + 30;
           SPC_CREDIARIO.Params[4].AsString    :=  'Ref frete da Minuta Nº '+DBEdit2.Text+' / '+ RxLabel2.Caption;
           SPC_CREDIARIO.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  DBEdit11.Text;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := '1/1';
           SPC_CREDIARIO.Params[13].AsInteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'DPL';
           SPC_CREDIARIO.Params[15].AsString   := pagador.Text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := null;
           SPC_CREDIARIO.Params[20].value      := null;
           SPC_CREDIARIO.Params[21].ASSTRING   := DBEdit2.Text;
           SPC_CREDIARIO.ExecProc;
           end;  }

  CLOSE;
end;

procedure TFormMinutaFrete.FormShow(Sender: TObject);
begin
   FormFretes.SDS_FRETES.Edit;
   FormFretes.SDS_FRETESDATA_LACTO.AsDateTime := Date;
   MaskEdit1.text := '11';
DBEdit4.SetFocus;

end;

procedure TFormMinutaFrete.bcancelarClick(Sender: TObject);
begin
FormFretes.SDS_FRETES.Cancel;
DM.Coneccao.Rollback;
Close;

end;

procedure TFormMinutaFrete.freteiroButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;


if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if freteiro.Text >'' then
     begin
      FormConsClientes.Edit1.Text := freteiro.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      freteiroChange(Sender);
      freteiro.Text := DM.SDS_ClientesCODIGO.Text;
      RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
      end;

end;

procedure TFormMinutaFrete.freteiroChange(Sender: TObject);
begin
IF (freteiro.Text>='A') AND (freteiro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (freteiro.Text>='0') AND (freteiro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF freteiro.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormMinutaFrete.freteiroKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF Key = #13 then
 begin
  If  freteiro.Text >'' then
  BEGIN
 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + freteiro.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',freteiro.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  freteiroButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
   DBEdit1.SetFocus;
   end;
    except
     ShowMessage('Erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF freteiro.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 freteiro.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + freteiro.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(freteiro.Text),[]);
  freteiro.Text := RemoveChar(freteiro.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
freteiro.SetFocus;
end;

IF ACHOU=TRUE THEN
begin
  RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  DBEdit1.SetFocus;
end;
end;
end;
end;
end;

procedure TFormMinutaFrete.veiculoButtonClick(Sender: TObject);
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
      freteiro.text    :=   resultado_pesquisa4;

     //  veiculoChange(Sender);
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + freteiro.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(freteiro.Text),[]);
      freteiro.Text := RemoveChar(freteiro.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      end;

end;

procedure TFormMinutaFrete.veiculoChange(Sender: TObject);
begin
IF (veiculo.Text>='A') AND (veiculo.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (veiculo.Text>='0') AND (veiculo.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF veiculo.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormMinutaFrete.veiculoKeyPress(Sender: TObject; var Key: Char);
begin
 IF Key = #13 then
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
   ComboBox1.SetFocus;
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

      freteiro.text:=   DM.SDS_VEICULOSCOD_CLIENTE.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + freteiro.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(freteiro.Text),[]);
      freteiro.Text := RemoveChar(freteiro.Text);
      RxLabel6.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;

  ComboBox1.SetFocus;
end;
end;
end;
end;
end;

procedure TFormMinutaFrete.pagadorButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
                       
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     if pagador.Text >'' then
     begin
      FormConsClientes.Edit1.Text := freteiro.Text;
    //  FormConsClientes.BitBtn1Click(Sender);
      end;
      FormConsClientes.ShowModal;
      pagadorChange(Sender);
      pagador.Text := DM.SDS_ClientesCODIGO.Text;
      RXLabel2.Caption:= DM.SDS_ClientesNOME_RS.Text;
      end;
end;

procedure TFormMinutaFrete.pagadorChange(Sender: TObject);
begin
IF (pagador.Text>='A') AND (pagador.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (pagador.Text>='0') AND (pagador.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF pagador.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormMinutaFrete.pagadorKeyPress(Sender: TObject; var Key: Char);
begin
 IF Key = #13 then
 begin
  If  pagador.Text >'' then
  BEGIN
 if edit2.Text='LETRAS' THEN
  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.add('select * from clientes where NOME_RS like ' + #39 + '%' + pagador.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',pagador.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  pagadorButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
   RXLabel2.Caption:= DM.SDS_ClientesNOME_RS.Text;
   DBEdit3.SetFocus;
   end;
    except
     ShowMessage('Erro ao consultar');
    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF pagador.text > '999999' then
begin
 pagador.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.add('select * from clientes where CODIGO like ' + #39 + '%' + pagador.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(pagador.Text),[]);
  pagador.Text := RemoveChar(pagador.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
pagador.SetFocus;
end;

IF ACHOU=TRUE THEN
begin
  RxLabel2.Caption    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  DBEdit3.SetFocus;
end;
end;
end;
end;
end;

procedure TFormMinutaFrete.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
end;

procedure TFormMinutaFrete.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then bcancelar.Click;

if  not (ActiveControl is TDBLookupComboBox) and not(ActiveControl is TRzButtonEdit)  then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
    
end;

procedure TFormMinutaFrete.DBEdit11Exit(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
    BEGIN
    FormFretes.SDS_FRETESGERA_IMPOSTO.Text := 'S';
    FormFretes.SDS_FRETESIMPOSTO.AsFloat := (FormFretes.SDS_FRETESVALOR_FRETE.AsFloat * StrToFloat(RemoveChar(MaskEdit1.TEXT)) /100)  ;
    LIQUIDO.Value:= (FormFretes.SDS_FRETESVALOR_FRETE.AsFloat - FormFretes.SDS_FRETESIMPOSTO.AsFloat)   ;
    end else
    BEGIN
    FormFretes.SDS_FRETESGERA_IMPOSTO.Text := 'N';
    FormFretes.SDS_FRETESIMPOSTO.AsFloat := 0;
    LIQUIDO.Value:= FormFretes.SDS_FRETESVALOR_FRETE.AsFloat;
end;
end;

procedure TFormMinutaFrete.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (Key=VK_F10) then
      begin
      bgravar.Click;
      end;
end;

end.
