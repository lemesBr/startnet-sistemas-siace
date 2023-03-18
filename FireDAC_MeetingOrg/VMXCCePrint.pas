unit VMXCCePrint;

interface

uses Windows, RpDefine, RpBase, RpSystem, Graphics, SysUtils, Classes, RpRenderPDF, RpDevice, MaskUtils;

type
   TpFormatoPapel = (fp_Portrait, fp_LandScape);
   TpAlinhamento = (al_left, al_right, al_center);
   TpSaida = (tps_Print, tps_preview, tps_PDF);

type
   TLeitorXML = class(TObject)
   private
      Arquivo: string;
   public
      procedure lerArquivo( NomeDoArquivo: string );
      function valor( ARVORE: string; TAG: string ): string;
end;

type
   TCCeImp = class(TRvSystem)
      procedure RaveBeforePrint(Sender: TObject);
      procedure RavePrint(Sender: TObject);
   private
      rvPDF : TRvRenderPDF;
      FSaida: TpSaida;
      FImpressora: String;
      FArqPDF: String;
      FLayOut: TpFormatoPapel;
      FXMLNFe: string;
      FXMLCCe: string;
      FSoftHouse: string;
      EspLinha: Integer;
      LeitorNFe: TLeitorXML;
      LeitorCCe: TLeitorXML;
   public
      constructor Create( AOwner: TComponent);
      destructor Destroy;
      procedure defineSaida(Saida: TpSaida; DestinoImpOuPDF: String);
      procedure defineImpressora( Impressora: String );
      procedure defineArqPDF( NomeArqPDF: String );
      procedure defineLayOut( LayOut: TpFormatoPapel );
      procedure defineXMLNFe( NomeDoArquivoXML: string );
      procedure defineXMLCCe( NomeDoArquivoXML: string );
      procedure defineSoftHouse( NomeDaSoftwareHouse: string );
      procedure impBox( ColunaInicialMM, LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer; Titulo, Conteudo: String; Alinhamento: TpAlinhamento = al_left );
      procedure impBoxMemo( ColunaInicialMM, LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer; Titulo, Conteudo: String; NumeroLinhas: Integer; CaracterPreenchimento: String = '');
      procedure impDefTamFon( Tamanho: Integer );
      procedure impDefBold( Bold: boolean );
      procedure impCon( ColunaMM: Integer; LinhaMM: Integer; Conteudo: String; Alinhamento: TpAlinhamento = al_left ; Bold: Boolean = false ; TamanhoMax: Integer = 0 );
      procedure impDefEspLinha( Espessura: Integer );
      procedure impLine( ColunaInicialMM,LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer );
      procedure impRetangulo( ColunaInicialMM,LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer );
      procedure newPage;
      procedure formataMemo( Conteudo: String; TamanhoMaxMM: Integer; var Linhas: TStringList; Bold: boolean = false );
      procedure PrintImage(Row,Col,ImageWidth,ImageHeight:Double;Bitmap:TBitmap;FileName:String='');
      function formataNumero( Mascara, Conteudo: String): String;
end;

implementation

uses StrUtils;

procedure TLeitorXML.lerArquivo( NomeDoArquivo: string );
var
Lista: TStringList;
begin
   if ( FileExists(NomeDoArquivo) ) then
   begin
      Lista := TStringList.Create;
      Lista.LoadFromFile(NomeDoArquivo);
      Arquivo := Lista.Text;
      Lista.Free;
   end;
end;

