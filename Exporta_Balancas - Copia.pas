unit Exporta_Balancas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, XDBGrids,
  SUIButton, ExtCtrls, ComCtrls, StdCtrls, IBCustomDataSet, SimpleDS;

type
  TFormExportaBalanca = class(TForm)
    suiCheckBox1: TsuiCheckBox;
    suiCheckBox2: TsuiCheckBox;
    XDBGrid1: TXDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    Label6: TLabel;
    CDS_BALANCA: TClientDataSet;
    DTS_BALANCA: TDataSource;
    DSP_BALANCA: TDataSetProvider;
    QRY_BALANCA: TSQLQuery;
    QRY_BALANCAPRECOEXP: TFMTBCDField;
    QRY_BALANCACODIGO: TIntegerField;
    QRY_BALANCACODIGO_BARRAS: TStringField;
    QRY_BALANCADESCRICAO: TStringField;
    QRY_BALANCADESCRICAOEXP: TStringField;
    QRY_BALANCADEPTO: TStringField;
    QRY_BALANCAETQTA_DEPTO: TStringField;
    QRY_BALANCATIPO_PRODUTO: TStringField;
    QRY_BALANCAVALIDADE_PRODUTO: TStringField;
    CDS_BALANCAPRECOEXP: TFMTBCDField;
    CDS_BALANCACODIGO: TIntegerField;
    CDS_BALANCACODIGO_BARRAS: TStringField;
    CDS_BALANCADESCRICAO: TStringField;
    CDS_BALANCADESCRICAOEXP: TStringField;
    CDS_BALANCADEPTO: TStringField;
    CDS_BALANCAETQTA_DEPTO: TStringField;
    CDS_BALANCATIPO_PRODUTO: TStringField;
    CDS_BALANCAVALIDADE_PRODUTO: TStringField;
    qry_setor: TSQLQuery;
    dsp_setor: TDataSetProvider;
    dts_setor: TDataSource;
    cds_setor: TClientDataSet;
    qry_setorCATEGORIA: TStringField;
    qry_setorSEQUENCIA: TIntegerField;
    qry_setorCODIGO: TIntegerField;
    qry_setorCODIGO_BARRAS: TStringField;
    cds_setorCATEGORIA: TStringField;
    cds_setorSEQUENCIA: TIntegerField;
    cds_setorCODIGO: TIntegerField;
    cds_setorCODIGO_BARRAS: TStringField;
    suiCheckBox3: TsuiCheckBox;
    qrinfnutricional_produto: TSimpleDataSet;
    qrinfnutricional_produtoCODIGO: TIntegerField;
    qrinfnutricional_produtoCOD_PRODUTO: TIntegerField;
    qrinfnutricional_produtoPORCAO: TStringField;
    qrinfnutricional_produtoVALOR_CALORICO: TIntegerField;
    qrinfnutricional_produtoVALOR_CALORICO_VD: TStringField;
    qrinfnutricional_produtoCARBOIDRATOS: TIntegerField;
    qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField;
    qrinfnutricional_produtoPROTEINAS: TIntegerField;
    qrinfnutricional_produtoPROTEINAS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASTOTAIS: TFMTBCDField;
    qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASSATURADAS: TFMTBCDField;
    qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField;
    qrinfnutricional_produtoFIBRA: TIntegerField;
    qrinfnutricional_produtoFIBRA_VD: TIntegerField;
    qrinfnutricional_produtoCALCIO: TFMTBCDField;
    qrinfnutricional_produtoCALCIO_VD: TIntegerField;
    qrinfnutricional_produtoFERRO: TFMTBCDField;
    qrinfnutricional_produtoFERRO_VD: TIntegerField;
    qrinfnutricional_produtoSODIO: TIntegerField;
    qrinfnutricional_produtoSODIO_VD: TIntegerField;
    qrinfnutricional_produtoUNIDADE_PORCAO: TStringField;
    qrinfnutricional_produtoPARTE_INTEIRA: TStringField;
    qrinfnutricional_produtoPARTE_DECIMAL: TStringField;
    qrinfnutricional_produtoMEDIDA_CASEIRA: TStringField;
    QRY_BALANCAESP_COD_AUX: TStringField;
    CDS_BALANCAESP_COD_AUX: TStringField;
    procedure suiCheckBox1Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton3Click(Sender: TObject);
    procedure suiCheckBox2Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiCheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportaBalanca: TFormExportaBalanca;

