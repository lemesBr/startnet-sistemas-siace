unit ConsProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB,  XDBGrids, DBCtrls,
  Mask, ACBrBase, ACBrLCB, RxLookup,  BaseGrid,
  frxCtrls, sMaskEdit, sCustomComboEdit, sTooledit, sPanel, sDBNavigator,
  Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  sBitBtn, AdvUtil, AdvObj, AdvGrid, DBAdvGrid, AdvGlowButton;

type
  TFormConsProdutos = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    cbxpesquisa: TComboBox;
    RxLabel2: TRxLabel;
    XDBGrid1: TXDBGrid;
    Panel3: TPanel;
    RxLabel27: TRxLabel;
    RxLabel38: TRxLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    RxLabel3: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel5: TRxLabel;
    suiDBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RxLabel36: TRxLabel;
    RxLabel37: TRxLabel;
    DBMemo3: TDBMemo;
    RxLabel4: TRxLabel;
    DBMemo4: TDBMemo;
    RxLabel6: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel9: TRxLabel;
    DBText1: TDBText;
    Edit2: TEdit;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    RxLabel7: TRxLabel;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    lUltimaLeitura: TLabel;
    ACBrLCB4: TACBrLCB;
    suiButton2: TAdvGlowButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RxLabel11: TRxLabel;
    DBText2: TDBText;
    Panel4: TPanel;
    suiButton1: TAdvGlowButton;
    DBNavigator: TsDBNavigator;
    suiButton3: TAdvGlowButton;
    suiDBEdit1: TDBEdit;
    RxLabel8: TRxLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    suiDBGrid1: TDBAdvGrid;
    RxLabel12: TRxLabel;
    DBEdit7: TDBEdit;
    suiButton4: TAdvGlowButton;
    GroupBox1: TGroupBox;
    RxLabel13: TRxLabel;
    D_grupo_t: TEdit;
    Grupo_Trib: TfrxComboEdit;
    suiButton5: TAdvGlowButton;
    suiButton6: TAdvGlowButton;
    RxLabel14: TRxLabel;
    CheckBox4: TCheckBox;
    DBImage1: TDBImage;
    sBitBtn1: TAdvGlowButton;
    RxLabel15: TRxLabel;
    DBMemo5: TDBMemo;
    RxLabel16: TRxLabel;
    DBMemo6: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure XDBGrid1OrderChanged(Sender: TObject);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrLCB4LeCodigo(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Vende(Sender: TObject);
     procedure LerINI;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grupo_TribButtonClick(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure Grupo_TribExit(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
   // PRO BuscaValorEmTodosCamposTabela( Tabela, Busca : String);


  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormConsProdutos: TFormConsProdutos;
  ATIVO : string;
implementation

uses ModulodeDados, Z_RotinasGerais, Principal, UCustos, Produtos,
  LeitorSerial, IniFiles, UConsGRP, compra_item, Similares;

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

{procedure TFormConsProdutos.BuscaValorEmTodosCamposTabela( Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  // Result  := TStringList.Create;
   Query   := TFDQuery.Create(nil);

   Query.Connection := DM.Coneccao;

   Query.SQL.Add('Select R.Rdb$Relation_Name, R.Rdb$Field_Name');
   Query.SQL.Add('from rdb$Relation_Fields R, RDB$FIELDS F');
   Query.SQL.Add('where F.rdb$field_name=R.Rdb$field_source');
// AQUI SE VC PREFERIR VC PODE COLOCAR O NOME DA TABELA PARA IR
//  MAIS RAPIDO
// SE FOR * ELE PESQUISA EM TODAS AS TABELA DO BANCO
    if Tabela <> '*' then
     Query.SQL.Add('and R.Rdb$Relation_Name = '+QuotedStr(Tabela));
   Query.SQL.Add('order by R.rdb$field_position, R.rdb$field_name');
   Query.Open;

   while not Query.Eof do
   begin
      DM.SDS_PRODUTOS.Close;
      qryPesq.SQL.Clear;
      DM.SDS_PRODUTOS.DataSet.CommandText:= 'select '+Query.Fields[1].AsString+
                               ' from '+Query.Fields[0].AsString  +
                               ' where '+Query.Fields[1].AsString+' like '+ QuotedStr('%'+BUSCA);
      DM.SDS_PRODUTOS.Open;
     if not DM.SDS_PRODUTOS.IsEmpty then
         Result.Add('Tabela: '+Query.Fields[0].AsString+' campo: '+
                      Query.Fields[1].AsString);
      Query.Next;
   end;

   Query.Close;
   FreeAndNil(Query);
end;  }

procedure TFormConsProdutos.BuscaValorEmTodosCamposTabela(Tabela, Busca : String);
var
  Query : TFDQuery;
begin
  Query:= TFDQuery.Create(nil);
  Query.Connection := DM.Coneccao;
  Query.SQL.Add('SELECT R.RDB$RELATION_NAME, R.RDB$FIELD_NAME ');
  Query.SQL.Add('FROM RDB$RELATION_FIELDS R, RDB$FIELDS F ');
  Query.SQL.Add('WHERE F.RDB$FIELD_NAME = R.RDB$FIELD_SOURCE ');
  Query.SQL.Add('AND R.RDB$RELATION_NAME = '+QuotedStr(Tabela));
  Query.SQL.Add('ORDER BY R.RDB$FIELD_POSITION, R.RDB$FIELD_NAME');
  Query.Open;

  while not Query.Eof do
  begin
   if (Query.Fields[1].AsString = 'CODIGO_BARRAS') or
       (Query.Fields[1].AsString = 'REFERENCIA') or
       (Query.Fields[1].AsString = 'DESCRICAO') or
       (Query.Fields[1].AsString = 'NCM_SH') or
       (Query.Fields[1].AsString = 'CODORIGINAL') or
       (Query.Fields[1].AsString = 'COD_PACOTE') OR
       (Query.Fields[1].AsString = 'CEST') then
   BEGIN
    if Busca <> '' then
    begin
     { DM.SDS_PRODUTOS.Close;
      DM.SDS_PRODUTOS.DataSet.CommandText:= 'select * '+
                               ' from '+tabela +
                               ' where '+Query.Fields[1].AsString+' like ' +QuotedStr('%'+Busca+'%')+'ORDER BY DESCRICAO';
      DM.SDS_PRODUTOS.Open;  }

      DM.DTS_PRODUTOS.DataSet.Filter:= Query.Fields[1].AsString+' LIKE ' +QuotedStr('%'+Busca+'%');
      DM.DTS_PRODUTOS.DataSet.Filtered:= True;
    end
    else
      DM.DTS_PRODUTOS.DataSet.Filtered:= False;

    if DM.DTS_PRODUTOS.DataSet.IsEmpty then
    begin
      DM.DTS_PRODUTOS.DataSet.Filtered:= False;
    end
    else
      Exit;
    end;

      Query.Next;
  end;
  Query.Destroy;
end;

procedure TFormConsProdutos.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB4.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB4.Porta);
     ACBrLCB4.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB4.Sufixo);
     ACBrLCB4.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB4.Device.Baud);
     ACBrLCB4.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB4.ExcluirSufixo);
     ACBrLCB4.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB4.Intervalo);      ACBrLCB4.PrefixoAExcluir:= ini.readString('LEITOR','Prefixo',ACBrLCB4.PrefixoAExcluir);
  finally
     INI.Free ;
  end ;
