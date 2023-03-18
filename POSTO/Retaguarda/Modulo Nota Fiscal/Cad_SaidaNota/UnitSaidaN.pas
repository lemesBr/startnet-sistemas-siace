unit UnitSaidaN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Buttons,
  ComCtrls, ToolEdit, RXDBCtrl, Mask, ExtCtrls, CurrEdit, Grids, DBGrids,
  IBSQL, RDprint, IniFiles;

type
  TSaidaNFCadFrm = class(TForm)
    QryCFOP: TIBQuery;
    DstQryCFOP: TDataSource;
    DtsDstPedidos: TDataSource;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    ListView1: TListView;
    Panel3: TPanel;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    QrySintegra: TIBQuery;
    Qry1Prod: TIBQuery;
    DtsQry1Prod: TDataSource;
    Timer1: TTimer;
    SQLSaida: TIBSQL;
    Panel7: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit11: TDBEdit;
    BitBtn2: TBitBtn;
    Panel8: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit10: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    Button1: TButton;
    Label55: TLabel;
    Label56: TLabel;
    Label47: TLabel;
    Label37: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Panel9: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label63: TLabel;
    Label57: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Panel10: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label64: TLabel;
    ComboBox3: TComboBox;
    BitBtn5: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Panel4: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label34: TLabel;
    Label38: TLabel;
    DBEdit17: TDBEdit;
    DBEdit32: TDBEdit;
    TabSheet9: TTabSheet;
    Panel13: TPanel;
    QryUpdate: TIBQuery;
    SQLUpdate: TIBSQL;
    SQLInsert: TIBSQL;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    Edit1: TEdit;
    SQLImpressao: TIBSQL;
    RDprint1: TRDprint;
    ComboBox4: TComboBox;
    Label65: TLabel;
    DBEdit10: TDBEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    QryPedidos_Itens: TIBQuery;
    Panel14: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    BitBtn1: TBitBtn;
    Panel16: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    Label70: TLabel;
    Edit3: TEdit;
    ComboBox5: TComboBox;
    QryContato: TIBQuery;
    Qry1ProdCOD_PRODUTOS: TIntegerField;
    Qry1ProdALIQUOTA_ICMS: TIBBCDField;
    Qry1ProdALIQUOTA_IPI: TIBBCDField;
    Qry1ProdPRC_VENDA: TIBBCDField;
    Qry1ProdCODIGO_NCM: TIBStringField;
    Qry1ProdAPR_UND: TIBStringField;
    Qry1ProdS_TRIB: TIBStringField;
    Qry1ProdNOME: TIBStringField;
    Qry1ProdREFERENCIA: TIBStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Qry1ProdOBS: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Abilita;
    procedure LoadDefaultIniVars;
    procedure LimparCampos(Tipo: Integer);
    function SalvaCampos: Boolean;
    procedure Mostrar(CodigoNota: Integer);
    procedure HabilitaCampos;

    procedure New;
    procedure EditCancel;
    procedure Save;
    procedure Imprimir;
    procedure Resumo;
    procedure ExcluiItem(Referencia: string);

    function CamposPreenchidos: Boolean;
    function CamposItensPreenchidos: Boolean;
    function LocalizaItem(RefStr: string): integer;

    procedure AdicionaItem;
    procedure SQL;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CarregaContatos;

    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

    procedure Seleciona_Produto(Sender: TObject);
    procedure Seleciona_Cliente(Sender: TObject);
    procedure Seleciona_Transp(Sender: TObject);

    procedure Filtra_CFOP(Estado: string);
    procedure DBLookupComboBox1DropDown(Sender: TObject);

    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit1Change(Sender: TObject);
    procedure CurrencyEdit3Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl2Change(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure DBDateEdit3Exit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ListView1DblClick(Sender: TObject);
    procedure ListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit29Exit(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaidaNFCadFrm: TSaidaNFCadFrm;
  SELECT_COD_CLI, Cod_Produto, CodPedidos: Integer;
  Preview: Boolean;
  NumNota, ControleForm, Estado, OBS_PRODUTO: string;
  Nota_Cancelada: boolean = False;

implementation

uses UnitSelect, UnitDataM1, UnitFrmPrincipal, UnitNotaFiscalConfig,
  UnitFuncoes;

{$R *.dfm}

procedure TSaidaNFCadFrm.DBLookupComboBox1DropDown(Sender: TObject);
begin
 with TDBLookupComboBox(Sender).ListSource.DataSet do
  begin
   Moveby(TDBLookupComboBox(Sender).DropDownRows);
   First;
  end;
end;

procedure TSaidaNFCadFrm.BitBtn2Click(Sender: TObject);
begin
 Selectfrm.Caption := 'Selecione o Cliente';
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.SpeedButton1.OnClick := Seleciona_Cliente;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT CODCLI, NOME, UF, ENDERECO, BAIRRO, CIDADE, CEP, CGCCPF, INSCESTRG');
   IBQuery1.sql.Add('FROM CADASTRO WHERE CODCLI > 0');
   IBQuery1.sql.add('ORDER BY NOME');
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFCadFrm.Seleciona_Cliente(Sender: TObject);
var
 ESTADO: string;
begin
 Edit6.Clear;

 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   Edit6.Text := SelectFrm.IBQuery1['NOME'];
   DM1.DstPedidos['NOME_DESTINATARIO'] := Edit6.Text;
   if not varisnull(SelectFrm.IBQuery1['ENDERECO']) then
    DM1.DstPedidos['ENDERECO_DESTINATARIO'] := SelectFrm.IBQuery1['ENDERECO'];
   if not varisnull(SelectFrm.IBQuery1['BAIRRO']) then
    DM1.DstPedidos['BAIRRO_DESTINATARIO'] := SelectFrm.IBQuery1['BAIRRO'];
   if not varisnull(SelectFrm.IBQuery1['CIDADE']) then
    DM1.DstPedidos['CIDADE_DESTINATARIO'] := SelectFrm.IBQuery1['CIDADE'];
   if not varisnull(SelectFrm.IBQuery1['CEP']) then
    DM1.DstPedidos['CEP_DESTINATARIO'] := SelectFrm.IBQuery1['CEP'];
   if not varisnull(SelectFrm.IBQuery1['CGCCPF']) then
    DM1.DstPedidos['CNPJ_DESTINATARIO'] := SelectFrm.IBQuery1['CGCCPF'];
   if not varisnull(SelectFrm.IBQuery1['INSCESTRG']) then
    DM1.DstPedidos['IE_DESTINATARIO'] := SelectFrm.IBQuery1['INSCESTRG'];
   if not varisnull(SelectFrm.IBQuery1['UF']) then
    begin
     DM1.DstPedidos['UF_DESTINATARIO'] := SelectFrm.IBQuery1['UF'];
     ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(SelectFrm.IBQuery1['UF']);
    end;
   if not varisnull(SelectFrm.IBQuery1['CODCLI']) then
    begin
     DM1.DstPedidos['COD_CLI_DESTINATARIO'] := SelectFrm.IBQuery1['CODCLI'];
     SELECT_COD_CLI := SelectFrm.IBQuery1['CODCLI'];
     QryContato.Close;
     QryContato.UnPrepare;
     QryContato.Params[0].AsInteger := SELECT_COD_CLI;
     QryContato.Prepare;
     QryContato.Open;
     CarregaContatos;
    end;
   if not VarIsNull(SelectFrm.IBQuery1['UF']) then
    ESTADO := SelectFrm.IBQuery1['UF'];
  end;
 SelectFrm.Close;
 Filtra_CFOP(ESTADO);
end;

procedure TSaidaNFCadFrm.DBLookupComboBox1Exit(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clWindow;
 if not VarIsNull(QryCFOP['DESC_OPERACAO']) then
  Edit1.Text := QryCFOP['DESC_OPERACAO'];
end;

procedure TSaidaNFCadFrm.DBLookupComboBox1Enter(Sender: TObject);
begin
 TDBLookupComboBox(Sender).Color := clAqua;
end;

procedure TSaidaNFCadFrm.BitBtn5Click(Sender: TObject);
begin
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.Caption := 'Selecione a Transportadora';
 SelectFrm.SpeedButton1.OnClick := Seleciona_Transp;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.UnPrepare;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT NOME, CGCCPF, ENDERECO, CIDADE, UF, INSCESTRG FROM CADASTRO');
   IBQuery1.sql.add('where CODCLI > 0 ORDER BY NOME');
   IBQuery1.Prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFCadFrm.Seleciona_Transp(Sender: TObject);
begin
 Edit7.Clear;

 if not VarIsNull(SelectFrm.IBQuery1['NOME']) then
  begin
   Edit7.Text := SelectFrm.IBQuery1['NOME'];
   if not VarIsNull(SelectFrm.IBQuery1['CGCCPF']) then
    DM1.DstPedidos['TRANSP_CNPJ_CPF'] := SelectFrm.IBQuery1['CGCCPF'];
   if not VarIsNull(SelectFrm.IBQuery1['ENDERECO']) then
    DM1.DstPedidos['TRANSP_ENDER'] := SelectFrm.IBQuery1['ENDERECO'];
   if not VarIsNull(SelectFrm.IBQuery1['CIDADE']) then
    DM1.DstPedidos['TRANSP_MUNICIPIO'] := SelectFrm.IBQuery1['CIDADE'];
   if not VarIsNull(SelectFrm.IBQuery1['UF']) then
    begin
     DM1.DstPedidos['TRANSP_UF'] := SelectFrm.IBQuery1['UF'];
     ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(SelectFrm.IBQuery1['UF']);
    end;
   if not VarIsNull(SelectFrm.IBQuery1['INSCESTRG']) then
    DM1.DstPedidos['TRANSP_IE'] := SelectFrm.IBQuery1['INSCESTRG'];
  end;
 SelectFrm.Close;
end;

procedure TSaidaNFCadFrm.FormActivate(Sender: TObject);
begin
 DM1.DefSenderDtsStateChange(DM1.DstPedidos);
 if DM1.DstPedidos.State = dsbrowse then
  Abilita;
end;

procedure TSaidaNFCadFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := DM1.CanCloseFrm(DM1.DstPedidos);

 if action = cafree then
  begin
   Panel16.Visible := True;
   Application.ProcessMessages;

   SaidaNFConfigFrm.Close;
   SaidaNFConfigFrm.Free;
  end;
end;

procedure TSaidaNFCadFrm.Filtra_CFOP(Estado: string);
begin
 with QrySintegra do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   SQL.Add('Select * from SINTEGRA_INFO');
   Prepare;
   Open;
  end;

 with QryCFOP do
  begin
   Close;
   UnPrepare;
   SQL.Clear;
   if Estado = QrySintegra['UF'] then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 5')
   else if (Estado <> QrySintegra['UF']) and (Estado <> 'EX') and
     not (Estado = '') and not (VarIsNull(Estado)) then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 6')
   else if Estado = 'EX' then
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 7')
   else
     SQL.Add('select * from cfop_codigo where cod_cfop_codigo starting with 5 or cod_cfop_codigo starting with 6 or cod_cfop_codigo starting with 7');
   SQL.Add('order by cod_cfop_codigo');
   Prepare;
   Open;
  end;
end;

procedure TSaidaNFCadFrm.Button1Click(Sender: TObject);
var Continuar : boolean;
begin
 Continuar := true;
 if (CurrencyEdit1.Value * CurrencyEdit2.Value <> CurrencyEdit3.Value) and
            (CurrencyEdit3.Value * CurrencyEdit5.Value <> CurrencyEdit6.Value)then
    Continuar := Application.MessageBox('Os valores calculados para "Sub-Total" e "Valor IPI" não conferem.' + #13
                                         + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes
    else if (CurrencyEdit1.Value * CurrencyEdit2.Value <> CurrencyEdit3.Value) then
          Continuar := Application.MessageBox('O valor calculado para "Sub-Total" não confere.' + #13
                                               + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes
       else if (CurrencyEdit3.Value * CurrencyEdit5.Value / 100 <> CurrencyEdit6.Value) then
             Continuar := Application.MessageBox('O valor calculado para "Valor IPI" não confere.' + #13
                                                 + 'Deseja continuar?', 'Atenção!', MB_YESNO) = idYes;
 if Continuar then
 begin
  AdicionaItem;
  Edit3.OnKeyPress := Edit3KeyPress;
 end;
end;

procedure TSaidaNFCadFrm.SQL;
begin
 with Qry1Prod do
  begin
   Close;
   sql.Clear;
   //--para nome de produtos-----
   if Edit3.Focused then
    begin
     sql.add('Select Cod_Produtos,REFERENCIA, Nome, OBS,PRC_VENDA, APR_UND, Enable_Numserie, S_TRIB, CODIGO_NCM,');
     sql.add('ALIQUOTA_ICMS, ALIQUOTA_IPI, OBS from Produtos where UPPER(NOME) LIKE UPPER(:1)');
     SQL.Add('order by NOME');
     params[0].AsString := '%' + edit3.Text + '%';
     prepare;
     Open;
     panel5.Visible := True;
    end;
   //--para referencia de produtos-----
   if Edit2.Focused then
    begin
     sql.add('Select Cod_Produtos,REFERENCIA, Nome, PRC_VENDA, APR_UND, Enable_Numserie, S_TRIB, CODIGO_NCM,');
     sql.add('ALIQUOTA_ICMS, ALIQUOTA_IPI, OBS from Produtos where UPPER(REFERENCIA) LIKE UPPER(:1)');
     params[0].AsString := edit2.Text;
     prepare;
     Open;
     if Qry1Prod.RecordCount <> 0 then
      DBGrid1DblClick(self);
    end;
  end;
end;

procedure TSaidaNFCadFrm.AdicionaItem;
var
 index: integer;
begin
 index := LocalizaItem(edit2.Text);
 if index = -1 then //Produto Não Listado
  begin
   if CurrencyEdit1.Value > 0 then//se QUANTIDADE. nao for 0
    begin
     if CamposItensPreenchidos then
      begin
       PageControl2.ActivePageIndex := 0;
       Listview1.Items.Insert(0);
       Listview1.Items.Item[0].Caption := edit2.Text;                                        //Referência
       Listview1.Items.Item[0].SubItems.Insert(0, Edit3.Text);                               //Descrição
       Listview1.Items.Item[0].SubItems.Insert(1, Edit4.Text);                               //C.T.
       Listview1.Items.Item[0].SubItems.Insert(2, Edit5.Text);                               //Sit. Trib.
       Listview1.Items.Item[0].SubItems.Insert(3, Edit10.Text);                              //Unidade
       Listview1.Items.Item[0].SubItems.Insert(4, FormatCurr('0.00', CurrencyEdit1.Value));  //Quant.
       Listview1.Items.Item[0].SubItems.Insert(5, FormatCurr('0.000', CurrencyEdit2.Value)); //Valor Unitário
       Listview1.Items.Item[0].SubItems.Insert(6, FormatCurr('0.00', CurrencyEdit3.Value));  //Valor Total
       Listview1.Items.Item[0].SubItems.Insert(7, FormatCurr('0', CurrencyEdit4.Value));     //Al. ICMS
       Listview1.Items.Item[0].SubItems.Insert(8, FormatCurr('0', CurrencyEdit5.Value));     //Al. IPI
       Listview1.Items.Item[0].SubItems.Insert(9, FormatCurr('0.00', CurrencyEdit6.Value));  //Valor IPI
       Listview1.Items.Item[0].SubItems.Insert(10, IntToStr(Cod_Produto));

       if OBS_PRODUTO <> '' then
        if dbmemo1.Lines.IndexOf(OBS_PRODUTO) = -1 then
         if DM1.DstPedidos.FieldByName('DADOS_ADICIONAIS').AsString <> '' then
           DM1.DstPedidos.FieldByName('DADOS_ADICIONAIS').AsString := DM1.DstPedidos.FieldByName('DADOS_ADICIONAIS').AsString + #13#10 + OBS_PRODUTO
          else
           DM1.DstPedidos.FieldByName('DADOS_ADICIONAIS').AsString := DM1.DstPedidos.FieldByName('DADOS_ADICIONAIS').AsString + OBS_PRODUTO;

       Resumo; //Incremento no Valor Total dos Produtos

       LimparCampos(0);
       cod_produto := 0;
       if Edit2.CanFocus then
        Edit2.SetFocus;
      end
     else
      Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
                             'Atenção!', mb_iconinformation + mb_ok);
    end
   else// QUANTIDADE = 0 e produto nao listado
    begin
     Application.messagebox('Para adicionar um Produto, Quantidade deve ser diferente de zero',
       'Atenção!', mb_iconinformation + mb_ok);
     CurrencyEdit1.SetFocus;
    end;
  end
 else
  begin
   //-----------exclusao de um item-----------------------------
   // QUANTIDADE = 0 e produto listado
   if CurrencyEdit1.Value = 0 then
    begin
      ExcluiItem(Edit2.Text);
    end
   // QUANTIDADE <> 0 e produto listado
   else
    begin
     //quantidade
     Listview1.Items.Item[index].SubItems.Strings[4] := formatcurr('0.00', CurrencyEdit1.Value + StrToFloat(Listview1.Items.Item[index].SubItems.Strings[4]));
     //sub-total
     Listview1.Items.Item[index].SubItems.Strings[6] := formatcurr('0.00', StrToFloat(Listview1.Items.Item[index].SubItems.Strings[6]) + ((CurrencyEdit1.Value * strtofloat(Listview1.Items.Item[index].SubItems.Strings[5]))));
     //valor total ipi
     Listview1.Items.Item[index].SubItems.Strings[9] := formatcurr('0.00', StrToFloat(Listview1.Items.Item[index].SubItems.Strings[9]) + ((CurrencyEdit1.Value * strtofloat(Listview1.Items.Item[index].SubItems.Strings[5]) * (strtofloat(Listview1.Items.Item[index].SubItems.Strings[8]) / 100))));
     //Total dos Produtos
     Resumo;

     Edit2.Clear;
     if Edit2.CanFocus then
      Edit2.SetFocus;
    end;
  end;
end;

function TSaidaNFCadFrm.LocalizaItem(RefStr: string): integer;
var
 x: integer;
begin
 Result := -1;
 for x := 0 to Listview1.Items.Count - 1 do
  begin
   if Listview1.Items.Item[x].Caption = RefStr then
    begin
     Result := x;
     Break;
    end;
  end;
end;


procedure TSaidaNFCadFrm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
{ if key in ['a'..'z', 'A'..'Z'] then
  begin
   if Edit3.Text = '' then
    begin
     TECLA_SELECT := Key;
     BitBtn1Click(self);
     Key := #0;
    end;
  end;}

 if key = #27 then
  begin
   key := #0;
   if panel5.Visible = False then
     if Edit2.CanFocus then
      Edit2.SetFocus
   else
    begin
     Edit3.Text := '';
     panel5.Visible := False;
    end;
  end;

 if key = #13 then
  begin
   key := #0;
   if edit3.Text <> '' then
    begin
     if (edit3.Text = Qry1Prod['NOME']) and (panel5.Visible = False) then
      begin
       if CurrencyEdit1.CanFocus then
         CurrencyEdit1.SetFocus;
      end
     else
      begin
       if Qry1Prod.RecordCount = 1 then
         dbgrid1dblclick(self)       //abre registro
       else
        begin
         if Qry1Prod.RecordCount <> 0 then
          begin
           if dbgrid1.CanFocus then
             dbgrid1.SetFocus;
          end
         else
          begin
           Panel5.Visible := False;
           Application.MessageBox('Produto não Cadastrado.', 'Atenção!', mb_ok + mb_iconerror);
           if edit3.CanFocus then
             edit3.Clear;
          end;
        end;
      end;
    end
   else
    Perform(wm_nextdlgctl, 1,0)
  end;
end;

procedure TSaidaNFCadFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
end;

procedure TSaidaNFCadFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TSaidaNFCadFrm.DBGrid1DblClick(Sender: TObject);
begin
 edit2.onchange := nil;
 edit3.onchange := nil;
 OBS_PRODUTO    := '';

 if not VarIsNull(Qry1Prod['REFERENCIA']) then
  edit2.Text  := Qry1Prod['REFERENCIA'];
 if not VarIsNull(Qry1Prod['NOME']) then
  edit3.Text  := Qry1Prod['NOME'];
 if not VarIsNull(Qry1Prod['CODIGO_NCM']) then
  edit4.Text  := Qry1Prod['CODIGO_NCM'];
 if not VarIsNull(Qry1Prod['S_TRIB']) then
  edit5.Text  := Qry1Prod['S_TRIB'];
 if not VarIsNull(Qry1Prod['APR_UND']) then
  edit10.Text := Qry1Prod['APR_UND'];
 if not VarIsNull(Qry1Prod['PRC_VENDA']) then
  CurrencyEdit2.Value := Qry1Prod['PRC_VENDA'];
 if not VarIsNull(Qry1Prod['ALIQUOTA_ICMS']) then
  CurrencyEdit4.Value := Qry1Prod['ALIQUOTA_ICMS'];
 if not VarIsNull(Qry1Prod['ALIQUOTA_IPI']) then
  CurrencyEdit5.Value := Qry1Prod['ALIQUOTA_IPI'];
 if not VarIsNull(Qry1Prod['COD_PRODUTOS']) then
  Cod_Produto := Qry1Prod['COD_PRODUTOS'];
 if not varisnull(Qry1Prod['OBS']) then
  OBS_PRODUTO := Qry1Prod['OBS'];

 Panel5.Visible := False;
 edit2.OnChange := edit2change;
 edit3.OnChange := edit3change;
 Timer1.Enabled := False;
 if CurrencyEdit1.CanFocus then
  CurrencyEdit1.SetFocus;
end;

procedure TSaidaNFCadFrm.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //----tratando dos produtos (Referencia)----------------
 if key = vk_return then
  begin
   if edit2.Text <> '' then
    begin
     if edit3.Text <> '' then
      begin
       if CurrencyEdit1.CanFocus then
        CurrencyEdit1.SetFocus;
      end
     else
      begin
       SQL;
       if Qry1Prod.RecordCount = 0 then
        begin
         application.messagebox(PChar(edit3.Text + #13#10 + 'Referência não cadastrada.'),
           'Atenção!', mb_Ok + mb_iconerror);
         Edit2.Text := '';
//         CheckBox1.Checked := False;
        end;
       edit2.SelectAll;
      end;
    end
   else
    begin
     if Edit3.CanFocus then
      Edit3.SetFocus;
    end;
  end;

 if key = vk_escape then
  begin
   PageControl1.ActivePageIndex := 0;
   PageControl1Change(Self);
   if DBEdit12.CanFocus then
    DBEdit12.SetFocus;
  end;

 timer1.Enabled := False;
end;

procedure TSaidaNFCadFrm.Timer1Timer(Sender: TObject);
begin
 if (edit2.Text <> '') or (edit3.Text <> '') then
  begin
   SQL;
  end
 else
  begin
   panel5.Visible := False;
  end;
 timer1.Enabled := False;
end;

procedure TSaidaNFCadFrm.FormCreate(Sender: TObject);
begin
// panel5.width := Edit3.Width;
// panel5.left :=  Edit3.Left;
// panel5.Top  := (Edit3.Top + Edit3.Height) + 1;

 panel5.width  := 294;
 panel5.left   := 123;
 panel5.Top    := 87;
 panel5.Height := 196;

 DBgrid1.Columns[0].Width := SaidaNFCadFrm.Panel5.Width - 24;

 Application.CreateForm(TSaidaNFConfigFrm, SaidaNFConfigFrm);
 SaidaNFConfigFrm.WindowState := wsMinimized;
 SaidaNFConfigFrm.Show;
 SaidaNFConfigFrm.Hide;

// Edit3.Left := 124;
// Edit3.Top  := 62;
 cod_produto := 0;
 PageControl1.ActivePageIndex := 0;
 PageControl2.ActivePageIndex := 0;
 PageControl3.ActivePageIndex := 0;

 DM1.OpenIBArray([DM1.DstPedidos, DM1.DstPedidos_Itens, SaidaNFCadFrm.QryContato,
                 SaidaNFCadFrm.QryCFOP]);
 DM1.DstPedidos.First;
 Nota_Cancelada               := (DM1.DstPedidos['SITUACAO_NF'] = 'S');
 LoadDefaultIniVars;

end;

procedure TSaidaNFCadFrm.Edit3Change(Sender: TObject);
begin
 timer1.Enabled := False;
 timer1.Enabled := True;
 //---desabilita e limpa campos ao apagar nome Produto--
 if edit3.Text = '' then
  begin
   Edit2.OnChange := nil;
   Edit3.OnChange := nil;
   LimparCampos(0);
   Edit2.OnChange := Edit2Change;
   Edit3.OnChange := Edit3Change;

   PrincipalFrm.CamposPreenchidos(Label8);
   PrincipalFrm.CamposPreenchidos(Label34);
   PrincipalFrm.CamposPreenchidos(Label38);
   PrincipalFrm.CamposPreenchidos(Label2);
   PrincipalFrm.CamposPreenchidos(Label4);

  end;
end;

procedure TSaidaNFCadFrm.Edit2Change(Sender: TObject);
begin
 Edit3.Text := '';
 panel5.Visible := False;
 Timer1.Enabled := False;
 if Edit2.Text = '' then
  begin
   Edit2.OnChange := nil;
   Edit3.OnChange := nil;
   LimparCampos(0);
   Edit2.OnChange := Edit2Change;
   Edit3.OnChange := Edit3Change;
 
   PrincipalFrm.CamposPreenchidos(Label8);
   PrincipalFrm.CamposPreenchidos(Label34);
   PrincipalFrm.CamposPreenchidos(Label38);
   PrincipalFrm.CamposPreenchidos(Label2);
   PrincipalFrm.CamposPreenchidos(Label4);
  end;
end;

procedure TSaidaNFCadFrm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TSaidaNFCadFrm.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   if LocalizaItem(edit2.Text)<>-1 then
     Button1Click(Self)
   else
     Perform(wm_nextdlgctl, 0,0);
   key := #0;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TSaidaNFCadFrm.CurrencyEdit1Change(Sender: TObject);
begin
 CurrencyEdit3.Value := CurrencyEdit1.Value * CurrencyEdit2.Value;
end;

procedure TSaidaNFCadFrm.CurrencyEdit3Change(Sender: TObject);
begin
 CurrencyEdit6.Value := CurrencyEdit3.Value * (CurrencyEdit5.Value / 100)
end;

procedure TSaidaNFCadFrm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
   dbgrid1dblclick(self);
  end;

 if key = #27 then
  begin
   edit3.SetFocus;
   Panel5.Visible := False;
   edit3.Text := '';
  end;
end;

procedure TSaidaNFCadFrm.EditCancel;
begin
 if DM1.DstPedidos.State = dsInsert then
  begin
   if DM1.EditCancel(DM1.DstPedidos) then
    begin
     Abilita;
     LimparCampos(1);
    end;
  end
 else
  begin
   if DM1.DstPedidos.State = dsEdit then
    begin
     CodPedidos := DM1.DstPedidos['COD_PEDIDOS'];
     if DM1.EditCancel(DM1.DstPedidos) then
      begin
       Abilita;
       Mostrar(CodPedidos);
      end;
    end
   else
    if DM1.EditCancel(DM1.DstPedidos) then
     Abilita;
  end;
end;

procedure TSaidaNFCadFrm.New;
begin
 if DM1.NewSave(DM1.DstPedidos) then
  begin
   DateTimePicker1.Time                   := Now;
   DM1.DstPedidos['DATAHORA_EMISSAO']     := Now;
   DM1.DstPedidos['DATAHORA_SAIDAENTRADA']:= Now;
   DM1.DstPedidos['DATAHORA_SAIDA']       := Now;
   DM1.DstPedidos['SITUACAO_NF']          := 'N';
   DM1.DstPedidos['COD_CAIXA_OP_CL']      := 0;
   DM1.DstPedidos['FIM_PED']              := 0;
   DM1.DstPedidos['IMP_OK']               := 0;
   DM1.DstPedidos['COD_VEND']             := 0;
   DM1.DstPedidos['COD_FORMA_PGT']        := 0;
   DM1.DstPedidos['NUM_NF']               := NumNota;
   DM1.DstPedidos['NUM_FORM']             := ControleForm;
   DM1.DstPedidos['ESPECIE']              := 'NF';
   DM1.DstPedidos['NUM_PARCELAS']         := 0;
   Nota_Cancelada                         := False;
   DBMemo1.Lines.Clear;
   Abilita;
  end;
end;

procedure TSaidaNFCadFrm.Save;
begin
 DM1.DstPedidos.UpdateRecord;
 if ListView1.Items.Count <= 0 then
  begin
   Application.MessageBox('A Nota Fiscal deve ter pelo menos um item cadastrado.', 'Atenção!', MB_OK + MB_ICONINFORMATION);
  end
 else
  begin
   //Testa se existe nota igual já lançada
   if DM1.DstPedidos.State = dsInsert then
    begin
{     SQLSaida.Close;
     SQLSaida.SQL.Clear;
     SQLSaida.SQL.Add('select num_nf from pedidos');
     SQLSaida.SQL.Add('where cod_cli_destinatario = :cliente and num_nf = :num_nf');
     SQLSaida.Params.ByName('cliente').AsInteger := SELECT_COD_CLI;
     SQLSaida.Params.ByName('num_nf').AsString := DBEdit2.Text;
     SQLSaida.ExecQuery;

     if SQLSaida.RecordCount > 0 then
      Application.MessageBox(PChar('Já existe uma Nota Fiscal de Saída com o Nº: ' + DBEdit2.Text + #13 +
                             ' para o Cliente: ' + Edit6.Text + '. Verifique!'),
                             'Atenção!', MB_ICONINFORMATION + MB_OK)
     else
      begin
}      Panel16.Visible := True;
       Application.ProcessMessages;
       SalvaCampos;
//      end;
    end
   else if DM1.DstPedidos.State = dsEdit then
    begin
{     SQLSaida.Close;
     SQLSaida.SQL.Clear;
     SQLSaida.SQL.Add('select num_nf from pedidos');
     SQLSaida.SQL.Add('where cod_cli_destinatario = :cliente and num_nf = :num_nf');
     SQLSaida.SQL.Add('and COD_PEDIDOS <> :cod_pedidos');
     SQLSaida.Params.ByName('cod_pedidos').AsInteger := DM1.DstPedidos['COD_PEDIDOS'];
     SQLSaida.Params.ByName('cliente').AsInteger := SELECT_COD_CLI;
     SQLSaida.Params.ByName('num_nf').AsString := DBEdit2.Text;
     SQLSaida.ExecQuery;

     if SQLSaida.RecordCount > 0 then
      Application.MessageBox(PChar('Já existe uma Nota Fiscal de Saída com o Nº: ' + DBEdit2.Text + #13 +
                             ' para o Cliente: ' + Edit6.Text + '. Verifique!'),
                             'Atenção!', MB_ICONINFORMATION + MB_OK)
     else
}     Panel16.Visible := True;
      Application.ProcessMessages;
      SalvaCampos;
    end;
  end;
end;

procedure TSaidaNFCadFrm.Abilita;
begin
 DM1.DefSenderDtsStateChange(DM1.DstPedidos);
 if DM1.DstPedidos.State = dsBrowse then
  begin
   //O primeiro registro da tabela de PEDIDOS deve ser vazio
   if dm1.DstPedidos['COD_PEDIDOS'] = 0 then
    DM1.HandleBtn(True, False, False, False, False, True, True, False, True, True, True);
               //  New   Save   Edit  Cancel  Del   Find  List  Print  Clear Refresh Line
   Edit2.OnChange := nil;
   Edit3.OnChange := nil;
   LimparCampos(0);
   Edit2.OnChange := Edit2Change;
   Edit3.OnChange := Edit3Change;
   PrincipalFrm.CamposPreenchidos(Label8);
   PrincipalFrm.CamposPreenchidos(Label34);
   PrincipalFrm.CamposPreenchidos(Label38);
   PrincipalFrm.CamposPreenchidos(Label2);
   PrincipalFrm.CamposPreenchidos(Label4);
   PrincipalFrm.CamposPreenchidos(Label21);
   PrincipalFrm.CamposPreenchidos(Label26);
   PrincipalFrm.CamposPreenchidos(Label19);
   PrincipalFrm.CamposPreenchidos(Label20);
   KeyPreview := True;
   Panel4.Enabled  := False;
   Panel7.Enabled  := False;
   Panel8.Enabled  := False;
   Panel9.Enabled  := False;
   Panel10.Enabled := False;
   Panel11.Enabled := False;
   Panel12.Enabled := False;
   Panel13.Enabled := False;
   Edit3.Enabled   := False;
   ListView1.OnDblClick := nil;
   ListView1.OnKeyDown := nil;
  end
 else
  begin
   Edit2.OnChange := nil;
   Edit3.OnChange := nil;

   if DM1.DstPedidos.State = dsInsert then
    begin
     LimparCampos(1);
     if Edit6.CanFocus then
      Edit6.SetFocus;
    end
   else if DM1.DstPedidos.State = dsEdit then
    begin
     LimparCampos(0);
    end;

   Edit2.OnChange       := Edit2Change;
   Edit3.OnChange       := Edit3Change;
   KeyPreview           := False;
   Panel4.Enabled       := True;
   Panel7.Enabled       := True;
   Panel8.Enabled       := True;
   Panel9.Enabled       := True;
   Panel10.Enabled      := True;
   Panel11.Enabled      := True;
   Panel12.Enabled      := True;
   Panel13.Enabled      := True;
   Edit3.Enabled        := True;
   ListView1.OnDblClick := ListView1DblClick;
   ListView1.OnKeyDown  := ListView1KeyDown;
  end;

 Panel14.Visible := Nota_Cancelada;
 if Edit6.CanFocus then
  Edit6.SetFocus;
end;

procedure TSaidaNFCadFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
  Perform(wm_nextdlgctl, 0,0);

 if key = vk_escape then
  Self.Close;
end;

procedure TSaidaNFCadFrm.LimparCampos(Tipo: Integer);
begin  //Limpeza da Adição de Itens a Nota Fiscal
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 Edit5.Clear;
 Edit10.Clear;
 CurrencyEdit1.Clear;
 CurrencyEdit2.Clear;
 CurrencyEdit3.Clear;
 CurrencyEdit4.Clear;
 CurrencyEdit5.Clear;
 CurrencyEdit6.Clear;

 if Tipo = 1 then //Limpeza da Tela em Geral
  begin
   Combobox1.ItemIndex := 0;
   Combobox2.ItemIndex := 0;
   Combobox3.ItemIndex := 0;
   Combobox4.ItemIndex := 0;
   Combobox5.ItemIndex := 0;
   Combobox5.Items.Clear;
   Edit1.Clear;
   Edit6.Clear;
   Edit7.Clear;
   ListView1.Items.Clear;
  end;
end;

procedure TSaidaNFCadFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Self.Close;
  end;
end;

procedure TSaidaNFCadFrm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TSaidaNFCadFrm.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl1.ActivePageIndex := 1;
   PageControl1Change(Self);
   if Edit2.CanFocus then
    Edit2.SetFocus;
  end;
end;

procedure TSaidaNFCadFrm.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl3.ActivePageIndex := 1;
   if DBEdit23.CanFocus then
    DBEdit23.SetFocus;
  end;
end;

procedure TSaidaNFCadFrm.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl3.ActivePageIndex := 2;
   if DBEdit29.CanFocus then
    DBEdit29.SetFocus;
  end;
end;

procedure TSaidaNFCadFrm.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   if DBEdit17.CanFocus then
    DBEdit17.SetFocus;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TSaidaNFCadFrm.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl2.ActivePageIndex := 2;
   if Edit7.CanFocus then
    Edit7.SetFocus;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TSaidaNFCadFrm.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   PageControl2.ActivePageIndex := 3;
   if DBMemo1.CanFocus then
    DBMemo1.SetFocus;
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TSaidaNFCadFrm.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #$20 then
   BitBtn5Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn5Click(self);
   Key := #0;
  end;

 if key = #27 then
  begin
   key := #0;
   PageControl2.ActivePageIndex := 1;
   if DBEdit32.CanFocus then
    DBEdit32.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TSaidaNFCadFrm.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl3.ActivePageIndex := 2;
   if DBEdit10.CanFocus then
    DBEdit10.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

procedure TSaidaNFCadFrm.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl3.ActivePageIndex := 1;
   if DBEdit28.CanFocus then
    DBEdit28.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';  
end;

procedure TSaidaNFCadFrm.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl1.ActivePageIndex := 1;
   PageControl1Change(Self);
   
   if Edit3.CanFocus then
    Edit3.SetFocus;
   PageControl2.ActivePageIndex := 0;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';  
end;

procedure TSaidaNFCadFrm.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl3.ActivePageIndex := 0;
   if DBEdit21.CanFocus then
    DBEdit21.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';  
end;

procedure TSaidaNFCadFrm.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   PageControl2.ActivePageIndex := 2;
   if DBEdit44.CanFocus then
    DBEdit44.SetFocus;
  end;
end;

procedure TSaidaNFCadFrm.PageControl2Change(Sender: TObject);
begin
 PageControl3.ActivePageIndex := 0;
end;

function TSaidaNFCadFrm.SalvaCampos: Boolean;
var
 x: Integer;
 ArquivoIni: TIniFile;
 Path: string;
begin
 Result := False;
 CodPedidos := DM1.DstPedidos['COD_PEDIDOS']; //para salvar produtos na nota

 if CamposPreenchidos then
  begin
   if DM1.DstPedidos.State = dsEdit then
    begin
     if not Nota_Cancelada then
      begin
       with QryUpdate do
        begin
         Close;
         UnPrepare;
         Prepare;
         Open;
        end;

       QryUpdate.First;

       while not QryUpdate.Eof do
        begin
         with SQLUpdate do
          begin
           Close;
           SQL.Clear;
           SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL + :QUANTIDADE');
           SQL.Add('where Cod_Produtos = :Cod_Produtos');
           Params.ByName('QUANTIDADE').AsFloat := QryUpdate.FieldByName('QUANTIDADE').AsFloat;
           Params.ByName('Cod_Produtos').AsInteger := QryUpdate.FieldByName('COD_PRODUTOS').AsInteger;
           Prepare;
           ExecQuery;
           Transaction.CommitRetaining;
           QryUpdate.Next;
          end;
        end;

       //------delete de antigos produtos--------
       with SQLinsert do
        begin
         Close;
         SQL.Clear;
         SQL.Add('delete from PEDIDOS_ITENS where COD_PEDIDOS = :COD_PEDIDOS');
         Params.ByName('COD_PEDIDOS').AsInteger := dm1.DstPedidos['COD_PEDIDOS'];
         Prepare;
         ExecQuery;
         Transaction.CommitRetaining;
        end;
      end;
     Result := True;
   end;

   DM1.DstPedidos['MODELO_NF']          := '1A';
   DM1.DstPedidos['EMITENTE_NF']        := 'P';
   if DateTimePicker1.Checked then
    DM1.DstPedidos.FieldByName('DATAHORA_SAIDA').AsString := DateToStr(DBDateEdit2.Date) + ' ' + TimeToStr(DateTimePicker1.Time);
   DM1.DstPedidos['NATUREZA_OP']        := Edit1.Text;
   DM1.DstPedidos['TRANSP_FRETE_CONTA'] := ComboBox3.Text;
   DM1.DstPedidos['TRANSP_UF_VEICULO']  := ComboBox1.Text;
   DM1.DstPedidos['TRANSP_UF']          := ComboBox2.Text;
   DM1.DstPedidos['UF_DESTINATARIO']    := ComboBox4.Text;
   DM1.DstPedidos['FONE_DESTINATARIO']  := ComboBox5.Text;
   DM1.DstPedidos['NOME_DESTINATARIO']  := Edit6.Text;
   DM1.DstPedidos['TRANSP_NOME']        := Edit7.Text;

   Result := True;

   DM1.NewSave(dm1.DstPedidos);

   if not Nota_Cancelada then
    begin
     //-----------loop para leitura de dados da listview-------------
     for x := 0 to ListView1.Items.Count - 1 do
      begin
       //--------------salva dados inseridos na tabela PEDIDOS_ITENS (listview1)-----------
       DM1.NewSave(DM1.DstPedidos_Itens);
       DM1.DstPedidos_Itens['COD_PEDIDOS']  := CodPedidos;
       DM1.DstPedidos_Itens['REF_PRODUTOS'] := ListView1.Items[x].Caption;
       DM1.DstPedidos_Itens['PRODUTO']      := ListView1.Items[x].SubItems.Strings[0];
       DM1.DstPedidos_Itens['CODIGO_NCM']   := ListView1.Items[x].SubItems.Strings[1];
       DM1.DstPedidos_Itens['S_TRIB']       := ListView1.Items[x].SubItems.Strings[2];
       DM1.DstPedidos_Itens['APR_UND']      := ListView1.Items[x].SubItems.Strings[3];
       DM1.DstPedidos_Itens['QUANTIDADE']   := StrToFloat(ListView1.Items[x].SubItems.Strings[4]);
       DM1.DstPedidos_Itens['PRC_VENDA']    := StrToFloat(ListView1.Items[x].SubItems.Strings[5]);
       DM1.DstPedidos_Itens['SUBTOTAL']     := StrToFloat(ListView1.Items[x].SubItems.Strings[6]);
       DM1.DstPedidos_Itens['ALIQUOTA_ICMS']:= StrToFloat(ListView1.Items[x].SubItems.Strings[7]);
       DM1.DstPedidos_Itens['ALIQUOTA_IPI'] := StrToFloat(ListView1.Items[x].SubItems.Strings[8]);
       DM1.DstPedidos_Itens['VALOR_IPI']    := StrToFloat(ListView1.Items[x].SubItems.Strings[9]);
       DM1.DstPedidos_Itens['COD_PRODUTOS'] := StrToInt(ListView1.Items[x].SubItems.Strings[10]);
       DM1.DstPedidos_Itens['NUM_ITEM']     := x + 1;
       DM1.DstPedidos_Itens['PRM_ENABLED']  := 0;
       DM1.NewSave(DM1.DstPedidos_Itens);

       with SQLUpdate do
        begin
         Close;
         SQL.Clear;
         SQL.Add('update PRODUTOS set EST_ATUAL = EST_ATUAL - :QUANTIDADE ');
         SQL.Add('where Cod_Produtos = :Cod_Produtos');
         Params.ByName('Cod_Produtos').AsInteger := StrToInt(ListView1.Items[x].SubItems.Strings[10]);
         Params.ByName('QUANTIDADE').AsFloat := strtofloat(ListView1.Items[x].SubItems.Strings[4]);
         Prepare;
         ExecQuery;
         Transaction.CommitRetaining;
        end;
      end;
    end;
  Path := CreateDefaultINiFile;
  ArquivoIni   := TIniFile.Create(Path);
  NumNota      := IntToStr(StrToInt(NumNota) + 1);
  ControleForm := IntToStr(StrToInt(ControleForm) + 1);
  ArquivoINI.WriteString('NOTAFISCAL', 'NumNota', NumNota);
  ArquivoINI.WriteString('NOTAFISCAL', 'ControleForm', ControleForm);
  ArquivoINI.Free;

  DM1.DefSenderDtsStateChange(DM1.DstPedidos);
  Abilita;
  LimparCampos(1);
  Mostrar(CodPedidos);
  Panel16.Visible := False;
  end
 else
  begin
   panel16.Visible := false;
   Application.messagebox('Campo(s) obrigatório(s) não prenchido(s), verifique o preenchimento dos campos em negrito e tente novamente...',
     'Atenção!', mb_iconinformation + mb_ok);
  end;
end;

procedure TSaidaNFCadFrm.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

function TSaidaNFCadFrm.CamposPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label8);
 PrincipalFrm.CamposPreenchidos(Label34);
 PrincipalFrm.CamposPreenchidos(Label38);
 PrincipalFrm.CamposPreenchidos(Label2);
 PrincipalFrm.CamposPreenchidos(Label4);

 if VarIsNull(DM1.DstPedidos['NOME_DESTINATARIO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label8);
   Result := False;
  end;

 if VarIsNull(DM1.DstPedidos['CFOP']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label2);
   Result := False;
  end;

 if VarIsNull(DM1.DstPedidos['VALOR_TOTALNF']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label38);
   Result := False;
  end;

 if VarIsNull(DM1.DstPedidos['VALOR_TOTALPRODUTO']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label34);
   Result := False;
  end;

 if VarIsNull(DM1.DstPedidos['NUM_NF']) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label4);
   Result := False;
  end;
end;

procedure TSaidaNFCadFrm.CurrencyEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

 if key = #13 then
  begin
   key := #0;
   AdicionaItem
  end;

 if not (key in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ',', '.', #08, #09]) then
   key := #0;

 if key = '.' then
  key := ',';
end;

function TSaidaNFCadFrm.CamposItensPreenchidos: Boolean;
begin
 Result := True;
 PrincipalFrm.CamposPreenchidos(Label21);
 PrincipalFrm.CamposPreenchidos(Label26);
 PrincipalFrm.CamposPreenchidos(Label19);
 PrincipalFrm.CamposPreenchidos(Label20);

 if not (CurrencyEdit2.Value > 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label21);
   Result := False;
  end;

 if not (CurrencyEdit3.Value > 0) then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label26);
   Result := False;
  end;

 if cod_produto = 0 then
  begin
   PrincipalFrm.CamposNaoPreenchidos(Label19);
   PrincipalFrm.CamposNaoPreenchidos(Label20);
   Result := False;
  end;
end;

procedure TSaidaNFCadFrm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 1,0);
  end;

  if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;

procedure TSaidaNFCadFrm.DBDateEdit1Exit(Sender: TObject);
begin
 try
   DBDateEdit1.CheckValidDate;
   DBDateEdit1.Color := clwindow;
 except
   DBDateEdit1.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TSaidaNFCadFrm.DBDateEdit2Exit(Sender: TObject);
begin
 try
   DBDateEdit2.CheckValidDate;
   DBDateEdit2.Color := clwindow;
 except
   DBDateEdit2.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TSaidaNFCadFrm.DBDateEdit3Exit(Sender: TObject);
begin
 try
   DBDateEdit3.CheckValidDate;
   DBDateEdit3.Color := clwindow;
 except
   DBDateEdit3.SetFocus;
   ShowMessage('Digite uma Data valida');
  end;
end;

procedure TSaidaNFCadFrm.PageControl1Change(Sender: TObject);
begin
 Edit3.Visible := (PageControl1.ActivePageIndex = 1);
end;

procedure TSaidaNFCadFrm.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #$20 then
   BitBtn2Click(self);

 if key in ['a'..'z', 'A'..'Z'] then
  begin
   TECLA_SELECT := Key;
   BitBtn2Click(self);
   Key := #0;
  end;

 if key = #27 then
  begin
   key := #0;
   if DM1.DstPedidos.State = dsBrowse then
    Self.Close
   else
    EditCancel;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;  
end;

procedure TSaidaNFCadFrm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   key := #0;
   if Edit3.CanFocus then
    Edit3.SetFocus;
  end;

 if key = #13 then
  begin
   key := #0;
   Perform(wm_nextdlgctl, 0,0);
  end;
end;


procedure TSaidaNFCadFrm.Imprimir;
var
 linha, x: integer;
begin
 if ListView1.Items.Count < SaidaNFConfigFrm.CurrencyEdit200.asinteger then
  begin
   if application.messagebox('Imprimir Nota Fiscal?' + #13#13 +
     'Certifique-se de ter preenchido todos os campos corretamente.', 'Atenção!',
     mb_yesno + mb_iconquestion) = idYes then
    begin
     //------ Parametros para a NOTA FISCAL ------
     rdprint1.TamanhoQteLinhas := 110;  // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas := 140; // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao := s17cpp;  // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := Preview; //Enable Preview - Tela de Config
     RDprint1.Abrir;

     //------ Cabecalho da Nota ------
     // Nº da Nota
     if SaidaNFConfigFrm.CheckBox1.Checked then
       RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit16.asinteger,
                     SaidaNFConfigFrm.CurrencyEdit15.asinteger,
                     DBEdit2.text, [negrito, comp12]);
     //Saida de Nota
     if SaidaNFConfigFrm.CheckBox25.Checked then
       RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit81.asinteger,
                     SaidaNFConfigFrm.CurrencyEdit82.asinteger,
                     '[X]', [negrito]);

//      end
//     else if RadioGroup1.ItemIndex = 1 then //Entrada
//      begin
//       if SaidaNFConfigFrm.CheckBox26.Checked then
//        RDprint1.impF(SaidaNFConfigFrm.CurrencyEdit83.asinteger,SaidaNFConfigFrm.CurrencyEdit84.asinteger,'[X]', [negrito]);
//      end;

     //Natureza da Operaçao
     if SaidaNFConfigFrm.CheckBox4.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit22.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit23.asinteger,
                    Copy(Edit1.Text, 0, SaidaNFConfigFrm.CurrencyEdit21.asinteger));
     //CFOP
     if SaidaNFConfigFrm.CheckBox5.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit25.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit26.asinteger,
                    DBLookupComboBox1.Text);
     //Insc.Est.S.T.
     if SaidaNFConfigFrm.CheckBox6.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit28.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit29.asinteger,
                    DBEdit1.Text);
     //Data Emissao
     if (DBDateEdit1.Text <> '  /  /  ') and (DBDateEdit1.Text <> '  /  /    ') then
       if SaidaNFConfigFrm.CheckBox2.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit19.asinteger,
                      SaidaNFConfigFrm.CurrencyEdit20.asinteger,
                      FormatDateTime('dd/mm/yyyy', DBDateEdit1.Date));
     //Data Saida/Entrada
     if (DBDateEdit2.Text <> '  /  /  ') and (DBDateEdit2.Text <> '  /  /    ') then
       if SaidaNFConfigFrm.CheckBox52.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit150.asinteger,
                      SaidaNFConfigFrm.CurrencyEdit152.asinteger,
                      FormatDateTime('dd/mm/yyyy', DBDateEdit2.Date));
     //Hora Saida/Entrada
     if (Timetostr(DateTimePicker1.Time) <> '  :  :  ') and (Timetostr(DateTimePicker1.Time) <> '00:00:00')
        and DateTimePicker1.Checked then
       if SaidaNFConfigFrm.CheckBox63.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit161.asinteger,
                      SaidaNFConfigFrm.CurrencyEdit164.asinteger,
                      TimeToStr(DateTimePicker1.Time));

     //------ Destinatario / Remetente ------
     //Nome/Razao Soc.
     if SaidaNFConfigFrm.CheckBox7.Checked then
      RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit31.asinteger,
                   SaidaNFConfigFrm.CurrencyEdit30.asinteger,
                   Edit6.Text);
     //CNPJ/CPF
     if SaidaNFConfigFrm.CheckBox8.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit34.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit33.asinteger,
                    DBEdit4.Text);
     //Endereço
     if SaidaNFConfigFrm.CheckBox12.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit37.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit36.asinteger,
                    DBEdit5.Text);
     //Bairro/Distrito
     if SaidaNFConfigFrm.CheckBox11.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit40.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit39.asinteger,
                    DBEdit6.Text);
     //Cep
     if SaidaNFConfigFrm.CheckBox13.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit43.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit42.asinteger,
                    DBEdit7.Text);
     //Municipio
     if SaidaNFConfigFrm.CheckBox9.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit46.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit47.asinteger,
                    DBEdit8.Text);
     //Fone/Fax
     if SaidaNFConfigFrm.CheckBox10.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit49.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit50.asinteger,
                    ComboBox5.Text);
     //Vencimento
     if (DBDateEdit3.Text <> '  /  /  ') and (DBDateEdit3.Text <> '  /  /    ') then
       if SaidaNFConfigFrm.CheckBox67.Checked then
         RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit176.asinteger,
                      SaidaNFConfigFrm.CurrencyEdit177.asinteger,
                      DateToStr(DBDateEdit3.Date));
     //UF
     if SaidaNFConfigFrm.CheckBox15.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit55.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit54.asinteger,
                    ComboBox4.Text);
     //Insc.Est.
     if SaidaNFConfigFrm.CheckBox14.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit52.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit53.asinteger,
                    DBEdit11.Text);

     //------ Dados do Produto ------
     linha := SaidaNFConfigFrm.CurrencyEdit151.asinteger;
     // Linha inicial dos produtos...
     for x := 0 to (Listview1.items.Count - 1) do
      begin
       if  x = SaidaNFConfigFrm.CurrencyEdit200.asinteger then
         Break;
       //Referencia
       if SaidaNFConfigFrm.CheckBox54.Checked then
        RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit162.asinteger,
                      ListView1.Items[x].Caption, [comp20]);
       //Descricao
       if SaidaNFConfigFrm.CheckBox56.Checked then
        RDprint1.impF(linha, SaidaNFConfigFrm.CurrencyEdit165.asinteger,
                      ListView1.Items[x].SubItems.Strings[0], [comp20]);
       //Classif. Fiscal
       if SaidaNFConfigFrm.CheckBox59.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit199.asinteger,
                      ListView1.Items[x].SubItems.Strings[1], [comp20]);
       //Sit. Trib
       if SaidaNFConfigFrm.CheckBox60.Checked then
        RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit203.asinteger,
                      ListView1.Items[x].SubItems.Strings[2], [comp20]);
       //Unidade
       if SaidaNFConfigFrm.CheckBox3.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit155.asinteger,
                      ListView1.Items[x].SubItems.Strings[3], [comp20]);
       //Quantidade
       if SaidaNFConfigFrm.CheckBox55.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit189.asinteger,
                      Trim(ListView1.Items[x].SubItems.Strings[4]), [comp20]);
       //Preço de Venda
       if SaidaNFConfigFrm.CheckBox57.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit194.asinteger,
                      Trim(ListView1.Items[x].SubItems.Strings[5]), [comp20]);
       //Valor SubTotal
       if SaidaNFConfigFrm.CheckBox58.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit168.asinteger,
                      Trim(ListView1.Items[x].SubItems.Strings[6]), [comp20]);
       //ICMS
       if SaidaNFConfigFrm.CheckBox61.Checked then
        RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit207.asinteger,
                      Trim(ListView1.Items[x].SubItems.Strings[7]), [comp20]);
       //IPI
        if SaidaNFConfigFrm.CheckBox64.Checked then
         RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit175.asinteger,
                       Trim(ListView1.Items[x].SubItems.Strings[8]), [comp20]);
       //Valor IPI
       if SaidaNFConfigFrm.CheckBox66.Checked then
        RDprint1.ImpD(linha, SaidaNFConfigFrm.CurrencyEdit171.asinteger,
                      Trim(ListView1.Items[x].SubItems.Strings[9]), [comp20]);
       inc(linha);
      end;
     //Desconto
     if not (DBEdit10.Text = '') then
      if SaidaNFConfigFrm.CheckBox62.Checked then
       RDprint1.impD(linha, SaidaNFConfigFrm.CurrencyEdit186.asinteger,
                     'Desconto (-): ' + DBEdit10.Text, []);
     //------ Calculo do Imposto ------
     //Base de Calc. ICMS
     if SaidaNFConfigFrm.CheckBox27.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit86.asinteger,
                     SaidaNFConfigFrm.CurrencyEdit87.asinteger,
                     DBEdit13.Text, []);
     //Valor ICMS
     if SaidaNFConfigFrm.CheckBox28.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit14.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit88.asinteger,
                    DBEdit15.Text, []);
     //Base de Calc. ICMS Subst.
     if SaidaNFConfigFrm.CheckBox29.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit90.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit91.asinteger,
                    DBEdit18.Text, []);
     //Valor ICMS Subst.
     if SaidaNFConfigFrm.CheckBox30.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit92.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit93.asinteger,
                    DBEdit19.Text, []);
     //Valor Total Produtos
     if SaidaNFConfigFrm.CheckBox31.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit6.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit94.asinteger,
                    DBEdit17.Text, []);
     //Valor Frete
     if SaidaNFConfigFrm.CheckBox32.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit96.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit97.asinteger,
                    DBEdit29.Text, []);
     //Valor Seguro
     if SaidaNFConfigFrm.CheckBox33.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit99.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit100.asinteger,
                    DBEdit30.Text, []);
     //Outras Despesas
     if SaidaNFConfigFrm.CheckBox34.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit102.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit103.asinteger,
                    DBedit31.Text, []);
     //Valor IPI
     if SaidaNFConfigFrm.CheckBox35.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit10.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit11.asinteger,
                    DBEdit25.Text, []);
     //Valor Total Nota
     if SaidaNFConfigFrm.CheckBox36.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit105.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit106.asinteger,
                    DBEdit32.Text, []);
     //------ Transportador / Volumes Transportados ------
     //Nome/Rz. Social
     if SaidaNFConfigFrm.CheckBox37.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit9.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit107.asinteger,
                    Copy(Edit7.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit7.Value))));
     //Frete por Conta
     if SaidaNFConfigFrm.CheckBox38.Checked then
      if combobox3.ItemIndex = 1 then //Remetente
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[1]')
      else if combobox3.ItemIndex = 2 then //Destinatário
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit109.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit110.asinteger, '[2]');
     //Placa
     if SaidaNFConfigFrm.CheckBox39.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit112.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit113.asinteger,
                    Copy(DBEdit34.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit111.Value))));
     //UF
     if SaidaNFConfigFrm.CheckBox40.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit115.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit116.asinteger,
                    Combobox1.Text);
     //CNPJ/CPF
     if SaidaNFConfigFrm.CheckBox41.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit118.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit119.asinteger,
                    Copy(DBEdit35.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit117.Value))));
     //Endereco
     if SaidaNFConfigFrm.CheckBox42.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit121.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit122.asinteger,
                    Copy(DBEdit38.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit120.Value))));
     //Municipio
     if SaidaNFConfigFrm.CheckBox43.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit124.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit125.asinteger,
                    Copy(DBEdit37.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit123.Value))));
     //UF
     if SaidaNFConfigFrm.CheckBox44.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit127.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit128.asinteger,
                    ComboBox2.Text);
     //Ins. Est.
     if SaidaNFConfigFrm.CheckBox45.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit130.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit131.asinteger,
                    Copy(DBEdit36.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit129.Value))));
     //Quantidade
     if SaidaNFConfigFrm.CheckBox46.Checked then
       RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit133.asinteger,
                     SaidaNFConfigFrm.CurrencyEdit134.asinteger,
                     DBEdit39.Text, []);
     //Especie
     if SaidaNFConfigFrm.CheckBox47.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit136.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit137.asinteger,
                    Copy(DBEdit40.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit135.Value))));
     //Marca
     if SaidaNFConfigFrm.CheckBox48.Checked then
       RDprint1.imp(SaidaNFConfigFrm.CurrencyEdit139.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit140.asinteger,
                    Copy(DBEdit41.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit138.Value))));
     //Numero
     if SaidaNFConfigFrm.CheckBox49.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit142.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit143.asinteger,
                    DBEdit42.Text, []);
     //Peso Bruto
     if SaidaNFConfigFrm.CheckBox50.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit145.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit146.asinteger,
                    DBEdit43.Text, []);
     //Peso Liquido
     if SaidaNFConfigFrm.CheckBox51.Checked then
      RDprint1.impD(SaidaNFConfigFrm.CurrencyEdit148.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit149.asinteger,
                    DBEdit44.Text, []);

     //------ Dados Adicionais ------
     linha := SaidaNFConfigFrm.CurrencyEdit157.asinteger;
     for x := 0 to SaidaNFConfigFrm.CurrencyEdit159.asinteger do
      begin
       //Dados Adicionais
       RDprint1.imp(linha, SaidaNFConfigFrm.CurrencyEdit158.asinteger,
                    DBMemo1.Lines.Strings[x]);
       inc(linha);
      end;
     //---------Nº de Controle do Formulário

     //Desabilitado, pois a nota já vem com o Nº de Controle impresso
     //Nº Controle do Formulário
