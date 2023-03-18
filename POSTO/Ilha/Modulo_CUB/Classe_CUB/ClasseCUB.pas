unit ClasseCUB;

interface

uses ExtCtrls, CUBUtils, SysUtils, UnitFuncoes, MMSystem, ClasseBomba, ClasseBico,
     Windows, Forms, DateUtil;

  type
   TBombaArray = array of TBomba;

   TCUB = class(TObject)

  private
   { Private declarations }
   FQnt_Bombas: integer;
   FQnt_Bicos: integer;
   FQnt_Bicos_Por_Bomba: array of integer;
   FProduto_Por_Bico: array of integer;
   FBomba: TBombaArray;
   FCod_Erro: LongInt;
   FCUBTimer: TTimer;
   FActive: Boolean;

   FOnActivate: TOnActivate;
   //FOnError: TOnError;

   procedure CUBTimerOnTimer(Sender: TObject);
   procedure TimerHandler;
   Procedure SetActive(Active: Boolean);
  public
   { Public declarations }
   property Qnt_Bombas: integer read FQnt_Bombas write FQnt_Bombas;
   property Cod_Erro: integer read FCod_Erro;
   property Active: boolean read FActive write SetActive;
   property Qnt_Bicos: integer read FQnt_Bicos write FQnt_Bicos;
   property CUBTimer: TTimer read FCUBTimer write FCUBTimer;
   property Bomba: TBombaArray read FBomba;

   property OnActivate: TOnActivate read FOnActivate Write FOnActivate;

   procedure InicializaCUB;

   Procedure Cria_Bomba(id_Bomba, Qnt_Bicos, cod_frentista: Byte; Nome_Frentista: String; Auto_Autorizar: Boolean);
   Procedure Cria_Bico(id_Bomba, id_Bico, id_Produto, cod_produto, cod_Tanque: Byte; Nome_Produto: String);

   Procedure Set_Qnt_Bicos_Por_Bomba(Bico_Por_Bomba: Array of integer);
   Procedure Set_Produto_Por_Bico(Produto_Por_Bico: Array of integer);

   Function ProgramarPreco(id_Produto, NivelDePreco, Novo_Preco: LongInt): boolean;
   Function LerPaginaTag(var DataBuffer: array of Byte; NroTag, NroPagina: longint): boolean;
   Function DesautorizarTodasBombas: boolean;
   Procedure AutorizarTodasBombas;
   Procedure FecharTodasBombas;
   Procedure AbrirTodasBombas;
   Function LerEstadoTodasBomba(var NewStatus : array of Char): boolean;

   Constructor Create(Qnt_Bombas: Byte);
   Destructor Destroy; override;
  end;

implementation

//--- Contructor da Classe (Executado sempre q objeto criado) ---
Constructor TCUB.Create(Qnt_Bombas: Byte);
begin
 FQnt_Bombas := Qnt_Bombas;
 SetLength(FBomba, FQnt_Bombas);

 FCod_Erro := 0;
 FQnt_Bicos := 0;

 FCUBTimer := TTimer.Create(nil);
 FCUBTimer.Enabled := False;
 FCUBTimer.Interval := 100;
 FCUBTimer.OnTimer := CUBTimerOnTimer;

 FActive := False;

 logtofile('TCUB.Create', True);
end;

//--- Destructor da Classe (Executado sempre q objeto destruido) ---
Destructor TCUB.Destroy;
var
 x: integer;
begin
 FCUBTimer.Enabled := False;

 logtofile('TCUB.Destroy', True);

 For x := 0 to Length(FBomba) - 1 do
  FBomba[x].free;

 CUBTimer.free;

 //Trata_Retorno(CUBDescarregarDll);              //Deve ser chamado somente quando a dll não vai ser mais usada

 inherited Destroy;
end;

//--- Identificação de frentista ou cliente através de CUB-Tag (Obsoleto) ---
Function TCUB.LerPaginaTag(var DataBuffer: array of Byte; NroTag, NroPagina: longint): boolean;
const
 Function_Const = FCUBLerPaginaTag;
var
 retorno: Byte;
begin
 logtofile('TCUB.LerPaginaTag', True);

 retorno := CUBLerPaginaTag(NroTag, 1, @DataBuffer);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Ativa/Desativa CUB ---
