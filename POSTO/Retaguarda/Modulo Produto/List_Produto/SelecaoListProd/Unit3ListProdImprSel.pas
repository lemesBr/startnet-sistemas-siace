unit Unit3ListProdImprSel;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, ExtCtrls, Buttons, variants, QuickRpt, Qrctrls, Placemnt, ComCtrls,
 RDprint;

type
 TProdutoListSelFrm = class(TForm)
   Panel1: TPanel;
   Label1: TLabel;
   Label2: TLabel;
   BitBtn1: TBitBtn;
   FormStorage1: TFormStorage;
   GroupBox1: TGroupBox;
   CheckBox1: TCheckBox;
   CheckBox2: TCheckBox;
   CheckBox3: TCheckBox;
   CheckBox4: TCheckBox;
   CheckBox5: TCheckBox;
   CheckBox6: TCheckBox;
   CheckBox7: TCheckBox;
   CheckBox8: TCheckBox;
   CheckBox9: TCheckBox;
   CheckBox13: TCheckBox;
   CheckBox12: TCheckBox;
   CheckBox11: TCheckBox;
   CheckBox10: TCheckBox;
   RDprint1: TRDprint;
   BitBtn2: TBitBtn;
   BitBtn3: TBitBtn;
   CheckBox14: TCheckBox;
   CheckBox15: TCheckBox;
   procedure FormCreate(Sender: TObject);
   procedure CheckBox1Click(Sender: TObject);
   procedure Textos(Sender: TObject; v: boolean);
   procedure BitBtn1Click(Sender: TObject);
   procedure listagem(Nomes: integer);
   function Header(Start: integer): integer;
   procedure BitBtn3Click(Sender: TObject);
   procedure BitBtn2Click(Sender: TObject);
   procedure FormClose(Sender: TObject; var Action: TCloseAction);
   procedure CheckBox14Click(Sender: TObject);
 private
   { Private declarations }
 public
   { Public declarations }
 end;

var
 ProdutoListSelFrm: TProdutoListSelFrm;
 cont: integer;
 senders: array[1..13] of TObject;
 colum, Nomes, l, c: array[1..13] of integer;
 s: string;

implementation

uses UnitListProd, UnitFrmPrincipal;


{$R *.DFM}

function Brush(Kind: byte; const S: string; n: byte): string;
var
 i, k: byte;
begin
 Result := S;
 Result := Trim(Result);
 Result := Copy(Result, 1,n);
 case Kind of
   0: while Length(Result) < n do
       Result := ' ' + Result;
   1: while Length(Result) < n do
       Result := Result + ' ';
   2:
      begin
       k := n - Length(Result);
       if k <= 0 then Exit;
       for i := 1 to k div 2 do
         Result := ' ' + Result;
       for i := 1 to (k div 2) + (k mod 2) do
         Result := Result + ' ';
      end;
  end;
end;

function LBrush(const S: string; n: byte): string;
begin
 Result := Brush(1,S, n);
end;

function RBrush(const S: string; n: byte): string;
begin
 Result := Brush(0,S, n);
end;

function CBrush(const S: string; n: byte): string;
begin
 Result := Brush(2,S, n);
end;

function Fill(const c: char; n: integer): string;
begin
 Result := '';
 while Length(Result) < n do
   Result := Result + c
end;

procedure TProdutoListSelFrm.FormCreate(Sender: TObject);
begin
 rdprint1.Abrir;
 cont := 1;
 if ProdutoListFrm.CheckBox5.Checked then
   CheckBox14.Enabled := True
 else
   CheckBox14.Enabled := False;
end;

procedure TProdutoListSelFrm.Textos(Sender: TObject; v: boolean);
begin
 if v then
  begin
   TCheckBox(Sender).Caption := copy(TCheckBox(Sender).Caption,
     length(IntToStr(cont)) + 4,30);
   if cont = 1 then
     label2.Caption := IntToStr(StrToInt(label2.Caption) + TCheckBox(Sender).tag + 2)
   else
     label2.Caption := IntToStr(StrToInt(label2.Caption) + TCheckBox(Sender).tag + 1);
  end
 else
  begin
   if cont - 1 = 1 then
     label2.Caption := IntToStr(StrToInt(label2.Caption) - TCheckBox(Sender).tag - 2)
   else
     label2.Caption := IntToStr(StrToInt(label2.Caption) - TCheckBox(Sender).tag - 1);
  end;
