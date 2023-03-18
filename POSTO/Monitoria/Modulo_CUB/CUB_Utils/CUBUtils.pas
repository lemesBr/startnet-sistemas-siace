unit CUBUtils;

interface

 uses Windows, Forms, SysUtils, UnitFuncoes;

 type
  //--- Declara��o de Tipos de Eventos disparados pelos Objetos ---
  TOnActivate = procedure (Sender:TObject) of object;
  TStatusChange = procedure (Sender: TObject; NewStatus: Char; StatusDesc: String) of object;
  TOnError = procedure (Sender: TObject; Error: LongInt) of object;
  TLerVenda = procedure (Sender: TObject; idProduto, NivelDePreco, Mililitros, Dinheiro, Preco: LongInt; Nome_Produto: String) of object;
  TLerTotais = procedure (Sender: TObject; EncerranteLitros, EncerranteDinheiro: Integer; Preco: LongInt; FimdeVenda: Boolean) of object;
  TRTM = procedure (Sender: TObject; RealTimeMoney_Dinheiro: LongInt) of object;

 //--- Declara��o de Fun��es Globais relacionadas ao CUB ---
 Function Trata_Retorno(Function_Const, Retorno: byte): Boolean;
 Function Status_Str(StatusCode: Char): string;
 Function Function_Str(Function_Const: Byte):string;
 Function Error_Str(Function_Const: byte):string;

 //--- Declara��o de Constantes Globais de Estado das Bombas ---
 const SFORADOAR     = '0';
 const SDISPONIVEL   = '1';
 const SABASTECENDO  = '2';
 const sFIMDEVENDA   = '3';
 const SBICOFORA     = '5';
 const SBOMBAFECHADA = '6';
 const SPAUSA        = '8';
 const SDESCONHECIDO = '7';
 const SAUTORIZADA   = '9';

 const FCUBAutorizarBico          = 1;
 const FCUBPresetDinheiro         = 2;
 const FCUBPresetLitros           = 3;
 const FCUBAbrirBomba             = 4;
 const FCUBFecharBomba            = 5;
 const FCUBLerRtm                 = 6;
 const FCUBLerPaginaTag           = 7;
 const FCUBDescarregarDll         = 8;
 const FCUBProgramarPreco         = 9;
 const FCUBMapearProduto          = 10;
 const FCUBLerEstado              = 11;
 const FCUBDesautorizarBomba      = 12;
 const FCUBContinuarAbastecimento = 13;
 const FCUBAutorizarBomba         = 14;
 const FCUBLerVenda               = 15;
 const FCUBConfirmarLeituraVenda  = 16;
 const FCUBSetarNivelDePreco      = 17;
 const FCUBLerTotais              = 18;

 //--- Declara��o de Fun��es dispon�veis em CUB32.dll ---
 function CUBAbrirBomba(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBLerEstado(NroBomba: LongInt; Estado: Pointer): LongInt; stdcall; external 'CUB32.dll';
 function CUBAutorizarBomba(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBDesautorizarBomba(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBFecharBomba(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBContinuarAbastecimento(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBSetarNivelDePreco(NroBomba: LongInt; NivelDePreco: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBLerRTM(NroBomba: LongInt; var RealTimeMoney: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBConfirmarLeituraVenda(NroBomba: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBDescarregarDll: LongInt; stdcall; external 'CUB32.dll';
 function CUBProgramarPreco(NroProduto: LongInt; NivelDePreco: LongInt;
                            NovoPreco: LongInt): LongInt;
                            stdcall; external 'CUB32.dll';
 function CUBMapearProduto(NroBomba: LongInt; NroBico: LongInt;
                           NroProduto: LongInt ) : LongInt;
                           stdcall; external 'CUB32.dll';
 function CUBAutorizarBico(NroBomba: LongInt; NivelDePreco: LongInt;
                           NroBico: LongInt ): LongInt;
                           stdcall; external 'CUB32.dll';
 function CUBLerTotais(NroBomba: LongInt; NroProduto: LongInt; NivelDePreco: LongInt;
                       EncerranteLitros: Pointer; EncerranteDinheiro: Pointer;
                       var Preco: LongInt): LongInt; stdcall; external 'CUB32.dll';
 function CUBLerVenda(NroBomba: LongInt; var NroProduto: LongInt;
                      var NivelDePreco: LongInt; var Mililitros: LongInt;
                      var Dinheiro: LongInt; var Preco: LongInt ): LongInt;
                      stdcall; external 'CUB32.dll';
 function CUBPresetLitros(NroBomba: LongInt; NivelDePreco: LongInt;
                          NroBico: LongInt; CentiLitrosMaximo: LongInt ): LongInt;
                          stdcall; external 'CUB32.dll';
 function CUBPresetDinheiro(NroBomba: LongInt; NivelDePreco: LongInt;
                            ValorMaximo: LongInt ): LongInt;
                            stdcall; external 'CUB32.dll';
 function CUBLerPaginaTag( NroTag : LongInt; NroPagina: LongInt;
                           DataBuffer: Pointer) : LongInt;
                           stdcall; external 'CUB32.dll';

 implementation

//--- Tradu��o de Constantes Globais de Estado das Bombas ---
Function Status_Str(StatusCode: Char):string;
begin
 case StatusCode of
  SFORADOAR:     Result := 'Fora do Ar';
  SDISPONIVEL:   Result := 'N�o Autorizada';
  SABASTECENDO:  Result := 'Abastecendo';
  SBICOFORA:     Result := 'Bico Fora';
  SBOMBAFECHADA: Result := 'Fechada';
  SPAUSA:        Result := 'Pausa';
  SFIMDEVENDA :  Result := 'Fim de Venda';
  SAUTORIZADA:   Result := 'Autorizada';
 else
  Result := 'Desconhecido';
 end;
end;

//--- Tradu��o de Constantes Globais por Fun��o da dll do CUB ---
Function Function_Str(Function_Const: Byte):string;
begin
 case Function_Const of
  FCUBAutorizarBico:          Result := 'CUBAutorizarBico';
  FCUBPresetDinheiro:         Result := 'CUBPresetDinheiro';
  FCUBPresetLitros:           Result := 'CUBPresetLitros';
  FCUBAbrirBomba:             Result := 'CUBAbrirBomba';
  FCUBFecharBomba:            Result := 'CUBFecharBomba';
  FCUBLerRtm:                 Result := 'CUBLerRtm';
  FCUBLerPaginaTag:           Result := 'CUBLerPaginaTag';
  FCUBDescarregarDll:         Result := 'CUBDescarregarDll';
  FCUBProgramarPreco:         Result := 'CUBProgramarPreco';
  FCUBMapearProduto:          Result := 'CUBMapearProduto';
  FCUBLerEstado:              Result := 'CUBLerEstado';
  FCUBDesautorizarBomba:      Result := 'CUBDesautorizarBomba';
  FCUBContinuarAbastecimento: Result := 'CUBContinuarAbastecimento';
  FCUBAutorizarBomba:         Result := 'CUBAutorizarBomba';
  FCUBLerVenda:               Result := 'CUBLerVenda';
  FCUBConfirmarLeituraVenda:  Result := 'CUBConfirmarLeituraVenda';
  FCUBSetarNivelDePreco:      Result := 'CUBSetarNivelDePreco';
  FCUBLerTotais:              Result := 'CUBLerTotais';
 else
  Result := 'Fun��o Desconhecida';
 end;
end;

//--- Tradu��o de Constantes Globais de Erros Tipo 1 por Fun��o da dll do CUB ---
Function Error_Str(Function_Const: byte):string;
begin
 case Function_Const of
  FCUBAutorizarBico,
  FCUBPresetDinheiro,
  FCUBPresetLitros:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros ou a bomba n�o est� em estado DESAUTORAZADA OU BICOFORA.';

  FCUBAbrirBomba,
  FCUBFecharBomba,
  FCUBLerRtm,
  FCUBLerPaginaTag:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros. N�mero de bomba errado ou bomba n�o configurada';

  FCUBDescarregarDll:
   Result := ' ';                                                               //N�o h� retorno tipo 1 para esta fun��o.

  FCUBProgramarPreco,
  FCUBMapearProduto:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros. Algum par�metro est� fora de limite ou bomba n�o est� configurada no arquivo Cub.ini.';

  FCUBLerEstado,
  FCUBDesautorizarBomba,
  FCUBContinuarAbastecimento:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros. O n�mero de bomba � incorreto.';

  FCUBAutorizarBomba:
  Result := Function_Str(Function_Const) + ' - Erro nos par�metros. O n�mero de bomba � incorreto ou a bomba est� em estado diferente de DESAUTORIZADA, BICOFORA ou PAUSA';

  FCUBLerVenda,
  FCUBConfirmarLeituraVenda:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros. O n�mero de bomba � incorreto ou a bomba est� em estado FIMDEVENDA.';

  FCUBSetarNivelDePreco:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros.';

  FCUBLerTotais:
   Result := Function_Str(Function_Const) + ' - Erro nos par�metros ou o comando n�o pode ser executado no estado atual da bomba';
 else
  Result := Function_Str(Function_Const) + ' - Erro Desconhecido';
 end;
end;

//--- Tratamento Global de Erros na comunica��o com CUB de acordo com Retorno da Fun��o ---
Function Trata_Retorno(Function_Const, Retorno: byte): Boolean;
var
 Msg_Erro: string;
begin
 Msg_Erro := '';
 Result := False;

 Case retorno of
  0: Result := True;                                                            //Comando executado com exito
  1: Msg_Erro := Error_Str(Function_Const);
  2: Msg_Erro := 'Erro de comunica��o entre a dll e o servidor.';
 else
     Msg_Erro := 'Erro de comunica��o ver winsock2.h ou winerror.h: C�digo de erro retornado pelo Windows: ' + inttostr(retorno);
 end;

 if not Result then
  begin
   logtofile('TestNoError - ' + Msg_Erro, True);

   application.MessageBox(PChar(Msg_Erro), 'Aten��o :: Erro', mb_ok + mb_iconerror);
  end;
end;

end.