//     if SaidaNFConfigFrm.CheckBox65.Checked then
//      RDprint1.ImpD(SaidaNFConfigFrm.CurrencyEdit173.asinteger, SaidaNFConfigFrm.CurrencyEdit174.asinteger, copy(edit4.Text, 0, StrToInt(FloatToStr(SaidaNFConfigFrm.CurrencyEdit172.Value))), [negrito, comp12]);
     // Nº da Nota (Notas com Rodapé)
     if SaidaNFConfigFrm.CheckBox68.Checked then
      RDprint1.ImpF(SaidaNFConfigFrm.CurrencyEdit181.asinteger,
                    SaidaNFConfigFrm.CurrencyEdit180.asinteger,
                    DBEdit2.text, [negrito, comp12]);
     RDprint1.Fechar;

     if Application.MessageBox('A impressão foi feita corretamente?', 'Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
      begin
       if DM1.DstPedidos['IMP_OK'] = 0 then
        begin
         with SQLImpressao do
          begin
           Close;
           SQL.Clear;
           SQL.Add('update PEDIDOS set IMP_OK = 1 where COD_PEDIDOS = ' + IntToStr(DM1.DstPedidos['COD_PEDIDOS']));
           Prepare;
           ExecQuery;
           Transaction.CommitRetaining;
          end;
        end;

       if DM1.CanCommit then
        begin
         DM1.GetRecPosIBArray(IBArray);
         SQLImpressao.Transaction.Commit;
         DM1.OpenIBArray(IBArray);
         DM1.SetRecPosIBArray(IBArray);
        end
       else
        SQLImpressao.Transaction.CommitRetaining;
      end;
    end;
  end
 else
   application.MessageBox('Pedido contém mais de 23 items, o que é o máximo suportado.' +
     #13 + 'Volte à tela de Nota Fiscal e selecione no máximo 23 items.',
     'Atenção!', mb_iconerror + Mb_ok);
end;


procedure TSaidaNFCadFrm.LoadDefaultIniVars;
var
 Path : String;
 ArquivoIni: TIniFile;
begin
//Leitura do Arquivo INI
 Path := CreateDefaultIniFile;
 ArquivoIni   := TIniFile.Create(Path);
 NumNota      := FormatCurr('000000', ArquivoIni.ReadInteger('NOTAFISCAL', 'NumNota', 1));
 ControleForm := FormatCurr('000000', ArquivoIni.ReadInteger('NOTAFISCAL', 'ControleForm', 1));
 Preview      := ArquivoIni.ReadBool('NOTAFISCAL', 'EnablePreview', True);
 Arquivoini.Free;

 //Campos do Grupo Imposto

 DBEdit13.MaxLength := SaidaNFConfigFrm.currencyedit85.asinteger;               //Base_ICMS
 DBEdit15.MaxLength := SaidaNFConfigFrm.currencyedit13.asinteger;               //Valor_ICMS
 DBEdit18.MaxLength := SaidaNFConfigFrm.currencyedit89.asinteger;               //Base_ICMS_Subst
 DBEdit19.MaxLength := SaidaNFConfigFrm.currencyedit8.asinteger;                //Valor_ICMS_Subst
 DBEdit17.MaxLength := SaidaNFConfigFrm.currencyedit4.asinteger;                //Valor_Produtos
 DBEdit29.MaxLength := SaidaNFConfigFrm.currencyedit95.asinteger;               //Valor_Frete
 DBEdit30.MaxLength := SaidaNFConfigFrm.currencyedit98.asinteger;               //Valor_Seguro
 DBEdit31.MaxLength := SaidaNFConfigFrm.currencyedit101.asinteger;              //Outras_Despesas
 DBEdit25.MaxLength := SaidaNFConfigFrm.currencyedit5.asinteger;                //Valor_IPI
 DBEdit32.MaxLength := SaidaNFConfigFrm.currencyedit104.asinteger;              //Valor_Nota

 //Campos do Grupo Transportadora
 Edit7.MaxLength    := SaidaNFConfigFrm.currencyedit7.asinteger;                //Nome_Rz._Social
 DBEdit34.MaxLength := SaidaNFConfigFrm.currencyedit111.asinteger;              //Placa_Veiculo
 DBEdit35.MaxLength := SaidaNFConfigFrm.currencyedit117.asinteger;              //CNPJ
 DBEdit38.MaxLength := SaidaNFConfigFrm.currencyedit120.asinteger;              //Endereco
 DBEdit37.MaxLength := SaidaNFConfigFrm.currencyedit123.asinteger;              //Municipio
 DBEdit36.MaxLength := SaidaNFConfigFrm.currencyedit129.asinteger;              //Insc.Est
 DBEdit39.MaxLength := SaidaNFConfigFrm.currencyedit132.asinteger;              //Qnt
 DBEdit40.MaxLength := SaidaNFConfigFrm.currencyedit135.asinteger;              //Especie
 DBEdit41.MaxLength := SaidaNFConfigFrm.currencyedit138.asinteger;              //Marca
 DBEdit42.MaxLength := SaidaNFConfigFrm.currencyedit141.asinteger;              //Numero
 DBEdit43.MaxLength := SaidaNFConfigFrm.currencyedit144.asinteger;              //peso_bruto
 DBEdit44.MaxLength := SaidaNFConfigFrm.currencyedit147.asinteger;              //peso_liquido

 //Campos do Grupo Cliente
 Edit6.MaxLength    := SaidaNFConfigFrm.currencyedit32.asinteger;               //rz_social
 DBEdit4.MaxLength  := SaidaNFConfigFrm.currencyedit35.asinteger;               //cnpj
 DBEdit5.MaxLength  := SaidaNFConfigFrm.currencyedit38.asinteger;               //endereco
 DBEdit6.MaxLength  := SaidaNFConfigFrm.currencyedit41.asinteger;               //bairro
 DBEdit7.MaxLength  := SaidaNFConfigFrm.currencyedit44.asinteger;               //cep
 DBEdit8.MaxLength  := SaidaNFConfigFrm.currencyedit45.asinteger;               //municipio
 ComboBox5.MaxLength  := SaidaNFConfigFrm.currencyedit48.asinteger;               //fone
 DBEdit11.MaxLength := SaidaNFConfigFrm.currencyedit51.asinteger;               //insc_est

 //Outros Campos
 Edit1.MaxLength    := SaidaNFConfigFrm.currencyedit21.asinteger;               //Natureza OP
 DBEdit2.MaxLength  := SaidaNFConfigFrm.currencyedit17.asinteger;               //num_nf
 DBEdit1.MaxLength  := SaidaNFConfigFrm.currencyedit27.asinteger;               //insc_est_s_trib
 DBEdit10.MaxLength := SaidaNFConfigFrm.currencyedit12.asinteger;               //desconto
 DBEdit12.MaxLength := SaidaNFConfigFrm.currencyedit172.asinteger;              //num_controle

 HabilitaCampos; //---->>  Habilita / Desabilita Campos
end;

procedure TSaidaNFCadFrm.Mostrar(CodigoNota: Integer);
begin
 if DM1.DstPedidos.Locate('COD_PEDIDOS', CodigoNota, []) then
  begin
   Nota_Cancelada := (DM1.DstPedidos['SITUACAO_NF'] = 'S');

   if not VarIsNull(DM1.DstPedidos['TRANSP_UF_VEICULO']) then
    ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(DM1.DstPedidos['TRANSP_UF_VEICULO']);
   if not VarIsNull(DM1.DstPedidos['TRANSP_UF']) then
    ComboBox2.ItemIndex := ComboBox2.Items.IndexOf(DM1.DstPedidos['TRANSP_UF']);
   if not VarIsNull(DM1.DstPedidos['TRANSP_FRETE_CONTA']) then
    ComboBox3.ItemIndex := ComboBox3.Items.IndexOf(DM1.DstPedidos['TRANSP_FRETE_CONTA']);
   if not VarIsNull(DM1.DstPedidos['UF_DESTINATARIO']) then
    ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(DM1.DstPedidos['UF_DESTINATARIO']);
   if not VarIsNull(DM1.DstPedidos['NATUREZA_OP']) then
    Edit1.Text          := DM1.DstPedidos['NATUREZA_OP'];
   if not VarIsNull(DM1.DstPedidos['NOME_DESTINATARIO']) then
    Edit6.Text          := DM1.DstPedidos['NOME_DESTINATARIO'];
   if not VarIsNull(DM1.DstPedidos['TRANSP_NOME']) then
    Edit7.Text          := DM1.DstPedidos['TRANSP_NOME'];
   QryContato.Close;
   QryContato.UnPrepare;
   QryContato.Params[0].AsInteger := DM1.DstPedidos['COD_CLI_DESTINATARIO'];
   QryContato.Prepare;
   QryContato.Open;
   CarregaContatos;
   if not VarIsNull(DM1.DstPedidos['FONE_DESTINATARIO']) then
    begin
     if not (ComboBox5.Items.IndexOf(DM1.DstPedidos['FONE_DESTINATARIO']) = -1) then
      ComboBox5.ItemIndex := ComboBox5.Items.IndexOf(DM1.DstPedidos['FONE_DESTINATARIO'])
     else
      begin
       ComboBox5.Text := DM1.DstPedidos['FONE_DESTINATARIO'];
       ComboBox5.Items.Add(DM1.DstPedidos.Fields.FieldByName('FONE_DESTINATARIO').AsString);
      end;
    end;

   if not VarIsNull(DM1.DstPedidos['DATAHORA_SAIDA']) then
    DateTimePicker1.Time:= DM1.DstPedidos.FieldByName('DATAHORA_SAIDA').AsDateTime
   else
    DateTimePicker1.Checked := False;

   Panel14.Visible := Nota_Cancelada;

   with QryPedidos_Itens do
    begin
     Close;
     UnPrepare;
     SQL.Clear;
     SQL.Add('select * from PEDIDOS_ITENS where COD_PEDIDOS = :Cod_Pedidos');
     Params.ParamByName('Cod_Pedidos').AsInteger := CodigoNota;
     Prepare;
     Open;
    end;

   QryPedidos_Itens.First;
   ListView1.Items.Clear;

   while not QryPedidos_Itens.Eof do
    begin
     Listview1.Items.Insert(0);
     if not VarIsNull(QryPedidos_Itens['REF_PRODUTOS']) then
      Listview1.Items.Item[0].Caption := QryPedidos_Itens['REF_PRODUTOS']
     else
      Listview1.Items.Item[0].Caption := '';
     if not VarIsNull(QryPedidos_Itens['PRODUTO']) then
      Listview1.Items.Item[0].SubItems.Insert(0, QryPedidos_Itens['PRODUTO'])
     else
      Listview1.Items.Item[0].SubItems.Insert(0, '');
     if not VarIsNull(QryPedidos_Itens['CODIGO_NCM']) then
      Listview1.Items.Item[0].SubItems.Insert(1, QryPedidos_Itens['CODIGO_NCM'])
     else
      Listview1.Items.Item[0].SubItems.Insert(1, '');
     if not VarIsNull(QryPedidos_Itens['S_TRIB']) then
      Listview1.Items.Item[0].SubItems.Insert(2, QryPedidos_Itens['S_TRIB'])
     else
      Listview1.Items.Item[0].SubItems.Insert(2, '');
     if not VarIsNull(QryPedidos_Itens['APR_UND']) then
      Listview1.Items.Item[0].SubItems.Insert(3, QryPedidos_Itens['APR_UND'])
     else
      Listview1.Items.Item[0].SubItems.Insert(3, '');
     if not VarIsNull(QryPedidos_Itens['QUANTIDADE']) then
      Listview1.Items.Item[0].SubItems.Insert(4, FormatCurr('0.00', QryPedidos_Itens['QUANTIDADE']))
     else
      Listview1.Items.Item[0].SubItems.Insert(4, '');
     if not VarIsNull(QryPedidos_Itens['PRC_VENDA']) then
      Listview1.Items.Item[0].SubItems.Insert(5, FormatCurr('0.000', QryPedidos_Itens['PRC_VENDA']))
     else
      Listview1.Items.Item[0].SubItems.Insert(5, '');
     if not VarIsNull(QryPedidos_Itens['SUBTOTAL']) then
      Listview1.Items.Item[0].SubItems.Insert(6, FormatCurr('0.00', QryPedidos_Itens['SUBTOTAL']))
     else
      Listview1.Items.Item[0].SubItems.Insert(6, '');
     if not VarIsNull(QryPedidos_Itens['ALIQUOTA_ICMS']) then
      Listview1.Items.Item[0].SubItems.Insert(7, FormatCurr('0', QryPedidos_Itens['ALIQUOTA_ICMS']))
     else
      Listview1.Items.Item[0].SubItems.Insert(7, '');
     if not VarIsNull(QryPedidos_Itens['ALIQUOTA_IPI']) then
      Listview1.Items.Item[0].SubItems.Insert(8, FormatCurr('0', QryPedidos_Itens['ALIQUOTA_IPI']))
     else
      Listview1.Items.Item[0].SubItems.Insert(8, '');
     if not VarIsNull(QryPedidos_Itens['VALOR_IPI']) then
      Listview1.Items.Item[0].SubItems.Insert(9, FormatCurr('0.00', QryPedidos_Itens['VALOR_IPI']))
     else
      Listview1.Items.Item[0].SubItems.Insert(9, '');
     if not VarIsNull(QryPedidos_Itens['COD_PRODUTOS']) then
      Listview1.Items.Item[0].SubItems.Insert(10, IntToStr(QryPedidos_Itens['COD_PRODUTOS']))
     else
      Listview1.Items.Item[0].SubItems.Insert(10, '');
     QryPedidos_Itens.Next
    end;
  end;

 DM1.DefSenderDtsStateChange(DM1.DstPedidos);
end;

procedure TSaidaNFCadFrm.ListView1DblClick(Sender: TObject);
begin
 if ((listview1.Items.Count > 0) and  (not listview1.ItemIndex < 0)) then
  if Application.MessageBox(PChar('Deseja alterar as informações deste item (Ref. ' +
              Listview1.Items.Item[listview1.ItemIndex].Caption +') ?'), 'Atenção!', MB_YESNO) = idYes then
   begin
    PageControl1.ActivePageIndex := 1;
    PageControl1Change(Self);

    Cod_Produto         := StrtoInt(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[10]);
    edit2.Text          := Listview1.Items.Item[listview1.ItemIndex].Caption;                            //Referência
    edit3.Text          := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[0];                //Produto
    edit4.Text          := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[1];                //CT
    edit5.Text          := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[2];                //Sit. Trib
    edit10.Text         := Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[3];                //Unidade

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[4] = '') then
     CurrencyEdit1.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[4])    //Quantidade
    else
     CurrencyEdit1.Value := 0;

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[5] = '') then
     CurrencyEdit2.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[5])    //Valor Unitario
    else
     CurrencyEdit2.Value := 0;

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[6] = '') then
     begin
      CurrencyEdit3.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[6]);    //Sub-Total
     end
    else
     CurrencyEdit3.Value := 0;

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[7] = '0') then
     begin
      CurrencyEdit4.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[7]);    //ICMS
     end
    else
     CurrencyEdit4.Value := 0;

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[8] = '0') then
     begin
      CurrencyEdit5.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[8]);    //IPI
     end
    else
     CurrencyEdit5.Value := 0;

    if not (Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[9] = '') then
     begin
      CurrencyEdit6.Value := StrToFloat(Listview1.Items.Item[listview1.ItemIndex].SubItems.Strings[9]);    //Valor IPI
     end
    else
     CurrencyEdit6.Value := 0;

    ListView1.Items.Item[listview1.ItemIndex].Delete;
    Resumo;
   end;
