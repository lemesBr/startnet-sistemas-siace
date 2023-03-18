unit contasreceber_ficha_varios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, TFlatPanelUnit,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, DB,  Menus, 
  FDvGlowButton,  DBGrids, FDvPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CurrEdit, ToolEdit;

type
  Tfrmcontasreceber_ficha_varios = class(TForm)
    Panel1: TAdvPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    ecliente: TEdit;
    bloccliente: TBitBtn;
    enomecliente: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    RVALOR: TRxCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    wwDBGrid1: TDBGrid;
    qrgrade: TFDQuery;
    dsgrade: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TAdvPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label8: TLabel;
    RTOTAL: TRxCalcEdit;
    Bevel3: TBevel;
    QRCLIENTE: TFDQuery;
    qrcontasreceber: TFDQuery;
    qrgradeVENCIMENTO: TDateField;
    qrgradeDOCUMENTO: TStringField;
    qrgradeHISTORICO: TStringField;
    qrgradeVALOR: TBCDField;
    qrgradeC: TStringField;
    qrgradeE: TStringField;
    qrgradeESPECIE: TStringField;
    qrgradeCOD_CONTA: TIntegerField;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure qrgradeAfterInsert(DataSet: TDataSet);
    procedure qrgradeAfterEdit(DataSet: TDataSet);
    procedure qrgradeAfterPost(DataSet: TDataSet);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_ficha_varios: Tfrmcontasreceber_ficha_varios;
  VALOR_A : REAL;

implementation

uses  principal, ModulodeDados, ConsClientes;

{$R *.dfm}

procedure Tfrmcontasreceber_ficha_varios.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.Text = '  /  /    ' then dateedit1.Date := date
end;

procedure Tfrmcontasreceber_ficha_varios.DateEdit1Exit(Sender: TObject);
begin
  TEdit(sender).Color := clwindow;
end;

