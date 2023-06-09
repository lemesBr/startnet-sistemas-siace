unit Ubibli1;

interface

uses SysUtils, Forms, StdCtrls,vcl.DBCtrls, Dialogs, Controls, IB, IBDatabase, DB, IBQuery,
     IBSQL, Mask, AlignEdit, Windows, ComCtrls, ExtCtrls, Grids, ExtDlgs,
     DateUtils, rxCurrEdit, XDBGrids, DBGrids, RXCtrls, rxToolEdit,FireDAC.Phys.IBBase,
      FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait, FireDAC.VCLUI.Async, FireDAC.VCLUI.Script,
  FireDAC.VCLUI.Login,FireDAC.Comp.UI,FireDAC.Phys.IB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,FireDAC.Phys.IBDef,
  FireDAC.Phys.FBDef, Data.DBXFirebird;

type
  TConsisteInscricaoEstadual = function (const Insc, UF: String): Integer; stdcall;
  const Caractere : array[1..106] of Char = (
  'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S',
  'T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9','!','#',
  '$','%','&','/','(',')','=','?','>','^','@','�','�','{','[',']','}','�','<',
  '~','+','*','`','''','�','�','�','-','_',',','.',';',':','|','\','�','�','�'
  ,'�','�','�',' ','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o',
  'p','q','r','s','t','u','v','w','x','y','z' );

  const Subst : array[1..106] of string = (
  '!9@8','@7!7','#4$5','$5%4','%8$8','^1%1','&3^5','*7&6','(6*6',')3(3','-2)8','=1-7','+0-9','/0@1','\9$7',
  '!3@2','@3&6','#1*4','$2#4','%6(8','^9!5','&4=4','*3@4','(8*4',')4!7','-0^5','=1@9','+2!0','/8%2','\7@5',
  '!3@7','@4!8','#7&4','$6$3','%2&7','^1*3','&1@0','*3$9','#3^1','!4-2','&6(5','!5@8',')7!8','4&1-','a2$1',
  '*9z6','@7c3','1%^5','0&*6','$5^6','!18)','(38)','@30&','#69]','[70]','{26}','-93#','l52h','h71i','w80&',
  '%50%','#401','@87-','b46x','r55^','!2*2','o08y','&89)','%03%','\59q','t85*','^29-','@02%','#99)','#255',
  '@23~','~91t','6%4n','~5a1','0=+0','Za*a','%yB-','Xc#C','wl#d','V*@e','&UF)','!tG$','-sh@','%rij','%QJ)',
  '%pk&','@oL*','!nm=','!MN*','@lO-','$kpy','Ojq;',':Ir-','h:;s','Gx%T','f}{U','E#tv','d1W+','&cxk','pby$',
  'aZ');

procedure TrimAppMemorySize;

function VersaoExe(ArquivoExe : string): String;
function CSTtoCSOSN( Cst: string ) : String;
function InverteValor(Text: string) : string;
function RetiraCaracter(Text : string) : string;
function FormataStringFloat(Text : string) : string;
function cnpj(s:string): boolean;
function cpf(num: string): boolean;
function Prxcod(tabela : String; campo : string; transaction : TFDTransaction; ibsqlCod: TFDQuery) : integer;
function Consulta(sTabela : String; NomeEdit : Talignedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
function Consulta1(sTabela : String; NomeEdit : Tcomboedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
function Consulta2(sTabela : String; NomeEdit : Tdbedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
function BuscaEmpresaRelatorio(transaction : TFDTransaction; ibsql : TFDQuery) : string;
function AnoBiSexto(Ayear: Integer): Boolean;
function UltimoDiaMes (const mes : word; const ano : word) : TDateTime;
//function FormataStringD(Valor,Tamanho,Complemento : String):String;
//function FormataStringE(Valor,Tamanho,Complemento : String):String;
function CalculaDigitoEAN13(Cod:String):String;
function PrimeiraLetraMaiuscula(sTexto : string):string;
function RetiraCR(Text : string) :string;

//function RemoveChar(Const Texto:String):String;

function Criptografa (Palavra : string) : string;
function DesCriptografa (Palavra : String) : string;

function EliminaCaracter(stext : string) : string;
function FormataCNPJ(cnpj : string) : string;
function VerificaInscricao(insc, uf : string) : boolean;
function RetornaMes(const mes : integer) : string;
function valorPorExtenso(vlr: real): string;
//function ValorExtenso(r : real; i : integer) : string;
//function VerificaCST (sCST : string) : boolean;
//function Substitui(substituida : string; substituirpor : string; texto : string) : string;
function StrToChar(Texto : String) : Char;
//function EhNumero(s: string): Boolean;
//function FormataDataECF(const sString : string) : string;
//function FormataHoraECF(const sString : string) : string;
//function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
//function NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
//function NaoInsereXDBGrid(DBGrid: TXDBGrid; DataSet: TDataSet; Key: Word): Word;
//function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;

//function RetIdxUltimaColVisivelx(DBGrid: TxDBGrid): integer;

procedure Limpaedit(form: Tform);
procedure EDedit(form: Tform; estado: boolean);
procedure Excluir(form : Tform; Tabela : string; campo : TAlignEdit; ibsql: TFDCommand; transaction : TFDTransaction);
procedure BuscaNoCombo (Combo : TComboBox; Valor : Integer);
//function somenteNumero(sNum:string):string;
//function FormataStringC(Valor,Tamanho,Complemento : String):String;
Function ValidaCPFCNPJ(CPFCNPJ: string): boolean;



implementation

procedure TrimAppMemorySize;
var
MainHandle : THandle;
begin
try
MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
CloseHandle(MainHandle) ;
except
end;
Application.ProcessMessages;
end;


Function ValidaCPFCNPJ(CPFCNPJ: string): boolean;
var
count, tam, i, soma: integer;
num: array of integer;
begin
Result:=False;
tam:=0;
SetLength(num,tam);
for i:=1 to Length(CPFCNPJ) do
if CPFCNPJ[i] in ['0'..'9'] then
begin
inc(tam);
SetLength(num,tam);
Val(CPFCNPJ[i],num[tam-1],soma);
end;

if not(tam in [11,14]) then Exit;

count:=2;
soma:=0;
for i:=Length(num)-3 downto 0 do
begin
soma:=soma+(num[i]*count);
inc(count);
if (tam = 14) and (count > 9) then count:=2;
end;
soma:=11-(soma mod 11);
if soma > 9 then soma:=0;

if not(num[tam-2]=soma) then Exit;

soma:=soma*2;
count:=3;
for i:=Length(num)-3 downto 0 do
begin
soma:=soma+(num[i]*count);
inc(count);
if (tam = 14) and (count > 9) then count:=2;
end;
soma:=11-(soma mod 11);
if soma > 9 then soma:=0;

if not(num[tam-1]=soma) then Exit;

Result:=True;
end;

function VersaoExe(ArquivoExe : string): String;
	type
PFFI = ^vs_FixedFileInfo;
var
F: PFFI;
Handle: Dword;
Len: Longint;
Data: Pchar;
Buffer: Pointer;
Tamanho: Dword;
Parquivo: Pchar;
Arquivo: String;
begin
Arquivo := ArquivoExe;
Parquivo := StrAlloc(Length(Arquivo) + 1);
StrPcopy(Parquivo, Arquivo);
Len := GetFileVersionInfoSize(Parquivo, Handle);
Result := '';
if Len > 0 then
begin
Data := StrAlloc(Len + 1);
if GetFileVersionInfo(Parquivo, Handle, Len, Data) then
begin
VerQueryValue(Data, '', Buffer, Tamanho);
F := PFFI(Buffer);
Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord
(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs), LoWord
(F^.dwFileVersionLs)]);
end;
StrDispose(Data);
end;
StrDispose(Parquivo);
end;



function CSTtoCSOSN( Cst: string ) : String;
begin
   if ( Cst = '00' ) or ( Cst = '20' ) then
      result := '101';
   if ( Cst = '40' ) or ( Cst = '41' ) or ( Cst = '50' ) or ( Cst = '51' ) then
      result := '102';
   if ( Cst = '10' ) or ( Cst = '70' ) then
      result := '201';
   if ( Cst = '30' ) or ( Cst = '70' ) then
      result := '202';
   if ( Cst = '60' ) then
      result := '500';
   if ( Cst = '90' ) then
      result := '900';
end;



function InverteValor(Text: string) : string;
var n : integer;
begin
   for n := 1 to length(Text) do
      begin
         if Copy(Text, n, 1) = '.' then
            begin
               Delete(Text, n, 1);
               Insert(',', Text, n);
            end
         else
            if Copy(Text, n, 1) = ',' then
               begin
                  Delete(Text, n, 1);
                  Insert('.', Text, n);
               end;
      end;
   Result := Text;
end;

function RetiraCaracter(Text: string) : string;
var n : integer;
begin
   for n:= 1 to length(Text) do
     begin
        if (Copy(Text,n,1) = '.') or (Copy(Text,n,1) = '-') or (copy(text,n,1) = ',') or (copy(text,n,1) = '/') or (copy(text,n,1) = ':') then
           Delete(Text,n,1);
     end;
   Result:= Text;
end;

function FormataStringFloat(Text : string) : string;
var n : integer;
begin
   for n := 1 to length(Text) do
      begin
         if Copy(Text, n, 1) = '.' then
            Delete(Text, n, 1)
      end;
   Result := Text;
end;

function cpf(num: string): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   if trim(num) = '' then
      begin
         result:= false;
         exit;
      end;

   n1:=StrToInt(num[1]);
   n2:=StrToInt(num[2]);
   n3:=StrToInt(num[3]);
   n4:=StrToInt(num[4]);
   n5:=StrToInt(num[5]);
   n6:=StrToInt(num[6]);
   n7:=StrToInt(num[7]);
   n8:=StrToInt(num[8]);
   n9:=StrToInt(num[9]);
   d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1:=11-(d1 mod 11);
   if d1>=10 then
      d1:=0;
   d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
   d2:=11-(d2 mod 11);
   if d2>=10 then
      d2:=0;
   calculado:=inttostr(d1)+inttostr(d2);
   digitado:=num[10]+num[11];
   if calculado=digitado then
      result:= true
   else
      result:= false;
end;

function cnpj(s:string): boolean;
var soma, dg1, dg2: integer;
    x: shortint;
    aux: string[1];
    aux_cnpj:string[14];
begin
   if (s = '') or (s = '  .   .   /    -  ') then
      begin
         result:= true;
         exit;
      end;
   x:= 1;
   aux_cnpj:= '';
   while x < 19 do
      begin
         aux:= copy(s, x, 1);
         if ((aux <> '.') and (aux <> '/') and (aux <> '-')) then
            aux_cnpj:= aux_cnpj + aux;
         x:= x + 1;
      end;
   s:= aux_cnpj;
   soma:= 0;
   inc(soma, (strtointdef(s[1], 0) * 5));
   inc(soma, (strtointdef(s[2], 0) * 4));
   inc(soma, (strtointdef(s[3], 0) * 3));
   inc(soma, (strtointdef(s[4], 0) * 2));
   inc(soma, (strtointdef(s[5], 0) * 9));
   inc(soma, (strtointdef(s[6], 0) * 8));
   inc(soma, (strtointdef(s[7], 0) * 7));
   inc(soma, (strtointdef(s[8], 0) * 6));
   inc(soma, (strtointdef(s[9], 0) * 5));
   inc(soma, (strtointdef(s[10], 0) * 4));
   inc(soma, (strtointdef(s[11], 0) * 3));
   inc(soma, (strtointdef(s[12], 0) * 2));

   dg1:= soma - ((soma div 11) * 11);

   if dg1 <= 1 then
      dg1:= 0
   else
      dg1:= 11 - dg1;

   soma:= 0;
   soma:= soma + strtointdef(s[1], 0) * 6;
   soma:= soma + strtointdef(s[2], 0) * 5;
   soma:= soma + strtointdef(s[3], 0) * 4;
   soma:= soma + strtointdef(s[4], 0) * 3;
   soma:= soma + strtointdef(s[5], 0) * 2;
   soma:= soma + strtointdef(s[6], 0) * 9;
   soma:= soma + strtointdef(s[7], 0) * 8;
   soma:= soma + strtointdef(s[8], 0) * 7;
   soma:= soma + strtointdef(s[9], 0) * 6;
   soma:= soma + strtointdef(s[10], 0) * 5;
   soma:= soma + strtointdef(s[11], 0) * 4;
   soma:= soma + strtointdef(s[12], 0) * 3;
   soma:= soma + 2 * dg1;

   dg2:= soma - ((soma div 11) * 11);

   if dg2 <= 1 then
      dg2:= 0
   else
      dg2:= 11 - dg2;

   if (inttostr(dg1) = s[13]) and (inttostr(dg2) = s[14]) then
      result:= true
   else
      result:= false;
end;

function Prxcod(tabela : string; campo : string; transaction : TFDTransaction; ibsqlCod: TFDQuery) : integer;
begin
   with ibsqlCod do
      begin
       {  if transaction.Active then
            transaction.Commit;
         Transaction.StartTransaction;    }
         close;
         sql.Clear;
         SQL.Add('SELECT MAX(' + campo + ')' + ' as prxcod ' + ' from ' + tabela) ;
         Open;
         result:= FieldByName('prxcod').AsInteger + 1;

      //  Transaction.Commit;
     //   ibsqlCod.close
      end;
end;

function Consulta(sTabela : String; NomeEdit : Talignedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
begin
   try
     try
       if Transaction.Active then
          Transaction.Commit;
       Transaction.StartTransaction;
       with Qry do
          begin
             close;                                      
             sql.clear;
             sql.Add(' SELECT ' + sCampoPK + ', '  + SCampoPesquisa +
                     ' FROM   ' + sTabela          +
                     ' WHERE  ' + sCampoPK + ' = ' +  #39 + NomeEdit.Text + #39);
             Open;
             if not fieldbyname(sCampoPK).IsNull then
                result:= Fieldbyname(SCampoPesquisa).AsString
             else
                result:= '';
          end;
       Transaction.Commit;
     except
       Transaction.Rollback;
       showmessage('Erro ao Selecionar o(a) ' + sTabela);
     end;
   finally
     Qry.Close;
   end;
end;

function Consulta1(sTabela : String; NomeEdit : Tcomboedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
begin
   try
     try
       if Transaction.Active then
          Transaction.Commit;
       Transaction.StartTransaction;
       with Qry do
          begin
             close;                                      
             sql.clear;
             sql.Add(' SELECT ' + sCampoPK + ', '  + SCampoPesquisa +
                     ' FROM   ' + sTabela          +
                     ' WHERE  ' + sCampoPK + ' = ' +  #39 + NomeEdit.Text + #39);
             Open;
             if not fieldbyname(sCampoPK).IsNull then
                result:= Fieldbyname(SCampoPesquisa).AsString
             else
                result:= '';
          end;
       Transaction.Commit;
     except
       Transaction.Rollback;
       showmessage('Erro ao Selecionar o(a) ' + sTabela);
     end;
   finally
     Qry.Close;
   end;
end;

function Consulta2(sTabela : String; NomeEdit : Tdbedit; sCampoPK : string; SCampoPesquisa: string;
         Transaction : TFDTransaction; Qry : TFDQuery) : String;
begin
   try
     try
       if Transaction.Active then
          Transaction.Commit;
       Transaction.StartTransaction;
       with Qry do
          begin
             close;
             sql.clear;
             sql.Add(' SELECT ' + sCampoPK + ', '  + SCampoPesquisa +
                     ' FROM   ' + sTabela          +
                     ' WHERE  ' + sCampoPK + ' = ' +  #39 + NomeEdit.Text + #39);
             Open;
             if not fieldbyname(sCampoPK).IsNull then
                result:= Fieldbyname(SCampoPesquisa).AsString
             else
                result:= '';
          end;
       Transaction.Commit;
     except
       Transaction.Rollback;
       showmessage('Erro ao Selecionar o(a) ' + sTabela);
     end;
   finally
     Qry.Close;
   end;
end;

function BuscaEmpresaRelatorio(transaction : TFDTransaction; ibsql : TFDQuery) : string;
begin
   if transaction.Active then
      transaction.Commit;
   transaction.StartTransaction;
   try
     try
       with ibsql do
          begin
             close;
             sql.Clear;
             sql.Add('SELECT RAZAO_EMP FROM EMPRESA');
             ExecSQL;
             Result:= fieldbyname('razao_emp').AsString;
          end;
       transaction.Commit;
     except
       transaction.Rollback;
       showmessage('Erro ao Buscar a Empresa');
     end;
   finally
     ibsql.Close;
   end;
end;

function AnoBiSexto(Ayear: Integer): Boolean;
begin
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function UltimoDiaMes (const mes : word; const ano : word) : TDateTime;
var  sDia : word;
var  SData : TdateTime;
begin
   Sdata:= encodedate(ano, mes, 01);
   sdia:= DaysInMonth(sdata);
   result:= encodedate(ano, mes, sdia);
end;

Procedure LimpaEdit(form: Tform);
var i : Integer;

begin

   for i := 0 to Form.ComponentCount -1 do
       begin
          if form.Components[i] is Talignedit then
             Talignedit(form.Components[i]).Clear
          else
             if Form.Components[i] is TEdit then
                TEdit(Form.Components[i]).Clear
             else
                if Form.Components[i] is Tmaskedit then
                   Tmaskedit(form.Components[i]).Clear
                else
                   if form.Components[i] is Tcombobox then
                      begin
                         if Tcombobox(form.Components[i]).Style = csDropDown then
                            Tcombobox(form.Components[i]).Text:= ''
                         else
                            Tcombobox(form.Components[i]).ItemIndex:= -1;
                      end
                   else
                      if form.Components[i] is Tcheckbox then
                         begin

                            Tcheckbox(form.Components[i]).Checked:= false
                         end
                      else
                         if form.Components[i] is Tmemo then
                            Tmemo(form.Components[i]).Clear
                         else
                            if form.Components[i] is TOpenPictureDialog then
                               TOpenPictureDialog(form.Components[i]).FileName:= ''
                            else
                               if form.Components[i] is TCurrencyEdit then
                                  TCurrencyEdit(form.Components[i]).Text:= '0,00'
                               else
                                  if form.Components[i] is TListBox then
                                     Tlistbox(form.Components[i]).Clear
                                  else
                                     if form.Components[i] is TRichEdit then
                                        TRichEdit(form.Components[i]).Clear;
       end;

end;

Procedure EDEdit(form: Tform; estado :boolean);
var
i : Integer;
begin
   for i := 0 to Form.ComponentCount -1 do
      if Form.Components[i] is TEdit then
            TEdit(Form.Components[i]).Enabled:= estado
      else
         if form.Components[I] is Tmaskedit then
            Tmaskedit(form.Components[i]).Enabled:= estado
         else
            if form.Components[i] is Tcombobox then
               Tcombobox(form.Components[i]).Enabled:= estado
            else
               if form.Components[i] is Tcheckbox then
                  Tcheckbox(form.Components[i]).Enabled:= estado
               else
                  if form.Components[i] is Tmemo then
                     Tmemo(form.Components[i]).Enabled:= estado
                  else
                     if form.Components[i] is TDateTimePicker then
                        Tdatetimepicker(form.Components[i]).Enabled:= estado
                     else
                        if form.Components[i] is TCurrencyEdit then
                           TCurrencyEdit(form.Components[i]).Enabled:= estado
                        else
                           if form.Components[i] is TRadioGroup then
                              TRadioGroup(form.Components[i]).Enabled := estado;

end;

procedure Excluir(form : Tform; Tabela : string; campo : TAlignEdit; ibsql: TFDCommand; transaction : Tfdtransaction);
begin
   if application.MessageBox('Confirma a Exclus�o?', 'Exclus�o', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
      begin
         try
           try
             if transaction.Active then
                transaction.Commit;
             transaction.StartTransaction;
             with ibsql do
                begin
                   CommandText.Clear;
                   CommandText.Add('DELETE FROM ' + tabela + ' WHERE ' + campo.Name + ' = ' + #39 + campo.Text + #39);
                   open;
                   limpaedit(form);
                   ededit(form, false);
                end;
             transaction.Commit;
           except
             transaction.Rollback;
             showmessage('Erro ao Excluir');
           end;
         finally
           ibsql.Close;
         end;
      end;
end;

function StrToChar(Texto : String):Char;
{-------------------------------------------------------------------------
  Fun��o para transformar uma String em Char
--------------------------------------------------------------------------}
begin
     if Texto = 'A' then
     begin
          Result:= 'A';
     end
     else
     if Texto = 'B' then
     begin
          Result:= 'B';
     end
     else
     if Texto = 'C' then
     begin
          Result:= 'C';
     end
     else
     if Texto = 'D' then
     begin
          Result:= 'D';
     end
     else
     if Texto = 'E' then
     begin
          Result:= 'E';
     end
     else
     if Texto = 'F' then
     begin
          Result:= 'F';
     end
     else
     if Texto = 'G' then
     begin
          Result:= 'G';
     end
     else
     if Texto = 'H' then
     begin
          Result:= 'H';
     end
     else
     if Texto = 'I' then
     begin
          Result:= 'I';
     end
     else
     if Texto = 'J' then
     begin
          Result:= 'J';
     end
     else
     if Texto = 'L' then
     begin
          Result:= 'L';
     end
     else
     if Texto = 'M' then
     begin
          Result:= 'M';
     end
     else
     if Texto = 'N' then
     begin
          Result:= 'N';
     end
     else
     if Texto = 'O' then
     begin
          Result:= 'O';
     end
     else
     if Texto = 'P' then
     begin
          Result:= 'P';
     end
     else
     if Texto = 'Q' then
     begin
          Result:= 'Q';
     end
     else
     if Texto = 'R' then
     begin
          Result:= 'R';
     end
     else
     if Texto = 'S' then
     begin
          Result:= 'S';
     end
     else
     if Texto = 'T' then
     begin
          Result:= 'T';
     end
     else
     if Texto = 'U' then
     begin
          Result:= 'U';
     end
     else
     if Texto = 'V' then
     begin
          Result:= 'V';
     end
     else
     if Texto = 'X' then
     begin
          Result:= 'X';
     end
     else
     if Texto = 'Z' then
     begin
          Result:= 'Z';
     end
     else
     begin
          Result:= 'A';
     end;
end;

procedure BuscaNoCombo(Combo : TComboBox; Valor : Integer);
var i : integer;
begin
   for i:= 0 to Combo.Items.Count - 1 do
     begin
        if strtoint(copy(Combo.Items[i],1,3)) = valor then
           Combo.ItemIndex:= i;
     end;
end;


function CalculaDigitoEAN13(Cod:String):String;
function Par(Cod:Integer):Boolean;
  begin
     Result:= Cod Mod 2 = 0 ;
  end;
var i, SomaPar, SomaImpar:Integer;
begin
   SomaPar:=0;
   SomaImpar:=0;
for i:=1 to 12 do
if Par(i) then
   SomaPar:=SomaPar+StrToInt(Cod[i])
else
   SomaImpar:=SomaImpar+StrToInt(Cod[i]);
SomaPar:=SomaPar*3;
i:=0;
while i < (SomaPar+SomaImpar) do
   Inc(i,10);
Result:=IntToStr(i-(SomaPar+SomaImpar));
end;

function PrimeiraLetraMaiuscula (sTexto : string):string;
var i :integer;
begin
   for i:= 1 to length(sTexto) do
      begin
         if i = 1 then
            Result:= UpperCase(sTexto[1])
         else
            if sTexto[i - 1] = ' ' then
               Result:= result + UpperCase(sTexto[i])
            else
               Result:= Result + sTexto[i];
      end;
end;

function RetiraCR(text:string):string;
begin
   result:= stringReplace(Text, #13#10, ' ', [rfReplaceAll]);
end;

function Criptografa (Palavra : string) : string;
Var
  vet : integer; //vetor
  ct : integer;  //vetor da constante
  aux : string;  //vari�vel auxiliar
begin
  result := '';
  ct := 0;
  vet := 0;
  aux := '';
  //palavra := uppercase(palavra);
  for vet := 1 to length(Palavra) do
      begin
         for ct:= 1 to 106 do
         begin
            if (palavra[vet] = Caractere[ct]) then
               begin
                  aux := aux + subst[ct];
               end;
         end;
      end;
  result := aux;
end;

function DesCriptografa (Palavra : String) : string;
Var iVetor    : integer;
    iContador : integer;
    iContAux  : integer;
    sAuxiliar : string;
begin
  result    := '';
  iContador := 0;
  iContAux  := 0;
  iVetor    := 0;
  sAuxiliar := '';
  for iVetor:= 1 to length(Palavra) do
      begin
         for iContador:= 1 to 106 do
            begin
               if (copy(palavra, iContAux + 1, 4) = subst[iContador]) then
                  begin
                     sAuxiliar:= sAuxiliar + caractere[iContador];
                  end;
            end;
         inc(iContAux, 4);
      end;
  result:= sAuxiliar;
end;

function EliminaCaracter(stext : string) : string;
var npos: integer;
begin
   result:= '';
   npos:= 1;
   while npos <= Length(sText) do
      begin
         if (stext[npos] = '.') or (stext[npos] = '-') or (stext[npos] = '/') or
            (stext[npos] = ')') or (stext[npos] = '(') or (stext[npos] = ',') then
            begin
               inc(npos);
            end
         else
            begin
               result:= result + stext[npos];
               inc(npos);
            end;
      end;
end;

function FormataCNPJ(cnpj : string) : string;
var sAux, sCNPJ  : string;
begin
   sAux:= EliminaCaracter(cnpj);
   case Length(sAux) of
    11: begin
           sCNPJ:= copy(sAux, 1, 3) + '.' +
                   copy(sAux, 4, 3) + '.' +
                   copy(sAux, 7, 3) + '-' +
                   copy(sAux, 10, 2);
           Result:= sCNPJ;
        end;
    14: begin
           sCNPJ:= copy(sAux, 1, 2) + '.' +
                   copy(sAux, 3, 3) + '.' +
                   copy(sAux, 6, 3) + '/' +
                   copy(sAux, 9, 4) + '-' +
                   copy(sAux, 13, 2);
           Result:= sCNPJ;
        end;
   else
      result:= '';
   end;
end;

function VerificaInscricao(insc, uf : string) : boolean;
var LibHandle : THandle;
    ConsisteInscricaoEstadual : TConsisteInscricaoEstadual;
    iRetInsc : Integer;
begin
   try
     LibHandle:= LoadLibrary(PChar(Trim('DllInscE32.Dll')));
     if LibHandle <= HINSTANCE_ERROR then
        raise Exception.Create ('Dll n�o carregada');

     @ConsisteInscricaoEstadual:= GetProcAddress (LibHandle, 'ConsisteInscricaoEstadual');
     if @ConsisteInscricaoEstadual = nil then
        raise Exception.Create('Entrypoint Download n�o encontrado na Dll');

    iRetInsc:= ConsisteInscricaoEstadual(EliminaCaracter(insc), uf);
    if iRetInsc = 0 then
       result:= true
    else
       result:= false;

   finally
     FreeLibrary(LibHandle);
   end;
end;

function RetornaMes(const mes : integer) : string;
begin
   case mes of
      1: result:= 'Janeiro';
      2: result:= 'Fevereiro';
      3: result:= 'Mar�o';
      4: result:= 'Abril';
      5: result:= 'Maio';
      6: result:= 'Junho';
      7: result:= 'Julho';
      8: result:= 'Agosto';
      9: result:= 'Setembro';
     10: result:= 'Outubro';
     11: result:= 'Novembro';
     12: result:= 'Dezembro';
   end;
end;


function valorPorExtenso(vlr: real): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'tr�s', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milh�o', 'bilh�o', 'trilh�o');
  qualificaP: array[0..4] of string = ('', 'mil', 'milh�es', 'bilh�es', 'trilh�es');
var
                        inteiro: Int64;
                          resto: real;
  vlrS, s, saux, vlrP, centavos: string;
     n, unid, dez, cent, tam, i: integer;
                    umReal, tem: boolean;
begin
  if (vlr = 0)
     then begin
            valorPorExtenso := 'zero';
            exit;
          end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracion�ria do valor
  vlrS := inttostr(inteiro);
  if (length(vlrS) > 15)
     then begin
            valorPorExtenso := 'Erro: valor superior a 999 trilh�es.';
            exit;
          end;

  s := '';
  centavos := inttostr(round(resto * 100));

// definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false; tem := false;
  while (vlrS <> '0') do
  begin
    tam := length(vlrS);
// retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
// 1a. parte = 789 (centena)
// 2a. parte = 456 (mil)
// 3a. parte = 123 (milh�es)
    if (tam > 3)
       then begin
              vlrP := copy(vlrS, tam-2, tam);
              vlrS := copy(vlrS, 1, tam-3);
            end
    else begin // �ltima parte do valor
           vlrP := vlrS;
           vlrS := '0';
         end;
    if (vlrP <> '000')
       then begin
              saux := '';
              if (vlrP = '100')
                 then saux := 'cem'
              else begin
                     n := strtoint(vlrP);        // para n = 371, tem-se:
                     cent := n div 100;          // cent = 3 (centena trezentos)
                     dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
                     unid := (n mod 100) mod 10; // unid = 1 (unidade um)
                     if (cent <> 0)
                        then saux := centena[cent];
                     if ((dez <> 0) or (unid <> 0))
                        then begin
                               if ((n mod 100) <= 19)
                                  then begin
                                         if (length(saux) <> 0)
                                            then saux := saux + ' e ' + unidade[n mod 100]
                                         else saux := unidade[n mod 100];
                                       end
                               else begin
                                      if (length(saux) <> 0)
                                         then saux := saux + ' e ' + dezena[dez]
                                      else saux := dezena[dez];
                                      if (unid <> 0)
                                         then if (length(saux) <> 0)
                                                 then saux := saux + ' e ' + unidade[unid]
                                              else saux := unidade[unid];
                                    end;
                             end;
                   end;
              if ((vlrP = '1') or (vlrP = '001'))
                 then begin
                        if (i = 0) // 1a. parte do valor (um real)
                           then umReal := true
                        else saux := saux + ' ' + qualificaS[i];
                      end
              else if (i <> 0)
                      then saux := saux + ' ' + qualificaP[i];
              if (length(s) <> 0)
                 then s := saux + ', ' + s
              else s := saux;
            end;
    if (((i = 0) or (i = 1)) and (length(s) <> 0))
       then tem := true; // tem centena ou mil no valor
    i := i + 1; // pr�ximo qualificador: 1- mil, 2- milh�o, 3- bilh�o, ...
  end;

  if (length(s) <> 0)
     then begin
            if (umReal)
               then s := s + ' real'
            else if (tem)
                    then s := s + ' reais'
                 else s := s + ' de reais';
          end;
// definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
     then begin
            if (length(s) <> 0) // se n�o � valor somente com centavos
               then s := s + ' e ';
            if (centavos = '1')
               then s := s + 'um centavo'
            else begin
                   n := strtoint(centavos);
                   if (n <= 19)
                      then s := s + unidade[n]
                   else begin                 // para n = 37, tem-se:
                          unid := n mod 10;   // unid = 37 % 10 = 7 (unidade sete)
                          dez := n div 10;    // dez  = 37 / 10 = 3 (dezena trinta)
                          s := s + dezena[dez];
                          if (unid <> 0)
                             then s := s + ' e ' + unidade[unid];
                       end;
                   s := s + ' centavos';
                 end;
          end;
  valorPorExtenso := s;
end;

end.

function VerificaCST (sCST : string) : boolean;
begin
   if (copy(sCST, 1, 1) <> '0') and
      (copy(sCST, 1, 1) <> '1') and
      (copy(sCST, 1, 1) <> '2') then
      result:= false
   else
      begin
         if (copy(sCST, 2,2) <> '00') and
            (copy(sCST, 2,2) <> '10') and
            (copy(sCST, 2,2) <> '20') and
            (copy(sCST, 2,2) <> '30') and
            (copy(sCST, 2,2) <> '40') and
            (copy(sCST, 2,2) <> '41') and
            (copy(sCST, 2,2) <> '50') and
            (copy(sCST, 2,2) <> '51') and
            (copy(sCST, 2,2) <> '60') and
            (copy(sCST, 2,2) <> '70') and
            (copy(sCST, 2,2) <> '90') then
               result:= false
         else
            Result:= true;
      end;
end;

function Substitui(substituida : string; substituirpor : string; texto : string) : string;
var sAux : string;
    i : integer;
begin
   sAux:= '';
   for i:= 1  to length(texto) do
      begin
         if copy(texto, i, 1) = substituida then
            sAux:= sAux + substituirpor
         else
            sAux:= sAux + copy(texto, i, 1);
      end;
   result:= sAux;
end;

function EhNumero(s: string): Boolean;
var i: Integer;
begin
  Result:= True;
  for i:= 1 to Length(s) do
     begin
        if not (s[i] in ['0'..'9']) then
           begin
              Result:= False;
              Break;
           end;
     end;
end;

function FormataDataECF(const sString : string) : string;
var sDia, sMes, sAno : string;
    sAuxData : string;
begin
   if Length(trim(sString)) = 12 then
      begin
         sDia:= copy(sString, 1, 2);
         sMes:= copy(sString, 3, 2);
         sAno:= copy(sString, 5, 2);
         sAuxData:= sDia + '/' + sMes + '/' + sAno;
         result:= sAuxData;
      end
   else
      result:= datetostr(date);
end;


function FormataHoraECF(const sString : string) : String ;
var sHor, sMin, sSeg : string;
    sAuxHora : string;
begin
   if Length(trim(sString)) = 12 then
      begin
         sHor:= copy(sString, 7, 2);
         sMin:= copy(sString, 9, 2);
         sSeg:= copy(sString, 11, 2);
         sAuxHora:= sHor + ':' + sMin + ':' + sSeg;
         result:= sAuxHora;
      end
   else
      result:= TimeToStr(time);
end;


function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve est� no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;


function NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
begin
   {N�o deixa inserir registros no DBGrid caso:
    1- estiver em modo de edi��o: E
    1.1- se clicar na tecla "Insert"; OU
    1.2- se clicar na tecla "Seta para baixo" E estiver no �ltimo registro; OU
    1.2- se clicar na tecla "Tab" E estiver no �ltimo registro E estiver na
         �ltima coluna vis�vel. }
   Result:= Key;

   if dgEditing in DBGrid.Options then
      begin
         if (Key = VK_INSERT) or ((Key = VK_DOWN) and (DataSet.RecNo = DataSet.RecordCount)) then
            Result := 0
         else
            if (Key = VK_TAB) and (DataSet.RecNo = DataSet.RecordCount) then
               begin
                  if (DBGrid.SelectedIndex = RetIdxUltimaColVisivel(DBGrid)) then
                     Result := 0
               end;
      end;
end;


function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var x: integer;
begin
  Result:= -1;

  for x:= DBGrid.Columns.Count-1 downto 0 do
     begin
        if DBGrid.Columns.Items[x].Visible then
           begin
              Result:= x;
              Break;
           end;
     end;
end;

function RetIdxUltimaColVisivelx(DBGrid: TxDBGrid): integer;
var x: integer;
begin
  Result:= -1;

  for x:= DBGrid.Columns.Count-1 downto 0 do
     begin
        if DBGrid.Columns.Items[x].Visible then
           begin
              Result:= x;
              Break;
           end;
     end;
end;

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

function somenteNumero(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;

function FormataStringD(Valor,Tamanho,Complemento : String):String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x<>StrToInt(Tamanho)) then
           Valor := Complemento + Valor
        else
           Valor := '' + Valor ;
     end;
   Result := Valor;
end;

function FormataStringE(Valor,Tamanho,Complemento : String):String;
var X, Y : Integer;
begin
   Y := Length(Valor);
   For X := Y to StrToInt(Tamanho) do
     begin
        If (x <> StrToInt(Tamanho)) then
           Valor := Valor + Complemento
        else
           Valor := Valor + '';
     end;
   Result := Valor;
end;

function FormataStringC(Valor,Tamanho,Complemento : String):String;
var
   Calc, L, Tam: Integer;

begin
   L := Length( Valor );
   Tam := StrToInt( Tamanho );
   Calc := ( ( Tam - L ) div 2 );
   Result :=  FormataStringD( '', IntToStr( Calc ), Complemento )  + Valor + FormataStringD( '', IntToStr( Calc ), Complemento );
end;





end.