end;

procedure TProdutoListSelFrm.CheckBox1Click(Sender: TObject);
begin
 if TCheckBox(Sender).Checked then
  begin
   if TCheckBox(Sender).tag + 1 <= StrToInt(label2.Caption) then
    begin
     TCheckbox(Sender).Caption := IntToStr(Cont) + ' - ' + TCheckbox(Sender).Caption;
     TCheckbox(Sender).font.Style := [fsbold];
     senders[cont] := Sender;
     Nomes[cont] := TCheckbox(Sender).taborder;
     cont := cont + 1;
     textos(Sender, False);
    end
   else
    begin
    {TCheckbox(sender).onclick:=nil;
    TCheckbox(sender).checked:=false;
    TCheckbox(sender).onclick:=CheckBox1Click;
    application.messagebox('Não há campos restantes suficientes','Atenção',mb_ok+mb_iconinformation);}
     TCheckbox(Sender).Caption := IntToStr(Cont) + ' - ' + TCheckbox(Sender).Caption;
     TCheckbox(Sender).font.Style := [fsbold];
     senders[cont] := Sender;
     Nomes[cont] := TCheckbox(Sender).taborder;
     cont := cont + 1;
     textos(Sender, False);
     application.messagebox('Não é possivel imprimir mais do que 80 caracteres por linha',
       'Atenção', mb_ok + mb_iconinformation);
     Tcheckbox(Sender).Checked := False;
    end;
  end
 else
  begin
   if Sender = senders[cont - 1] then
    begin
     cont := cont - 1;
     textos(Sender, True);
     TCheckbox(Sender).font.Style := [];
    end
   else
    begin
     TCheckbox(Sender).onclick := nil;
     TCheckbox(Sender).Checked := True;
     TCheckbox(Sender).onclick := CheckBox1Click;
    end;
  end;
end;

procedure TProdutoListSelFrm.BitBtn1Click(Sender: TObject);
var
 y, line, page: integer;
 tit: string;