function TLeitorXML.valor( ARVORE: string; TAG: string ): string;
var
R,T,TA,TB: String;
Lista: TStringList;
i,p1,p2,p: integer;
begin

   Lista := TStringList.Create;

   //
   // Monta Hierarquia
   //

   i:=1;
   T:='';
   R:='';

   while ( i <= Length(ARVORE) ) do
   begin
      if Copy(ARVORE,i,1) = ',' then
      begin
         Lista.Add(T);
         T := '';
      end
      else
      begin
         T := T + Copy(ARVORE,i,1);
      end;
      inc(i);
   end;
   if Length(T) > 0 then
      Lista.Add(T);

   TA := LowerCase(Arquivo);
   TB := Arquivo;

   for i := 0 to Lista.Count-1 do
   begin
      p1 := pos('<' + lowerCase(Lista[i]) , TA);
      p2 := pos('</' + lowerCase(Lista[i]) + '>' , TA);
      if (p1>0) and ( p2>p1) then
      begin
         TA := Copy(TA,p1,(p2-p1)+length(TAG)+3);
         TB := Copy(TB,p1,(p2-p1)+length(TAG)+3);
      end;
   end;

   if Length(TA) > 0 then
   begin
      if pos(TAG+'="',TA)>0 then
      begin
         R := '';
         p1 := pos(TAG+'=',TA);
         p2 := 0;
         while (true) do
         begin
            if Copy(TA,p1,1) = '"' then
            begin
               p2:=p2+1;
               if (p2=2) then
                  break;
            end
            else
            begin
               if (p2=1) then
               begin
                  R := R + Copy(TB,p1,1);
               end;
            end;
            p1 := p1 + 1;
         end;
      end
      else
      begin
         p  := 0;
         p1 := pos('<' + lowerCase(TAG) , TA);
         p2 := pos('</' + lowerCase(TAG) + '>' , TA);
         if (p1>0) and ( p2>p1) then
         begin
            TA := Copy(TA,p1,(p2-p1)+length(TAG)+3);
            TB := Copy(TB,p1,(p2-p1)+length(TAG)+3);
            p  := 1;
         end
         else
         begin
            if (p1>0) then
            begin
               p2 := pos('/>' , TA);
               if (p1>0) and ( p2>p1) then
               begin
                  TA := Copy(TA,p1,(p2-p1)+length(TAG)+3);
                  TB := Copy(TB,p1,(p2-p1)+length(TAG)+3);
                  p  := 1;
               end;
            end;
         end;
         if (p>0) and (Length(TB) > 0) then
         begin
            R := Copy(TB,length(TAG)+3,Length(TB)-Length(TAG)-Length(TAG)-5);
         end;
      end;
   end;

   Lista.Free;
   Result := R;

end;

constructor TCCeImp.Create(AOwner: TComponent);
begin
   inherited;
   OnBeforePrint := RaveBeforePrint;
   OnPrint := RavePrint;
   SystemPrinter.Units := unMM;
   SystemSetups := [ssAllowCopies,ssAllowCollate,ssAllowDuplex,ssAllowDestPreview,ssAllowDestPrinter,ssAllowDestFile,ssAllowPrinterSetup,ssAllowPreviewSetup];
   SystemOptions := [soAllowPrintFromPreview,soPreviewModal];
   rvPDF := TRvRenderPDF.Create(self);
   rvPDF.EmbedFonts:=False;
   rvPDF.ImageQuality:=90;
   rvPDF.MetafileDPI:=300;
   rvPDF.UseCompression:=False;
   rvPDF.Active:=True;
   FSaida := tps_Print;
   FImpressora := '';
   FArqPDF := '';
   FLayOut := fp_Portrait;
   FXMLNFe := '';
   FXMLCCe := '';
   FSoftHouse := '';
   LeitorNFe := TLeitorXML.Create;
   LeitorCCe := TLeitorXML.Create;
end;

destructor TCCeImp.Destroy;
begin
   LeitorNfe.Free;
   LeitorCCe.Free;
   inherited;
end;

procedure TCCeImp.RaveBeforePrint(Sender: TObject);
begin

   BaseReport.SelectPaper('A4');
   BaseReport.SetPaperSize(DMPAPER_A4,0,0);
   BaseReport.FontName := 'Arial';
   BaseReport.FontColor := clBlack;

   if ( FLayOut = fp_Portrait ) then
      BaseReport.Orientation := poPortrait
   else
      BaseReport.Orientation := poLandScape;

end;


