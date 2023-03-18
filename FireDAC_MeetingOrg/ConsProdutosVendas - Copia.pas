unit ConsProdutosVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables, XDBGrids, DBCtrls,
  Mask, Buttons, RxLookup, FDvObj, BaseGrid, FDvGrid, DBAdvGrid, sBitBtn;

type
  TFormConsProdutosVendas = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    cbxpesquisa: TComboBox;
    RxLabel2: TRxLabel;
    XDBGrid1: TXDBGrid;
    Panel3: TPanel;
    RxLabel27: TRxLabel;
    RxLabel26: TRxLabel;
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
    RxLabel8: TRxLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxLabel7: TRxLabel;
    Edit2: TEdit;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    DBNavigator: TDBNavigator;
    suiButton1: TBitBtn;
    suiButton3: TBitBtn;
    suiButton2: TBitBtn;
    CheckBox1: TCheckBox;
    RxLabel11: TRxLabel;
    RxLabel9: TRxLabel;
    DBText1: TDBText;
    RxLabel19: TRxLabel;
    Label1: TLabel;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    suiDBGrid1: TDBAdvGrid;
    RxLabel14: TRxLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    Edit1: TEdit;
    sBitBtn1: TsBitBtn;
    RxLabel12: TRxLabel;
    DBEdit12: TDBEdit;
    RxLabel13: TRxLabel;
    DBEdit13: TDBEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure suiButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sBitBtn1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormConsProdutosVendas: TFormConsProdutosVendas;
  ATIVO : string;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Vendas, ConsProdutos,
  ProdutosFalta, custosvendas, Produtos, Similares;


{$R *.dfm}

procedure TFormConsProdutosVendas.FormShow(Sender: TObject);
begin
cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;

 {//DM.SDS_SIMILARES.Active:= true;
 ATIVO := 'A';
 DM.SDS_PRODUTOS_c.Filtered := False;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
//XDBGrid1.RefreshDataSet; }

//Edit1.Clear;
Edit1.SetFocus;


if Edit1.Text > '' then
begin
BitBtn1Click(Sender);
end;

if DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'N' then
begin
XDBGRID1.Columns.Items[6].Visible := False;
end;

if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
begin
suiButton3.Enabled := False;
end;
end;

procedure TFormConsProdutosVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsProdutos:=nil;
end;

procedure TFormConsProdutosVendas.Edit1Change(Sender: TObject);
VAR
ACHOU:BOOLEAN;
cod :Integer;
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
ATIVO := 'A';


DM.SDS_SECCAO2.Active := False;
DM.SDS_SECCAO2.Active := True;
DM.SDS_SIMILARES1.Active := False;
DM.SDS_SIMILARES1.Active := True;

if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
  begin
     if CheckBox1.Checked = True then
     begin
     edit2.Clear;
       //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +' AND ATIVO=''A'' ORDER BY DESCRICAO';
     dm.SDS_PRODUTOS_c.Active := True;
    // dm.SDS_PRODUTOS_C.Filtered := false;
    // dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
   //  dm.SDS_PRODUTOS_C.Filtered := True;

     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


     end else



         IF Edit1.Text = '' then
         begin
          // ShowMessage('É Necessario digitar algo para pesquisar');
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +' AND ATIVO=''A'' ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
       //  dm.SDS_PRODUTOS_C.Filtered := false;
       //  dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
       //  dm.SDS_PRODUTOS_C.Filtered := True;
         Edit1.SetFocus;
         end else

         if edit2.Text='LETRAS' THEN
         BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +' AND ATIVO=''A'' ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
      //   dm.SDS_PRODUTOS_C.Filtered := false;
      //   dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
      //   dm.SDS_PRODUTOS_C.Filtered := True;
          Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);



          end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+' AND ATIVO=''A'' ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
       // ATIVO := 'A';
      //  DM.SDS_PRODUTOS_C.Filtered := False;
      //  DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
       // dm.SDS_PRODUTOS_C.Filtered := True;


        end;
  end else

  if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
   begin
    DM.Sds_produtos_c.Active := false;
    DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+' AND ATIVO=''A'' ORDER BY DESCRICAO';
    DM.Sds_produtos_c.Active := True;


          If DM.Sds_produtos_c.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
          XDBGRID1.SetFocus;
          end else
          If not DM.Sds_produtos_c.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
           SHOWMESSAGE('Produto Não Localizado');
           Edit1.SetFocus;
          end;


      end else

  if cbxpesquisa.ItemIndex = 4 then      // por Codigo
   begin


       cod:=StrToInt(Edit1.Text);

       IF Edit1.Text > '' then
       begin
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.Clear;
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+' AND ATIVO=''A'' ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
      //   dm.SDS_PRODUTOS_C.Filtered := false;
      //   dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
      //   dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;
         end;
   end else


    if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+' and ATIVO=''A'' ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
       //  dm.SDS_PRODUTOS_C.Filtered := false;
       //  dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
       //  dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

     end;





