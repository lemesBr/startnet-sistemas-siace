unit Unit_ECF_Bematech_Fi1;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

 //------ Function Declarations ------> Bematech MP20Fi1 <------
 Function IniPortaStr(Porta: PChar):integer; stdcall; external 'Mp20fi32.dll' name 'IniPortaStr';      //Função da Dll que abre a Porta Serial
 Function FormataTX(BUFFER: PChar):integer; stdcall; external 'Mp20fi32.dll';    //Função da Dll Para envio de Comando
 Function FechaPortaMP20Fi1: integer; stdcall; external 'Mp20fi32.dll' name 'FechaPorta';   //Função da Dll Para Fechar a Porta Serial
 Function Status_Mp20FI(var Ret:integer;var ACK:integer;var ST1:integer;var ST2:Integer):integer; stdcall; external 'Mp20fi32.dll';
 Function Le_Variaveis(Retorno_var:string):integer; stdcall; external 'Mp20fi32.dll';   //Função Para Ler o Retorno de Variaveis da Impressora , Nao Incluir o Var na Declaração
 Function Retorna_ASCII(Flag:Integer):integer; stdcall; external 'Mp20fi32.dll';

 procedure Abre_Porta_Bematech_Fi1;
 procedure Reducao_Z_Bematech_Fi1;
 procedure Leitura_X_Bematech_Fi1;
 Function Cancela_Cupom_Bematech_Fi1: boolean;
 Function Abre_Gaveta_Bematech_Fi1: boolean;

 procedure Envia_Bematech_Fi1 (sComando: string);
 procedure Analisa_Retorno_Bematech_Fi1;

//------ Var declarations ------
var
 iResp: integer;                                    //Variavel que pega retorno da Função
 sComando:String;                                   //Variavel que monta o Comando a Ser enviado
 Ret: integer;                                      //Variavel que pega retorno da Função
 ACK: integer;                                      //Variavel que pega o ACK
 ST1: integer;                                      //Variavel que pega o ST1
 ST2: integer;                                      //Variavel que pega o ST2
 Flag:integer;                                      //Variagel para chamar a Função Retorna_ASCII
 Retorno_var:string;                                //Variavel que Guarda o Retorno de Info
 indice:integer;
 GavetaInstalada: integer;
 PortaECF: integer;

implementation

//------ Abre Gaveta Acoplada ao ECF ------
Function Abre_Gaveta_Bematech_Fi1: boolean;
var
 EstadoGaveta: integer;
