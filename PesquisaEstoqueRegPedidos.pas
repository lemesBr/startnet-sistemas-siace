unit PesquisaEstoqueRegPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, DBGrids, StdCtrls,
 DB, Menus, SUIDBCtrls, SUIButton, RXCtrls, SUIEdit,  Mask, DBCtrls, SUIDlg, AlignEdit,
  RxToolEdit, RxCurrEdit;

type
  TFormPesquisaEstoqueRegPedidos = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    suiButton2: TsuiButton;
    RxLabel6: TRxLabel;
    RxLabel3: TRxLabel;
    suiEdit1: TCurrencyEdit;
    rbValor: TRadioButton;
    rbPercentagem: TRadioButton;
    RxLabel4: TRxLabel;
    suiEdit2: TAlignEdit;
    RxLabel5: TRxLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    MSG_ValorDesconto: TsuiMessageDialog;
    suiDBEdit3: TCurrencyEdit;
    suiDBEdit1: TsuiDBEdit;
    RxLabel1: TRxLabel;
    Label3: TLabel;
    qtn: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiEdit1Enter(Sender: TObject);
    procedure suiEdit1Exit(Sender: TObject);
    procedure suiDBGrid1Enter(Sender: TObject);
    procedure suiDBNavigator1Enter(Sender: TObject);
    procedure suiDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure qtnEnter(Sender: TObject);
    procedure qtnExit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiDBGrid1Exit(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBEdit3Exit(Sender: TObject);

  private
    { Private declarations }
  public
  A,B:Double;
  Desconto, Venda: Real;
  end;

var
  FormPesquisaEstoqueRegPedidos: TFormPesquisaEstoqueRegPedidos;

implementation

uses Principal, ModulodeDados, ModulodeDadosConsultas,
     Z_RotinasGerais, RegPedido, Z_DeclaracoesBemaFi32,
  ECFTeste1;

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
function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TFormPesquisaEstoqueRegPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPesquisaEstoqueRegPedidos:=nil;
end;

procedure TFormPesquisaEstoqueRegPedidos.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

//suiButton2.Enabled:= False;
Edit2.SetFocus;
 Edit1.Text := DM.SDS_CONFIGURACOESPRODUTO_PADRAO.TEXT;
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.sql.clear;
 DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO like ' + #39 + '%' + edit1.text + '%' + #39+'' +'ORDER BY DESCRICAO');
 dm.SDS_PRODUTOS.Active := True;

If DM.Sds_produtos.locate('CODIGO',EDIT1.Text,[])=True then
begin
Edit2.Text := DM.Sds_produtosDESCRICAO.Text;
Edit2.SelectAll;
end;

end;

procedure TFormPesquisaEstoqueRegPedidos.suiButton2Click(Sender: TObject);
var
VALORV, Percent, EncFin, PerEnc, EF, VF: Real;
N,UEF:String;
Desc : Char ;
begin
    if EDIT2.Text ='' then
    begin
      ShowMessage('Descrição não pode ser em Branco Favor Preencha..');
      Edit2.SetFocus;
    end else

    IF suiDBEdit3.Text <= '0' then
    begin
    ShowMessage('Valor tem que ser informado, favor corrigir...');
    suiDBEdit3.SetFocus;
    end else

    IF qtn.Text <= '0,000' then
    begin
    ShowMessage('Quantidade tem que ser informada, favor corrigir...');
    qtn.SetFocus;
    end else

 try
   if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
    begin
    suiButton2.Default := false;
    N:= QTN.Text;
    if N <> '0,000' then
    begin
    B:= StrtoFloat(QTN.Text);
    A:= suiDBEdit3.Value;//DM.Sds_produtosPRECO_VENDA.AsCurrency;
    Percent:= 0;// StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
    PerEnc:= 0;//StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
    EF:= (A*PerEnc) / 100;
    UEF:= FormatFloat('##,##0.00',EF);
    EF:= StrToFloat(UEF);
    VF:= (A + EF);
    EncFin:= (EF * B);
    DESCONTO:= DESCONTO * B;
    FormCupomFiscal.Soma:=(A*B)+ EncFin - DESCONTO;
    FormCupomFiscal.Total:=FormCupomFiscal.Total+(FormCupomFiscal.soma);
    Percent := (A*Percent /100);
    FormCupomFiscal.Comissao:= FormCupomFiscal.Comissao + (percent);
    FormCupomFiscal.EncFinanceiro:= FormCupomFiscal.EncFinanceiro + (EncFin);
    //FormCupomFiscal.Edit60.Text := FloattoStr(FormCupomFiscal.Total);
    FormCupomFiscal.Edit62.Text := FloattoStr(FormCupomFiscal.Total);
   // FormCupomFiscal.Edit60.Font.Color:= clBlue;
    FormCupomFiscal.Edit62.Font.Color:= clAqua;
   // FormCupomFiscal.E_Desconto.Font.Color:= clWindow;
    FormCupomFiscal.ClientDataSet1.Insert;
    FormCupomFiscal.NValor:=1;
    FormCupomFiscal.NItem:=FormCupomFiscal.NItem+FormCupomFiscal.NValor;
    FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('CODIGO_BARRAS').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
    FormCupomFiscal.ClientDataset1.FieldByname('Quantidade').Value:= QTN.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('Descricao').AsString:= EDIT2.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Preco').Ascurrency:= suiDBEdit3.Value;
    FormCupomFiscal.ClientDataset1.FieldByname('Soma').AsFloat:=(FormCupomFiscal.Soma);
    FormCupomFiscal.ClientDataset1.FieldByname('Total').AsFloat:=(FormCupomFiscal.Total);
    FormCupomFiscal.ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
    FormCupomFiscal.ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
    FormCupomFiscal.ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
    FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Item').AsInteger:=(FormCupomFiscal.NItem);
    FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
    FormCupomFiscal.ClientDataset1.Post;
    FormCupomFiscal.CancelaItem.Enabled:= True;
    FormCupomFiscal.Edit1.clear;
   // FormCupomFiscal.E_Desconto.Clear;
    FormCupomFiscal.DBGrid1.Enabled:= True;
    //suiButton2.Enabled:= False;
    QTN.Text:= '1,000';

VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
EF:= (VALORV*PerEnc) / 100;
VF:= (Valorv + EF);
sCodigo        := (FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString);
sDescricao     := (FormCupomFiscal.ClientDataset1.FieldByname('Descricao').AsString);
sAliquota      := (FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').AsString);
sUnidade       := (FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString);
sTipoQtde      := 'F';
sQtde          := FormatFloat('##,##0.000',B);
sValor         := FormatFloat('##,##0.00',A);
sTipoDesconto  := '$';
sValorDesc     := FormCupomFiscal.ClientDataset1.FieldByname('Desconto').AsString;//FormatFloat('##,##0.00',Desconto);

     Desc := '%' ;
   if rbValor.Checked then
     Desc := '$' ;
{iRetorno := Bematech_FI_VendeItem(  sCodigo , sDescricao, sAliquota,
sTipoQtde, sQtde, 2, sValor, sTipoDesconto, sValorDesc);}
FormCupomFiscal.ACBrECF1.VendeItem( sCodigo, sDescricao,
                          sAliquota, {StrToFloatDef(b,0.000)} b,
                         {StrToFloatDef(sValor,0)} A, StrToFloatDef(sValorDesc,0),
                         sUnidade, Desc);

{FormCupomFiscal.mResp.Lines.Add( 'Vende Item: Cod:'+ sCodigo +
                            ' Desc'+ sDescricao +
                            ' Aliq:'+sAliquota +
                            ' Qtd:'+sQtde +
                            ' Preço:'+sValor +
                            ' Desc:'+sValorDesc +
                            ' Un:'+sUnidade +
                            ' Desc:'+Desc );}
// imp bematech
{FormCupomFiscal.Analisa_iRetorno();
FormCupomFiscal.Retorno_Impressora();}

  //  Edit2.SetFocus;

   { end
    else
    if N = '0,000' then
    begin

    end;   }
 Close;
    end;
    end else

  if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
  begin
    suiButton2.Default := false;
    N:= QTN.Text;
    if N <> '0,000' then
    begin
    B:= StrtoFloat(QTN.Text);
    A:= suiDBEdit3.Value;//DM.Sds_produtosPRECO_VENDA.AsCurrency;
    Percent:= 0;// StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
    PerEnc:= 0;//StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
    EF:= (A*PerEnc) / 100;
    UEF:= FormatFloat('##,##0.00',EF);
    EF:= StrToFloat(UEF);
    VF:= (A + EF);
    EncFin:= (EF * B);
    DESCONTO:= DESCONTO * B;
    FormCupomFiscal.Soma:=(A*B)+ EncFin - DESCONTO;
    FormCupomFiscal.Total:=FormCupomFiscal.Total+(FormCupomFiscal.soma);
    Percent := (A*Percent /100);
    FormCupomFiscal.Comissao:= FormCupomFiscal.Comissao + (percent);
    FormCupomFiscal.EncFinanceiro:= FormCupomFiscal.EncFinanceiro + (EncFin);
    //FormCupomFiscal.Edit60.Text := FloattoStr(FormCupomFiscal.Total);
    FormCupomFiscal.Edit62.Text := FloattoStr(FormCupomFiscal.Total);
   // FormCupomFiscal.Edit60.Font.Color:= clBlue;
    FormCupomFiscal.Edit62.Font.Color:= clAqua;
   // FormCupomFiscal.E_Desconto.Font.Color:= clWindow;
    FormCupomFiscal.ClientDataSet1.Insert;
    FormCupomFiscal.NValor:=1;
    FormCupomFiscal.NItem:=FormCupomFiscal.NItem+FormCupomFiscal.NValor;
    FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('CODIGO_BARRAS').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
    FormCupomFiscal.ClientDataset1.FieldByname('Quantidade').Value:= QTN.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('Descricao').AsString:= EDIT2.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Preco').Ascurrency:= suiDBEdit3.Value;
    FormCupomFiscal.ClientDataset1.FieldByname('Soma').AsFloat:=(FormCupomFiscal.Soma);
    FormCupomFiscal.ClientDataset1.FieldByname('Total').AsFloat:=(FormCupomFiscal.Total);
    FormCupomFiscal.ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
    FormCupomFiscal.ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
    FormCupomFiscal.ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
    FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Item').AsInteger:=(FormCupomFiscal.NItem);
    FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
    FormCupomFiscal.ClientDataset1.Post;
    FormCupomFiscal.CancelaItem.Enabled:= True;
    FormCupomFiscal.Edit1.clear;
   // FormCupomFiscal.E_Desconto.Clear;
    FormCupomFiscal.DBGrid1.Enabled:= True;
    //suiButton2.Enabled:= False;
    QTN.Text:= '1,000';

    VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(FormCupomFiscal.ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        sAliquota      :=  RemoveChar(FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        sUnidade       := (FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

        iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        FormCupomFiscal.edit5.Text := PChar(sAliquota);
        FormCupomFiscal.Analisa_iRetorno();
        FormCupomFiscal.Retorno_Impressora();


  //  Edit2.SetFocus;

   { end
    else
    if N = '0,000' then
    begin

    end;   }
 Close;
    end;
    end else

  if (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4') then
  begin
    suiButton2.Default := false;
    N:= QTN.Text;
    if N <> '0,000' then
    begin
    B:= StrtoFloat(QTN.Text);
    A:= suiDBEdit3.Value;//DM.Sds_produtosPRECO_VENDA.AsCurrency;
    Percent:= 0;// StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
    PerEnc:= 0;//StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
    EF:= (A*PerEnc) / 100;
    UEF:= FormatFloat('##,##0.00',EF);
    EF:= StrToFloat(UEF);
    VF:= (A + EF);
    EncFin:= (EF * B);
    DESCONTO:= DESCONTO * B;
    FormCupomFiscal.Soma:=(A*B)+ EncFin - DESCONTO;
    FormCupomFiscal.Total:=FormCupomFiscal.Total+(FormCupomFiscal.soma);
    Percent := (A*Percent /100);
    FormCupomFiscal.Comissao:= FormCupomFiscal.Comissao + (percent);
    FormCupomFiscal.EncFinanceiro:= FormCupomFiscal.EncFinanceiro + (EncFin);
    //FormCupomFiscal.Edit60.Text := FloattoStr(FormCupomFiscal.Total);
    FormCupomFiscal.Edit62.Text := FloattoStr(FormCupomFiscal.Total);
   // FormCupomFiscal.Edit60.Font.Color:= clBlue;
    FormCupomFiscal.Edit62.Font.Color:= clAqua;
   // FormCupomFiscal.E_Desconto.Font.Color:= clWindow;
    FormCupomFiscal.ClientDataSet1.Insert;
    FormCupomFiscal.NValor:=1;
    FormCupomFiscal.NItem:=FormCupomFiscal.NItem+FormCupomFiscal.NValor;
    FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('CODIGO_BARRAS').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
    FormCupomFiscal.ClientDataset1.FieldByname('Quantidade').Value:= QTN.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('Descricao').AsString:= EDIT2.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Preco').Ascurrency:= suiDBEdit3.Value;
    FormCupomFiscal.ClientDataset1.FieldByname('Soma').AsFloat:=(FormCupomFiscal.Soma);
    FormCupomFiscal.ClientDataset1.FieldByname('Total').AsFloat:=(FormCupomFiscal.Total);
    FormCupomFiscal.ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
    FormCupomFiscal.ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
    FormCupomFiscal.ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
    FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('Item').AsInteger:=(FormCupomFiscal.NItem);
    FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
    FormCupomFiscal.ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
    FormCupomFiscal.ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
    FormCupomFiscal.ClientDataset1.Post;
    FormCupomFiscal.CancelaItem.Enabled:= True;
    FormCupomFiscal.Edit1.clear;
   // FormCupomFiscal.E_Desconto.Clear;
    FormCupomFiscal.DBGrid1.Enabled:= True;
    //suiButton2.Enabled:= False;
    QTN.Text:= '1,000';

    VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(FormCupomFiscal.ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        sAliquota      :=  RemoveChar(FormCupomFiscal.ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        sUnidade       := (FormCupomFiscal.ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

        { := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        FormCupomFiscal.edit5.Text := PChar(sAliquota);
        FormCupomFiscal.Analisa_iRetorno();
        FormCupomFiscal.Retorno_Impressora();   }


  //  Edit2.SetFocus;

   { end
    else
    if N = '0,000' then
    begin

    end;   }
 Close;
    end;
    end;
    except
    Application.OnException := FormCupomFiscal.TrataErros ;
    end;
end;

procedure TFormPesquisaEstoqueRegPedidos.Edit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
//SuiEdit1.Clear;
//SuiEdit2.Clear;
//Edit1.Clear;
Edit2.SelectAll;
end;

procedure TFormPesquisaEstoqueRegPedidos.Edit2Exit(Sender: TObject);
begin
CorSaida(Sender);
if EDIT2.Text ='' then
    begin
      ShowMessage('Descrição não pode ser em Branco Favor Preencha..');
      Edit2.SetFocus;
end;
qtn.text := '1';
end;

procedure TFormPesquisaEstoqueRegPedidos.suiEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
suiEdit1.Clear;
suiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiEdit1Exit(Sender: TObject);
var
DescMaximo: Real;
begin
 suiButton2.Default := True;

CorSaida(Sender);
if suiedit1.Text = '' then
begin
suiedit1.Text:= '0';
Venda:= suiDBEdit3.value;
DescMaximo:= DM.Sds_produtosDESCONTO_MAXIMO.AsCurrency;
Desconto:= 0;
        if Desconto >= Venda then
        begin
        ShowMessage('Desconto nao pode ser maior que o valor do produto');
        suiDBEdit1.SetFocus;
        end else
        begin
       suiButton2.Enabled:= True;
       Venda:=(Venda - Desconto);
       Suiedit2.Text:= FormatFloat('R$ #,###,##0.00 ', Venda);
       suiedit1.Text := FloattoStr(Desconto);
       suiButton2.SetFocus;
       end;
end else
if suiedit1.Text <> '' then
begin
Venda:= suiDBEdit3.value;
DescMaximo:= DM.Sds_produtosDESCONTO_MAXIMO.AsCurrency;
Desconto:= STRTOFLOAT(suiedit1.Text);
      if Desconto >= Venda then
      begin
      ShowMessage('Desconto nao pode ser maior que o valor do produto');
      suiDBEdit1.SetFocus;
        end else
        BEGIN
       suiButton2.Enabled:= True;
       Venda:=(Venda - Desconto);
       Suiedit2.Text:= FormatFloat('R$ #,###,##0.00 ', Venda);
       suiedit1.Text := FloattoStr(Desconto);
       SuiButton2.SetFocus;
       end;
end;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBGrid1Enter(Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBNavigator1Enter(
  Sender: TObject);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
SuiEdit1.Clear;
SuiEdit2.Clear;
end;

procedure TFormPesquisaEstoqueRegPedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPesquisaEstoqueRegPedidos.qtnEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;


procedure TFormPesquisaEstoqueRegPedidos.qtnExit(Sender: TObject);
begin
CorSaida(Sender);
IF qtn.Text = '' then
begin
  ShowMessage('Quantidade tem que ser informada, favor corrigir...');
  qtn.SetFocus;
end else
IF qtn.text <= '0' then
begin
  ShowMessage('Quantidade tem que ser informada, favor corrigir...');
  qtn.SetFocus;
end else
IF qtn.text > '99999' then
begin
  ShowMessage('Quantidade informada Invalida, cupom aceita maximo 999 favor corrigir...');
  qtn.SetFocus;
end;
end;

procedure TFormPesquisaEstoqueRegPedidos.Edit2Change(Sender: TObject);
begin
//DM.Sds_produtos.locate('DESCRICAO',Edit2.Text,[lopartialkey,loCaseinSensitive]);
end;

procedure TFormPesquisaEstoqueRegPedidos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormPesquisaEstoqueRegPedidos.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
//SuiEdit1.Clear;
//SuiEdit2.Clear;
//Edit2.Clear;
end;

procedure TFormPesquisaEstoqueRegPedidos.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
//qtn.SetFocus;
DM.Sds_produtos.locate('CODIGO_BARRAS',Edit1.Text,[loCaseinSensitive]);
Edit2.Text := DM.Sds_produtosDESCRICAO.Text;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBGrid1Exit(Sender: TObject);
begin
qtn.SetFocus;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBGrid1KeyPress(
  Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
end;
end;

procedure TFormPesquisaEstoqueRegPedidos.suiDBEdit3Exit(Sender: TObject);
begin
IF suiDBEdit3.value > 999999 then
begin
  //ShowMessage('Valor tem que ser informado, favor corrigir...');
  suiDBEdit3.Text := '0';
  suiDBEdit3.SetFocus;
end
else
IF suiDBEdit3.value <= 0 then
begin
  ShowMessage('Valor tem que ser informado, favor corrigir...');
  suiDBEdit3.SetFocus;
end ;
   suiButton2.Default := True;
   suiButton2Click(Sender);
end;
end.





