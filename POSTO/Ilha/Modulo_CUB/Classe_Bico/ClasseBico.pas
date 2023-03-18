unit ClasseBico;

interface

uses CUBUtils, SysUtils, Variants, UnitFuncoes;

  type
   TBico = class(TObject)

  private
   { Private declarations }
   Fid_Bomba,
   Fid_Bico,
   Fcod_Tanque,
   FCod_produto: integer;

   FCod_Erro,
   Fid_Produto,
   FNiveldePreco,
   FMililitros,
   FDinheiro,
   FPreco,
   FPreco_N1,
   FPreco_N2: LongInt;

   FUltimaVenda: TDateTime;
   FNome_Produto: String;
   FEncerrante_Litros_Char, FEncerrante_Dinheiro_Char: array [0..20] of Char;
   FEncerrante_Litros, FEncerrante_Dinheiro: Integer;

   FOnError: TOnError;
   FOnLerTotais: TLerTotais;

  public
   { Public declarations }
   property Cod_Erro: integer read FCod_Erro write FCod_Erro;
   property id_Produto: integer read Fid_Produto write Fid_Produto;
   property id_Bomba: integer read Fid_Bomba write Fid_Bomba;
   property id_Bico: integer read Fid_Bico write Fid_Bico;
   property cod_Tanque: integer read Fcod_Tanque write Fcod_Tanque;

   property cod_produto: integer read Fcod_produto write Fcod_produto;
   property Nome_Produto: String read FNome_Produto write FNome_Produto;

   property NiveldePreco: Longint read FNiveldePreco;
   property Encerrante_Litros: Integer read FEncerrante_Litros;
   property Encerrante_Dinheiro: Integer read FEncerrante_Dinheiro;
   property Mililitros: Longint read FMililitros write FMililitros;
   property Dinheiro: Longint read FDinheiro write FDinheiro;
   property Preco: Longint read FPreco write FPreco;
   property UltimaVenda: TDateTime read FUltimaVenda write FUltimaVenda;

   property OnLerTotais: TLerTotais read FOnLerTotais Write FOnLerTotais;

   Function AutorizarBico: boolean;
   Function MapearProduto: boolean;
   Function LerTotais(FimDeVenda: Boolean): boolean;
   Constructor Create;
  end;

implementation

//--- Contructor da Classe (Executado sempre q objeto criado) ---
Constructor TBico.Create;
begin
 FCod_Erro := 0;
 FDinheiro := 0;
 FPreco := 0;
 FMiliLitros := 0;
 FNiveldePreco := 1;

 logtofile('TBico.Create', True);
end;

//--- Leitura de Encerrantes e Preços ---
//Bomba Gilbarco não lê encerrantes caso abastecendo
//Bomba Daruma e Millenium Encerrante_Dinheiro = ''
Function TBico.LerTotais(FimDeVenda: Boolean): boolean;
const
 Function_Const = FCUBLerTotais;
var
 retorno: Byte;
begin
 logtofile('TBico.LerTotais - CUBLerTotais', True);

 retorno := CUBLerTotais(Fid_Bomba, Fid_Produto, FNiveldePreco, @FEncerrante_Litros_Char, @FEncerrante_Dinheiro_Char, FPreco);

 Result := Trata_Retorno(Function_Const, retorno);

 If result then
  begin
   FEncerrante_Litros := strtoint(FEncerrante_Litros_Char);
   FEncerrante_Dinheiro := strtoint(FEncerrante_Dinheiro_Char);

   if assigned(FOnLerTotais) then
    FOnLerTotais(Self, FEncerrante_Litros, FEncerrante_Dinheiro, FPreco, FimDeVenda);
  end;  
end;

//--- Autorização de Bico Específico ---
Function TBico.AutorizarBico: boolean;
const
 Function_Const = FCUBAutorizarBico;
var
 retorno: Byte;
begin
 logtofile('TBico.AutorizarBico - CUBAutorizarBico', True);

 retorno := CUBAutorizarBico(Fid_Bomba, FNiveldePreco, Fid_Bico);

 Result := Trata_Retorno(Function_Const, retorno);
end;

//--- Configuração de Mapa de Pista (Qual Produto em qual Bico?!)---
Function TBico.MapearProduto: boolean;
const
 Function_Const = FCUBMapearProduto;
var
 retorno: Byte;
begin
 logtofile('TBico.MapearProduto - CUBMapearProduto', True);

 retorno := CUBMapearProduto(Fid_Bomba, Fid_Bico, Fid_Produto);

 Result := Trata_Retorno(Function_Const, retorno);
end;

end.