if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + Edit1.Text + '%' + #39+' AND ATIVO=''A'' ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
// dm.SDS_PRODUTOS_C.Filtered := false;
// dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
// dm.SDS_PRODUTOS_C.Filtered := True;

 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');



END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;


end;
end;
end;
end;


procedure TFormConsProdutosVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsProdutosVendas.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutosVendas.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR
ACHOU:BOOLEAN;
cod :Integer;
begin

if key=#13 then
 begin
 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString <> 'A' then
 BEGIN
  ATIVO := 'A';

DM.SDS_SECCAO2.Active := False;
DM.SDS_SECCAO2.Active := True;
DM.SDS_SIMILARES1.Active := False;
DM.SDS_SIMILARES1.Active := True;

if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
  begin
     if CheckBox1.Checked = True then
     begin
     edit2.Clear;
       //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
     dm.SDS_PRODUTOS_c.Active := True;
     dm.SDS_PRODUTOS_C.Filtered := false;
     dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;
     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);

     If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
      begin
          XDBGRID1.SetFocus;
      end;
     end else



         IF Edit1.Text = '' then
         begin
          // ShowMessage('É Necessario digitar algo para pesquisar');
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Edit1.SetFocus;
         end else

         if edit2.Text='LETRAS' THEN
         BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


         If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
          begin
              XDBGRID1.SetFocus;
          end;
          end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

             If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;
        end;
  end else

  if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
   begin
    DM.Sds_produtos_c.Active := false;
    DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
    DM.Sds_produtos_c.Active := True;


          If DM.Sds_produtos_c.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
          XDBGRID1.SetFocus;
          end else
          If not DM.Sds_produtos_c.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
          begin
           SHOWMESSAGE('Produto Não Localizado');
           Edit1.SetFocus;
          end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end else

   if cbxpesquisa.ItemIndex = 6 then      // por codigo ORIGINAL
   begin
    DM.Sds_produtos_c.Active := false;
    DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODORIGINAL like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
    DM.Sds_produtos_c.Active := True;


          If DM.Sds_produtos_c.locate('CODORIGINAL', Edit1.Text,[])=True then
          begin
          XDBGRID1.SetFocus;
          end else
          If not DM.Sds_produtos_c.locate('CODORIGINAL', Edit1.Text,[])=True then
          begin
           SHOWMESSAGE('Produto Não Localizado');
           Edit1.SetFocus;
          end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end else

  if cbxpesquisa.ItemIndex = 7 then      // por codigo PACOTE
   begin
    DM.Sds_produtos_c.Active := false;
    DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where COD_PACOTE like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
    DM.Sds_produtos_c.Active := True;


          If DM.Sds_produtos_c.locate('COD_PACOTE', Edit1.Text,[])=True then
          begin
          XDBGRID1.SetFocus;
          end else
          If not DM.Sds_produtos_c.locate('COD_PACOTE', Edit1.Text,[])=True then
          begin
           SHOWMESSAGE('Produto Não Localizado');
           Edit1.SetFocus;
          end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end else


  if cbxpesquisa.ItemIndex = 4 then      // por Codigo
   begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.Clear;
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
       end else


    if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else

     end;



      if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
      begin
      if edit2.Text='LETRAS' THEN
      BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       begin
       dm.SDS_PRODUTOS_c.Active := false;
       DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
       dm.SDS_PRODUTOS_c.Active := True;
       dm.SDS_PRODUTOS_C.Filtered := false;
       dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
       dm.SDS_PRODUTOS_C.Filtered := True;
        Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
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
      dm.SDS_PRODUTOS_c.Active := false;
      DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
      dm.SDS_PRODUTOS_c.Active := True;
      ATIVO := 'A';
      DM.SDS_PRODUTOS_C.Filtered := False;
      DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
      dm.SDS_PRODUTOS_C.Filtered := True;

            If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
            XDBGRID1.SetFocus;
            end else
            If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
            begin
             SHOWMESSAGE('Produto Não Localizado');
             Edit1.Clear;
             Edit1.SetFocus;
            end;

      IF ACHOU=TRUE THEN
      xDBGrid1.SetFocus;
      end;
