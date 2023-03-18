unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, mmsystem;

type
  TForm1 = class(TForm)
      Timer1: TTimer;
      lstStatus: TListBox;
      lstVendas: TListBox;
      chkAutomatico: TCheckBox;
      procedure Timer1Timer(Sender: TObject);
      procedure TimerHandler;
      procedure lstStatusDblClick(Sender: TObject);
      procedure InitCUB;
      procedure FormActivate(Sender: TObject);
  end;

  const MAX_PUMP = 10;

  const FORADOAR     = '0';
  const DISPONIVEL   = '1';
  const ABASTECENDO  = '2';
  const FIMDEVENDA   = '3';
  const BICOFORA     = '5';
  const BOMBAFECHADA = '6';
  const PAUSA        = '8';
  const AUTORIZADA   = '9';

 var
  Form1: TForm1;

  PumpStatus : array [1..100] of Char;
  UltimaAutorizacao: array[1..100] of LongWord;
  InitDone: Boolean;

implementation

{$R *.DFM}

  function CUBLerEstado( NroBomba : LongInt; Estado : Pointer ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBAutorizarBomba( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBDesautorizarBomba( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBContinuarAbastecimento( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBConfirmarLeituraVenda( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBAbrirBomba( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBFecharBomba( NroBomba : LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBMapearProduto( NroBomba: LongInt; NroBico: LongInt;
                         NroProduto: LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBProgramarPreco( NroProduto: LongInt; NivelDePreco: LongInt;
                         NovoPreco: LongInt ) : LongInt;
                         stdcall; external 'CUB32.dll';
  function CUBLerTotais( NroBomba: LongInt; NroProduto: LongInt; NivelDePreco: LongInt;
                         EncerranteLitros: Pointer; EncerranteDinheiro: Pointer;
                         var Preco: LongInt ): LongInt; stdcall; external 'CUB32.dll';
  function CUBLerVenda( NroBomba: LongInt; var NroProduto: LongInt;
                        var NivelDePreco: LongInt; var Mililitros: LongInt;
                        var Dinheiro: LongInt; var Preco: LongInt ): LongInt;
                        stdcall; external 'CUB32.dll';
  function CUBSetarNivelDePreco( NroBomba: LongInt; NivelDePreco: LongInt ): LongInt;
                        stdcall; external 'CUB32.dll';
  function CUBAutorizarBico( NroBomba: LongInt; NivelDePreco: LongInt;
                             NroBico: LongInt ): LongInt;
                             stdcall; external 'CUB32.dll';
  function CUBPresetDinheiro( NroBomba: LongInt; NivelDePreco: LongInt;
                              ValorMaximo: LongInt ): LongInt;
                              stdcall; external 'CUB32.dll';
  function CUBPresetLitros( NroBomba: LongInt; NivelDePreco: LongInt;
                            NroBico: LongInt; CentiLitrosMaximo: LongInt ): LongInt;
                            stdcall; external 'CUB32.dll';
  function CUBLerRTM( NroBomba: LongInt; var RealTimeMoney: LongInt ): LongInt;
                      stdcall; external 'CUB32.dll';
  function CUBLerPaginaTag( NroTag : LongInt; NroPagina: LongInt;
                            DataBuffer: Pointer) : LongInt;
                            stdcall; external 'CUB32.dll';

function StatusDesc(StatusCode: Char):string;
begin
 case StatusCode of
  FORADOAR:     StatusDesc := 'Fora do ar';
  DISPONIVEL:   StatusDesc := 'Disponível';
  ABASTECENDO:  StatusDesc := 'Abastecendo';
  BICOFORA:     StatusDesc := 'Bico Fora';
  BOMBAFECHADA: StatusDesc := 'Bomba Fechada';
  PAUSA:        StatusDesc := 'Pausa';
  FIMDEVENDA :  StatusDesc := 'Venda Pendente';
  AUTORIZADA:   StatusDesc := 'Autorizada';
 else
  StatusDesc := 'Estado Desconhecido';
 end;
end;

procedure TForm1.InitCUB();
var
    i : integer;
begin
  CUBAbrirBomba(1);
  CUBAbrirBomba(2);
  CUBAbrirBomba(3);

  CUBMapearProduto(1, 1, 1);
  CUBMapearProduto(2, 1, 2);
  CUBMapearProduto(3, 1, 3);

  CUBProgramarPreco(1, 1, 1111 );
  CUBProgramarPreco(2, 1, 2222 );
  CUBProgramarPreco(3, 1, 3333 );

  for i:= 1 to MAX_PUMP do
   begin
    PumpStatus[i] := '7';
    lstStatus.Items.Add( Format('%d - %s', [i, StatusDesc(PumpStatus[i]) ] ) );
   end;
end;

procedure TForm1.TimerHandler;
var
    NewStatus : array [1..100] of Char;
    res: LongInt;
    i : integer;
    TopIndex : integer;
    NewDesc : string;
    NroProduto, NivelDePreco, Mililitros, Dinheiro, Preco: LongInt;
    EncLitros, EncDinheiro : array [1..20] of Char;
begin
    // Atualizar o estado de todas as bombas juntas (Bomba 0=Todas)
    res := CUBLerEstado( 0, @NewStatus );
    if res <> 0 then
    begin
        if 2 = Application.MessageBox( Pchar(Format('CUBLerEstado retornou %d', [res] )), 'Erro',MB_RETRYCANCEL + MB_ICONERROR) then
            Application.Terminate
        else
            exit;
    end;
    // Procesar o novo estado
    for i := 1 to MAX_PUMP do
    begin
        // Procesar autorizaçao automatica
        if chkAutomatico.Checked then
        begin
            if ( NewStatus[i] = BICOFORA ) or ( NewStatus[i] = DISPONIVEL ) then
            begin
                // Dar até 3 segundos para o sistema procesar a mensagem de
                // autorizaçao anterior. Dependendo da quantidade e tipo de
                // bomba no posto, pode demorar isto, especialmente nas
                // bombas Daruma e Millenium
                if UltimaAutorizacao[i] + 3000 < timeGetTime() then
                begin
                    CUBAutorizarBomba( i );
                    UltimaAutorizacao[i] := timeGetTime();
                end;
            end;
        end;
        // Proceso especial para quando muda o estado da bomba
        if NewStatus[i] <> PumpStatus[i] then
        begin
            // Atualizar lstStatus com a descriçao do estado novo
            TopIndex := Form1.lstStatus.TopIndex;
            NewDesc := Format('%d - %s', [i, StatusDesc(NewStatus[i])]) ;
            lstStatus.Items.Strings[i -1] := NewDesc;
            lstStatus.TopIndex := TopIndex;
            // Acabou a venda e tenho venda pendente de leitura
            if NewStatus[i] = FIMDEVENDA then
            begin
                // Ler os dados da venda
                res := CUBLerVenda( i, NroProduto, NivelDePreco, Mililitros,
                                    Dinheiro, Preco );
                if res <> 0 then
                begin
                    Application.MessageBox( Pchar(Format('CUBLerVenda retornou %d', [res] )), 'Erro',MB_OK + MB_ICONERROR);
                    exit;
                end;
                // Confirmar a leitura da venda para o servidor
                CUBConfirmarLeituraVenda( i );
                // Atualizar a tela e/ou a base de dados
                lstVendas.Items.Insert( 0,Format( 'Bomba %d - Prod %d - %d ml - R$ %.2f - Preço %d',
                    [i, NroProduto, Mililitros, Dinheiro / 100.0, Preco ]));
                // Ler os encerrantes de dinheiro e litros...
                res := CUBLerTotais( i, NroProduto, NivelDePreco,
                                     @EncLitros, @EncDinheiro, Preco );
                if res <> 0 then
                begin
                    Application.MessageBox( Pchar(Format('CUBLerTotais retornou %d', [res] )), 'Erro',MB_OK + MB_ICONERROR);
                    exit;
                end;
                // Atualizar a tela
                lstVendas.Items.Insert( 0, Format( 'Enc. Litros %s - Enc. Dinheiro %s',
                    [copy(string(EncLitros),1,10), copy(string(EncDinheiro),1,10)]));
            end;
            PumpStatus[i] := NewStatus[i];
        end
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    // Desativar o timer para evitar reentrancia
    Timer1.Enabled := false;
    TimerHandler;
    // Reativar o Timer
    Timer1.Enabled := true;
end;

procedure TForm1.lstStatusDblClick(Sender: TObject);
var
    BombaSelecionada : integer;
begin
    BombaSelecionada := lstStatus.ItemIndex + 1;
    case PumpStatus[BombaSelecionada] of
        DISPONIVEL, BICOFORA: CUBAutorizarBomba( BombaSelecionada );
        ABASTECENDO, AUTORIZADA: CUBDesautorizarBomba( BombaSelecionada );
        PAUSA: CUBContinuarAbastecimento( BombaSelecionada );
    end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 if Not InitDone then
  begin
   InitCUB;
   InitDone := true;
   Timer1.Enabled := true;
  end;
end;

end.