end;

procedure TSaidaNFCadFrm.BitBtn1Click(Sender: TObject);
begin
 //seta procedure de acao para botao de OK de SelectFrm
 SelectFrm.Caption := 'Selecione o Produto';
 SelectFrm.SpeedButton1.OnClick := Seleciona_Produto;

 with SelectFrm do
  begin
   IBQuery1.Close;
   IBQuery1.UnPrepare;
   IBQuery1.sql.Clear;
   IBQuery1.sql.Add('SELECT COD_PRODUTOS, NOME, REFERENCIA, OBS, CODIGO_NCM, S_TRIB, APR_UND, PRC_VENDA, ALIQUOTA_ICMS, ALIQUOTA_IPI FROM PRODUTOS');
   IBQuery1.sql.add('where COD_PRODUTOS > 0 ORDER BY NOME');
   IBQuery1.Prepare;
   IBQuery1.Open;
  end;
 SelectFrm.ShowModal;
end;

procedure TSaidaNFCadFrm.Seleciona_Produto(Sender: TObject);
begin
 Edit3.Clear;
 Edit2.Onchange := nil;
 Edit3.OnChange := nil;
 OBS_PRODUTO    := '';

 if not varisnull(SelectFrm.IBQuery1['NOME']) then
  begin
   cod_produto := SelectFrm.IBQuery1['cod_produtos'];
   Edit3.Text := SelectFrm.IBQuery1['NOME'];
   if not varisnull(SelectFrm.IBQuery1['REFERENCIA']) then
    Edit2.Text := SelectFrm.IBQuery1['REFERENCIA'];
   if not varisnull(SelectFrm.IBQuery1['CODIGO_NCM']) then
    Edit4.Text := SelectFrm.IBQuery1['CODIGO_NCM'];
   if not varisnull(SelectFrm.IBQuery1['S_TRIB']) then
    Edit5.Text := SelectFrm.IBQuery1['S_TRIB'];
   if not varisnull(SelectFrm.IBQuery1['APR_UND']) then
    Edit10.Text := SelectFrm.IBQuery1['APR_UND'];
   if not varisnull(SelectFrm.IBQuery1['PRC_VENDA']) then
    CurrencyEdit2.Value := SelectFrm.IBQuery1['PRC_VENDA'];
   if not varisnull(SelectFrm.IBQuery1['ALIQUOTA_ICMS']) then
    CurrencyEdit2.Value := SelectFrm.IBQuery1['ALIQUOTA_ICMS'];
   if not varisnull(SelectFrm.IBQuery1['ALIQUOTA_IPI']) then
    CurrencyEdit2.Value := SelectFrm.IBQuery1['ALIQUOTA_IPI'];
   if not varisnull(SelectFrm.IBQuery1['OBS']) then
    OBS_PRODUTO := SelectFrm.IBQuery1['OBS'];
  end;
 SelectFrm.Close;

 Edit2.Onchange := Edit2Change;
 Edit3.OnChange := Edit3Change;