end;
end
else
begin
  XDBGrid1.SetFocus;
end;
end;
end;



procedure TFormConsProdutosVendas.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);

  Edit1.SelStart := Length( Edit1.Text );
end;

procedure TFormConsProdutosVendas.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     XDBGrid1.SetFocus;
end;

procedure TFormConsProdutosVendas.FormKeyDown(Sender: TObject; var Key: Word;
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
      suiButton3Click(Sender);
      end;
      end;

      if (Key=VK_F5) then
      begin
      suiButton1Click(Sender);
      end;
      if (Key=VK_F6) then
      begin
      suiButton2Click(Sender);
      end;

end;


procedure TFormConsProdutosVendas.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutosVendas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
END;
end;

procedure TFormConsProdutosVendas.Edit2Enter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormConsProdutosVendas.Edit2Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormConsProdutosVendas.XDBGrid1OrderChanged(Sender: TObject);
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

procedure TFormConsProdutosVendas.cbxpesquisaChange(Sender: TObject);
begin
{ ATIVO:='A';
if cbxpesquisa.ItemIndex = 0 THEN
begin
 dm.SDS_PRODUTOS_c.Filtered := false;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
end else
if cbxpesquisa.ItemIndex = 1 THEN
begin
 dm.SDS_PRODUTOS_c.Filtered := false;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
// Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
end else
if cbxpesquisa.ItemIndex = 2 then
begin
  DM.SDS_PRODUTOS_c.Filtered := False;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 //Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
  end else
if cbxpesquisa.ItemIndex = 3 then
begin
  DM.SDS_PRODUTOS_c.Filtered := False;
  dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
  dm.SDS_PRODUTOS_c.Filtered := True;
 // Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
end;}

end;
procedure TFormConsProdutosVendas.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
    estoque : Real;
begin
  if (DM.SDS_PRODUTOS_c.FieldByName('descricao').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS_c.FieldByName('codigo_barras').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS_c.FieldByName('codigo').AsString = Edit1.Text)
   or (DM.SDS_PRODUTOS_c.FieldByName('ncm_sh').AsString = Edit1.Text)
     or (DM.SDS_PRODUTOS_c.FieldByName('referencia').AsString = Edit1.Text)then
   begin
   XDbgrid1.Canvas.Font.Color := clBlack;
   xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
   end;
   if not (gdSelected in State) then
   begin // se a célula não está selecionada
      if not odd(xDBGrid1.DataSource.DataSet.RecNo) then // se for ímpar
         xDBGrid1.Canvas.Brush.Color := $00EAEAEA; //$00EAEAEA; //$00FFEFDF; // define uma cor de fundo
      //xDbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
      xDBGrid1.Canvas.FillRect(Rect); // pinta a célula
   end;
   xDbgrid1.DefaultDrawDataCell(Rect, xdbgrid1.columns[datacol].field, State);

 
if not Odd(DM.SDS_PRODUTOS_C.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOS_CATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

IF Column.Field = dm.SDS_PRODUTOS_CESTOQUE THEN
begin
estoque:= Dm.SDS_ProdutosEstoque.AsFloat;
If estoque < 1 then
xDbgrid1.Canvas.Font.Color := clRed;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
If estoque >= 1 then
xDbgrid1.Canvas.Font.Color := clBlack;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
xDbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
end;
end;

procedure TFormConsProdutosVendas.suiButton3Click(Sender: TObject);
begin
try
  if FormCustosVendas=nil   then
    BEGIN
     FormCustosVendas := TFormCustosVendas.Create(self);
     FormCustosVendas.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormConsProdutosVendas.suiButton1Click(Sender: TObject);
begin
try
  if FormPRODUTOSfALTA=nil   then
    BEGIN
     FormPRODUTOSfALTA := TFormPRODUTOSfALTA.Create(self);
     FormProdutosFalta.DBEdit2.Text := DM.SDS_PRODUTOSCODIGO.Text;
     FormPRODUTOSfALTA.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Produtps em Falta!!');
end;
end;

procedure TFormConsProdutosVendas.BitBtn1Click(Sender: TObject);
VAR ACHOU:BOOLEAN;
cod : Integer;
begin

  ATIVO := 'A';
  DM.SDS_SECCAO2.Active := False;
  DM.SDS_SECCAO2.Active := True;
  DM.SDS_SIMILARES1.Active := False;
  DM.SDS_SIMILARES1.Active := True;

  if CheckBox1.Checked = True then
     begin
       edit2.Clear;
       //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
     dm.SDS_PRODUTOS_c.Active := True;
     dm.SDS_PRODUTOS_C.Filtered := false;
     dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;
     {dm.SDS_PRODUTOS.Filtered := false;
     dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
     dm.SDS_PRODUTOS.Filtered := True;}
     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);

     If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
      begin
          Edit1.SetFocus;
      end;
     end else

     if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
      begin

         IF Edit1.Text = '' then
         begin
          // ShowMessage('É Necessario digitar algo para pesquisar');
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
           Edit1.SetFocus;
         end else
         if edit2.Text='LETRAS' THEN
         BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         {dm.SDS_PRODUTOS.Filtered := false;
         dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
         dm.SDS_PRODUTOS.Filtered := True;}
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


         If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
          begin
              Edit1.SetFocus;
          end;
          end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

              If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              Edit1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
        {ACHOU:=dm.Sds_produtos_C.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        IF ACHOU=FALSE THEN
        SHOWMESSAGE('Produto Não Localizado');
        Edit1.Clear;
        Edit1.SetFocus;
        {//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

        IF ACHOU=TRUE THEN
        edit1.SetFocus;
        end;

      end else

    if cbxpesquisa.ItemIndex = 4 then      // por Codigo
     begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.Clear;
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.Clear;
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              Edit1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
       end;

      if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else

     end;
  {  if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
              Edit1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
             //  SHOWMESSAGE('Refencia do Produto não Localizada...');
              // Edit1.SetFocus;

        if edit2.Text='LETRAS' THEN
        BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

        //IF ACHOU=FALSE THEN
        //SHOWMESSAGE('Produto Não Localizado');

        IF ACHOU=TRUE THEN
        Edit1.SetFocus;

        END ELSE

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

              If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              Edit1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
           //    SHOWMESSAGE('Produto Não Localizado');
             //  Edit1.Clear;
               Edit1.SetFocus;
              end;


        IF ACHOU=TRUE THEN
        Edit1.SetFocus;
        end;
        end;

     end else

}


if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
Edit1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      Edit1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.Clear;
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
Edit1.SetFocus;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
Edit1.SetFocus; }

end;
end;

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



{if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
begin
  IF Edit1.Text = '' then
 begin
  // ShowMessage('É Necessario digitar algo para pesquisar');
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
   Edit1.SetFocus;
 end else
 if edit2.Text='LETRAS' THEN
 BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


 If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
  begin
      Edit1.SetFocus;
  end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      Edit1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
Edit1.SetFocus;
end;

 end else
    if cbxpesquisa.ItemIndex = 4 then      // por Codigo
     begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              Edit1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
              // Edit1.SetFocus;
              end;
       end else


if cbxpesquisa.ItemIndex = 3 then      // por referencia
begin
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
IF Edit1.Text = '' then
 begin
   ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
 end;

      If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      Edit1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
 {if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
Edit1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      Edit1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
Edit1.SetFocus;
end;
//end else



if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
Edit1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      Edit1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
Edit1.SetFocus;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
Edit1.SetFocus; }

//end;
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
end;

procedure TFormConsProdutosVendas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if DM.Sds_produtos_c.eof then
begin
  ShowMessage('Favor localizar algum produdo para inserir na tela de vendas!!!');
  CanClose := False;
end;}
if DM.Sds_produtos_c.Active = false then
begin
   DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + '1A1A' + '%' + #39+'' +'ORDER BY DESCRICAO';
   DM.Sds_produtos_c.Active := True;
end;
end;

procedure TFormConsProdutosVendas.suiButton2Click(Sender: TObject);
begin
 //    FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self);
       FormProdutos.FormStyle := fsNormal;
        FormProdutos.Visible:= False;
         FormProdutos.btnLocalizar.Enabled :=False;
          FormProdutos.Showmodal;
end;

procedure TFormConsProdutosVendas.CheckBox1Click(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TFormConsProdutosVendas.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
 //close;
end;
end;

procedure TFormConsProdutosVendas.sBitBtn1Click(Sender: TObject);
begin
    FormSimilares := tFormSimilares.create(Self);
    FormSimilares.Edit1.Text := dm.SDS_PRODUTOS_ccodigo_barras.AsString;
    FormSimilares.Edit3.Text := dm.SDS_PRODUTOS_cdescricao.AsString;
    FormSimilares.Edit4.Text:= dm.SDS_PRODUTOS_cREFERENCIA.AsString;
    FormSimilares.Edit7.Text := dm.SDS_PRODUTOS_cCODIGO.AsString;
    FormSimilares.showmodal;
end;

end.