begin
 Result:=false;
 If GavetaInstalada <> 3 then                                                              //Gaveta não instalada
  //------ Bematech MP20Fi ------
  Envia_Bematech_Fi1(#27+'|22|'+#64+'|'+#27);
  {while GavetaECFAberta do
   application.MessageBox('Feche a Gaveta e clique OK para continuar...', 'Gaveta Aberta', mb_ok + mb_iconexclamation);}
end;

//------ Cancela Cupom Fiscal ------
Function Cancela_Cupom_Bematech_Fi1: boolean;
var
 retorno: integer;
 noError: Boolean;
begin
 noError:=False;
  //-------> MP20Fi1 <--------
  Envia_Bematech_Fi1(#27 + '|14|' + #27);
  {if noError then
   logtofile('Cancelamento de Último Cupom');}
end;



//------ Analisa a Variável Retorno ------> Bematech MP20Fi1 <------
{Funçào que irá Analisar o Retorno da Impressora
Pega os 3 Bytes e Por sua Vez verifica se o Comando
enviado requer a leitura de mais bytes, como o
numero de série e outros comandos que retornam + info.}
procedure Analisa_Retorno_Bematech_Fi1;
begin
 {Ret:=0; ACK:=0; ST1:=0; ST2:=0;
 for ACK:=0 to 3000 do
 Retorno_var:=Retorno_var+' ';
 iResp:=Status_Mp20FI(Ret,ACK,ST1,ST2);    //Chama a Função de Ler Status
 iResp:=Le_Variaveis(Retorno_var);    //Chama a Função de Ler Retorno, se Tiver irá Retornar.
  //Verifica se Foi ACK ou NAK
  //ACK OK , NAK já sai da Função pois é Erro Critico
 if ACK=21 then
  begin
   //SNAK.Checked:=true;
   exit;
  end;
 if ACK=6 then //SACK.Checked:=true;
  //Variavel.text:='ACK='+IntToStr(ACK)+' ST1='+IntToStr(ST1)+' ST2='+IntToStr(ST2)+#13+#10+Retorno_var;

  {//Tratamento do ST1
  if ST1>=128 then begin ST1128.Checked:=true;ST1:=ST1-128;end;
  if ST1>=64  then begin ST164.Checked:=true; ST1:=ST1-64; end;
  if ST1>=32  then begin ST132.Checked:=true; ST1:=ST1-32; end;
  if ST1>=16  then begin ST116.Checked:=true; ST1:=ST1-16; end;
  if ST1>=8   then begin ST18.Checked :=true; ST1:=ST1-8;  end;
  if ST1>=4   then begin ST14.Checked :=true; ST1:=ST1-4;  end;
  if ST1>=2   then begin ST12.Checked :=true; ST1:=ST1-2;  end;
  if ST1>=1   then begin ST11.Checked :=true; ST1:=ST1-1;  end;

  //Tratamento do ST2
  if ST2>=128 then begin ST2128.Checked:=true;ST2:=ST2-128;end;
  if ST2>=64  then begin ST264.Checked:=true; ST2:=ST2-64; end;
  if ST2>=32  then begin ST232.Checked:=true; ST2:=ST2-32; end;
  if ST2>=16  then begin ST216.Checked:=true; ST2:=ST2-16; end;
  if ST2>=8   then begin ST28.Checked :=true; ST2:=ST2-8;  end;
  if ST2>=4   then begin ST24.Checked :=true; ST2:=ST2-4;  end;
  if ST2>=2   then begin ST22.Checked :=true; ST2:=ST2-2;  end;
  if ST2>=1   then begin ST21.Checked :=true; ST2:=ST2-1;  end;}
end;


//------ Open Serial-----> MP20Fi1 <------
//Funçào que abrea porta de Comunicação e verifica
//se deu erro na inicialização ou Não.
//iResp=0 ERRO   -  iResp=1
procedure Abre_Porta_Bematech_Fi1;
begin
 iResp:=IniPortaStr(Pchar('COM'+inttostr(PortaECF)));
 if iResp = 0 then
  application.messagebox(PChar('Erro ao tentar Abrir a Porta de Comunicação com o ECF - COM' + inttostr(PortaECF) +#13+
                               'Verifique:'+#13+
                               '1 - Se a impressora está ligada e pronta.'+#13+
                               '2 - Se a configuração do ECF está correta.'),'Erro!',mb_ok+mb_iconerror);

end;


//------ Executa os Comandos a serem Enviados ------> Bematech MP20Fi1 <------
procedure Envia_Bematech_Fi1 (sComando: string);
begin
 Abre_Porta_Bematech_Fi1();
 iResp := FormataTX(PChar(sComando));
 if iResp<>0 then
  begin
   application.messagebox('Problemas ao tentar Enviar Comando'#13'Verifique o ECF e tente novamente.','Atenção', mb_ok + mb_iconerror);
   exit;
  end;
 Analisa_Retorno_Bematech_Fi1;                        //Função Para Pegar o Retorno da Impressora os 3 Bytes
 iResp:=FechaPortaMP20Fi1();
end;


procedure Leitura_X_Bematech_Fi1;
var
 noError: boolean;
begin
 screen.cursor:= crHourGlass;
 noError := False;
 Envia_Bematech_Fi1(#27 + '|06|' + #27);
 screen.cursor:= crDefault;
 {if noError then
  logtofile('Leitura X efetuada');}
end;

procedure Reducao_Z_Bematech_Fi1;
var
 noError: boolean;
begin
 screen.cursor:= crHourGlass;
 noError:= False;
 If application.messagebox('Executar Redução Z ?','Atenção',Mb_YesNo+mb_defbutton2+mb_iconquestion) = idyes then
  Envia_Bematech_Fi1(#27 + '|05|' + #27);
  screen.cursor:= crDefault;
  {if noError then
   logtofile('Redução Z efetuada');}
end;

end.


