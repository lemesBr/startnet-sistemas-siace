unit UProdutosCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Mask,
   Buttons, AlignEdit, DB,
  rxToolEdit, rxCurrEdit, DBCtrls, ActnList, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormProdutosCaixa = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    EdtCodPro: TAlignEdit;
    EdtNomePro: TEdit;
    Label2: TLabel;
    EdtQuant: TCurrencyEdit;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    DSProd: TDataSource;
    EdtPreco: TCurrencyEdit;
    EdtCodBar: TAlignEdit;
    Label3: TLabel;
    DBunidade: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    spbSalvar: TSpeedButton;
    spbCancelar: TSpeedButton;
    ActionList: TActionList;
    ActionIncluir: TAction;
    ActionAlterar: TAction;
    ActionExcluir: TAction;
    ActionSalvar: TAction;
    ActionCancelar: TAction;
    QProd: TFDQuery;
    QProdCODIGO: TIntegerField;
    QProdCODIGO_BARRAS: TStringField;
    QProdQUANT_VENDA: TIntegerField;
    QProdDESCRICAO: TStringField;
    QProdUNID: TStringField;
    QProdVALOR_VENDA: TFMTBCDField;
    procedure EdtCodProEnter(Sender: TObject);
    procedure EdtCodProKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodProExit(Sender: TObject);
    procedure BuscaProduto;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ActionIncluirUpdate(Sender: TObject);
    procedure ActionSalvarUpdate(Sender: TObject);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure ActionSalvarExecute(Sender: TObject);
    procedure ActionCancelarExecute(Sender: TObject);
    procedure ActionAlterarExecute(Sender: TObject);
    procedure ActionIncluirExecute(Sender: TObject);
    procedure ActionExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    EditInsert: Integer;
  public
    { Public declarations }
  end;

var
  FormProdutosCaixa: TFormProdutosCaixa;

implementation

uses ModulodeDados, Ubibli1, ConsProdutos, Produtos;

{$R *.dfm}

procedure TFormProdutosCaixa.BuscaProduto;
begin

   with QProd do
      begin
         close;
         Parambyname('CODPRO').AsInteger:= StrToInt(EdtCodPro.TEXT);
         open;
      end;

end;


procedure TFormProdutosCaixa.EdtCodProEnter(Sender: TObject);
begin
  // EdtCodPro.SelectAll;
end;

