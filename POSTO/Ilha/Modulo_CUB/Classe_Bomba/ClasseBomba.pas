unit ClasseBomba;

interface

uses CUBUtils, ClasseBico, SysUtils, UnitFuncoes;

  type
   TBicoArray = array of TBico;

   TBomba = class(TObject)

  private
   { Private declarations }
   Fid_Bomba,
   FQnt_Bicos,
   Fid_Bico_UltimaVenda,
   Fcod_frentista: integer;

   FAutoAutorizar,
   FPrimeiraLeitura: boolean;

   FCod_Erro,
   FPreco_UltimaVenda,
   FNiveldePreco_UltimaVenda,
   FNiveldePreco,
   FMililitros_UltimaVenda,
   FDinheiro_UltimaVenda,
   FRealTimeMoney_Dinheiro: LongInt;

   FUltimaVenda,
   FUltimaAutorizacao: TDateTime;

   FStatusBomba : Char;
   FRTMActive: Boolean;
   FBico: TBicoArray;
   FStatusBomba_Desc,
   FNome_Produto_UltimaVenda,
   FNome_Frentista: string;

   FOnStatusChange: TStatusChange;
   FOnError: TOnError;
   FOnLerVenda: TLerVenda;
   FOnRTM: TRTM;

   procedure SetStatusBomba(NewStatus: Char);
  public
   { Public declarations }
   property Cod_Erro: integer read FCod_Erro;
   property Bico: TBicoArray read FBico write FBico;
   property Qnt_Bicos: integer read FQnt_Bicos write FQnt_Bicos;
   property id_Bomba: integer read Fid_Bomba write Fid_Bomba;

   property cod_frentista: integer read Fcod_frentista write Fcod_frentista;
   property Nome_Frentista: string read FNome_Frentista write FNome_Frentista;

   property RTMActive: Boolean read FRTMActive write FRTMActive;
   property RealTimeMoney_Dinheiro: Longint read FRealTimeMoney_Dinheiro;
   property AutoAutorizar: Boolean read FAutoAutorizar write FAutoAutorizar;
   property UltimaAutorizacao: TDateTime read FUltimaAutorizacao write FUltimaAutorizacao;
   property StatusBomba: Char read FStatusBomba write SetStatusBomba;

   property Nome_Produto_UltimaVenda: String read FNome_Produto_UltimaVenda write FNome_Produto_UltimaVenda;
   property id_Bico_UltimaVenda: integer read Fid_Bico_UltimaVenda write Fid_Bico_UltimaVenda;
   property Dinheiro_UltimaVenda: LongInt read FDinheiro_UltimaVenda write FDinheiro_UltimaVenda;
   property Mililitros_UltimaVenda: LongInt read FMililitros_UltimaVenda write FMililitros_UltimaVenda;
   property Preco_UltimaVenda: LongInt read FPreco_UltimaVenda write FPreco_UltimaVenda;
   property NivelDePreco_UltimaVenda: LongInt read FNivelDePreco_UltimaVenda write FNivelDePreco_UltimaVenda;
   property NivelDePreco: LongInt read FNivelDePreco write FNivelDePreco;

   property StatusBombaDesc: string read FStatusBomba_Desc;
   property UltimaVenda: TDateTime read FUltimaVenda write FUltimaVenda;

   property OnStatusChange: TStatusChange read FOnStatusChange Write FOnStatusChange;
   property OnLerVenda: TLerVenda read FOnLerVenda Write FOnLerVenda;
   property OnRTM: TRTM read FOnRTM Write FOnRTM;

   Function LerEstadoBomba(id_Bomba: LongInt; var NewStatus : array of Char): boolean;
   Function AbrirBomba: boolean;
   Function FecharBomba: boolean;
   Function AutorizarBomba: boolean;
   Function DesautorizarBomba: boolean;
   Function ContinuarAbastecimento: boolean;
   Function ConfirmarLeituraVenda: boolean;
   Function SetarNivelDePreco: boolean;
   Function PresetDinheiro(ValorMaximo: Longint): boolean;
   Function PresetLitros(CentiLitrosMaximo: LongInt): boolean;
   Function LerRTM: boolean;
   Function LerVenda: boolean;
   Procedure Set_Qnt_Bicos(Qnt_Bicos: Byte);
   Constructor Create;
   Destructor Destroy;
  end;