begin
 Rdprint1.TamanhoQteLinhas := 63;
 Rdprint1.TamanhoQteColunas := 80;
 line := 1;
 page := 1;

 //Se Nº Serie Marcado e Referência Desmarcado e Nome Desmarcado então Marca Nome
 if (CheckBox14.Checked = True) and (CheckBox1.Checked = False) and
   (CheckBox2.Checked = False) then
   CheckBox2.Checked := True;

 if ProdutoListFrm.QryListProd.active then
  begin
   if ProdutoListFrm.QryListProd.RecordCount > 0 then
    begin
     RDprint1.ImpC(line, 40,'Listagem de Produtos', [NEGRITO]);
     RDprint1.ImpC(2, 40, PrincipalFrm.LogoLabel.Caption, [NEGRITO]);
     line := header(3);
     ProdutoListFrm.QryListProd.First;

     if ProdutoListFrm.QryListProd['REFERENCIA'] = '' then
       ProdutoListFrm.QryListProd.Next;

     while not ProdutoListFrm.QryListProd.EOF do //Envia apenas os campos selecionados
      begin
       for y := 1 to cont - 1 do
        begin
         //------ recolhe dados do corpo ------
         listagem(Nomes[y]);
         if y = 1 then
          begin
           if s <> '' then
             tit := s
          end
         else
           tit := tit + ' ' + s;
        end;

       //------ impressao do corpo ------
       RDprint1.Imp(line, 2, tit);
       inc(line);

       //-------------Impressao de Numeros de serie--------------------------------
       if (CheckBox14.Checked) and (ProdutoListFrm.QryNumSerie.RecordCount <> 0) then
        begin
         ProdutoListFrm.QryNumSerie.First;
         RDprint1.Imp(line, 4,'Nº de Série Relacionados:');
         while not ProdutoListFrm.QryNumSerie.EOF do
          begin
           RDprint1.Imp(line, 31, ProdutoListFrm.QryNumSerie['NUMSERIE']);
           if not varisnull(ProdutoListFrm.QryNumSerie['FIMGARANTIAFABRICANTE']) then
            begin
             if ProdutoListFrm.QryNumSerie['FIMGARANTIAFABRICANTE'] >= now then
               RDprint1.Imp(line, 33 + Length(ProdutoListFrm.QryNumSerie['NUMSERIE']),
                 ' - Em Garantia -');
             if ProdutoListFrm.QryNumSerie['FIMGARANTIAFABRICANTE'] < now then
               RDprint1.Imp(line, 33 + Length(ProdutoListFrm.QryNumSerie['NUMSERIE']),
                 '- Sem Garantia -');
            end;
           ProdutoListFrm.QryNumSerie.Next;
           inc(line);
          end;
         inc(line);
        end;

       //------ Quebra de Pagina ------
       if (line = 57) and (not ProdutoListFrm.QryListProd.EOF) then
        begin
         RDprint1.Imp(line,
           1,'--------------------------------------------------------------------------------');
         inc(line);
         RDprint1.Imp(line, 53,'Tks Software');
         RDprint1.Imp(line, 1,'Listagem de Produtos ' + datetostr(now)
           + ' - Página Nº ' + IntToStr(page));
         RDprint1.Novapagina;
         page := page + 1;
         line := header(2);
        end;
       ProdutoListFrm.QryListProd.Next;
      end;

     //-----------Fim Do relatorio----------------
     RDprint1.Imp(line,
       1,'--------------------------------------------------------------------------------');
     inc(line);
     RDprint1.Imp(line, 53,'Tks Software');
     RDprint1.Imp(line, 1,'Listagem de Produtos ' + datetostr(now) +
       ' - Página Nº ' + IntToStr(page));
     inc(line);
     RDprint1.Fechar;

     ProdutoListSelFrm.Close;
    end
   else
     application.messagebox('Relatório não contém itens a serem listados',
       'Atenção', mb_ok + mb_iconinformation);
  end
 else
   application.messagebox('Relatório não contém itens a serem listados',
     'Atenção', mb_ok + mb_iconinformation);
end;

