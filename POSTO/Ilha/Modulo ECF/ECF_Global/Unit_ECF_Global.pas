unit Unit_ECF_Global;

interface

uses
 Windows, Forms, Dialogs;

function Leitura_X: boolean;
function Reducao_Z: boolean;
function Cancela_Cupom: boolean;
function Status_ECF: boolean;
function Status_Transacao: boolean;
function Horario_Verao: boolean;
function Abre_Porta_ECF: boolean;
function Imprimir_Reforco_ECF(Valor: string): boolean;
function Imprimir_Sangria_ECF(Valor: string): boolean;
function Abrir_Gaveta_ECF: boolean;
function Carrega_DLL: boolean;
function Descarrega_DLL: boolean;

var
 TipoECF, PortaECF, Cod_Pdv: integer;

 Gaveta_Instalada, Gaveta_Intervencao, Gaveta_Teste, Gaveta_Sanre, Gaveta_Venda, Caixa_OPCL: boolean;

 DefTNome, DefTVal, Msg_P: string;

 df_Msg: string = '..:: TKS Software www.igara.com.br ::..';

const
 ECF_BemaFi1 = 0;
 ECF_BemaFi2 = 1;
 ECF_Zanthus = 2;
 ECF_Sweda = 3;
 ECF_General = 4;

implementation

uses Unit_ECF_Bematech_Fi2, Unit_ECF_General_GP2000, Unit_ECF_Sweda_IFS7000,
 Unit_ECF_Bematech_Fi1;

function Leitura_X: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi1: Result := Leitura_X_Bematech_Fi1;
   ECF_BemaFi2: Result := Leitura_X_Bematech_Fi2;          //MP20Fi2
   ECF_Sweda,
   ECF_Zanthus: Result := Leitura_X_Sweda_IFS7000;         //Sweda
  end;
end;

function Reducao_Z: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi1: Result := Reducao_Z_Bematech_Fi1;
   ECF_BemaFi2: Result := Reducao_Z_Bematech_Fi2;          //MP20Fi2
   ECF_Sweda,
   ECF_Zanthus: Result := Reducao_Z_Sweda_IFS7000;         //Sweda
  end;
end;

function Cancela_Cupom: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi1: Result := Cancela_Cupom_Bematech_Fi1;
   ECF_BemaFi2: Result := Cancela_Cupom_Bematech_Fi2;              //MP20Fi2
   ECF_Sweda,
   ECF_Zanthus: Result := Cancela_Cupom_Sweda_IFS7000;             //Sweda
   ECF_General: Result := Cancela_Cupom_General_GP2000;            //GP2000
  end;
end;

function Status_ECF: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi2: Result := Estado_ECF_Bematech_Fi2;   //MP20Fi2 MP40Fi2
   ECF_Sweda,
   ECF_Zanthus: Result := Estado_ECF_Sweda_IFS7000; //Sweda
  end;
end;

function Status_Transacao: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_Sweda,
   ECF_Zanthus: Result := Status_Transacao_Sweda_IFS7000;
   //------>Sweda<--------
  end;
end;

function Horario_Verao: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi2: Result := Horario_Verao_Bematech_Fi2;
   ECF_Sweda,
   ECF_Zanthus: Result := Horario_Verao_Sweda_IFS7000;
  end;
end;

function Abre_Porta_ECF: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_Sweda,
   ECF_Zanthus: Result := AbrePorta_Sweda_IFS7000;             //Sweda
  end;
end;

function Imprimir_Reforco_ECF(Valor: string): boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi2: Result := Reforco_Bematech_Fi2(Valor);
  end;
end;

function Imprimir_Sangria_ECF(Valor: string): boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi2: Result := Sangria_Bematech_Fi2(Valor);
  end;
end;

function Abrir_Gaveta_ECF: boolean;
begin
 Result := False;

 if Gaveta_Instalada then
  begin
   case TipoECF of
     ECF_BemaFi1: Result := Abre_Gaveta_Bematech_Fi1;
     ECF_BemaFi2: Result := Abre_Gaveta_Bematech_Fi2(Gaveta_Teste);
     ECF_Sweda,
     ECF_Zanthus: Result := Abre_Gaveta_Sweda_IFS7000(Gaveta_Teste);
    end;
  end
 else
   Application.messagebox('Gaveta não Instalada' + #13 +
     'Para configurar a gaveta clique em:' + #13 +
     'Programa> Sistema > Configurações',
     'Atenção', mb_ok + mb_iconinformation);

 {if not Result then
  Application.messagebox('Erro durante o processo de abertura de gaveta. Verifique...' + #13 +
                         'Para configurar a gaveta clique em: ' + #13 +
                         'Programa> Sistema > Configurações',
                         'Atenção', mb_ok + mb_iconinformation); }
end;

function Carrega_DLL: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi1: Result := Carrega_DLL_Bematech_Fi1;
   ECF_BemaFi2: Result := Carrega_DLL_Bematech_Fi2;
   ECF_Sweda,
   ECF_Zanthus: Result := Carrega_DLL_Sweda_IFS7000;
   ECF_General: Result := Carrega_DLL_General_GP2000;
  end;
end;

function Descarrega_DLL: boolean;
begin
 Result := False;

 case TipoECF of
   ECF_BemaFi1: Result := Descarrega_DLL_Bematech_Fi1;
   ECF_BemaFi2: Result := Descarrega_DLL_Bematech_Fi2;
   ECF_Sweda,
   ECF_Zanthus: Result := Descarrega_DLL_Sweda_IFS7000;
   ECF_General: Result := Descarrega_DLL_General_GP2000;
  end;
end;

end.