implementation

//--- Contructor da Classe (Executado sempre q objeto criado) ---
Constructor TBomba.Create;
begin
 FAutoAutorizar            := True;
 FStatusBomba              := '7';
 FStatusBomba_Desc         := 'Desconhecido';
 FCod_Erro                 := -1;
 FNiveldePreco_UltimaVenda := -1;
 FNiveldePreco             := 1;
 FRTMActive                := False;
 FRealTimeMoney_Dinheiro   := 0;
 Fid_Bico_UltimaVenda      := -1;
 FPrimeiraLeitura          := True;
 FNome_Produto_UltimaVenda := '';

 logtofile('TBomba.Create', True);
end;

//--- Destructor da Classe (Executado sempre q objeto destruido) ---
Destructor TBomba.Destroy;
var
 x: integer;
begin
 logtofile('TBomba.Destroy', True);

 For x := 0 to Length(FBico) - 1 do
  FBico[x].free;

 inherited Destroy;
end;

//--- Inicia Array com Nº de Bicos ---
Procedure TBomba.Set_Qnt_Bicos(Qnt_Bicos: Byte);
begin
 FQnt_Bicos := Qnt_Bicos;
 
 SetLength(FBico, FQnt_Bicos);
end;

//--- Armazena o Novo Status e Dispara evento OnStatusChange ---
Procedure TBomba.SetStatusBomba(NewStatus: Char);
begin
 FStatusBomba      := NewStatus;
 FStatusBomba_Desc := Status_Str(NewStatus);

 if assigned(FOnStatusChange) then
  FOnStatusChange(Self, NewStatus, Status_Str(NewStatus));

 //--- Requisita encerrantes se é a primeira leitura de um estado válido
 //TODO: Não está funcionando!
 { if (FPrimeiraLeitura and (NewStatus in [SAUTORIZADA])) then   //Bomba GILBARCO não permite leitura quando abastecendo
  begin
   FPrimeiraLeitura := False;

   //--- Leitura de Encerrantes dos Bicos
   For x := 0 to FQnt_Bicos - 1 do
    FBico[x].LerTotais(False);
  end;  }
end;

//--- Lê Parâmetros de venda, Dispara evento OnLerVenda, Confirma leitura de venda, Lê encerrantes de Bico ---
Function TBomba.LerVenda: boolean;
const
 Function_Const = FCUBLerVenda;
var
 retorno: Byte;
 Mililitros, Dinheiro, Preco, NivelDePreco, idProduto: LongInt;
 x: integer;
begin
 logtofile('TBomba.LerVenda - CUBLerVenda', True);

 //--- leitura da venda
 retorno := CUBLerVenda(Fid_Bomba, idProduto, NivelDePreco, Mililitros, Dinheiro, Preco);

 Result := Trata_Retorno(Function_Const, retorno);

 If result then
  begin
   FUltimaVenda              := now;
   FNivelDePreco_UltimaVenda := NivelDePreco;
   FPreco_UltimaVenda        := Preco;
   FMililitros_UltimaVenda   := Mililitros;
   FDinheiro_UltimaVenda     := Dinheiro;

   //--- Procura/Atualiza o Bico que fez a venda
   For x := 0 to FQnt_Bicos - 1 do
    begin
     if (FBico[x].id_Produto = idProduto) then
      begin
       Fid_Bico_UltimaVenda      := FBico[x].id_Bico;
       FNome_Produto_UltimaVenda := FBico[x].Nome_Produto;

       FBico[x].Mililitros  := Mililitros;
       FBico[x].Dinheiro    := Dinheiro;
       FBico[x].UltimaVenda := FUltimaVenda;

       // Ler os encerrantes de dinheiro e litros...
       FBico[x].LerTotais(True);
      end;
    end;


    if assigned(FOnLerVenda) then
     FOnLerVenda(Self, idProduto, NivelDePreco, Mililitros, Dinheiro, Preco, FNome_Produto_UltimaVenda);

   //--- Confirma a leitura da venda para o servidor
   ConfirmarLeituraVenda;
  end;
end;

//--- Lê "Real Time Money", Dispara evento OnRTM ---
Function TBomba.LerRTM: boolean;
const
 Function_Const = FCUBLerRTM;
var
 retorno: Byte;