//--------Corpo--------------------------------------
procedure TProdutoListSelFrm.listagem(Nomes: integer);
begin
 case Nomes of
   0: if not varisnull(ProdutoListFrm.QryListProd['REFERENCIA']) then
       s := LBrush(ProdutoListFrm.QryListProd['REFERENCIA'], 13)
     else
       s := fill(' ', 13);
     1: if not varisnull(ProdutoListFrm.QryListProd['NOME']) then
       s := LBrush(ProdutoListFrm.QryListProd['NOME'], 28)
     else
       s := fill(' ', 28);
     2: if not varisnull(ProdutoListFrm.QryListProd['FORNECEDOR']) then
       s := LBrush(ProdutoListFrm.QryListProd['FORNECEDOR'], 10)
     else
       s := fill(' ', 10);
     3: if not varisnull(ProdutoListFrm.QryListProd['FABRICANTE']) then
       s := LBrush(ProdutoListFrm.QryListProd['FABRICANTE'], 10)
     else
       s := fill(' ', 10);
     4: if not varisnull(ProdutoListFrm.QryListProd['EST_MIN']) then
       s := RBrush(floattostr(ProdutoListFrm.QryListProd['EST_MIN']), 6)
     else
       s := fill(' ', 6);
     5: if not varisnull(ProdutoListFrm.QryListProd['EST_IDEAL']) then
       s := RBrush(floattostr(ProdutoListFrm.QryListProd['EST_IDEAL']), 6)
     else
       s := fill(' ', 6);
     6: if not varisnull(ProdutoListFrm.QryListProd['EST_ATUAL']) then
       s := RBrush(floattostr(ProdutoListFrm.QryListProd['EST_ATUAL']), 7)
     else
       s := fill(' ', 6);
     7: if not varisnull(ProdutoListFrm.QryListProd['Prc_Custo']) then
       s := RBrush(formatfloat('0.00', ProdutoListFrm.QryListProd['Prc_Custo']), 9)
     else
       s := fill(' ', 9);
     8: if not varisnull(ProdutoListFrm.QryListProd['Prc_Venda']) then
       s := RBrush(formatfloat('0.00', ProdutoListFrm.QryListProd['Prc_Venda']), 9)
     else
       s := fill(' ', 9);
     9: if not varisnull(ProdutoListFrm.QryListProd['GRUPO']) then
       s := LBrush(ProdutoListFrm.QryListProd['GRUPO'], 10)
     else
       s := fill(' ', 10);
     10: if not varisnull(ProdutoListFrm.QryListProd['SUBGRUPO']) then
       s := LBrush(ProdutoListFrm.QryListProd['SUBGRUPO'], 10)
     else
       s := fill(' ', 10);
     11: if not varisnull(ProdutoListFrm.QryListProd['Apr_Und']) then
       s := LBrush(ProdutoListFrm.QryListProd['Apr_Und'], 3)
     else
       s := fill(' ', 3);
     12: if not varisnull(ProdutoListFrm.QryListProd['PRM_PRC']) then
       s := LBrush(ProdutoListFrm.QryListProd['PRM_PRC'], 12)
     else
       s := fill(' ', 12);
     13: if ((ProdutoListFrm.QryListProd['EST_IDEAL'] -
       ProdutoListFrm.QryListProd['EST_ATUAL']) > 0) and
       (ProdutoListFrm.QryListProd['EST_ATUAL'] >= 0) then
       s := RBrush((ProdutoListFrm.QryListProd['EST_IDEAL'] -
         ProdutoListFrm.QryListProd['EST_ATUAL']), 7)
     else if (ProdutoListFrm.QryListProd['EST_ATUAL'] < 0) then
         s := RBrush((ProdutoListFrm.QryListProd['EST_IDEAL']), 7)
       else
         s := RBrush('0', 7);
  end;
end;

//-------------Cabeçalho------------
function TProdutoListSelFrm.header(Start: integer): integer;
var
 headstr: string;
 x: integer;
begin
 Result := 0;
 s := '';
 RDprint1.Imp(Start, 1,'--------------------------------------------------------------------------------');
 inc(Start);
 for x := 1 to cont - 1 do
  begin
   case Nomes[x] of                              //Monta o Cabeçalho do Relatorio
     0: s := LBrush('REF.', 13);
     1: s := LBrush('PRODUTO', 28);
     2: s := LBrush('FORNECEDOR', 10);
     3: s := LBrush('FABRICANTE', 10);
     4: s := LBrush('E.MIN', 6);
     5: s := LBrush('E.IDE', 6);
     6: s := CBrush('ESTQ.', 6);
     7: s := CBrush('P. CUSTO', 9);
     8: s := CBrush('PRECO', 9);
     9: s := LBrush('GRUPO', 10);
     10: s := LBrush('SUB-GRUPO', 10);
     11: s := LBrush('UND', 3);
     12: s := LBrush('PROMOCAO', 12);
     13: s := LBrush('R.ESTQ', 7);
    end;
   if x = 1 then
    begin
     headstr := '|' + s + '|';
     colum[1] := 1;
    end
   else
    begin
     headstr := headstr + s + '|';
    end;
  end;

 RDprint1.Imp(Start, 1,headstr);
 inc(Start);
 headstr := '';
 RDprint1.Imp(Start,
   1,'--------------------------------------------------------------------------------');
 inc(Start);
 Result := Start;
 s := '';
end;

procedure TProdutoListSelFrm.BitBtn3Click(Sender: TObject);
begin
 self.Close;
end;

procedure TProdutoListSelFrm.BitBtn2Click(Sender: TObject);
begin
 rdprint1.setup;
end;

procedure TProdutoListSelFrm.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TProdutoListSelFrm.CheckBox14Click(Sender: TObject);
begin
 if CheckBox14.Checked then
   CheckBox14.font.Style := [fsbold]
 else
   CheckBox14.Font.Style := [];
 CheckBox2.Checked := True;
end;

end.