implementation

uses Principal, ModulodeDados;

{$R *.dfm}

function complet(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := palavra+carac;
   result := palavra;
end;

function completat(palavra : string; quantd : integer; carac : string) : string;
var texto : string;
begin
   while length(palavra) < quantd do
     palavra := carac +palavra;
   result := palavra;
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




procedure TFormExportaBalanca.suiCheckBox1Click(Sender: TObject);

begin
   suiCheckBox2.Checked := False;
   suiCheckBox3.Checked := False;

   QRY_BALANCA.Active := False;
   Cds_balanca.Active := False;
   QRY_BALANCA.Params[0].Value := 1;
   QRY_BALANCA.Active := TRUE;
   Cds_balanca.Active := TRUE;
   qrinfnutricional_produto.open;
   //Cds_balanca.Open;
end;

procedure TFormExportaBalanca.suiButton1Click(Sender: TObject);
 var
  Arquivo1, Arquivo2 : TStringList;
  I, E, PorSegundo :Integer;
  depto, etiqdepto, tipo_prod, codbar, valor_iten, validade, desc, Resultado: string;
  HoraAnterior: TTime;
  wArquivo, wArquivo2 : string;
  item : Double;
  iten : string;
  categoria, codigo, sequencia :string;
  // siscom
  txt_produto, txt_nutri, txt_setor, txt_receita : textfile;
  texto3,texto, texto1, texto2, texto4, TEXTO5 : string;
  porc, CALo, VDCALo, CARB, VDCARB, PROT, VDPROT, GORD, VDGORD, SATU, VDSATU, COLE, VDCOLE, FIBR, VDFIBR, CALC, VDCALC,
  FERR, VDFERR, SODI, VDSODI, UNID, PART1, PART2, MEDID : STRING;
  pz : boolean;
  posi : integer;
begin

 // geração para balança toledo

 if suiCheckBox1.Checked then
 begin
  HoraAnterior := Now;
  PorSegundo := 0;
  if Cds_balanca.IsEmpty then
  begin
    raise Exception.Create('Atenção! Não tem dados para gerar Arquivo TXT.');
        Exit;
  end else
  begin
    Arquivo1 := TStringList.Create; //Instancia a variavel Arquivo
    Cds_balanca.Open;
    progressbar1.max := Cds_balanca.RecordCount;
    label2.Caption := IntToStr(Cds_balanca.RecordCount ); //e tambem no label;
    //PorSegundo := 0;
    progressbar1.position := 0;
    Cds_balanca.DisableControls;
    Cds_balanca.First;

     CreateDir('C:\siace\exporta');

     assignfile(txt_receita,'C:\siace\exporta\rec_ass.txt'); // txt3
     assignfile(txt_nutri,'C:\siace\exporta\INFNUTRI.TXT'); // txt3

      rewrite(txt_receita);
      rewrite(txt_nutri);

  //GRAVA LINHAS NOS ARQUIVOS
    while not Cds_balanca.Eof do
    begin
      HoraAnterior := Now;
      Label3.Caption := 'Média de execução: '+ IntToStr(PorSegundo);
      Resultado := IntToStr(Cds_balanca.RecordCount - Cds_balanca.RecNo);
      Label4.Caption := 'Faltando '+ resultado +' registros';
      if PorSegundo <= 0 then //previne "EdivByZero"
      Label5.Caption := ''
      else
      Label5.Caption := 'Tempo estimado: '+ CurrToStr((Cds_balanca.RecordCount - Cds_balanca.RecNo) / PorSegundo) +' segundos';
      Application.ProcessMessages; // pode deixar a execução mais lenta, porém, não trava a aplicação durante o while

       {Transforma as variaveis para receber zero antes}
      // item       := FORMATCUCDS_balancaPRECOEXP.AsFloat;
       iten       := FormatCurr('000000', CDS_balancaPRECOEXP.AsCurrency * 100);
      // valor_iten := (iten);
       depto      := CDS_BALANCADEPTO.AsString;
       etiqdepto  := CDS_balancaETQTA_DEPTO.AsString;
       tipo_prod  := CDS_balancaTIPO_PRODUTO.AsString;
       codbar     := Formatar(CDS_BALANCACODIGO_BARRAS.AsString,6,FALSE,'0');
       valor_iten := iten; //Formatar(Valor_iten, 6, fALSE,'0');
       validade   := Formatar(CDS_balancaVALIDADE_PRODUTO.AsString, 3,False,'0');
       desc       := Formatar(CDS_balancaDESCRICAOEXP.AsString, 25, True, ' ');
       texto3     := Formatar(CDS_BALANCAESP_COD_AUX.AsString, 50, True, ' ');

       {Criando os arquivos para TXT}
       Arquivo1.Add(depto+ etiqdepto + tipo_prod
       +codbar + valor_iten + validade + desc + desc + texto3);
       i := i + 1;
       //  label2.Caption := IntToStr(I);
           porc:= ''; CALo:= ''; VDCALo:= ''; CARB:= ''; VDCARB:= ''; PROT:= ''; VDPROT:= ''; GORD:= ''; VDGORD:= ''; SATU:= ''; VDSATU:= ''; COLE:= ''; VDCOLE:= ''; FIBR:= ''; VDFIBR:= ''; CALC:= ''; VDCALC:= ''; FERR:= ''; VDFERR:= ''; SODI:= ''; VDSODI :='';

       qrinfnutricional_produto.close;
       //   dm.qrinfnutricional_produto.sql.clear;
       qrinfnutricional_produto.DataSet.CommandText := 'select * from PRODUTOS_INFO_ADIC where cod_produto = '''+CDS_BALANCA.fieldbyname('codigo').asstring+''' order by codigo';
       qrinfnutricional_produto.Open;

        qrinfnutricional_produto.Open;

        if qrinfnutricional_produto.RecordCount > 0 then
        begin
             texto :=  'N';
             texto1 := '0';
             porc :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('porcao').asstring,3,'0');

             UNID :=   completat(qrinfnutricional_produto.fieldbyname('UNIDADE_PORCAO').asstring,1,'0');
             PART1 :=  completat(qrinfnutricional_produto.fieldbyname('PARTE_INTEIRA').asstring,2,'0');
             PART2 :=  completat(qrinfnutricional_produto.fieldbyname('PARTE_DECIMAL').asstring,1,'0');
             MEDID :=  completat(qrinfnutricional_produto.fieldbyname('MEDIDA_CASEIRA').asstring,2,'0');

             calo :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('valor_calorico').asstring,4,'0');


             carb :=   formatfloat('##0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('carboidratos').asFloat);

             prot :=   formatfloat('#0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('proteinas').Asfloat);

             gord :=   formatfloat('#0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurastotais').asfloat);

             satu :=   formatfloat('#0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurassaturadas').asfloat);

             cole :=   formatfloat('#0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('colesterol').asFloat);

             fibr :=   formatfloat('#0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('fibra').asfloat);

             sodi :=   formatfloat('###0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('sodio').asfloat);

             posi := pos(',',carb); if posi  > 0 then delete(carb,posi,1);
             posi := pos(',',prot); if posi  > 0 then delete(prot,posi,1);
             posi := pos(',',gord); if posi  > 0 then delete(gord,posi,1);
             posi := pos(',',satu); if posi  > 0 then delete(satu,posi,1);
             posi := pos(',',cole); if posi  > 0 then delete(cole,posi,1);
             posi := pos(',',fibr); if posi  > 0 then delete(fibr,posi,1);
             posi := pos(',',sodi); if posi  > 0 then delete(sodi,posi,1);


             carb  := completat(carb ,4,'0');
             prot := completat(prot,3,'0');
             gord := completat(gord,3,'0');
             satu := completat(satu,3,'0');
             cole := completat(cole,3,'0');
             fibr := completat(fibr,3,'0');
             sodi := completat(sodi,5,'0');

             writeln(txt_nutri,TEXTO+codbar+TEXTO1+porc+UNID+PART1+PART2+MEDID+calo+carb+prot+gord+satu+cole+fibr+sodi)
          end;


       Inc(PorSegundo);
       progressbar1.position := i;
       Cds_balanca.Next;
    end;
    Cds_balanca.EnableControls;
    //DM.ibMovimentos.Close;
    CreateDir('C:\siace\exporta');
    wArquivo  := 'TXITENS';
    Arquivo1.SaveToFile('C:\SIACE\exporta\'+wArquivo+'.TXT');
    FreeAndNil(Arquivo1);
    ShowMessage('Arquivo TXITENS Gerado com Sucesso, na pasta C:\siace\exporta...');
    progressbar1.position := 0;
   end;
      closefile(txt_receita);
      closefile(txt_nutri);

   //CADASTRO.TXT c/ info extra
    begin
    Arquivo2 := TStringList.Create; //Instancia a variavel Arquivo
    //qry_setor.Open;
    CDS_BALANCA.Open;
    progressbar1.max := Cds_balanca.RecordCount;
    label2.Caption := IntToStr(Cds_balanca.RecordCount ); //e tambem no label;
    PorSegundo := 0;
    progressbar1.position := 0;
    CDS_BALANCA.DisableControls;
    CDS_BALANCA.First;
  //GRAVA LINHAS NOS ARQUIVOS
    while not CDS_BALANCA.Eof do
    begin
      HoraAnterior := Now;
      Label3.Caption := 'Média de execução: '+ IntToStr(PorSegundo);
      Resultado := IntToStr(Cds_balanca.RecordCount - Cds_balanca.RecNo);
      Label4.Caption := 'Faltando '+ resultado +' registros';
      if PorSegundo <= 0 then //previne "EdivByZero"
      Label5.Caption := ''
      else
      Label5.Caption := 'Tempo estimado: '+ CurrToStr((Cds_balanca.RecordCount - Cds_balanca.RecNo) / PorSegundo) +' segundos';
      Application.ProcessMessages; // pode deixar a execução mais lenta, porém, não trava a aplicação durante o while

       {Transforma as variaveis para receber zero antes}
       // item       := FORMATCUCDS_balancaPRECOEXP.AsFloat;
       iten       := FormatCurr('000000', CDS_balancaPRECOEXP.AsCurrency * 100);
      // valor_iten := (iten);
       depto      := CDS_BALANCADEPTO.AsString;
       etiqdepto  := CDS_balancaETQTA_DEPTO.AsString;
       tipo_prod  := CDS_balancaTIPO_PRODUTO.AsString;
       codbar     := Formatar(CDS_BALANCACODIGO_BARRAS.AsString,6,FALSE,'0');
       valor_iten := iten; //Formatar(Valor_iten, 6, fALSE,'0');
       validade   := Formatar(CDS_balancaVALIDADE_PRODUTO.AsString, 3,False,'0');
       desc       := Formatar(CDS_balancaDESCRICAOEXP.AsString, 25, True, ' ');

        qrinfnutricional_produto.close;
       //   dm.qrinfnutricional_produto.sql.clear;
       qrinfnutricional_produto.DataSet.CommandText := 'select * from PRODUTOS_INFO_ADIC where cod_produto = '''+CDS_BALANCA.fieldbyname('codigo').asstring+''' order by codigo';
       qrinfnutricional_produto.Open;

        qrinfnutricional_produto.Open;

        if qrinfnutricional_produto.RecordCount > 0 then
         texto := Formatar(CDS_BALANCACODIGO_BARRAS.AsString,6,FALSE,'0')
        else
         texto := '000000';
        

         texto1 := '000';
         texto2 := '0';
         texto3 := '00';
         texto4 := '0';
         texto5 := '00';

       {Criando os arquivos para TXT}
       Arquivo2.Add(depto+ tipo_prod +codbar + valor_iten + validade + desc + desc + texto+TEXTO1+TEXTO2+TEXTO3+TEXTO4+TEXTO5);
       E := E + 1;

      // Inc(PorSegundo);
      progressbar1.position := i;
      CDS_BALANCA.Next;
    end;
    CDS_BALANCA.EnableControls;
    CreateDir('C:\siace\exporta');
    wArquivo2 := 'CADASTRO';
    Arquivo2.SaveToFile('C:\SIACE\exporta\'+wArquivo2+'.TXT');
    FreeAndNil(Arquivo2);
    ShowMessage('Arquivo CADASTRO.TXT Gerado com Sucesso, Na pasta c:\siace\exporta');
    progressbar1.position := 0;

  end;
   END else


  // gera para balanca filizola
  if suiCheckBox2.Checked then
  begin
  HoraAnterior := Now;
  PorSegundo := 0;
  if Cds_balanca.IsEmpty then
  begin
    raise Exception.Create('Atenção! Não tem dados para gerar Arquivo TXT.');
        Exit;
  end else
  begin
    Arquivo1 := TStringList.Create; //Instancia a variavel Arquivo
    Cds_balanca.Open;

    progressbar1.max := Cds_balanca.RecordCount;
    label2.Caption := IntToStr(Cds_balanca.RecordCount ); //e tambem no label;
    //PorSegundo := 0;
    progressbar1.position := 0;

     CreateDir('C:\siace\exporta');

     assignfile(txt_receita,'C:\siace\exporta\rec_ass.txt'); // txt3
     assignfile(txt_nutri,'C:\siace\exporta\nutri.txt'); // txt3

      rewrite(txt_receita);
      rewrite(txt_nutri);

    Cds_balanca.DisableControls;
    Cds_balanca.First;
  //GRAVA LINHAS NOS ARQUIVOS
    while not Cds_balanca.Eof do
    begin
      HoraAnterior := Now;
      Label3.Caption := 'Média de execução: '+ IntToStr(PorSegundo);
      Resultado := IntToStr(Cds_balanca.RecordCount - Cds_balanca.RecNo);
      Label4.Caption := 'Faltando '+ resultado +' registros';
      if PorSegundo <= 0 then //previne "EdivByZero"
      Label5.Caption := ''
      else
      Label5.Caption := 'Tempo estimado: '+ CurrToStr((Cds_balanca.RecordCount - Cds_balanca.RecNo) / PorSegundo) +' segundos';
      Application.ProcessMessages; // pode deixar a execução mais lenta, porém, não trava a aplicação durante o while

       {Transforma as variaveis para receber zero antes}
      // item       := FORMATCUCDS_balancaPRECOEXP.AsFloat;
       iten       := FormatCurr('0000000', CDS_balancaPRECOEXP.AsCurrency * 100);
      // valor_iten := (iten);
       depto      := CDS_BALANCADEPTO.AsString;
       etiqdepto  := CDS_balancaETQTA_DEPTO.AsString;
       tipo_prod  := CDS_balancaTIPO_PRODUTO.AsString;
       codbar     := Formatar(CDS_balancaCODIGO_BARRAS.AsString,6,FALSE,'0');
       valor_iten := iten; //Formatar(Valor_iten, 6, fALSE,'0');
       validade   := Formatar(CDS_balancaVALIDADE_PRODUTO.AsString, 3,False,'0');
       desc       := Formatar(CDS_balancaDESCRICAOEXP.AsString, 22, True, ' ');

       {Criando os arquivos para TXT}
       Arquivo1.Add(codbar + tipo_prod + desc + valor_iten + validade );
      // arquivo2.Add()
       i := i + 1;

       porc:= ''; CALo:= ''; VDCALo:= ''; CARB:= ''; VDCARB:= ''; PROT:= ''; VDPROT:= ''; GORD:= ''; VDGORD:= ''; SATU:= ''; VDSATU:= ''; COLE:= ''; VDCOLE:= ''; FIBR:= ''; VDFIBR:= ''; CALC:= ''; VDCALC:= ''; FERR:= ''; VDFERR:= ''; SODI:= ''; VDSODI :='';

       qrinfnutricional_produto.close;
    //   dm.qrinfnutricional_produto.sql.clear;
       qrinfnutricional_produto.DataSet.CommandText := 'select * from PRODUTOS_INFO_ADIC where cod_produto = '''+CDS_BALANCA.fieldbyname('codigo').asstring+''' order by codigo';
       qrinfnutricional_produto.Open;

        qrinfnutricional_produto.Open;

        if qrinfnutricional_produto.RecordCount > 0 then
        begin
             porc :=   complet(QRINFNUTRICIONAL_PRODUTO.fieldbyname('porcao').asstring,35,' ');
             calo :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('valor_calorico').asstring,5,'0');

             vdcalo := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('valor_calorico_vd').asstring,4,'0');

             carb :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('carboidratos').asstring,5,'0');
             vdcarb := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('carboidratos_vd').asstring,4,'0');
             prot :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('proteinas').asstring,5,'0');
             vdprot := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('proteinas_vd').asstring,4,'0');
             gord :=   formatfloat('###0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurastotais').asfloat);
             vdgord := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurastotais_vd').asstring,4,'0');
             satu :=   formatfloat('###0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurassaturadas').asfloat);
             vdsatu := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('gordurassaturadas_vd').asstring,4,'0');
             cole :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('colesterol').asstring,5,'0');
             vdcole := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('colesterol_vd').asstring,4,'0');
             fibr :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('fibra').asstring,5,'0');
             vdfibr := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('fibra_vd').asstring,4,'0');
             calc :=   formatfloat('###0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('calcio').asfloat);
             vdcalc := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('calcio_vd').asstring,4,'0');
             ferr :=   formatfloat('###0.0',QRINFNUTRICIONAL_PRODUTO.fieldbyname('ferro').asfloat);
             vdferr := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('ferro_vd').asstring,4,'0');
             sodi :=   completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('sodio').asstring,5,'0');
             vdsodi := completat(QRINFNUTRICIONAL_PRODUTO.fieldbyname('sodio_vd').asstring,4,'0');

             posi := pos(',',gord); if posi  > 0 then delete(gord,posi,1);
             posi := pos(',',satu); if posi  > 0 then delete(satu,posi,1);
             posi := pos(',',calc); if posi  > 0 then delete(calc,posi,1);
             posi := pos(',',ferr); if posi  > 0 then delete(ferr,posi,1);
             gord := completat(gord,5,'0');
             satu := completat(satu,5,'0');
             calc := completat(calc,5,'0');
             ferr := completat(ferr,5,'0');

             writeln(txt_nutri,codbar+porc+calo+vdcalo+carb+vdcarb+prot+vdprot+gord+vdgord+satu+vdsatu+cole+vdcole+fibr+vdfibr+calc+vdcalc+ferr+vdferr+sodi+vdsodi)
          end;

           //receita
       { if frmmodulo.qrproduto.fieldbyname('codreceita').asstring <> '' then
         begin
           texto := 'GERAL       ';
           TEXTO1:= frmModulo.qrproduto.fieldbyname('codbarra').asstring;
           TEXTO2 := frmModulo.qrproduto.fieldbyname('codreceita').asstring;
           texto3 := frmModulo.qrproduto.fieldbyname('receita').asstring;
           while length(texto1) < 6 do texto1 := '0'+texto1;
           while length(texto2) < 6 do texto2 := '0'+texto2;
           while length(texto3) < 200 do texto3 := texto3+' ';
           while length(texto3) > 200 do delete(texto3,201,1);
           writeln(txt_receita,texto+texto1+texto2+texto3+'@');
         end;   }
           
       Inc(PorSegundo);
       progressbar1.position := i;
       Cds_balanca.Next;
    end;

    Cds_balanca.EnableControls;
    wArquivo  := 'CADTXT';
    Arquivo1.SaveToFile('C:\SIACE\exporta\'+wArquivo+'.TXT');
    FreeAndNil(Arquivo1);
    ShowMessage('Arquivo CADTXT Gerado com Sucesso, Na pasta c:\siace\exporta');
    progressbar1.position := 0;
      closefile(txt_receita);
      closefile(txt_nutri);
  end;
    // GERA SETOR FILIZOLA  ///
   begin
    Arquivo2 := TStringList.Create; //Instancia a variavel Arquivo
    //qry_setor.Open;
    Cds_setor.Open;
    progressbar1.max := Cds_balanca.RecordCount;
    label2.Caption := IntToStr(Cds_balanca.RecordCount ); //e tambem no label;
    PorSegundo := 0;
    progressbar1.position := 0;
    cds_setor.DisableControls;
    Cds_setor.First;
  //GRAVA LINHAS NOS ARQUIVOS
    while not Cds_setor.Eof do
    begin
      HoraAnterior := Now;
      Label3.Caption := 'Média de execução: '+ IntToStr(PorSegundo);
      Resultado := IntToStr(Cds_balanca.RecordCount - Cds_balanca.RecNo);
      Label4.Caption := 'Faltando '+ resultado +' registros';
      if PorSegundo <= 0 then //previne "EdivByZero"
      Label5.Caption := ''
      else
      Label5.Caption := 'Tempo estimado: '+ CurrToStr((Cds_balanca.RecordCount - Cds_balanca.RecNo) / PorSegundo) +' segundos';
      Application.ProcessMessages; // pode deixar a execução mais lenta, porém, não trava a aplicação durante o while

       {Transforma as variaveis para receber zero antes}
       categoria  := Formatar(cds_setorCATEGORIA.AsString, 12, True, ' ');
       codigo     := Formatar(cds_setorCODIGO.AsString,6,FALSE,'0');
       sequencia       := Formatar(cds_setorSEQUENCIA.AsString, 6,False,'0');

       {Criando os arquivos para TXT}
       Arquivo2.Add(categoria + codigo + sequencia);
       E := E + 1;

      // Inc(PorSegundo);
      progressbar1.position := i;
      cds_setor.Next;
    end;
    cds_setor.EnableControls;
    CreateDir('C:\siace\exporta');
    wArquivo2 := 'SETORTXT';
    Arquivo2.SaveToFile('C:\SIACE\exporta\'+wArquivo2+'.TXT');
    FreeAndNil(Arquivo2);
    ShowMessage('Arquivo SETORTXT Gerado com Sucesso, Na pasta c:\siace\exporta');
    progressbar1.position := 0;

  end;

end;

end;


procedure TFormExportaBalanca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormExportaBalanca := nil;
end;

procedure TFormExportaBalanca.suiButton3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormExportaBalanca.suiCheckBox2Click(Sender: TObject);
begin
   suiCheckBox1.Checked := False;
   suiCheckBox3.Checked := False;

   QRY_BALANCA.Active := False;
   Cds_balanca.Active := False;
   QRY_BALANCA.Params[0].Value := 2;
   QRY_BALANCA.Active := TRUE;
   Cds_balanca.Active := TRUE;
   qry_setor.Active:= False;
   cds_setor.Active:= False;
   qry_setor.Active:= TRUE;
   cds_setor.Active:= TRUE;
   qrinfnutricional_produto.open;
end;

procedure TFormExportaBalanca.suiButton2Click(Sender: TObject);
begin
   if suiCheckBox1.Checked then
   begin
   QRY_BALANCA.Active := False;
   Cds_balanca.Active := False;
   QRY_BALANCA.Params[0].Value := 1;
   QRY_BALANCA.Active := TRUE;
   Cds_balanca.Active := TRUE;
   qrinfnutricional_produto.open;
   end ELSE
   if suiCheckBox2.Checked then
   begin
   QRY_BALANCA.Active := False;
   Cds_balanca.Active := False;
   QRY_BALANCA.Params[0].Value := 2;
   QRY_BALANCA.Active := TRUE;
   Cds_balanca.Active := TRUE;
   qry_setor.Active:= False;
   cds_setor.Active:= False;
   qry_setor.Active:= TRUE;
   cds_setor.Active:= TRUE;
   qrinfnutricional_produto.open;
end;
end;

procedure TFormExportaBalanca.suiCheckBox3Click(Sender: TObject);
begin
   suiCheckBox2.Checked := False;
   suiCheckBox1.Checked := False;

   QRY_BALANCA.Active := False;
   Cds_balanca.Active := False;
   QRY_BALANCA.Params[0].Value := 1;
   QRY_BALANCA.Active := TRUE;
   Cds_balanca.Active := TRUE;
   qrinfnutricional_produto.open;
end;

end.