Procedure TCUB.SetActive(Active: Boolean);
begin
 FActive           := Active;
 FCubTimer.Enabled := Active;

 if assigned(FOnActivate) then
  FOnActivate(Self);

 logtofile('TCUB.SetActive - Active: ' + BooltoStr(Active), True);
end;

//--- Inicia Array de Quantidade de Bicos por Bomba ---
Procedure TCUB.Set_Qnt_Bicos_Por_Bomba(Bico_Por_Bomba: Array of integer);
var
 x: integer;
begin
 setlength(FQnt_Bicos_Por_Bomba, length(Bico_Por_Bomba));

 for x:=0 to length(Bico_Por_Bomba) - 1 do
  begin
   FQnt_Bicos_Por_Bomba[x] := Bico_Por_Bomba[x];

   logtofile('TCUB.Set_Qnt_Bicos_Por_Bomba - FQnt_Bicos_Por_Bomba[' + inttostr(x) + ']: ' + inttostr(Bico_Por_Bomba[x]), True);
  end;
end;

//--- Inicia array de produtos por bico ---
Procedure TCUB.Set_Produto_Por_Bico(Produto_Por_Bico: Array of integer);
var
 x: integer;
begin
 setlength(FProduto_Por_Bico, length(Produto_Por_Bico));

 for x := 0 to length(Produto_Por_Bico) - 1 do
  begin
   FProduto_Por_Bico[x] := Produto_Por_Bico[x];

   logtofile('TCUB.Set_Produto_Por_Bico - FProduto_Por_Bico[' + inttostr(x) + ']: ' + inttostr(Produto_Por_Bico[x]), True);
  end;
end;

//--- Programa Preços por Produto ---
Function TCUB.ProgramarPreco(id_Produto, NivelDePreco, Novo_Preco: LongInt): boolean;
const
 Function_Const = FCUBProgramarPreco;
var
 retorno: Byte;
begin
 logtofile('TCUB.ProgramarPreco - CUBProgramarPreco', True);

 retorno := CUBProgramarPreco(id_Produto, NivelDePreco, Novo_Preco);

 Result := Trata_Retorno(Function_Const, retorno);
 //TODO: Tem q fazer p tratamento dos retornos para se acontecer o erro perguntar se quer parar o Timer de Leitura, senão fica em loop dando erro!
 //TODO: Tem q fazer p tratamento dos retornos para mostrar uma msg mais decente do tipo "Não foi possível programar preço da bomba tal produto tal etc"
end;

//--- Desautorizar todas as bombas (Bomba 0=Todas) ---
Function TCUB.DesautorizarTodasBombas: boolean;
const
 Function_Const = FCUBDesautorizarBomba;
var
 retorno: Byte;
 x: integer;
begin
 logtofile('TCUB.DesautorizarTodasBombas - CUBDesautorizarBomba', True);

 For x := 0 to FQnt_Bombas - 1 do
  FBomba[x].AutoAutorizar := False;

 retorno := CUBDesautorizarBomba(0);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Autorizar todas as bombas ---
Procedure TCUB.AutorizarTodasBombas;
var
 x: integer;
begin
 logtofile('TCUB.AutorizarTodasBombas - CUBAutorizarBomba', True);

 For x := 0 to FQnt_Bombas - 1 do
  FBomba[x].AutorizarBomba;
end;

//--- Fechar todas as bombas ---
Procedure TCUB.FecharTodasBombas;
var
 x: integer;
begin
 logtofile('TCUB.FecharTodasBombas - CUBFecharBomba', True);

 For x := 0 to FQnt_Bombas - 1 do
  FBomba[x].FecharBomba
end;

//--- Abrir todas as bombas ---
Procedure TCUB.AbrirTodasBombas;
var
 x: integer;
begin
 logtofile('TCUB.AbrirTodasBombas - CUBAbrirBomba', True);

 For x := 0 to FQnt_Bombas - 1 do
  FBomba[x].AbrirBomba
end;

//--- Atualizar estado de todas as bombas (Bomba 0=Todas) ---
Function TCUB.LerEstadoTodasBomba(var NewStatus : array of Char): boolean;
const
 Function_Const = FCUBLerEstado;
var
 retorno: Byte;