procedure TCCeImp.RavePrint(Sender: TObject);
var
X: String;
begin

   LeitorNFe.lerArquivo(FXMLNFe);
   LeitorCCe.lerArquivo(FXMLCCe);

   if ( LeitorCCe.valor('ProcEventoNFe,evento,infevento','tpAmb') = '2' ) then
   begin
      impDefTamFon(25);
      BaseReport.FontColor:=clSilver;
      BaseReport.Underline:=True;
      BaseReport.FontRotation:=45;
      impcon(25,230,'AMBIENTE DE HOMOLOGAÇÃO - SEM VALOR FISCAL',al_left,true);
      BaseReport.FontColor:=clBlack;
      BaseReport.Underline:=False;
      BaseReport.FontRotation:=0;
   end;

   impRetangulo(10,10,200,28);
   impDefTamFon(16);
   impCon(105,17,'RELATÓRIO DE CARTA DE CORREÇÃO ELETRÔNICA',al_center,true);
   impDefTamFon(10);
   impCon(105,22,'Este relatório não tem valor fiscal e é uma simples representação da CCe indicada abaixo.',al_center,false);
   impCon(105,26,'CONSULTE A AUTENTICIDADE DA CARTA DE CORREÇÃO ELETRÔNICA NO SITE DA SEFAZ AUTORIZADORA.',al_center,false);

   impDefTamFon(10);
   impCon(10,37,'NOTA FISCAL ELETRÔNICA',al_left,true);
   impBox(10,38,22,46,'SÉRIE',Format('%3.3d',[StrToInt(LeitorNFe.valor('nfeproc,nfe,infnfe,ide','serie'))]),al_center);
   impBox(22,38,76,46,'NÚMERO DA NOTA FISCAL ELETRÔNICA',FormataNumero('000.000.000',LeitorNFe.valor('nfeproc,nfe,infnfe,ide','nnf')),al_center);
   impBox(76,38,200,46,'CHAVE DE ACESSO',FormataNumero('0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000',Copy(LeitorNFe.valor('nfeproc,nfe,infnfe','id'),4,44)),al_center);

   impDefTamFon(10);
   impCon(10,56,'CARTA DE CORREÇÃO ELETRÔNICA',al_left,true);
   impBox(10,57,22,65,'ÓRGÃO',FormataNumero('00',LeitorCCe.valor('ProcEventoNFe,evento,infevento','cOrgao')),al_center);

   X := LeitorCCe.valor('ProcEventoNFe,evento,infevento','tpAmb');
   if ( X = '1' ) then
      X := 'PRODUÇÃO'
   else if ( X = '2' ) then
      X := 'HOMOLOGAÇÃO - SEM VALOR FISCAL'
   else
      X := '';

   impBox(22,57,154,65,'TIPO DE AMBIENTE',LeitorCCe.valor('ProcEventoNFe,evento,infevento','tpAmb') + ' - ' + X,al_left);

   X := LeitorCCe.valor('ProcEventoNFe,evento,infevento','dhEvento');
   X := Copy(X,9,2) + '/' +
        Copy(X,6,2) + '/' +
        Copy(x,1,4) + ' ' +
        Copy(X,12,8);

   impBox(154,57,200,65,'DATA E HORÁRIO DO EVENTO',X,al_center);
   impBox(10,65,28,73,'EVENTO',LeitorCCe.valor('ProcEventoNFe,evento,infevento','tpEvento'),al_center);
   impBox(28,65,138,73,'DESCRIÇÃO DO EVENTO',LeitorCCe.valor('ProcEventoNFe,evento,infevento,detEvento','descEvento'),al_left);
   impBox(138,65,170,73,'SEQUÊNCIA DO EVENTO',LeitorCCe.valor('ProcEventoNFe,evento,infevento','nSeqEvento'),al_center);
   impBox(170,65,200,73,'VERSÃO DO EVENTO',LeitorCCe.valor('ProcEventoNFe,evento,infevento','verEvento'),al_center);
   impBox(10,73,200,81,'CARTA DE CORREÇÃO ELETRÔNICA',ExtractFileName(FXMLCCe),al_left);
   impBox(10,81,120,89,'STATUS',LeitorCCe.valor('ProcEventoNFe,retevento,infevento','CStat') + ' - ' + LeitorCCe.valor('ProcEventoNFe,retevento,infevento','xMotivo'),al_left);
   impBox(120,81,154,89,'PROTOCOLO',LeitorCCe.valor('ProcEventoNFe,retevento,infevento','nProt'),al_center);

   X := LeitorCCe.valor('ProcEventoNFe,retevento,infevento','dhRegEvento');
   X := Copy(X,9,2) + '/' +
        Copy(X,6,2) + '/' +
        Copy(x,1,4) + ' ' +
        Copy(X,12,8);

   impBox(154,81,200,89,'DATA E HORÁRIO DO REGISTRO',X,al_center);

   impDefTamFon(10);
   impCon(10,98,'EMITENTE',al_left,true);
   impBox(10,99,158,107,'NOME / RAZÃO SOCIAL',LeitorNFe.valor('nfeproc,nfe,infnfe,emit','xnome'),al_left);
   impBox(158,99,200,107,'CNPJ / CPF',FormataNumero('00.000.000/0000-00',LeitorNFe.valor('nfeproc,nfe,infnfe,emit','cnpj')),al_center);
   impBox(10,107,108,115,'ENDEREÇO',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','xlgr') + ', ' + LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','nro'),al_left);
   impBox(108,107,172,115,'BAIRRO',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','xbairro'),al_left);
   impBox(172,107,200,115,'CEP',FormataNumero('00000-000',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','cep')),al_center);
   impBox(10,115,98,123,'MUNICÍPIO',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','xmun'),al_left);
   impBox(98,115,147,123,'FONE/FAX',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','fone'),al_center);
   impBox(147,115,158,123,'ESTADO',LeitorNFe.valor('nfeproc,nfe,infnfe,emit,enderemit','UF'),al_center);
   impBox(158,115,200,123,'INSCRIÇÃO ESTADUAL',LeitorNFe.valor('nfeproc,nfe,infnfe,emit','IE'),al_center);

   impDefTamFon(10);
   impCon(10,133,'REMETENTE / DESTINATÁRIO',al_left,true);
   impBox(10,134,158,142,'NOME / RAZÃO SOCIAL',LeitorNFe.valor('nfeproc,nfe,infnfe,dest','xnome'),al_left);
   impBox(158,134,200,142,'CNPJ / CPF',FormataNumero('00.000.000/0000-00',LeitorNFe.valor('nfeproc,nfe,infnfe,dest','cnpj')),al_center);
   impBox(10,142,108,150,'ENDEREÇO',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','xlgr') + ', ' + LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','nro'),al_left);
   impBox(108,142,172,150,'BAIRRO',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','xbairro'),al_left);
   impBox(172,142,200,150,'CEP',FormataNumero('00000-000',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','cep')),al_center);
   impBox(10,150,98,158,'MUNICÍPIO',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','xmun'),al_left);
   impBox(98,150,147,158,'FONE/FAX',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','fone'),al_center);
   impBox(147,150,158,158,'ESTADO',LeitorNFe.valor('nfeproc,nfe,infnfe,dest,enderdest','UF'),al_center);
   impBox(158,150,200,158,'INSCRIÇÃO ESTADUAL',LeitorNFe.valor('nfeproc,nfe,infnfe,dest','IE'),al_center);

   impDefTamFon(10);
   impCon(10,168,'CORREÇÃO',al_left,true);
   impBoxMemo(10,169,200,227,'',LeitorCCe.valor('ProcEventoNFe,evento,infevento,detEvento','xcorrecao'),13,' - *');

   impDefTamFon(10);
   impCon(10,238,'CONDIÇÕES DE USO',al_left,true);
   impBoxMemo(10,239,200,276,'',LeitorCCe.valor('ProcEventoNFe,evento,infevento,detEvento','xconduso'),8,' - *');

   impDefTamFon(7);
   impCon(10,285,'DATA E HORA DA IMPRESSÃO: '+FormatDateTime('dd/mm/yyyy hh:mm:ss',Now),al_left,false);

   if ( length(FSoftHouse) > 0 ) then
   begin
      impCon(200,285,'Desenvolvido por ' + FSoftHouse,al_right);
   end;

end;

procedure TCCeImp.defineSaida(Saida: TpSaida; DestinoImpOuPDF: String);
begin

   FSaida := Saida;

   if ( FSaida = tps_PDF ) then
   begin
      RenderObject   := rvPDF;
      OutputFileName := DestinoImpOuPDF;
      DefaultDest    := rdFile;
      DoNativeOutput := False;
   end
   else if ( FSaida = tps_Print ) then
   begin
      DefaultDest    := rdPrinter;
      if ( Trim(DestinoImpOuPDF) <> '' ) then
      begin
         RpDev.SelectPrinter(DestinoImpOuPDF,True);
      end;
   end
   else if ( FSaida = tps_preview ) then
   begin
      DefaultDest    := rdPreview;
      if ( Trim(DestinoImpOuPDF) <> '' ) then
      begin
         RpDev.SelectPrinter(DestinoImpOuPDF,True);
      end;
   end;

end;

procedure TCCeImp.defineImpressora( Impressora: String );
begin
  FImpressora := Impressora;
end;

procedure TCCeImp.defineArqPDF(NomeArqPDF: String);
begin
  FArqPDF := NomeArqPDF;
end;

procedure TCCeImp.defineLayOut( LayOut: TpFormatoPapel );
begin
  FLayOut := LayOut;
end;

procedure TCCeImp.PrintImage(Row,Col,ImageWidth,ImageHeight:Double;Bitmap:TBitmap;FileName:String='');
var Calc, L1,C1,L2,C2:Double;
   InternalBitmap:TBitmap;
begin
   InternalBitmap:=TBitmap.Create;
   Try
     If not Assigned(Bitmap) Then Begin
       InternalBitmap.LoadFromFile(FileName);
     End Else Begin
       InternalBitmap.Assign(Bitmap);
     End;
     With BaseReport do Begin
        If ImageWidth <= 0.0 then begin
          Calc:=ImageHeight*(InternalBitmap.Width/300)/(InternalBitmap.Height/300);
          C1:=Col;L1:=Row;C2:=Col+Calc;L2:=Row+ImageHeight;
        end else if ImageHeight <= 0.0 then begin
          Calc:=ImageWidth*(InternalBitmap.Height/300)/(InternalBitmap.Width/300);
          C1 := Col; L1 := Row; C2 := Col+ImageWidth; L2 := Row+Calc;
        end else begin
          C1 := Col; L1 := Row; C2 := Col+ImageWidth; L2 := Row+ImageHeight;
        end;
        PrintBitmapRect(C1,L1,C2,L2,InternalBitmap);
     end;
   Finally
      InternalBitmap.Free;
   End;
end;

procedure TCCeImp.newPage;
begin
   BaseReport.NewPage;
end;

procedure TCCeImp.impDefTamFon( Tamanho: Integer );
begin
   BaseReport.FontSize := Tamanho;
end;

procedure TCCeImp.impDefBold( Bold: boolean );
begin
   BaseReport.bold := Bold;
end;

procedure TCCeImp.impCon( ColunaMM: Integer; LinhaMM: Integer; Conteudo: String; Alinhamento: TpAlinhamento = al_left ; Bold: Boolean = false ; TamanhoMax: Integer = 0 );
begin
   BaseReport.GotoXY( ColunaMM, LinhaMM );
   BaseReport.bold := Bold;

   if ( TamanhoMax > 0 ) then
   begin
      if ( Alinhamento = al_left ) then
      begin
         while ( Length(Conteudo) > 0 ) do
         begin
            if BaseReport.TextWidth(Conteudo) > TamanhoMax then
               Conteudo := Copy(Conteudo,1,Length(Conteudo)-1)
            else
               break;
         end;
      end;
   end;

   if ( Alinhamento = al_left ) then
      BaseReport.PrintLeft(Conteudo, ColunaMM);
   if ( Alinhamento = al_right ) then
      BaseReport.PrintRight(Conteudo, ColunaMM);
   if ( Alinhamento = al_center ) then
      BaseReport.PrintCenter(Conteudo, ColunaMM);

end;

procedure TCCeImp.formataMemo( Conteudo: String; TamanhoMaxMM: Integer; var Linhas: TStringList; Bold: boolean = false );
var
Linha,Palavra,C: String;
P: integer;
begin

   BaseReport.bold := Bold;
   Linhas.Clear;

   Linha := '';
   Palavra := '';
   P := 0;

   while P < Length(Conteudo) do
   begin

      inc(P);
      C := Copy(Conteudo,P,1);

      if( C = #$D ) then
      begin
         Linha := Linha + Palavra;
         Palavra := '';
         Linhas.Add(Linha);
         Linha := '';
         continue;
      end;
      if( C = #$A ) then
      begin
         continue;
      end;

      Palavra := Palavra + C;

      if ( C = ' ' ) then
      begin
         if BaseReport.TextWidth(Linha+Palavra) > TamanhoMaxMM then
         begin
            Linhas.Add(Linha);
            Linha := '';
         end
         else
         begin
            Linha := Linha + Palavra;
            Palavra := '';
         end;
      end;

   end;

   Linha := Linha + Palavra;

   if Length(Linha) > 0 then
      Linhas.Add(Linha);

end;

procedure TCCeImp.impDefEspLinha( Espessura: Integer );
begin
   EspLinha := Espessura;
   BaseReport.SetPen(clBlack,psSolid,EspLinha,pmBlack);
end;

procedure TCCeImp.impLine( ColunaInicialMM,LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer );
begin
   BaseReport.MoveTo(ColunaInicialMM, LinhaInicialMM);
   BaseReport.LineTo(ColunaFinalMM, LinhaFinalMM);
end;

procedure TCCeImp.impRetangulo( ColunaInicialMM,LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer );
begin
   BaseReport.MoveTo(ColunaInicialMM, LinhaInicialMM);
   BaseReport.LineTo(ColunaFinalMM, LinhaInicialMM);
   BaseReport.LineTo(ColunaFinalMM, LinhaFinalMM);
   BaseReport.LineTo(ColunaInicialMM, LinhaFinalMM);
   BaseReport.LineTo(ColunaInicialMM, LinhaInicialMM);
end;

procedure TCCeImp.defineXMLNFe( NomeDoArquivoXML: string );
begin
   FXMLNFe := NomeDoArquivoXML;
end;

procedure TCCeImp.defineXMLCCe( NomeDoArquivoXML: string );
begin
   FXMLCCe := NomeDoArquivoXML;
end;

procedure TCCeImp.impBox( ColunaInicialMM, LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer; Titulo, Conteudo: String; Alinhamento: TpAlinhamento = al_left );
var
Centro: Double;
begin

   impDefEspLinha(1);
   impRetangulo(ColunaInicialMM,LinhaInicialMM,ColunaFinalMM,LinhaFinalMM);
   impDefTamFon(6);
   impCon(ColunaInicialMM+1,LinhaInicialMM+3,Titulo,al_left,false,ColunaFinalMM-ColunaInicialMM-2);
   impDefTamFon(10);

   if ( Alinhamento = al_left ) then
   begin
      impCon(ColunaInicialMM+1,LinhaFinalMM-1,Conteudo,al_left,false,ColunaFinalMM-ColunaInicialMM-2);
   end else if ( Alinhamento = al_right ) then
   begin
      impCon(ColunaFinalMM+1,LinhaFinalMM-1,Conteudo,al_right,false,ColunaFinalMM-ColunaInicialMM-2);
   end else
   begin
      Centro := ColunaFinalMM + ColunaInicialMM;
      Centro := Centro * 0.5;
      impCon(Trunc(Centro),LinhaFinalMM-1,Conteudo,al_center,false,ColunaFinalMM-ColunaInicialMM-2);
   end;

end;

procedure TCCeImp.impBoxMemo( ColunaInicialMM, LinhaInicialMM, ColunaFinalMM, LinhaFinalMM: Integer; Titulo, Conteudo: String; NumeroLinhas: Integer; CaracterPreenchimento: String = '');
var
Linhas: TStringList;
Passo: Double;
LinhaAtual,iPasso,i: integer;
begin

   impDefEspLinha(1);
   impRetangulo(ColunaInicialMM,LinhaInicialMM,ColunaFinalMM,LinhaFinalMM);
   impDefTamFon(6);
   impCon(ColunaInicialMM+1,LinhaInicialMM+3,Titulo,al_left,false,ColunaFinalMM-ColunaInicialMM-2);
   impDefTamFon(10);

   // Monta lista de linhas
   Passo := LinhaFinalMM - LinhaInicialMM - 4;
   Passo := Passo / NumeroLinhas;

   // Preenchimento Total
   if ( Length(CaracterPreenchimento) ) > 0 then
   begin
      Conteudo := Conteudo + DupeString(CaracterPreenchimento,NumeroLinhas*100);
   end;

   // Distribiu linhas
   Linhas := TStringList.Create;
   formataMemo(Conteudo,ColunaFinalMM-ColunaInicialMM-4,Linhas,false);

   // Faz a impressão
   iPasso := Trunc(Passo);
   LinhaAtual := LinhaInicialMM + iPasso + 2;
   for i := 0 to Linhas.Count-1 do
   begin
      impCon(ColunaInicialMM+2,LinhaAtual,Linhas[i],al_left,false);
      LinhaAtual := LinhaAtual + iPasso;
      if ( i+1 >= NumeroLinhas ) then
         break;
   end;

end;

function TCCeImp.formataNumero( Mascara, Conteudo: String): String;
var
R,CM,CC,CS: String;
i,p: integer;
begin

   R := '';
   p := length(Conteudo);

   for i := Length(Mascara) downto 1 do
   begin

      CM := Copy(Mascara,i,1);

      if (CM='0') then
         CS := '0'
      else if (CM='#') then
         CS := ' '
      else
         CS := CM;

      if (CM='0') or (CS='#') then
      begin
         if (p>=1) then
         begin
            R := Copy(Conteudo,p,1) + R;
            p := p - 1;
         end
         else
         begin
            R := CS + R;
         end;
      end
      else
      begin
         R := CS + R;
      end;

   end;

   Result := R;

end;

procedure TCCeImp.defineSoftHouse( NomeDaSoftwareHouse: string );
begin
   FSoftHouse := NomeDaSoftwareHouse;
end;

end.