end;

procedure TFormConsProdutos.FormShow(Sender: TObject);
begin                                                 
 cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;
//DM.SDS_PRODUTOS.Filtered := False;
//Edit1.Clear;
Edit1.SetFocus;
//Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
Panel3.ENABLED := False;
if DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'N' then
begin
XDBGRID1.Columns.Items[6].Visible := False;
end;

if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
begin
suiButton3.Enabled := False;
end;

 DM.Sds_produtos.Active := false;
   If formprincipal.CProdutos = 'S' THEN
   begin
    suiButton4.Enabled := TRUE;
    suiButton1.Enabled := TRUE;
   end ELSE
   begin
    suiButton4.Enabled := FALSE;
    suiButton1.Enabled := False;
   end;

   IF Tag = 1 then
   begin
     Edit1.Text := frmcompra_item.ecodproduto.Text;
   end;

   if cbxpesquisa.ItemIndex = 8 then
begin
       dm.SDS_PRODUTOS.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS order by DESCRICAO ASC');
       dm.SDS_PRODUTOS.Active := True;
       DM.sdS_PRODUTOS.Filtered := False;
       DM.sdS_PRODUTOS.Filter:= 'codigo_barras LIKE ' +QuotedStr('%'+'-1'+'%');
       DM.sdS_PRODUTOS.Filtered:= True;