begin
 logtofile('TCUB.LerEstadoTodasBomba - CUBLerEstado', True);

 retorno := CUBLerEstado(0, @NewStatus);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Cria Objeto Bomba
Procedure TCUB.Cria_Bomba(id_Bomba, Qnt_Bicos, cod_frentista: Byte; Nome_Frentista: String; Auto_Autorizar: Boolean);
begin
 id_Bomba := id_Bomba - 1;

 FBomba[id_Bomba]                := TBomba.create;
 FBomba[id_Bomba].id_Bomba       := id_Bomba + 1;
 FBomba[id_Bomba].id_Bomba       := id_Bomba + 1;
 FBomba[id_Bomba].cod_frentista  := cod_frentista;
 FBomba[id_Bomba].nome_frentista := nome_frentista;
 FBomba[id_Bomba].AutoAutorizar  := Auto_Autorizar;

 FBomba[id_Bomba].Set_Qnt_Bicos(Qnt_Bicos);
end;

//--- Cria Objeto Bico
Procedure TCUB.Cria_Bico(id_Bomba, id_Bico, id_Produto, cod_produto, cod_Tanque: Byte; Nome_Produto: String);
begin
 id_Bomba := id_Bomba - 1;
 id_Bico  := id_Bico - 1;

 FBomba[id_Bomba].Bico[id_Bico]              := TBico.Create;
 FBomba[id_Bomba].Bico[id_Bico].id_Bomba     := id_Bomba + 1;
 FBomba[id_Bomba].Bico[id_Bico].id_Bico      := id_Bico + 1;
 FBomba[id_Bomba].Bico[id_Bico].id_Produto   := id_Produto;
 FBomba[id_Bomba].Bico[id_Bico].cod_Produto  := cod_Produto;
 FBomba[id_Bomba].Bico[id_Bico].cod_Tanque   := cod_Tanque;
 FBomba[id_Bomba].Bico[id_Bico].Nome_Produto := Nome_Produto;
end;

//--- Inicia Objeto CUB, Objetos Bomba e Objetos Bicos ---
procedure TCUB.InicializaCUB;
begin
 if not FActive then
  CUBTimer.Enabled := True;

 Active := True;
end;

//--- Evento OnTimer do Timer de Leitura do Objeto CUB ---
procedure TCUB.CUBTimerOnTimer(Sender: TObject);
begin
 //Desativar o timer para evitar reentrancia
 FCUBTimer.Enabled := false;
 TimerHandler;
 FCUBTimer.Enabled := true;
end;

//--- Leitura e Tratamento de Informações do CUB ---
procedure TCUB.TimerHandler;
var
 NewStatus : array [0..99] of Char;
 i: integer;
begin
 logtofile('TCUB.TimerHandler - LerEstadoTodasBomba', True);

 LerEstadoTodasBomba(NewStatus);

 logtofile('TCUB.TimerHandler - LerEstadoTodasBomba - NewStatus:' + NewStatus, True);

 for i := 0 to FQnt_Bombas - 1 do     // Procesar o novo estado
  begin
   if (NewStatus[i] = SABASTECENDO) then
    if FBomba[i].RTMActive then
     FBomba[i].LerRTM;  

   if FBomba[i].AutoAutorizar then      // Procesar autorizaçao automatica
    begin
     if (NewStatus[i] = SBICOFORA) or (NewStatus[i] = SDISPONIVEL) then
      begin
       // Dar até 3 segundos para o sistema procesar a mensagem de
       // autorizaçao anterior. Dependendo da quantidade e tipo de
       // bomba no posto, pode demorar isto, especialmente nas
       // bombas Daruma e Millenium
       if IncSecond(FBomba[i].UltimaAutorizacao,3 ) < now then //TODO: Colocar o tempo de incremento p/ nova autorizacao como parâmetro
        begin
         FBomba[i].AutorizarBomba;
         FBomba[i].UltimaAutorizacao := now;
        end;
      end;
    end;

   if NewStatus[i] <> FBomba[i].StatusBomba then              // Proceso especial para quando muda o estado da bomba
    begin
     if NewStatus[i] = SFIMDEVENDA then                     // Acabou a venda e tenho venda pendente de leitura
      begin
       //--- Ler os dados da venda
       FBomba[i].LerVenda;
      end;
     FBomba[i].StatusBomba := NewStatus[i];
    end
  end;
end;

end.