end;

procedure TSaidaNFCadFrm.HabilitaCampos;
begin
 //------------------- Habilita / Desabilita Campos ---------------

 //-------------- Cabeçalho da Nota Fiscal ----------------
 //Natureza Operação
 if SaidaNFConfigFrm.CheckBox4.Checked then
  begin
   label1.Enabled := True;
   Edit1.Enabled  := True;
  end
 else
  begin
   label1.Enabled := False;
   Edit1.Enabled  := False;
  end;

 //CFOP
 if SaidaNFConfigFrm.CheckBox5.Checked then
  begin
   DBLookupComboBox1.Enabled := True;
   label2.Enabled := True;
  end
 else
  begin
   DBLookupComboBox1.Enabled := False;
   label2.Enabled := False;
  end;

 //Insc. Est. Subst. Tributario
 if SaidaNFConfigFrm.CheckBox6.Checked then
  begin
   DBEdit1.Enabled := True;
   label3.Enabled := True;
  end
 else
  begin
   DBEdit1.Enabled := False;
   label3.Enabled := False;
  end;

 //Nº da Nota Fiscal
 if SaidaNFConfigFrm.CheckBox1.Checked then
  begin
   DBEdit2.Enabled := True;
   label4.Enabled := True;
  end
 else
  begin
   DBEdit2.Enabled := False;
   label4.Enabled := False;
  end;

 //Nº Controle do Formulário
 if SaidaNFConfigFrm.CheckBox65.Checked then
  begin
   DBEdit12.Enabled := True;
   label17.Enabled := True;
  end
 else
  begin
   DBEdit12.Enabled := False;
   label17.Enabled := False;
  end;

 //Data Emissão
 if SaidaNFConfigFrm.CheckBox2.Checked then
  begin
   DBDateEdit1.Enabled := True;
   label5.Enabled := True;
  end
 else
  begin
   DBDateEdit1.Enabled := False;
   label5.Enabled := False;
  end;

 //Data Entrada/Saida
 if SaidaNFConfigFrm.CheckBox52.Checked then
  begin
   DBDateEdit2.Enabled := True;
   label6.Enabled := True;
  end
 else
  begin
   DBDateEdit2.Enabled := False;
   label6.Enabled := False;
  end;

 //Hora Saida
 if SaidaNFConfigFrm.CheckBox63.Checked then
  begin
   DateTimePicker1.Enabled := True;
   label7.Enabled := True;
  end
 else
  begin
   DateTimePicker1.Enabled := False;
   label7.Enabled := False;
  end;

 //------------------ Dados do Comprador ---------------
 //Nome / Razão Social
 if SaidaNFConfigFrm.CheckBox7.Checked then
  begin
   Edit6.Enabled := True;
   label8.Enabled := True;
  end
 else
  begin
   Edit6.Enabled := False;
   label8.Enabled := False;
  end;

 //Bairro
 if SaidaNFConfigFrm.CheckBox11.Checked then
  begin
   DBEdit6.Enabled := True;
   label11.Enabled := True;
  end
 else
  begin
   DBEdit6.Enabled := False;
   label11.Enabled := False;
  end;

 //CPF / CNPJ
 if SaidaNFConfigFrm.CheckBox8.Checked then
  begin
   DBEdit4.Enabled := True;
   label9.Enabled := True;
  end
 else
  begin
   DBEdit4.Enabled := False;
   label9.Enabled := False;
  end;

 //Endereço
 if SaidaNFConfigFrm.CheckBox12.Checked then
  begin
   DBEdit5.Enabled := True;
   label10.Enabled := True;
  end
 else
  begin
   DBEdit5.Enabled := False;
   label10.Enabled := False;
  end;

 //Fone/Fax
 if SaidaNFConfigFrm.CheckBox10.Checked then
  begin
   ComboBox5.Enabled := True;
   label14.Enabled := True;
  end
 else
  begin
   ComboBox5.Enabled := False;
   label14.Enabled := False;
  end;

 //Vencimento
 if SaidaNFConfigFrm.CheckBox67.Checked then
  begin
   Label16.Enabled := True;
   DBDateEdit3.Enabled := True;
  end
 else
  begin
   Label16.Enabled := False;
   DBDateEdit3.Enabled := False;
  end;

 //CEP
 if SaidaNFConfigFrm.CheckBox13.Checked then
  begin
   DBEdit7.Enabled := True;
   label12.Enabled := True;
  end
 else
  begin
   DBEdit7.Enabled := False;
   label12.Enabled := False;
  end;

 //Município
 if SaidaNFConfigFrm.CheckBox9.Checked then
  begin
   DBEdit8.Enabled := True;
   label13.Enabled := True;
  end
 else
  begin
   DBEdit8.Enabled := False;
   label13.Enabled := False;
  end;

 //UF
 if SaidaNFConfigFrm.CheckBox15.Checked then
  begin
   ComboBox4.Enabled := True;
   label15.Enabled := True;
  end
 else
  begin
   ComboBox4.Enabled := False;
   label15.Enabled := False;
  end;

 //Insc. Estadual
 if SaidaNFConfigFrm.CheckBox14.Checked then
  begin
   DBEdit11.Enabled := True;
   label18.Enabled := True;
  end
 else
  begin
   DBEdit11.Enabled := False;
   label18.Enabled := False;
  end;

 //-------------- Cálculo de Imposto ---------------
 //Base Cálculo ICMS
 if SaidaNFConfigFrm.CheckBox27.Checked then
  begin
   DBEdit13.Enabled := True;
   label37.Enabled := True;
  end
 else
  begin
   DBEdit13.Enabled := False;
   label37.Enabled := False;
  end;

 //Valor ICMS
 if SaidaNFConfigFrm.CheckBox28.Checked then
  begin
   DBEdit15.Enabled := True;
   label47.Enabled := True;
  end
 else
  begin
   DBEdit15.Enabled := False;
   label47.Enabled := False;
  end;

 //Base ICMS Substituto
 if SaidaNFConfigFrm.CheckBox29.Checked then
  begin
   DBEdit18.Enabled := True;
   label36.Enabled := True;
  end
 else
  begin
   DBEdit18.Enabled := False;
   label36.Enabled := False;
  end;

 //Valor ICMS Substituto
 if SaidaNFConfigFrm.CheckBox30.Checked then
  begin
   DBEdit19.Enabled := True;
   label35.Enabled := True;
  end
 else
  begin
   DBEdit19.Enabled := False;
   label35.Enabled := False;
  end;

 //Valor Total Produtos
 if SaidaNFConfigFrm.CheckBox31.Checked then
  begin
   DBEdit17.Enabled := True;
   label34.Enabled := True;
  end
 else
  begin
   DBEdit17.Enabled := False;
   label34.Enabled := False;
  end;

 //Valor Frete
 if SaidaNFConfigFrm.CheckBox32.Checked then
  begin
   DBEdit29.Enabled := True;
   label30.Enabled := True;
  end
 else
  begin
   DBEdit29.Enabled := False;
   label30.Enabled := False;
  end;

 //Valor Seguro
 if SaidaNFConfigFrm.CheckBox33.Checked then
  begin
   DBEdit30.Enabled := True;
   label31.Enabled := True;
  end
 else
  begin
   DBEdit30.Enabled := False;
   label31.Enabled := False;
  end;

 //Outras Despesas
 if SaidaNFConfigFrm.CheckBox34.Checked then
  begin
   DBEdit31.Enabled := True;
   label32.Enabled := True;
  end
 else
  begin
   DBEdit31.Enabled := False;
   label32.Enabled := False;
  end;

 //Valor Total IPI
 if SaidaNFConfigFrm.CheckBox35.Checked then
  begin
   DBEdit25.Enabled := True;
   label63.Enabled := True;
  end
 else
  begin
   DBEdit25.Enabled := False;
   label63.Enabled := False;
  end;

 //Valor Total Nota Fiscal
 if SaidaNFConfigFrm.CheckBox36.Checked then
  begin
   DBEdit32.Enabled := True;
   label38.Enabled := True;
  end
 else
  begin
   DBEdit32.Enabled := False;
   label38.Enabled := False;
  end;

 //----------------- Transportadora ------------------
 //Nome / Razão Social
 if SaidaNFConfigFrm.CheckBox37.Checked then
  begin
   Edit7.Enabled := True;
   label39.Enabled := True;
  end
 else
  begin
   Edit7.Enabled := False;
   label39.Enabled := False;
  end;

 //Frete por Conta
 if SaidaNFConfigFrm.CheckBox38.Checked then
  begin
   combobox3.Enabled := True;
   label49.Enabled := True;
  end
 else
  begin
   combobox3.Enabled := False;
   label49.Enabled := False;
  end;

 //Placa Veículo
 if SaidaNFConfigFrm.CheckBox39.Checked then
  begin
   DBEdit34.Enabled := True;
   label48.Enabled := True;
  end
 else
  begin
   DBEdit34.Enabled := False;
   label48.Enabled := False;
  end;

 //UF Veículo
 if SaidaNFConfigFrm.CheckBox40.Checked then
  begin
   combobox1.Enabled := True;
   label44.Enabled := True;
  end
 else
  begin
   combobox1.Enabled := False;
   label44.Enabled := False;
  end;

 //CNPJ/CPF
 if SaidaNFConfigFrm.CheckBox41.Checked then
  begin
   DBEdit35.Enabled := True;
   label46.Enabled := True;
  end
 else
  begin
   DBEdit35.Enabled := False;
   label46.Enabled := False;
  end;

 //Endereço
 if SaidaNFConfigFrm.CheckBox42.Checked then
  begin
   DBEdit38.Enabled := True;
   label42.Enabled := True;
  end
 else
  begin
   DBEdit38.Enabled := False;
   label42.Enabled := False;
  end;

 //Município
 if SaidaNFConfigFrm.CheckBox43.Checked then
  begin
   DBEdit37.Enabled := True;
   label41.Enabled := True;
  end
 else
  begin
   DBEdit37.Enabled := False;
   label41.Enabled := False;
  end;

 //UF Município
 if SaidaNFConfigFrm.CheckBox44.Checked then
  begin
   ComboBox2.Enabled := True;
   label43.Enabled := True;
  end
 else
  begin
   ComboBox2.Enabled := False;
   label43.Enabled := False;
  end;

 //Inscrição Estadual
 if SaidaNFConfigFrm.CheckBox45.Checked then
  begin
   DBEdit36.Enabled := True;
   label40.Enabled := True;
  end
 else
  begin
   DBEdit36.Enabled := False;
   label40.Enabled := False;
  end;

 //Quantidade
 if SaidaNFConfigFrm.CheckBox46.Checked then
  begin
   DBEdit39.Enabled := True;
   label50.Enabled := True;
  end
 else
  begin
   DBEdit39.Enabled := False;
   label50.Enabled := False;
  end;

 //Espécie
 if SaidaNFConfigFrm.CheckBox47.Checked then
  begin
   DBEdit40.Enabled := True;
   label51.Enabled := True;
  end
 else
  begin
   DBEdit40.Enabled := False;
   label51.Enabled := False;
  end;

 //Marca
 if SaidaNFConfigFrm.CheckBox48.Checked then
  begin
   DBEdit41.Enabled := True;
   label52.Enabled := True;
  end
 else
  begin
   DBEdit41.Enabled := False;
   label52.Enabled := False;
  end;

 //Número
 if SaidaNFConfigFrm.CheckBox49.Checked then
  begin
   DBEdit42.Enabled := True;
   label45.Enabled := True;
  end
 else
  begin
   DBEdit42.Enabled := False;
   label45.Enabled := False;
  end;

 //Peso Bruto
 if SaidaNFConfigFrm.CheckBox50.Checked then
  begin
   DBEdit43.Enabled := True;
   label53.Enabled := True;
  end
 else
  begin
   DBEdit43.Enabled := False;
   label53.Enabled := False;
  end;

 //Peso Líquido
 if SaidaNFConfigFrm.CheckBox51.Checked then
  begin
   DBEdit44.Enabled := True;
   label64.Enabled := True;
  end
 else
  begin
   DBEdit44.Enabled := False;
   label64.Enabled := False;
  end;

 //Desconto
 if SaidaNFConfigFrm.CheckBox62.Checked then
  begin
   DBEdit10.Enabled := True;
   label65.Enabled := True;
  end
 else
  begin
   DBEdit10.Enabled := False;
   label65.Enabled := False;
  end;

 //---------------- Fim da Nota Fiscal ------------------
 //Dados Adicionais
 if SaidaNFConfigFrm.CheckBox53.Checked then
  begin
   DBMemo1.Enabled := True;
  end
 else
  begin
   DBMemo1.Enabled := False;
  end;