end else
begin
 DM.SDS_PRODUTOS.Filtered := False;
end;
end;

procedure TFormConsProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACBrLCB4.Desativar;
Action:=CaFree;
FormConsProdutos:=nil;
end;

procedure TFormConsProdutos.Edit1Change(Sender: TObject);
var Key: Word;
ACHOU:BOOLEAN;
begin

IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:='';

//Application.ProcessMessages;

 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString ='A' then
 BEGIN
  dm.SDS_SIMILARES2.Active :=False;
  dm.SDS_SIMILARES2.Active :=True;

      if cbxpesquisa.ItemIndex = 8 then
      begin
      BuscaValorEmTodosCamposTabela('PRODUTOS', Edit1.Text) ;
      end;


      if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
      begin
       if CheckBox4.Checked = True then
       begin
         edit2.Clear;
         //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
       dm.SDS_PRODUTOS.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       dm.SDS_PRODUTOS.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


       If DM.SDS_PRODUTOS.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
        begin
            XDBGRID1.SetFocus;
        end;
       end else


       IF Edit1.Text = '' then
       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
         //ShowMessage('É Necessario digitar algo para pesquisar');
         Edit1.SetFocus;
       end else
       if edit2.Text='LETRAS' THEN
       BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;


       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);

        end else

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN
      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;

      end;
      end else

      if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
      begin
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;

      end else

      if cbxpesquisa.ItemIndex = 3 then      // por referencia
      begin
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;

         If DM.SDS_PRODUTOS.locate('REFERENCIA', Edit1.Text,[])=True then
         begin
         XDBGRID1.SetFocus;
         end;{ else
         begin
         dm.SDS_PRODUTOS.Active := false;
         DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where descricao like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS.Active := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
         end; }
      end;
      end;

      if cbxpesquisa.ItemIndex = 4 then      // por referencia
      begin
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
       end;
      end;

      if cbxpesquisa.ItemIndex = 5 then      // por NCM
      begin

      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.add('select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
       end;
      end;

      if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
      begin
      if edit2.Text='LETRAS' THEN
      BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text  + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


        end;


      END ELSE

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN
      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;
      end;
      end;
 
      DM.SDS_SECCAO1.Active := False;
      DM.SDS_SECCAO1.Active := True;

end;
end;

procedure TFormConsProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

  {  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;    }
end;

procedure TFormConsProdutos.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR ACHOU:BOOLEAN;
begin
  if key=#13 then
  begin
    Edit1.Text:= Trim(Edit1.Text);

      if cbxpesquisa.ItemIndex = 8 then
      begin
     {  //IF  dm.SDS_PRODUTOS.Active = False THEN
       BEGIN
       dm.SDS_PRODUTOS.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS order by DESCRICAO ASC';
       dm.SDS_PRODUTOS.Active := True;
       end;}
       BuscaValorEmTodosCamposTabela('PRODUTOS', Edit1.Text) ;
       end;


   IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString <> 'A' then
   BEGIN


      dm.SDS_SIMILARES2.Active :=False;
      dm.SDS_SIMILARES2.Active :=True;

      if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
      begin
       if CheckBox4.Checked = True then
       begin
         edit2.Clear;
         //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
       dm.SDS_PRODUTOS.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       dm.SDS_PRODUTOS.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


       If DM.SDS_PRODUTOS.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
        begin
            XDBGRID1.SetFocus;
        end;
       end else


       IF Edit1.Text = '' then
       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
         //ShowMessage('É Necessario digitar algo para pesquisar');
         Edit1.SetFocus;
       end else
       if edit2.Text='LETRAS' THEN
       BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;


       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


       If DM.Sds_produtos.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
        begin
            XDBGRID1.SetFocus;
        end;
        end else

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN
      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;


            If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;
      end;

      if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
      begin
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;


            If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;


      if cbxpesquisa.ItemIndex = 6 THen      // por codigo original
      begin
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODORIGINAL like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;


            If DM.Sds_produtos.locate('CODORIGINAL', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('CODORIGINAL', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;

      if cbxpesquisa.ItemIndex = 7 Then      // por codigo PACOTE
      begin
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where COD_PACOTE like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
      DM.Sds_produtos.Active := True;


            If DM.Sds_produtos.locate('COD_PACOTE', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('COD_PACOTE', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;

      if cbxpesquisa.ItemIndex = 3 then      // por referencia
      begin
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
        DM.Sds_produtos.Active := True;
        Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);

         If DM.SDS_PRODUTOS.locate('REFERENCIA', Edit1.Text,[])=True then
         begin
         XDBGRID1.SetFocus;
         end ;{else
         begin
         dm.SDS_PRODUTOS.Active := false;
         DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where descricao like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS.Active := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
         end;  }
       end;
      end;
      

        if cbxpesquisa.ItemIndex = 4 then      // por codigo
        begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit2.Text = 'LETRAS' then
         begin
           //ShowMessage('É Necessario digitar algo para pesquisar');
          DM.Sds_produtos.Active := false;
          DM.Sds_produtos.sql.clear;
          DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
          DM.Sds_produtos.Active := True;
          XDBGRID1.SetFocus;
         end;

         IF EDIT2.Text='NUMEROS' THEN
         BEGIN
         DM.Sds_produtos.Active := false;
         DM.Sds_produtos.sql.clear;
         DM.Sds_produtos.sql.add('select * from PRODUTOS where PROCURA like ' + #39 + '%' + RemoveChar(Edit1.Text) + '%' + #39+'ORDER BY DESCRICAO');
         DM.Sds_produtos.Active := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
         
            If DM.Sds_produtos.locate('PROCURA', RemoveChar(Edit1.Text),[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('PROCURA', RemoveChar(Edit1.Text),[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

         end;
        end;

      if cbxpesquisa.ItemIndex = 5 then      // por NCM
      begin

      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.sql.clear;
        DM.Sds_produtos.sql.add('select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else
       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);

            If DM.Sds_produtos.locate('NCM_SH', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('NCM_SH', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;
       end;
      end;


          {  If DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end;


    {  If not DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
       begin
             //SHOWMESSAGE('Produto Não Localizado');
            // Edit1.SetFocus;

       if edit2.Text='LETRAS' THEN
      BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
       DM.Sds_produtos.Active := True;


       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


        end;

      //IF ACHOU=FALSE THEN
      //SHOWMESSAGE('Produto Não Localizado');

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;

      END ELSE

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN

      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
      DM.Sds_produtos.Active := True;


            If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;

      end;}


    if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
    begin
    if edit2.Text='LETRAS' THEN
    BEGIN
    //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

     begin
     DM.Sds_produtos.Active := false;
     DM.Sds_produtos.sql.clear;
     DM.Sds_produtos.sql.add('select * from PRODUTOS where DESCRICAO like ' + #39 + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
     DM.Sds_produtos.Active := True;
     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


      end;

    //IF ACHOU=FALSE THEN
    //SHOWMESSAGE('Produto Não Localizado');

    IF ACHOU=TRUE THEN
    xDBGrid1.SetFocus;

    END ELSE

    IF EDIT2.Text='NUMEROS' THEN
    BEGIN
    //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
    //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
    DM.Sds_produtos.Active := false;
    DM.Sds_produtos.sql.clear;
    DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO');
    DM.Sds_produtos.Active := True;


          If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
          XDBGRID1.SetFocus;
          end else
          If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
           SHOWMESSAGE('Produto Não Localizado');
           Edit1.SetFocus;
          end;


    IF ACHOU=TRUE THEN
    xDBGrid1.SetFocus;
    end;
    end;

{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus; }

//end;


{if cbxpesquisa.ItemIndex = 0 then
begin
dm.Sds_produtos.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 3 then
begin
dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;
end; }

DM.SDS_SECCAO1.Active := False;
DM.SDS_SECCAO1.Active := True;

  end
  else
begin
  XDBGrid1.SetFocus;
end;
end;
end;


procedure TFormConsProdutos.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormConsProdutos.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     XDBGrid1.SetFocus;
end;

procedure TFormConsProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
      if (Key=VK_F2) then
      begin
      EDIT1.SetFocus;
      end;

      if (Key=VK_F3) then
      begin
      cbxpesquisa.SetFocus;
      cbxpesquisa.DroppedDown;
      end;

     if (Key=VK_F4) then
      begin
      if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
      begin
      suiButton3.Enabled := False;
      end else
      if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'N' then
      begin
      suiButton1Click(Sender);
      end;
      end;
     if (Key=VK_F5) then
      begin
      suiButton3Click(Sender);
      end;
end;


procedure TFormConsProdutos.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutos.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
END;
end;

procedure TFormConsProdutos.Edit2Enter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormConsProdutos.Edit2Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormConsProdutos.XDBGrid1OrderChanged(Sender: TObject);
var
CurrentID, AOrderFields: string;
begin
 { AOrderFields := StringReplace(TXDBGrid(Sender).OrderFields, 'DESCRICAO', []);
  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', []);
//  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', 'CODIGO_BARRAS', []);
  AOrderFields := StringReplace(AOrderFields, 'REFERENCIA', []);
  AOrderFields := StringReplace(AOrderFields, 'DESC_UNIDADE', []);
  TXDBGrid(Sender).ChangeDataSetOrder(AOrderFields); }
end;

procedure TFormConsProdutos.cbxpesquisaChange(Sender: TObject);
begin
{if cbxpesquisa.ItemIndex = 0 THEN
begin
 DM.SDS_PRODUTOS.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
 DM.SDS_PRODUTOS.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 3 then
begin
 DM.SDS_PRODUTOS.Filtered := False;
end; }

if cbxpesquisa.ItemIndex = 8 then
begin
       dm.SDS_PRODUTOS.Active := false;
       DM.Sds_produtos.sql.clear;
       DM.Sds_produtos.sql.add('select * from PRODUTOS  order by DESCRICAO ASC');
       dm.SDS_PRODUTOS.Active := True;
       DM.SDS_PRODUTOS.Filtered := False;
       DM.sdS_PRODUTOS.Filter:= 'codigo_barras LIKE ' +QuotedStr('%'+'-1'+'%');
       DM.sdS_PRODUTOS.Filtered:= True;
end else
begin
 DM.SDS_PRODUTOS.Filtered := False;
end;

end;

procedure TFormConsProdutos.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
begin
   if (DM.SDS_PRODUTOS.FieldByName('descricao').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS.FieldByName('codigo_barras').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS.FieldByName('codigo').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS.FieldByName('ncm_sh').AsString = Edit1.Text)
     or (DM.SDS_PRODUTOS.FieldByName('referencia').AsString = Edit1.Text)then
   begin
   XDbgrid1.Canvas.Font.Color := clBlack;
 //  xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
   end;


   if not (gdSelected in State) then
   begin // se a célula não está selecionada
      if not odd(xDBGrid1.DataSource.DataSet.RecNo) then // se for ímpar
              xDBGrid1.Canvas.Brush.Color := $00EAEAEA; //$00FFEFDF; // define uma cor de fundo
      xDBGrid1.Canvas.FillRect(Rect); // pinta a célula
   end;
   xDbgrid1.DefaultDrawDataCell(Rect, xdbgrid1.columns[datacol].field, State);


if not Odd(DM.SDS_PRODUTOS.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;

If DM.SDS_PRODUTOSATIVO.AsString = 'I' then // condição
  XDbgrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  XDbgrid1.DefaultDrawDataCell(Rect, Xdbgrid1.columns[datacol].field, State);


  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOSATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;
end;

procedure TFormConsProdutos.suiButton3Click(Sender: TObject);
begin
try
  if Formcustos=nil   then
    BEGIN
     Formcustos := TFormcustos.Create(self);
     Formcustos.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormConsProdutos.suiButton1Click(Sender: TObject);
begin
      FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self); 
      FormProdutos.FormStyle := fsNormal;
      FormProdutos.Visible:= False;
      FormProdutos.btnLocalizar.Enabled :=False;
      FormProdutos.ShowModal;
end;


procedure TFormConsProdutos.FormCreate(Sender: TObject);
begin
 //  FormLeitorSerial:= tFormLeitorSerial.Create(self);
 // FormLeitorSerial.bAtivar.Click;
  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  LerINI;
  ACBrLCB4.Ativar;
  end ;

end;

procedure TFormConsProdutos.ACBrLCB4LeCodigo(Sender: TObject);
begin
  //lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  Edit1.Clear;
  if not ACBrLCB4.UsarFila then
     Vende(Sender)
  else
  Edit1.Assign( ACBrLCB4.Fila );
end;

procedure TFormConsProdutos.Vende;
begin
   Edit1.Text := ACBrLCB4.UltimoCodigo;
   suiButton2Click(Sender);
end;



procedure TFormConsProdutos.suiButton2Click(Sender: TObject);
begin
keybd_event(VK_RETURN, 0, 0, 0);
end;

procedure TFormConsProdutos.CheckBox1Click(Sender: TObject);
begin
 ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 CheckBox2.Checked := False;
 CheckBox3.Checked := False;
end;

procedure TFormConsProdutos.CheckBox2Click(Sender: TObject);
begin
 ATIVO := 'I';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 CheckBox1.Checked := False;
 CheckBox3.Checked := False;

end;

procedure TFormConsProdutos.CheckBox3Click(Sender: TObject);
begin
  DM.SDS_PRODUTOS.Filtered := False;
 CheckBox2.Checked := False;
 CheckBox1.Checked := False;
end;

procedure TFormConsProdutos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
end;
end;

procedure TFormConsProdutos.Grupo_TribButtonClick(Sender: TObject);
begin
    FormConsGrupoT:=TFormConsGrupoT.Create(self);
    // FormConsGrupoT.tag :=1;
      FormConsGrupoT.ShowModal;
      Grupo_Trib.Text := DM.Sds_Grupo_tribCod_grupo.text;
      D_grupo_t.Text :=  DM.Sds_Grupo_tribDescricao.text;
end;

procedure TFormConsProdutos.suiButton6Click(Sender: TObject);
begin
groupbox1.Visible := False;
end;

procedure TFormConsProdutos.suiButton4Click(Sender: TObject);
begin
groupbox1.Visible := true;
end;

procedure TFormConsProdutos.Grupo_TribExit(Sender: TObject);
begin
IF Grupo_Trib.TEXT > '' then
begin
DM.Sds_grupo_trib.Open;
DM.Sds_grupo_trib.Refresh;

if (DM.Sds_grupo_trib.Locate('COD_GRUPO', VarArrayOf([Grupo_Trib.Text]),[])) then
begin
D_GRUPO_T.Text:= dm.sds_Grupo_tribdESCRICAO.TEXT;
Grupo_Trib.Text:= dm.sds_Grupo_tribCOD_GRUPO.TEXT;
suiButton5.SetFocus;
end;
end;
end;

procedure TFormConsProdutos.suiButton5Click(Sender: TObject);
var
  e, contador : Integer;
begin

     dm.SDS_PRODUTOS.First;
     Contador:=dm.SDS_PRODUTOS.RecordCount;
     For E:=1 to Contador do
      begin
          if dm.IBTransaction.Active then
               dm.IBTransaction.Commit;
            dm.IBTransaction.StartTransaction;
            try
            try
                with DM.IBSQL do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('update produtos set produtos.grupo_tributacao =:grupo where produtos.codigo = :cod_pro');
                     Parambyname('grupo').AsInteger             := strtoint(Grupo_Trib.text);
                     Parambyname('cod_pro').AsInteger            := strtoint(dm.SDS_PRODUTOSCODIGO.text);
                    ExecSQL;

                     end;
                dm.IBTransaction.CommitRetaining;
              except
                dm.IBTransaction.Rollback;
                showmessage('Erro ao Alterar os dados do Produto');
              end;
            finally
              DM.IBSQL.Close;
            end;
       dm.SDS_PRODUTOS.Next;
  end;
  end;
procedure TFormConsProdutos.sBitBtn1Click(Sender: TObject);
begin
    FormSimilares := tFormSimilares.create(Self);
    FormSimilares.Edit1.Text := dm.SDS_PRODUTOScodigo_barras.AsString;
    FormSimilares.Edit3.Text := dm.SDS_PRODUTOSdescricao.AsString;
    FormSimilares.Edit4.Text := dm.SDS_PRODUTOSREFERENCIA.AsString;
    FormSimilares.Edit7.Text := dm.SDS_PRODUTOSCODIGO.AsString;
    FormSimilares.showmodal;
end;

end.