procedure Tfrmcontasreceber_ficha_varios.blocclienteClick(Sender: TObject);
begin
   DM.SDS_Clientes.Active:= False;
   dm.SDS_Clientes.SQL.Clear;
   DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
   DM.SDS_Clientes.Active:= True;
  FormConsClientes := tFormConsClientes.create(self);
  FormConsClientes.showmodal;
  ecliente.text := dm.SDS_ClientesCODIGO.Text;
  enomecliente.Text := dm.SDS_ClientesNOME_RS.text;
  edit5.setfocus;
  eclienteExit(Sender);

 { IF RESULTADO_PESQUISA1 <> '' THEN
  BEGIN
     QRCLIENTE.CLOSE;
     QRCLIENTE.SQL.CLEAR;
     QRCLIENTE.SQL.ADD('SELECT * FROM CLIENTES WHERE CODIGO = '''+RESULTADO_PESQUISA1+'''');
     QRCLIENTE.Open;
    ecliente.text := RESULTADO_PESQUISA1;
    enomecliente.Text := RESULTADO_PESQUISA2;
    edit5.setfocus;
  END;  }
end;

procedure Tfrmcontasreceber_ficha_varios.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_ficha_varios.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
//  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text > '' then
  begin
     QRCLIENTE.CLOSE;
     QRCLIENTE.SQL.CLEAR;
     QRCLIENTE.SQL.ADD('SELECT * FROM CLIENTES WHERE CODIGO = '''+ecliente.text+'''');
     QRCLIENTE.Open;

     if QRCLIENTE.RECNO = 0 then
        blocclienteclick(Frmcontasreceber_ficha_varios)
     else
     begin
       ecliente.text := qrcliente.fieldbyname('codigo').asstring;
       enomecliente.Text := qrcliente.fieldbyname('nome_rs').asstring;
       edit5.SetFocus;
     end;
  end
  else
  begin
    bloccliente.setfocus;
  end;

end;

procedure Tfrmcontasreceber_ficha_varios.Edit5Exit(Sender: TObject);
begin
  tedit(sender).color := clWINDOW;
 // edit5.text := frmprincipal.zerarcodigo(edit5.text,6);
end;

procedure Tfrmcontasreceber_ficha_varios.Edit5Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_ficha_varios.BitBtn2Click(Sender: TObject);
var qtde, i : integer;
begin
  i := 1;
 // try
      qrgrade.close;
      qrgrade.sql.clear;
      qrgrade.sql.add('delete from c000047');
      qrgrade.execsql;
      qrgrade.SQL.clear;
      qrgrade.sql.add('select * from c000047');
      qrgrade.open;
      qtde := strtoint(edit7.Text);
      while qtde <> 0 do
      begin
        qrgrade.Insert;
        qrgrade.FieldByName('vencimento').asdatetime := incmonth(dateedit1.date,i);
        qrgrade.fieldbyname('historico').asstring := Edit5.Text;
        qrgrade.fieldbyname('documento').asstring := Edit7.Text + '/' + inttostr(i);
        if rvalor.value <> 0 then
        qrgrade.FieldByName('valor').asfloat := RVALOR.VALUE / strtoint(edit7.text);
        qrgrade.fieldbyname('ESPECIE').Value := null;
        qrgrade.fieldbyname('COD_CONTA').value := null;
        qrgrade.post;
        I := I + 1;
        qtde := qtde - 1;
      end;
      QRGRADE.Refresh;
      RTOTAL.VALUE := RVALOR.VALUE;
      WWDBGRID1.SetFocus;
 { except
    showmessage('Houve erro ao tentar gerar as prestações! Verifique a quantidade informada ou o valor da nota fiscal!');
  end;  }
end;

procedure Tfrmcontasreceber_ficha_varios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontasreceber_ficha_varios.FormShow(Sender: TObject);
begin
  {frmmodulo.qrformapgto.close;
  frmmodulo.qrformapgto.sql.clear;
  frmmodulo.qrformapgto.sql.add('select * from c000014 order by formapgto');
  frmmodulo.qrformapgto.Open;
  frmmodulo.qrformapgto.IndexFieldNames := 'formapgto';   }


  qrgrade.close;
  qrgrade.sql.clear;
  qrgrade.sql.add('delete from c000047');
  qrgrade.execsql;
  qrgrade.SQL.clear;
  qrgrade.sql.add('select * from c000047');
  qrgrade.open;
end;

procedure Tfrmcontasreceber_ficha_varios.bgravarClick(Sender: TObject);
var
  valor_c : real;
  texto : pansichar;
  Data: TDateTime;
  dia, mes, ano: Word;
  dias : integer;
  vlimite : double;

begin
  if (qrgrade.State = dsedit) then
      qrgrade.post
  else
  begin
    if qrgrade.State = dsinsert then
    begin
      if qrgrade.FieldByName('valor').asfloat <> 0 then
        qrgrade.Post;
    end;
  end;

  if rvalor.value <> 0 then
     valor_c := rvalor.value else
     valor_c := rtotal.value;

  VALOR_C := RTOTAL.VALUE - VALOR_C;

  if (VALOR_C > 0.05) OR (VALOR_C < -0.05) THEN
  begin
    application.MessageBox('O valor total das prestação não confere com o valor da Nota Fiscal! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    wwDBGrid1.setfocus;
  end
  else
  begin

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select codigo_cliente, situacao, data_vencimento, SUM(VALOR_TOTAL) TOTAL_CLIENTE from crediario where codigo_cliente = '''+ecliente.Text+''' and situacao =:SIT');
  qrcontasreceber.sql.add('GROUP BY codigo_cliente,situacao,DATA_VENCIMENTO');
  qrcontasreceber.ParamByName('SIT').AsString := 'A';
  qrcontasreceber.Open;

  (*  VERIFICAR QUANTO AINDA TEM DE LIMITE *)
  vlimite := 0;
  qrcontasreceber.first;
  while not qrcontasreceber.Eof do
  begin
    vlimite := vlimite + qrcontasreceber.fieldbyname('total_cliente').AsFloat;
    qrcontasreceber.Next;
  end;


  //case qrcliente.FieldByName('ativo').asstring of

  IF  qrcliente.FieldByName('ATIVO').AsString = 'B' then
  begin // bloqueado
        texto := pansichar('Cliente com crédito Bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
           // if not frmPrincipal.autentica('Liberar venda',4) then
            if FormPrincipal.Label3.Caption ='N'then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
      IF  qrcliente.FieldByName('ativo').asstring = 'I' then
       begin // inativo
        texto := pansichar('Cliente INATIVO!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
           // if not frmPrincipal.autentica('Liberar venda',3) then
            if FormPrincipal.Label3.Caption ='N'then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            exit;
          end;

      end;
      IF  qrcliente.FieldByName('ATIVO').AsString = 'S' then
      begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        ECLIENTE.SetFocus;
        exit;
      end;
  end;
    IF DM.SDS_CONFIGURACOESLIMITE_CREDITO.Text ='S' then
    BEGIN
     if qrcliente.FIELDBYNAME('LIMITE_DE_CREDITO').ASFLOAT <> 0 then
     begin
       IF limite_disponivel <= 0 THEN
       BEGIN
         texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',(qrcliente.FIELDBYNAME('LIMITE_DE_CREDITO').ASFLOAT - vlimite))+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
          // if not frmPrincipal.autentica('Liberar venda',3) then
           if FormPrincipal.Label3.Caption ='N'then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             ECLIENTE.SetFocus;
             exit;
           end;
         end
         else
         begin
           ECLIENTE.SetFocus;
           exit;
         end;
       END;
     END;
     end;

     qrcontasreceber.close;
     qrcontasreceber.sql.clear;
     qrcontasreceber.sql.add('select * from crediario where codigo = ''-1''');
     qrcontasreceber.open;


    qrgrade.Refresh;
    qrgrade.first;
    while not qrgrade.Eof do
    begin
      qrcontasreceber.insert;
      qrcontasreceber.FieldByName('codigo').asstring             := '0';//frmprincipal.codifica('000049')+'/INC';
      qrcontasreceber.fieldbyname('data_compra').asdatetime      := dateedit1.date;
      QRCONTASRECEBER.FIELDBYNAME('DATA_VENCIMENTO').ASDATETIME  := QRGRADE.FIELDBYNAME('VENCIMENTO').ASDATETIME;
      qrcontasreceber.fieldbyname('codigo_cliente').asstring     := ecliente.text;
      qrcontasreceber.fieldbyname('situacao').AsString           := 'A';
      qrcontasreceber.fieldbyname('HISTORICO').asstring          := edit5.text;
      qrcontasreceber.Fieldbyname('valor_compra').asfloat        := qrgrade.fieldbyname('valor').asfloat;
      qrcontasreceber.Fieldbyname('valor_JUROS').asfloat         := 0;//qrgrade.fieldbyname('valor').asfloat;
      qrcontasreceber.Fieldbyname('valor_acrescimo').asfloat     := 0;
      qrcontasreceber.Fieldbyname('valor_desconto').asfloat      := 0;
      qrcontasreceber.Fieldbyname('valor_pago').asfloat          := 0;
      qrcontasreceber.Fieldbyname('PARCELA').asstring            := qrgrade.fieldbyname('documento').asstring;
      qrcontasreceber.fieldbyname('TIPO').AsString               := 'DPL';
      qrcontasreceber.fieldbyname('COD_EMPRESA').AsString        := '1';
      qrcontasreceber.fieldbyname('mes').AsString                := '1';
      qrcontasreceber.fieldbyname('ano').AsString                := '1';
      qrcontasreceber.fieldbyname('nome_sacado').AsString        := enomecliente.text;
      qrcontasreceber.post;
      qrgrade.next;
    end;
    //DM.Conexao.Commit;   
   // CLOSE;

   ecliente.Clear;
   Edit5.Clear;
   Edit7.Clear;
   enomecliente.Clear;
   RVALOR.Clear;

      qrgrade.close;
      qrgrade.sql.clear;
      qrgrade.sql.add('delete from c000047');
      qrgrade.execsql;
  end;


procedure Tfrmcontasreceber_ficha_varios.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontasreceber_ficha_varios.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.onclick(frmcontasreceber_ficha_varios);
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterInsert(DataSet: TDataSet);
begin
  VALOR_A := 0;
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterEdit(DataSet: TDataSet);
begin
  VALOR_A := QRGRADE.FIELDBYNAME('VALOR').ASFLOAT;
end;

procedure Tfrmcontasreceber_ficha_varios.qrgradeAfterPost(DataSet: TDataSet);
begin
  RTOTAL.VALUE :=
  RTOTAL.VALUE +
  QRGRADE.FIELDBYNAME('VALOR').ASFLOAT -
  VALOR_A;
end;

procedure Tfrmcontasreceber_ficha_varios.COMBOTIPOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
