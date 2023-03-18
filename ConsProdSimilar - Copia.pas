unit ConsProdSimilar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, DB, Grids, DBGrids, StdCtrls, ExtCtrls,
  RXCtrls, DBCtrls, SUIDBCtrls, Mylabel, Mask, ACBrBase, ACBrLCB, Buttons,
  sBitBtn, sPanel, sDBNavigator;

type
  TFormConsProdutos1 = class(TForm)
    Edit1: TEdit;
    XDBGrid1: TDBGrid;
    Edit2: TEdit;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    RxLabel4: TRxLabel;
    suiDBEdit1: TDBEdit;
    RxLabel19: TRxLabel;
    suiDBEdit15: TDBEdit;
    RxLabel11: TRxLabel;
    suiDBEdit6: TDBEdit;
    Panel3: TPanel;
    myLabel3d1: TmyLabel3d;
    suiDBNavigator1: TsDBNavigator;
    RxLabel28: TRxLabel;
    suiDBEdit11: TDBEdit;
    RxLabel2: TRxLabel;
    DBMemo3: TDBMemo;
    DBEdit2: TDBEdit;
    DBMemo4: TDBMemo;
    RxLabel6: TRxLabel;
    RxLabel37: TRxLabel;
    RxLabel36: TRxLabel;
    RxLabel5: TRxLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    DBEdit6: TDBEdit;
    myLabel3d2: TmyLabel3d;
    cbxpesquisa: TComboBox;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    DBEdit8: TDBEdit;
    RxLabel12: TRxLabel;
    suiButton1: TsBitBtn;
    suiButton3: TsBitBtn;
    lUltimaLeitura: TLabel;
    ACBrLCB2: TACBrLCB;
    suiButton2: TsBitBtn;
    GroupBox1: TGroupBox;
    RxLabel3: TRxLabel;
    suiDBEdit2: TDBEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrLCB2LeCodigo(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Vende(Sender: TObject);
    procedure LerINI;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsProdutos1: TFormConsProdutos1;


implementation

uses ModulodeDados, Produtos, similares, Principal, ProdutosFalta, UCustos,
  LeitorSerial, IniFiles, custosvendas;

{$R *.dfm}


procedure TFormConsProdutos1.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB2.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB2.Porta);
     ACBrLCB2.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB2.Sufixo);
     ACBrLCB2.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB2.Device.Baud);
     ACBrLCB2.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB2.ExcluirSufixo);
     ACBrLCB2.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB2.Intervalo);
      ACBrLCB2.PrefixoAExcluir:= ini.readString('LEITOR','Prefixo',ACBrLCB2.PrefixoAExcluir);
  finally
     INI.Free ;
  end ;
end;

procedure TFormConsProdutos1.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;

DM.Sds_produtos_c.Filtered := False;

Edit1.Clear;
Edit1.SetFocus;

if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
begin
suiButton3.Enabled := False;
end;
end;


procedure TFormConsProdutos1.Edit1KeyPress(Sender: TObject;
  var Key: Char);
VAR ACHOU:BOOLEAN;
ATIVO : string;
begin
  ATIVO := 'A';

if key=#13 then
begin
 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString <> 'A' then
 BEGIN
if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
begin
 if CheckBox4.Checked = True then
 begin
   edit2.Clear;
   //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
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
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
   //ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else
 if edit2.Text='LETRAS' THEN
 BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
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
DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
DM.Sds_produtos.Active := True;
dm.SDS_PRODUTOS.Filtered := false;
dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS.Filtered := True;

      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;

 end else

if cbxpesquisa.ItemIndex = 3 then      // por referencia
begin
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
IF Edit1.Text = '' then
 begin
   //ShowMessage('É Necessario digitar algo para pesquisar');
  DM.Sds_produtos.Active := false;
  DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
  DM.Sds_produtos.Active := True;
  dm.SDS_PRODUTOS.Filtered := false;
  dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
  dm.SDS_PRODUTOS.Filtered := True;
   Edit1.SetFocus;
 end else

 begin
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
 end;

      If DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
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
  dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
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
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;
end;

end else

if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
begin
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
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end else
{IF Edit1.Text = '' then
 begin
   ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else}

if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
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
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;

      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;
end;

end
else
begin
 xDBGrid1.SetFocus;
end;

end;
end;




procedure TFormConsProdutos1.XDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutos1.Edit1Change(Sender: TObject);
var Key: Word;
begin

IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:='' ;

 IF DM.SDS_CONFIGURACOESTP_PESQUISA.AsString ='A' then
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
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
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
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
       DM.Sds_produtos.Active := True;
         //ShowMessage('É Necessario digitar algo para pesquisar');
         Edit1.SetFocus;
       end else
       if edit2.Text='LETRAS' THEN
       BEGIN
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
       DM.Sds_produtos.Active := True;


       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);

        end else

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN
      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
      DM.Sds_produtos.Active := True;

      end;
      end else

      if cbxpesquisa.ItemIndex = 2 then      // por codigo de barras
      begin
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
      DM.Sds_produtos.Active := True;

      end else

      if cbxpesquisa.ItemIndex = 3 then      // por referencia
      begin
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
       end;
      end;

      if cbxpesquisa.ItemIndex = 4 then      // por referencia
      begin
      //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
      IF Edit1.Text = '' then
       begin
         //ShowMessage('É Necessario digitar algo para pesquisar');
        DM.Sds_produtos.Active := false;
        DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
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
        DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
        DM.Sds_produtos.Active := True;
         Edit1.SetFocus;
       end else

       begin
       DM.Sds_produtos.Active := false;
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where NCM_SH like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
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
       DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text  + #39+'ORDER BY DESCRICAO';
       DM.Sds_produtos.Active := True;
       Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


        end;


      END ELSE

      IF EDIT2.Text='NUMEROS' THEN
      BEGIN
      //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
      //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
      DM.Sds_produtos.Active := false;
      DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
      DM.Sds_produtos.Active := True;
      end;
      end;
 
      DM.SDS_SECCAO1.Active := False;
      DM.SDS_SECCAO1.Active := True;

end;

end;


procedure TFormConsProdutos1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACBrLCB2.Desativar;

Action:=CaFree;
FormConsProdutos1:=nil;

end;

procedure TFormConsProdutos1.XDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutos1.Edit1Exit(Sender: TObject);
begin
XDBGrid1.SetFocus;
end;

procedure TFormConsProdutos1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormConsProdutos1.cbxpesquisaChange(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 THEN
begin
 DM.Sds_produtos_c.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
 DM.Sds_produtos_c.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 3 then
begin
 DM.Sds_produtos_c.Filtered := False;
end;
end;

procedure TFormConsProdutos1.suiButton1Click(Sender: TObject);
begin
try
  if FormPRODUTOSfALTA=nil   then
    BEGIN
     FormPRODUTOSfALTA := TFormPRODUTOSfALTA.Create(self);
     FormPRODUTOSfALTA.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Produtps em Falta!!');
end;
end;

procedure TFormConsProdutos1.suiButton3Click(Sender: TObject);
begin
try
  if FormCustos=nil   then
   BEGIN
     FormCustos := TFormCustos.Create(self);
     FormCustos.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormConsProdutos1.FormCreate(Sender: TObject);
begin
//  FormLeitorSerial:= tFormLeitorSerial.Create(self);
//  FormLeitorSerial.bAtivar.Click;
  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  LerINI;
  ACBrLCB2.Ativar;
  end ;
end;

procedure TFormConsProdutos1.ACBrLCB2LeCodigo(Sender: TObject);
begin
  //lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  Edit1.Clear;
  if not ACBrLCB2.UsarFila then
     Vende(Sender)
  else
  Edit1.Assign( ACBrLCB2.Fila );
end;

procedure TFormConsProdutos1.Vende;
begin
   Edit1.Text := ACBrLCB2.UltimoCodigo;
   suiButton2Click(Sender);

 {Atraso := StrToIntDef(edAtraso.Text,0) ;
  if Atraso > 0 then
  begin
     pAtraso.Visible := true ;
     Application.ProcessMessages ;
     Sleep( Atraso );
     pAtraso.Visible := false ;
  end ;}
end;

procedure TFormConsProdutos1.suiButton2Click(Sender: TObject);
begin
keybd_event(VK_RETURN, 0, 0, 0);
end;

procedure TFormConsProdutos1.FormKeyDown(Sender: TObject; var Key: Word;
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
        suiButton1.Click;
      end;
end;

procedure TFormConsProdutos1.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Odd(DM.Sds_produtos.RecNo) then
   if not(gdselected in State) then
   begin
    xDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    xDBGrid1.Canvas.FillRect(rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
end;

procedure TFormConsProdutos1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  xDBGrid1.SetFocus;
end;
end;

end.