end;

procedure TSaidaNFCadFrm.CarregaContatos;
begin
 ComboBox5.Items.Clear;
 QryContato.First;
 while not QryContato.Eof do
  begin
   ComboBox5.Items.Add(QryContato.Fields.FieldByName('Valor').AsString);
   QryContato.Next;
  end;
end;

procedure TSaidaNFCadFrm.Resumo;
//Varre o ListView fazendo o somatório das variáveis gerais
var i : integer;
    Sub_Total, Total_Produtos, Base_ICMS, Valor_ICMS, Base_IPI, Valor_IPI, Al_ICMS, Al_IPI: Double;
begin
 Sub_Total      := 0;

 Base_ICMS      := 0;
 Valor_ICMS     := 0;

 Base_IPI       := 0;
 Valor_IPI      := 0;

for i := 0 to  Listview1.Items.Count - 1 do
 begin
  Al_IPI  := 0;
  Al_ICMS := 0;

  try
   Al_IPI  := StrToFloat(Listview1.Items.Item[i].SubItems.Strings[8]);         //Al.IPI
  except
  {}
  end;

  try
   Al_ICMS := StrToFloat(Listview1.Items.Item[i].SubItems.Strings[7]);         //Al.ICMS
  except
  {}
  end;

  if Al_ICMS > 0 then           //Al.ICMS > 0
   begin
    try
     DM1.DstPedidos.FieldByName('ALIQUOTA_ICMS').AsFloat   := Al_ICMS;
     Base_ICMS := Base_ICMS + StrToFloat(ListView1.Items.Item[i].SubItems.Strings[6]);  //Valor_CMS := Valor_ICMS +  Sub_Total * Al_ICMS(%)
     Valor_ICMS := Valor_ICMS + (StrToFloat(Listview1.Items.Item[i].SubItems.Strings[6]) * (Al_ICMS/100));
    except
    {}
    end;
   end;

  if Al_IPI > 0 then           //Al.IPI > 0
   begin
    try
     DM1.DstPedidos.FieldByName('ALIQUOTA_IPI').AsFloat    := Al_IPI;
     Base_IPI := Base_IPI + StrToFloat(ListView1.Items.Item[i].SubItems.Strings[6]); //Valor_IPI := Valor_IPI +  Sub_Total * Al_IPI(%)
     Valor_IPI  := Valor_IPI +  (StrToFloat(Listview1.Items.Item[i].SubItems.Strings[6]) * (Al_IPI/100));
    except
    {}
    end;
   end;

  Sub_Total := Sub_Total + StrToFloat(Listview1.Items.Item[i].SubItems.Strings[6]);  //Valor Total
 end;

 if (DM1.DstPedidos.State in [dsedit, dsinsert]) then
  begin
   Total_Produtos := Sub_Total +
                     Valor_IPI +
                     DM1.DstPedidos.FieldByName('VALOR_FRETE').AsFloat +
                     DM1.DstPedidos.FieldByName('VALOR_SEGURO').AsFloat +
                     DM1.DstPedidos.FieldByName('OUTRAS_DESPESAS').AsFloat -
                     DM1.DstPedidos.FieldByName('DESCONTO').AsFloat;


   DM1.DstPedidos.FieldByName('BASE_ICMS').AsFloat          := Base_ICMS;
   DM1.DstPedidos.FieldByName('BASE_IPI').AsFloat           := Base_IPI;
   DM1.DstPedidos.FieldByName('VALOR_ICMS').AsFloat         := Valor_ICMS;
   DM1.DstPedidos.FieldByName('VALOR_IPI').AsFloat          := Valor_IPI;
   DM1.DstPedidos.FieldByName('VALOR_TOTALPRODUTO').AsFloat := Sub_Total;

   DM1.DstPedidos.FieldByName('VALOR_TOTALNF').AsFloat      := Total_Produtos;
  end;
end;

procedure TSaidaNFCadFrm.ExcluiItem(Referencia: string);
var index : integer;
begin
 index := LocalizaItem(Referencia);
 if Application.MessageBox(PChar('Deseja Realmente excluir esse Produto  (Ref. ' + Referencia + ') da sua Lista?'),
       'Atenção!', MB_ICONQUESTION + MB_YESNO) = idYes then
  begin
   ListView1.Items.Item[index].Delete;
   Resumo;
   edit2.Clear;
   Edit2.SetFocus;
  end;
end;

procedure TSaidaNFCadFrm.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((listview1.Items.Count > 0) and  (not listview1.ItemIndex < 0)) then
 if Key = vk_Delete then
  ExcluiItem(Listview1.Items.Item[listview1.ItemIndex].Caption);
end;
                         
procedure TSaidaNFCadFrm.DBEdit29Exit(Sender: TObject);
begin
Tedit(Sender).color := clwindow;
Resumo;
end;

end.