procedure TFormProdutosCaixa.EdtCodProKeyPress(Sender: TObject; var Key: Char);
begin
  { if not (key in ['0'..'9', #13, #8]) then
      key:= #0; }
end;

procedure TFormProdutosCaixa.EdtCodProExit(Sender: TObject);
begin
   if trim(EdtCodBAR.Text) = '' then
      exit;

   if DBGrid1.Focused then
      exit;

   if dm.FDTransaction1.Active then
      dm.FDTransaction1.Commit;
   dm.FDTransaction1.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.clear;
             sql.Add('SELECT * FROM PRODUTOS_FARDO ' +
                     'WHERE CODIGO_BARRAS = :CODPRO ' +
                     'ORDER BY DESCRICAO');
             Parambyname('codpro').AsInteger:= strtoint(EdtCodBar.Text);
             Open;
             if not fieldbyname('codigo').IsNull then
                begin
                   EdtCodBar.SetFocus;
                   showmessage('Produto ja cadastrado Cadastrado na tabela fardos, com Código ' + DM.QConsulta.Fieldbyname('codigo').AsString +#10+#13 +' Descrição: '  + DM.QConsulta.Fieldbyname('descricao').AsString );
                end ;

          end;
       dm.FDTransaction1.Commit;
     except
       dm.FDTransaction1.Rollback;
       //showmessage('Erro ao buscar o produto');
     end;
   finally
     dm.QConsulta.Close;
   end;
   if dm.FDTransaction1.Active then
      dm.FDTransaction1.Commit;
   dm.FDTransaction1.StartTransaction;

end;

procedure TFormProdutosCaixa.FormShow(Sender: TObject);
begin
   BuscaProduto;
   EditInsert:= 0;
end;

procedure TFormProdutosCaixa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFormProdutosCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dm.FDTransaction1.Active then
      dm.FDTransaction1.Commit;
   QProd.Close;
   Action:= caFree;
end;

procedure TFormProdutosCaixa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         key:= #0;
         SelectNext(ActiveControl, true, true);
      end;
end;

procedure TFormProdutosCaixa.FormCreate(Sender: TObject);
begin
//   LabelUnd.Caption:= '';
end;

procedure TFormProdutosCaixa.ActionIncluirUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:= Self.tag = 0;
end;

procedure TFormProdutosCaixa.ActionSalvarUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled:= Self.tag = 1;
end;

procedure TFormProdutosCaixa.ActionListUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  EdtCodPro.Enabled:= Self.tag = 1;
  EdtCodBar.Enabled:= Self.tag = 1;
  EdtNomePro.enabled:= Self.tag = 1;
  DBunidade.Enabled:= Self.tag = 1;
  EdtQuant.enabled:= Self.tag = 1;
  EdtPreco.enabled:= Self.tag = 1;
end;

procedure TFormProdutosCaixa.ActionSalvarExecute(Sender: TObject);
begin
  if EdtCodBar.Text = '' then
  begin
    showmessage('Digite o código do Produto');
    EdtCodBar.SetFocus;
    exit;
  end;

  if EdtNomePro.Text = '' then
  begin
    showmessage('Digite a descrição do Produto');
    EdtNomePro.SetFocus;
    exit;
  end;

  if DBunidade.Text = '' then
  begin
    showmessage('Digite a unidade do Produto');
    DBunidade.SetFocus;
    exit;
  end;

  if not (strtocurr(EdtQuant.Text) > 0) then
  begin
    showmessage('Verifique a quantidade');
    EdtQuant.SetFocus;
    exit;
  end;

  if not (strtocurr(EdtPreco.Text) > 0) then
  begin
    showmessage('Verifique o preco deve ser maior que zero...');
    EdtPreco.SetFocus;
    exit;
  end;

  if EditInsert = 0 then
  begin
    if dm.FDTransaction1.Active then
        dm.FDTransaction1.Commit;
     dm.FDTransaction1.StartTransaction;
    try
      try
        with dm.Consulta do
        begin
          SQL.Clear;
          sql.add('INSERT INTO PRODUTOS_FARDO (CODIGO, CODIGO_BARRAS, QUANT_VENDA, VALOR_VENDA, DESCRICAO, UNID) ' +
                 'VALUES (:1, :2, :3, :4, :5, :6)');
          Parambyname('1').AsInteger := strtoint(EdtCodPro.Text);
          Parambyname('2').AsString := (EdtCodBar.Text);
          Parambyname('3').AsCurrency:= strtocurr(EdtQuant.Text);
          Parambyname('4').AsCurrency:= strtocurr(EdtPreco.Text);
          Parambyname('5').AsString := (EdtNomePro.Text);
          Parambyname('6').AsString := (DBunidade.Text);
          ExecSQL;
        end;
        dm.FDTransaction1.Commit;
      except
        dm.FDTransaction1.Rollback;
        Self.tag:= 0;
        showmessage('Erro ao gravar o Produto ' + #13 +
                 'Verifique se está gravado');

        EdtPreco.Clear;
        EdtNomePro.clear;
        EdtQuant.Clear;
        EdtCodBar.Clear;
        EdtCodBar.SetFocus;
      end;
    finally
      dm.Consulta.close;
      Self.tag:= 0;
      EditInsert:= 0;
      BuscaProduto;

      EdtPreco.Clear;
      EdtNomePro.clear;
      EdtQuant.Clear;
      EdtCodBar.Clear;
      EdtCodBar.SetFocus;
    end;
  end
  else
  if EditInsert = 1 then
  begin
    if dm.FDTransaction1.Active then
        dm.FDTransaction1.Commit;
     dm.FDTransaction1.StartTransaction;
    try
      try
        with dm.Consulta do
        begin
          close;
          SQL.Clear;
          sql.add('UPDATE PRODUTOS_FARDO SET CODIGO_BARRAS = :2, QUANT_VENDA = :3,'+
          ' VALOR_VENDA = :4, DESCRICAO = :5,UNID = :6 WHERE CODIGO = :1');
          Parambyname('1').AsInteger := strtoint(EdtCodPro.Text);
          Parambyname('2').AsString := (EdtCodBar.Text);
          Parambyname('3').AsCurrency:= strtocurr(EdtQuant.Text);
          Parambyname('4').AsCurrency:= strtocurr(EdtPreco.Text);
          Parambyname('5').AsString := (EdtNomePro.Text);
          Parambyname('6').AsString := (DBunidade.Text);
          ExecSQL;
        end;
        dm.FDTransaction1.Commit;
      except
        dm.FDTransaction1.Rollback;
        Self.tag:= 0;
        EditInsert:= 0;
        showmessage('Erro ao gravar o Produto ' + #13 +
                 'Verifique se está gravado');

        EdtPreco.Clear;
        EdtNomePro.clear;
        EdtQuant.Clear;
        EdtCodBar.Clear;
        EdtCodBar.SetFocus;
      end;
    finally
      dm.Consulta.close;
      Self.tag:= 0;
      BuscaProduto;

      EdtPreco.Clear;
      EdtNomePro.clear;
      EdtQuant.Clear;
      EdtCodBar.Clear;
      EdtCodBar.SetFocus;
    end;
  end;
end;

procedure TFormProdutosCaixa.ActionCancelarExecute(Sender: TObject);
begin
  Self.tag:= 0;
  EditInsert:= 0;
end;

procedure TFormProdutosCaixa.ActionAlterarExecute(Sender: TObject);
begin
  if not DSProd.DataSet.IsEmpty then
  begin
    Self.tag:= 1;
    EditInsert:= 1;
    EdtCodPro.text:= QProdCODIGO.Text;
    EdtCodBar.text:= QProdCODIGO_BARRAS.Value;
    EdtNomePro.Text:= QProdDESCRICAO.Value;
    EdtQuant.Text:= IntToStr(QProdQUANT_VENDA.Value);
    EdtPreco.Text:= FloatToStr(QProdVALOR_VENDA.asfloat);
  end;
end;

procedure TFormProdutosCaixa.ActionIncluirExecute(Sender: TObject);
begin
  Self.tag:= 1;
  
end;

procedure TFormProdutosCaixa.ActionExcluirExecute(Sender: TObject);
begin
  if not QProdCODIGO_BARRAS.IsNull then
  begin
    if Application.MessageBox('Confirma a Exclusão do Produto?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
    begin
      if dm.FDTransaction1.Active then
         dm.FDTransaction1.Commit;
      dm.FDTransaction1.StartTransaction;
      try
        try
          with dm.Consulta do
          begin
             close;
             SQL.Clear;
             SQL.add('DELETE FROM PRODUTOS_FARDO ' +
                     'WHERE CODIGO_BARRAS = :1');
             Parambyname('1').AsString := QProdCODIGO_BARRAS.Text;;
             ExecSQL;
          end;
          dm.FDTransaction1.Commit;
        except
          dm.FDTransaction1.Rollback;
          showmessage('Erro ao excluir!');
        end;
      finally
        dm.Consulta.close;
        Self.tag:= 0;
        BuscaProduto;
        EdtCodPro.Clear;
        EdtNomePro.clear;
        EdtCodBar.Clear;
        EdtQuant.Clear;
        EdtPreco.Clear;
      end;
    end;
  end;
end;

end.