begin
 logtofile('TBomba.LerRTM - CUBLerRTM', True);

 retorno := CUBLerRTM(Fid_Bomba, FRealTimeMoney_Dinheiro);

 Result := Trata_Retorno(Function_Const, retorno);

 if result then
  if assigned(FOnRTM) then
   FOnRTM(Self, FRealTimeMoney_Dinheiro);
end;

//--- Confirmação de Leitura de Venda ---
Function TBomba.ConfirmarLeituraVenda: boolean;
const
 Function_Const = FCUBConfirmarLeituraVenda;
var
 retorno: Byte;
begin
 logtofile('TBomba.ConfirmarLeituraVenda - CUBConfirmarLeituraVenda', True);

 retorno := CUBConfirmarLeituraVenda(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Continua abastecimento (quando em pausa) ---
Function TBomba.ContinuarAbastecimento: boolean;
const
 Function_Const = FCUBContinuarAbastecimento;
var
 retorno: Byte;
begin
 logtofile('TBomba.ContinuarAbastecimento - CUBContinuarAbastecimento', True);

 retorno := CUBContinuarAbastecimento(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Determina nível de Preço ---
Function TBomba.SetarNivelDePreco: boolean;
const
 Function_Const = FCUBSetarNivelDePreco;
var
 retorno: Byte;
begin
 logtofile('TBomba.SetarNivelDePreco - CUBSetarNivelDePreco', True);

 retorno := CUBSetarNivelDePreco(Fid_Bomba, FNiveldePreco_UltimaVenda);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Atualizar estado de Bomba específica ---
Function TBomba.LerEstadoBomba(id_Bomba: LongInt; var NewStatus : array of Char): boolean;
const
 Function_Const = FCUBLerEstado;
var
 retorno: Byte;
begin
 logtofile('TBomba.LerEstadoBomba - CUBLerEstado', True);

 retorno := CUBLerEstado(id_Bomba, @NewStatus);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Abre Bomba (quando fechada) ---
Function TBomba.AbrirBomba: boolean;
const
 Function_Const = FCUBAbrirBomba;
var
 retorno: Byte;
begin
 logtofile('TBomba.AbrirBomba - CUBAbrirBomba', True);

 retorno := CUBAbrirBomba(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Fecha Bomba (quando aberta) ---
Function TBomba.FecharBomba: boolean;
const
 Function_Const = FCUBFecharBomba;
var
 retorno: Byte;
begin
 logtofile('TBomba.FecharBomba - CUBFecharBomba', True);

 retorno := CUBFecharBomba(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Autorizar bomba específica ---
Function TBomba.AutorizarBomba: boolean;
const
 Function_Const = FCUBAutorizarBomba;
var
 retorno: Byte;
begin
 logtofile('TBomba.AutorizarBomba - CUBAutorizarBomba', True);

 retorno := CUBAutorizarBomba(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Autorizar Bomba específica ---
Function TBomba.DesautorizarBomba: boolean;
const
 Function_Const = FCUBDesautorizarBomba;
var
 retorno: Byte;
begin
 logtofile('TBomba.DesautorizarBomba - CUBDesautorizarBomba', True);

 FAutoAutorizar := False;

 retorno := CUBDesautorizarBomba(Fid_Bomba);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Preset de Bomba em Dinheiro ---
Function TBomba.PresetDinheiro(ValorMaximo: LongInt): boolean;
const
 Function_Const = FCUBPresetDinheiro;
var
 retorno: Byte;
begin
 logtofile('TBomba.PresetDinheiro - CUBPresetDinheiro', True);

 retorno := CUBPresetDinheiro(Fid_Bomba, FNiveldePreco_UltimaVenda, ValorMaximo);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Preset de Bomba em Litros ---
Function TBomba.PresetLitros(CentiLitrosMaximo: LongInt): boolean;
const
 Function_Const = FCUBPresetLitros;
var
 retorno: Byte;
begin
 logtofile('TBomba.PresetLitros - CUBPresetLitros', True);

 //NroBico pode ser qualquer valor, preset em litros efetuado na bomba somente... p/ q então este parâmetro de id_Bico?!? Dll com defeito???
 retorno := CUBPresetLitros(Fid_Bomba, FNiveldePreco_UltimaVenda, 1, CentiLitrosMaximo);

 Result := Trata_Retorno(Function_Const, retorno);
end;

end.
