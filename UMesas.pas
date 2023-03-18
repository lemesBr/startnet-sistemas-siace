unit UMesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
  AlignEdit, Mask, DB, IBCustomDataSet,
  CurvyControls, ImgList, acAlphaImageList, StrUtils, acPNG, ACBrDevice,
  IniFiles, rxToolEdit, rxCurrEdit, UGrupoTeclas, rlutils,
  System.ImageList, frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
    TAtualizaMesas = class( TThread )
     private
        FMesas: TListView;
        FForm: TForm;
        FTransaction: TFDTransaction;
        FConec: TFDConnection;
        procedure AtualizaMesasNew;
        function VerificaStatusMesa(CodMesa: Integer): Integer;
     protected
        procedure Execute; override;
     public
        constructor Create( List: TListView; Form: TForm );
   end;

  TFrmMesas = class(TForm)
    QInsMesa: TFDQuery;
    QBuscaItens: TFDQuery;
    DSQBuscaItens: TDataSource;
    IBTRMesa: TFDTransaction;
    Timer1: TTimer;
    QInsMesaCODIGO: TIntegerField;
    shp1: TShape;
    Label9: TLabel;
    Shape1: TShape;
    Label13: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    Shape3: TShape;
    Label15: TLabel;
    Shape4: TShape;
    Label16: TLabel;
    Shape5: TShape;
    Label19: TLabel;
    Shape7: TShape;
    Label20: TLabel;
    panel3: TCurvyPanel;
    Label1: TLabel;
    LData: TLabel;
    Label10: TLabel;
    LHora: TLabel;
    Label8: TLabel;
    Shape9: TShape;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    EdtTotal: TCurrencyEdit;
    EdtCodigo: TAlignEdit;
    panel2: TPanel;
    Label11: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    BtnConsPro: TSpeedButton;
    BtnConsGarcon: TSpeedButton;
    Label12: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    EdtCodGarcon: TAlignEdit;
    EdtCodPro: TAlignEdit;
    EdtQuant: TCurrencyEdit;
    EdtNomeGarcon: TEdit;
    EdtNomePro: TEdit;
    EdtValor: TCurrencyEdit;
    EdtTotalItem: TCurrencyEdit;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    Shape8: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Panel1: TPanel;
    Shape6: TShape;
    Label2: TLabel;
    EdtMesa: TAlignEdit;
    CurvyPanel1: TCurvyPanel;
    ImagensMesas: TsAlphaImageList;
    MostraMesas: TListView;
    TRStatus: TFDTransaction;
    QStatus: TFDQuery;
    QStatusSTATUS: TIntegerField;
    Shape16: TShape;
    Label23: TLabel;
    Label24: TLabel;
    Shape17: TShape;
    edtNumMesa: TEdit;
    imgLogo: TImage;
    Label25: TLabel;
    Shape18: TShape;
    edtAdiantamento: TCurrencyEdit;
    Shape19: TShape;
    Label26: TLabel;
    imgFlexa: TImage;
    PanelAjuda: TPanel;
    Shape20: TShape;
    Label21: TLabel;
    Label27: TLabel;
    Shape21: TShape;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Shape22: TShape;
    Label31: TLabel;
    Shape23: TShape;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape24: TShape;
    Label35: TLabel;
    Shape25: TShape;
    Label36: TLabel;
    Label37: TLabel;
    Shape26: TShape;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Caixa: TLabel;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensORDEM: TIntegerField;
    QBuscaItensCOD_PRO: TIntegerField;
    QBuscaItensCOD_VEND: TIntegerField;
    QBuscaItensVALOR: TIBBCDField;
    QBuscaItensCONTA_ORIGEM: TIntegerField;
    QBuscaItensCANCELADO: TIntegerField;
    QBuscaItensCOD_EMP: TIntegerField;
    QBuscaItensQUANT: TIBBCDField;
    QBuscaItensDESCRICAO: TIBStringField;
    QBuscaItensUSUARIO: TIBStringField;
    QBuscaItensMESA_ORIGEM: TIBStringField;
    QBuscaItensCALC_TOTAL: TCurrencyField;
    QBuscaItensCALC_DESCRICAO: TStringField;
    Edit2: TEdit;
    Qitens: TFDQuery;
    QitensCODIGO: TIntegerField;
    QitensORDEM: TIntegerField;
    QitensCOD_PRO: TIntegerField;
    QitensCOD_VEND: TIntegerField;
    QitensVALOR: TIBBCDField;
    QitensCONTA_ORIGEM: TIntegerField;
    QitensCANCELADO: TIntegerField;
    QitensCOD_EMP: TIntegerField;
    QitensQUANT: TIBBCDField;
    QitensDESCRICAO: TIBStringField;
    QitensCODIGO_BARRAS: TIBStringField;
    QitensPRECO_VENDA: TIBBCDField;
    QitensPRECO_VENDA2: TIBBCDField;
    QitensPRECO_CUSTO: TIBBCDField;
    QitensDESC_UNIDADE: TIBStringField;
    QitensFRACAO: TIntegerField;
    QitensPROD_SERV: TIBStringField;
    QitensNCM_SH: TIBStringField;
    Shape27: TShape;
    Label41: TLabel;
    edtObs: TEdit;
    sAlphaImageList1: TsAlphaImageList;
    IBSQLMesa: TFDQuery;
    FDQuery1: TFDQuery;
    procedure BtnSairClick(Sender: TObject);
    procedure LimpaItens;
    procedure BuscaMesa;
    procedure FormShow(Sender: TObject);
    procedure BtnConsProClick(Sender: TObject);
    procedure EdtCodProEnter(Sender: TObject);
    procedure EdtCodProExit(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodProKeyPress(Sender: TObject; var Key: Char);
    procedure QBuscaItensCalcFields(DataSet: TDataSet);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdtMesaEnter(Sender: TObject);
    procedure EdtQuantExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtMesaExit(Sender: TObject);
    procedure BuscaItens;
    procedure BtnMesasAbertasClick(Sender: TObject);
    procedure BtnTrocaMesaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure LimpaTudo;
    procedure BtnConsGarconClick(Sender: TObject);
    procedure EdtCodGarconEnter(Sender: TObject);
    procedure EdtCodGarconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodGarconExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnConferenciaClick(Sender: TObject);
    procedure BtnRecebimentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AtualizaMesas;
    function VerificaStatusMesa( CodMesa: Integer ): Integer;
    procedure MostraMesasDblClick(Sender: TObject);
    procedure BuscaAdiantamentos;
    procedure ApagaMesa( Num: String );
    function CriaMesa( Num: string ): Boolean;
    procedure MostraMesasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CriarMesasF9;
    procedure DesmembrarMesas;
    function LocalizaContaCliente( Str: String ): integer;
    procedure MudaJuntaMesa( Mesa, Junta: String );
    function VefificaSePodeJuntar( StrMesa: String): Boolean;
    procedure InsereItensGrupo( Form: TfrmGrupoTeclas );
    procedure EdtQuantEnter(Sender: TObject);
    procedure PosicionaFlexa( Sender: TObject );
    procedure EdtNomeGarconEnter(Sender: TObject);
    procedure EdtNomeGarconExit(Sender: TObject);
    procedure BtnGravarExit(Sender: TObject);
    procedure BtnGravarEnter(Sender: TObject);
    procedure BtnCancelarEnter(Sender: TObject);
    procedure BtnCancelarExit(Sender: TObject);
    procedure EdtValorEnter(Sender: TObject);
    procedure EdtValorExit(Sender: TObject);
    procedure EdtTotalItemEnter(Sender: TObject);
    procedure EdtTotalItemExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GeraComissao;
    procedure EdtCodProChange(Sender: TObject);
    procedure BuscaNumeroPedido;
    procedure edtObsEnter(Sender: TObject);
    procedure edtObsExit(Sender: TObject);
    procedure edtObsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fechapedido;

  private
    { Private declarations }
  public
    { Public declarations }
    PressF9: Boolean;
    iedtMesa: Integer;
    ApertouEnterQuant: Boolean;
    NumeroPedido: Integer;
    DataHora_Pedido: TDateTime;
    thAtualizaMesas: TAtualizaMesas;
  end;

  function TirarZeros(S: String): String;
var
  FrmMesas: TFrmMesas;

implementation
Uses  Ubibli1, UConsMesasAbertas, UTransfMesa, UAdiantamentoMesas, UDialog, ModulodeDados,
  ConsProdutos, ConsUsuarios, UFBalanca, Vendas, Principal;


var  iOrdem  : integer;
     iCodigoMesa : integer;


{$R *.dfm}
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

function FormataStringC(Valor,Tamanho,Complemento : String):String;
var
   Calc, L, Tam: Integer;

begin
   L := Length( Valor );
   Tam := StrToInt( Tamanho );
   Calc := ( ( Tam - L ) div 2 );
   Result :=  FormataStringD( '', IntToStr( Calc ), Complemento )  + Valor + FormataStringD( '', IntToStr( Calc ), Complemento );
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


function TirarZeros(S: String): String;
var
  I: Integer;
  Parar: Boolean;
  Str: String;
begin
    Parar := False;
    Str := '';
    for I := 1 to Length( S ) do
       begin
          if S[I] <> '0' then
             begin
                Parar := true;
                Str := Str + S[I];
             end
          else
          if Parar then
             Str := Str + S[I];
       end;
   Result := Str;
end;


procedure TFrmMesas.BuscaNumeroPedido;
begin
   if DM.IBTRServer.Active then
      DM.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;

   with DM.QConsultaServer do
       begin
          SQL.Clear;
          SQL.Text := 'select ( coalesce( max( PEDIDO_NUMERO ), 0 ) + 1 )' +
                      ' NUMERO from itens_conta_cliente' +
                      ' where PEDIDO_DATA_HORA between :DATAINI and :DATAFIM';
           ParamByName( 'DATAINI' ).AsDateTime := StrToDateTime( DateToStr( Date ) +
           ' 00:00:00' );
           ParamByName( 'DATAFIM' ).AsDateTime := StrToDateTime( DateToStr( Date ) +
           ' 23:59:59' );
          Open;
          NumeroPedido := FieldByName( 'NUMERO' ).AsInteger;
          DataHora_Pedido := Now;
          Close;
       end;

   dm.IBTRServer.Commit;
end;


procedure TFrmMesas.fechapedido;
begin
  //BuscaNumeroPedido;

//  if NumeroPedido > 0 then
    //  begin
         if DM.IBTRServer.Active then
            DM.IBTRServer.Commit;
         DM.IBTRServer.StartTransaction;
         with DM.QConsultaServer do
              begin
                 Close;
                 SQL.Text := 'UPDATE ITENS_CONTA_CLIENTE SET '+
                             ' PEDIDO_FECHADO = 1 WHERE CODIGO=:CODIGO';
                 ParamByName( 'CODIGO' ).AsInteger := StrToInt( EdtCodigo.Text );
                 ExecSQL;
              end;
         dm.IBTRServer.Commit;
     // end;
end;

procedure TFrmMesas.LimpaTudo;
begin
  if NumeroPedido > 0 then
      begin
         if DM.IBTRServer.Active then
            DM.IBTRServer.Commit;
         DM.IBTRServer.StartTransaction;
         with DM.QConsultaServer do
              begin
                 Close;
                 SQL.Text := 'UPDATE ITENS_CONTA_CLIENTE SET '+
                             ' PEDIDO_FECHADO = 1 WHERE CODIGO=:CODIGO';
                 ParamByName( 'CODIGO' ).AsInteger := StrToInt( EdtMesa.Text );
                 ExecSQL;
              end;
         dm.IBTRServer.Commit;
      end;
   NumeroPedido := 0;
   
   EdtCodGarcon.Text := '1';
   EdtCodGarconExit( nil );
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   if IBTRMesa.Active then
      IBTRMesa.Commit;
   QBuscaItens.Close;
   iTabelaPreco     := 0;
   iCodigoMesa      := 0;
//   sb.Panels[3].Text:= '';
  // sb.Panels[4].Text:= '';
   LData.Caption    := '';
   LHora.Caption    := '';
   EdtTotal.Clear;
   edtNumMesa.Clear;
   EdtMesa.Clear;
   iedtMesa := 0;
   EdtCodigo.Clear;
   LimpaItens;
   panel2.Enabled:= false;
  // panel4.Enabled:= false;
   EdtMesa.SetFocus;
   BuscaAdiantamentos;
end;

function TFrmMesas.LocalizaContaCliente(Str: String): integer;
var
   iiMesa: Integer;
begin
   iiMesa := 0;
{   try
      iiMesa := StrToInt( Str );
   except
      iiMesa := 0;
   end;}
   Str := FormataStringD( Str, '6', '0' );
   if dm.IBTRServer.Active then
      DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with dm.QConsultaServer do
       begin
           Close;
           if iiMesa > 0 then
              begin
                 SQL.Text := 'select * from MESAS_ADICIONAIS' +
                           ' where ( COD=:COD )and COD_EMP=:COD_EMP';

                  ParamByName( 'cod' ).AsInteger :=  iiMesa;
              end
           else
              begin
                 SQL.Text := 'select MA.*, MA2.COD COD2 from MESAS_ADICIONAIS MA' +
                              ' left outer join MESAS_ADICIONAIS MA2' +
                              ' on( MA2.DESCRICAO = MA.JUNTA )' +
                              ' where ( MA.DESCRICAO=:DESCRICAO ) and MA.COD_EMP=:COD_EMP';
                 ParamByName( 'descricao' ).AsString := Str;
              end;
           ParamByName( 'COD_EMP' ).AsInteger := iEmp;

           Open;
           if IsEmpty then
              Result := 0
           else
              begin
                 Result := StrToInt( ifthen( FieldByName( 'COD2' ).IsNull, FieldByName( 'COD' ).AsString,
                 FieldByName( 'COD2' ).AsString ) );
              end;
           Close;
       end;

   DM.IBTRServer.Commit;
end;

procedure TFrmMesas.MostraMesasDblClick(Sender: TObject);
begin
   if MostraMesas.Selected <> nil then
   begin
      with MostraMesas.Selected do
         begin
         if ( Caption <> '' ) and ( ImageIndex <> 2 ) then
             begin
                EdtMesa.Text := Caption;
                EdtMesa.SetFocus;
                EdtMesaExit( nil );
             end;
         end;
   end;
end;

procedure TFrmMesas.MostraMesasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   I: Integer;
   iiNumMesa: Integer;
   StrMesa, cTipo: String;

begin

  cTipo := '';

    if ( ssCtrl in Shift ) and (Chr( Key ) in ['D', 'd'] ) and ( iCodigoMesa = 0 ) then
       begin
         if KDialog( 'Deseja Excluir as mesas Selecionadas?', 'Exclus�o de mesas', 'PERGUNTA' ) then
            begin
               for I := 0 to MostraMesas.Items.Count - 1 do
                 begin
                     if MostraMesas.Items[I].Selected then
                        begin
                            with MostraMesas.Items[I] do
                               begin
                                  iiNumMesa := LocalizaContaCliente( Caption );
                                  if iiNumMesa > 0 then
                                     begin
                                        if (VerificaStatusMesa( iiNumMesa ) = 1)
                                        or (VerificaStatusMesa( iiNumMesa ) = 2) then
                                           begin
                                                   ApagaMesa( Caption );
                                           end;
                                     end;
                               end;
                        end;
                 end;
                   AtualizaMesas;
            end;
       end;
   if ( ssCtrl in Shift ) and (Chr( Key ) in ['J', 'j'] ) and ( iCodigoMesa = 0 ) then
       begin
          if InputQuery('Juntar Mesas', 'Digite o N�mero da mesa para Juntar', StrMesa) then
              begin
                 StrMesa := FormataStringD( StrMesa, '6', '0' );
                 if LocalizaContaCliente( StrMesa ) = 0 then
                    begin
                       KDialog( 'Mesa de destino n�o existe', 'Juntar Mesas', 'INFO' );
                       Exit;
                    end;
                 for I := 0 to MostraMesas.Items.Count - 1 do
                   begin
                       if MostraMesas.Items[I].Selected then
                          begin
                             if VefificaSePodeJuntar( MostraMesas.Items[I].Caption ) then
                                MudaJuntaMesa( MostraMesas.Items[I].Caption, StrMesa );
                          end;
                   end;
                 AtualizaMesas;
              end;
       end;
   if ( ssCtrl in Shift ) and (Chr( Key ) in ['S', 's'] ) and ( iCodigoMesa = 0 ) then
       begin
         if KDialog( 'Deseja Separar mesas Selecionadas?', 'Separa��o de mesas', 'PERGUNTA' ) then
            begin
               for I := 0 to MostraMesas.Items.Count - 1 do
                 begin
                     if MostraMesas.Items[I].Selected then
                        begin
                           MudaJuntaMesa( MostraMesas.Items[I].Caption, '' );
                        end;
                 end;
               AtualizaMesas;
            end;
       end;

end;

procedure TFrmMesas.MudaJuntaMesa(Mesa, Junta: String);
var
   Str: STring;
begin
   Str := FormataStringD( Mesa, '6', '0' );
   if DM.IBTRServer.Active then
       DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with DM.QConsultaServer do
       begin
          Close;
          SQL.Text := 'update MESAS_ADICIONAIS set JUNTA=:JUNTA where' +
                      ' DESCRICAO=:DESCRICAO';
          if Trim( Junta ) = '' then
             ParamByName( 'JUNTA' ).Value := null
          else
             ParamByName( 'JUNTA' ).AsString := FormataStringD( Junta, '6', '0' );
          ParamByName( 'DESCRICAO' ).AsString := Str;
          ExecSQL;
          Close;
       end;

   DM.IBTRServer.Commit;
end;

procedure TFrmMesas.PosicionaFlexa(Sender: TObject);
begin
   imgFlexa.Parent := TWinControl( Sender ).Parent;
   imgFlexa.Left := TWinControl( Sender ).Left - 26;
   imgFlexa.Top := TWinControl( Sender ).Top;
   imgFlexa.Visible := True;
end;

procedure TFrmMesas.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmMesas.LimpaItens;
begin
   EdtCodPro.clear;
   EdtNomePro.Clear;
   EdtCodGarcon.Clear;
   EdtNomeGarcon.Clear;
   EdtCodGarcon.Text := '1';
   EdtCodGarconExit( nil );
   EdtQuant.text:= '1';
   EdtValor.Clear;
   EdtTotalItem.Clear;
end;

procedure TFrmMesas.BuscaMesa;
begin
   if trim(EdtMesa.Text) = '' then
      begin
         EdtMesa.SetFocus;
         exit;
      end;

   if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
       with dm.QConsultaServer do
          begin
             close;
             sql.Clear;
             sql.Text:= 'SELECT C.CODIGO, C.DATA_ABERTURA, C.HORA_ABERTURA, MA.descricao' +
                        ' FROM CONTA_CLIENTE C' +
                        ' inner join MESAS_ADICIONAIS MA' +
                        ' on ( MA.cod = C.conta )' +
                        ' WHERE C.CONTA = :MESA AND C.STATUS = 0';
             Parambyname('MESA').AsInteger:= iedtMesa;
             Open;
             if not fieldbyname('codigo').IsNull then
                begin
                   iCodigoMesa    := fieldbyname('codigo').AsInteger;
                   EdtCodigo.Text := fieldbyname('codigo').AsString;
                   LHora.Caption  := fieldbyname('hora_abertura').AsString;
                   LData.Caption  := fieldbyname('data_abertura').AsString;
                   edtNumMesa.Text := fieldbyname('DESCRICAO').AsString;;
                end
             else
                begin
                   iCodigoMesa  := 0;
                   LHora.Caption:= '';
                   LData.Caption:= '';
                end;
          end;
       dm.IBTRServer.Commit;
     except
       iCodigoMesa:= 0;
       dm.IBTRServer.Rollback;
       showmessage('Erro ao buscar a Mesa');
     end;
   finally
     dm.QConsultaServer.Close;
   end;
end;

function TFrmMesas.CriaMesa(Num: string): Boolean;
const
    StrMesa: array[2..9] of String = ( 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H' );
begin
   Result := False;
   if dm.IBTRServer.Active then
       DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with dm.QConsultaServer do
       begin
         try
              Close;
              SQL.Clear;
              SQL.Text := 'insert into MESAS_ADICIONAIS( COD, COD_EMP, DESCRICAO )' +
                          ' values( :COD, :COD_EMP, :DESCRICAO )';

              if Length( Num ) > 3 then
                 begin
                     ParamByName( 'DESCRICAO' ).AsString := FormataStringD( Copy( Num, 2, 3 ) , '5', '0' ) +
                     StrMesa[ StrToInt( Num[1] ) ];
                 end
              else
                 ParamByName( 'DESCRICAO' ).AsString := FormataStringD( Num, '6', '0' );
              ParamByName( 'COD' ).AsString := Num;
              ParamByName( 'COD_EMP' ).AsInteger := iEmp;
              ExecSQL;
              Result := True;
         except
            Result := False;

         end;
       end;
   if dm.IBTRServer.Active then
      DM.IBTRServer.Commit;

end;

procedure TFrmMesas.CriarMesasF9;
var
   MesaIni, MesaFim: String;
   iMesaIni, iMesaFim: Integer;
  I: Integer;
begin
   if not InputQuery( 'Criar Mesas', 'Digite o n�mero da mesa inicial :', MesaIni ) then
      Exit;
   if not InputQuery( 'Criar Mesas', 'Digite o n�mero da mesa final :', MesaFim ) then
      Exit;
   iMesaIni := StrToInt( Trim( MesaIni ));
   iMesaFim := StrToInt( Trim( MesaFim ) );
   for I := iMesaIni to iMesaFim do
       begin
          CriaMesa( IntToStr( I ));
       end;
   PressF9 := False;
   AtualizaMesas;
end;

procedure TFrmMesas.BuscaAdiantamentos;
var
   cTotalAdiantamentos: Currency;
begin
    if iCodigoMesa = 0 then
        begin
            cTotalAdiantamentos := 0;
            edtAdiantamento.Value := cTotalAdiantamentos;
            Exit;
        end;
    try
        if dm.IBTRServer.Active then
          dm.IBTRServer.Commit;
        dm.IBTRServer.StartTransaction;
           with dm.QConsultaServer do
              begin
                 close;
                 sql.Clear;
                 sql.Text:= 'SELECT coalesce( SUM( VALOR ), 0) TOTAL from FDIANTAMENTO_CONTA_CLIENTE ' +
                            'WHERE CODIGO = :COD';
                 Parambyname('cod').AsInteger   := iCodigoMesa;
                 Open;
                 cTotalAdiantamentos := FieldByName( 'TOTAL' ).AsCurrency;

              end;
       edtAdiantamento.Value := cTotalAdiantamentos;
       DM.QConsultaServer.Close;
       DM.IBTRServer.Commit;
    except
       DM.QConsultaServer.Close;
       DM.IBTRServer.Rollback;
       cTotalAdiantamentos := 0;
       edtAdiantamento.Value := cTotalAdiantamentos;
    end;
end;

procedure TFrmMesas.BuscaItens;
var cTotalMesa : currency;
begin
   cTotalMesa:= 0;

   if IBTRMesa.Active then
      IBTRMesa.Commit;
   IBTRMesa.StartTransaction;
   with QBuscaItens do
     begin
        close;
        ParamByName('cod').AsInteger:= strtoint(EdtCodigo.Text);
        open;
        First;
        while not eof do
           begin
              if QBuscaItensCANCELADO.AsInteger = 0 then
                 cTotalMesa:= cTotalMesa + QBuscaItensCALC_TOTAL.AsCurrency;
              next;
           end;
     end;
   iOrdem:= QBuscaItensORDEM.AsInteger + 1;
   EdtTotal.Text:= CurrToStr(cTotalMesa);

   {gravando o total da mesa}
   if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
       with dm.QConsultaServer do
          begin
             close;
             sql.Clear;
             sql.Text:= 'UPDATE CONTA_CLIENTE SET TOTAL = :TOTAL ' +
                        'WHERE CODIGO = :COD';
             Parambyname('total').AsCurrency:= cTotalMesa;
             Parambyname('cod').AsInteger   := iCodigoMesa;
             ExecSQL;
          end;
       dm.IBTRServer.Commit;
     except
       dm.IBTRServer.Rollback;
       showmessage('Erro ao gravar o total da mesa');
     end;
   finally
     dm.QConsultaServer.Close;
   end;
end;

procedure TFrmMesas.FormShow(Sender: TObject);
begin
   {if FileExists( dm.LogoRestaurante ) then
      imgLogo.Picture.LoadFromFile( dm.LogoRestaurante ); }
   EdtMesa.SetFocus;

   PressF9 := False;
   LimpaTudo;

   Caixa.Caption := formatfloat( '000', iCaixa );
end;

procedure TFrmMesas.GeraComissao;
var
    Cod_proC: Integer;
    Comissao: Currency;
    UsaComissao: Boolean;
    TotalProdutos: Currency;
    Existe: Boolean;
begin
   try
         UsaComissao := DM.RetornaStringTabela( 'COMISSAO', 'PRODUTOS', 'COD_EMPRESA', iEmp, True ) > '0';
         if not UsaComissao then
            Exit;
         Cod_proC := StrToInt( DM.RetornaStringTabela( 'COMISSAO', 'PRODUTOS', 'COD_EMPRESA', iEmp, True ) );
         Comissao := StrToFloat( DM.RetornaStringTabela( 'COMISSAO', 'PRODUTOS', 'COD_EMPRESA', iEmp, True ) );
   except
       KDialog( 'Existe um erro nas configura��es de comiss�o', 'Restaurantes', 'ERRO' );
       Exit;
   end;
  if DM.IBTRServer.Active then
     DM.IBTRServer.Commit;
  DM.IBTRServer.StartTransaction;
  with DM.QConsultaServer do
      begin
         Close;
         SQL.Clear;
         SQL.Add( 'select SUM(  I.quant * I.valor ) from itens_conta_cliente I' +
                  ' inner join produtos P' +
                  ' on ( p.codigo = i.cod_pro )' +
                  ' and I.cancelado <> 1 and i.conta_origem is null and I.codigo=:codigo ' );
         ParamByName( 'codigo' ).AsString := EdtCodigo.Text;
         Open;
         TotalProdutos := FieldByName( 'SUM' ).AsCurrency;
         Close;
         SQL.Clear;
         SQL.Add( 'Select * from ITENS_CONTA_CLIENTE where CODIGO=:COD' +
                  ' and COD_PRO=:COD_PRO' );
         ParamByName( 'COD' ).AsInteger := StrToInt( EdtCodigo.Text );
         ParamByName( 'COD_PRO' ).AsInteger := Cod_proC;
         Open;
         Existe := not IsEmpty;
         Close;
      end;
  DM.IBTRServer.Commit;
  if IBTRMesa.Active then
     IBTRMesa.Commit;
  IBTRMesa.StartTransaction;
  try
    try
      with IBSQLMesa do
         begin
            close;
            sql.Clear;
            if not Existe then
               sql.Add('INSERT INTO ITENS_CONTA_CLIENTE (CODIGO, ORDEM, COD_PRO, COD_VEND, QUANT, VALOR, COD_EMP, CANCELADO) ' +
                    'VALUES(:1, :2, :3, :4, :5, :6, :7, 0)')
            else
               SQL.Add( 'UPDATE ITENS_CONTA_CLIENTE SET VALOR=:6 WHERE CODIGO=:1 and COD_PRO=:3' );

            if Existe then
               begin
                  Parambyname('3').AsInteger  := Cod_proC;
                  Parambyname('1').AsInteger  := strtoint(EdtCodigo.Text);
                  Parambyname('6').AsCurrency := ( TotalProdutos * Comissao ) / 100;
               end
            else
                begin
                    Parambyname('1').AsInteger  := strtoint(EdtCodigo.Text);
                    Parambyname('2').AsInteger  := iOrdem;
                    Parambyname('3').AsInteger  := Cod_proC;
                    Parambyname('4').AsInteger  := 1;
                    Parambyname('5').AsCurrency := 1;
                    Parambyname('6').AsCurrency := ( TotalProdutos * Comissao ) / 100;
                    Parambyname('7').AsInteger  := iEmp;
                end;
            ExecSQL;
         end;
      IBTRMesa.Commit;
    except
      IBTRMesa.Rollback;
      showmessage('Erro ao Gravar Comiss�o');
      EdtCodPro.SetFocus;
    end
  finally
     IBSQLMesa.Close;
     LimpaItens;
     BuscaItens;
     BuscaAdiantamentos;
     EdtMesa.SetFocus;
  end;
end;

procedure TFrmMesas.InsereItensGrupo(Form: TfrmGrupoTeclas);
var
    I: Integer;
begin
   for I := 0 to Form.Produtos.Count - 1 do
       begin
            if IBTRMesa.Active then
               IBTRMesa.Commit;
            IBTRMesa.StartTransaction;
            try
              try
                with IBSQLMesa do
                   begin
                      close;
                      sql.Clear;
                      sql.Add('INSERT INTO ITENS_CONTA_CLIENTE (CODIGO, ORDEM, COD_PRO, COD_VEND, QUANT, VALOR, COD_EMP, CANCELADO) ' +
                              'VALUES(:1, :2, :3, :4, :5, :6, :7, 0)');

                      Parambyname('1').AsInteger  := strtoint(EdtCodigo.Text);
                      Parambyname('2').AsInteger  := iOrdem;
                      Parambyname('3').AsInteger  := TProdutos( Form.Produtos.Items[I] ).CodigoProduto;
                      Parambyname('4').AsInteger  := strtoint(EdtCodGarcon.text);
                      Parambyname('5').AsCurrency := TProdutos( Form.Produtos.Items[I] ).Quantidade;
                      Parambyname('6').AsCurrency := TProdutos( Form.Produtos.Items[I] ).Valor;
                      Parambyname('7').AsInteger  := iEmp;
                      ExecSQL;
                   end;
                IBTRMesa.Commit;
              except
                IBTRMesa.Rollback;
                showmessage('Erro ao Gravar o produto ' +
                  IntToStr( TProdutos( Form.Produtos.Items[I] ).CodigoProduto ) );
                EdtCodPro.SetFocus;
              end
            finally
               IBSQLMesa.Close;
               LimpaItens;
               BuscaItens;
               BuscaAdiantamentos;
//               EdtMesa.SetFocus;
            end;
       end;
               LimpaItens;
               BuscaItens;
               BuscaAdiantamentos;
               EdtMesa.Clear;
               EdtMesa.SetFocus;

end;

procedure TFrmMesas.BtnConsProClick(Sender: TObject);
begin
   Application.CreateForm(TFormConsProdutos, FormConsProdutos);
  // FrmConsProd.tag:= 5;
   FormConsProdutos.showmodal;
   EdtCodPro.Text   := DM.SDS_PRODUTOSCODIGO_BARRAS.Text;
   EdtNomePro.Text  := DM.SDS_PRODUTOSDESCRICAO.AsString;
   EdtCodPro.SetFocus;
end;

procedure TFrmMesas.EdtCodProEnter(Sender: TObject);
begin
   EdtCodPro.SelectAll;
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtCodProExit(Sender: TObject);
var iCodPro : integer;
   bErroBalanca: Boolean;
   JaFoiBarras: Boolean;
label Inicio;
begin
//   if (BtnSair.Focused) or (DBGrid1.Focused) or (edtmesa.focused) or (BtnConferencia.Focused) or (BtnMesasAbertas.Focused) or
  //    (BtnTrocaMesa.Focused) or (BtnRecebimento.Focused) then
    //  exit;
    imgFlexa.Visible := False;

   // JaFoiBarras := False;
   { busca o codigo do produto }
  { iCodPro:= dm.BuscaCodigoProduto(trim(EdtCodPro.Text));
   if iCodPro > 0 then
      EdtCodPro.Text:= inttostr(iCodPro); }
  if edit2.Text='LETRAS' THEN
  BEGIN
   BtnConsProClick(Sender);
  end ELSE

 if  EDIT2.Text='NUMEROS' THEN
 BEGIN

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
      //  Inicio:
         { if JaFoiBarras then
             begin
                  if ColocaZerosEnter then
                     begin
                        EdtCodPro.Text := FormataStringD( EdtCodPro.Text,
                             IntToStr( ColocaZerosNum ), '0' );
                     end;

                      EdtCodPro.Text :=  RemoveChar(EdtCodPro.Text);
             end; }


       with dm.QConsulta do
          begin
             close;
             sql.Clear;
            { if not JaFoiBarras then
                begin
                     sql.add('SELECT CODIGO, DESCRICAO, PRECO_VENDA, PRECO_PROMOCAO, ATIVO, ' +
                             'BALANCA FROM PRODUTOS ' +
                             'WHERE CODIGO = :CODPRO');
                     Parambyname('codpro').AsInteger:= strtoint(EdtCodPro.Text);
                end
             else }
              //  begin
                     sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, PRECO_VENDA, FRACAO, PRECO_PROMOCAO, ATIVO, ' +
                             'BALANCA FROM PRODUTOS ' +
                             'WHERE CODIGO_BARRAS = :CODPRO');
                     Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);
              //  end;
             Open;

             if (not fieldbyname('CODIGO_BARRAS').IsNull) then
                begin
                  IF (fieldbyname('ativo').AsString) = 'N' THEN
                  begin
                    ShowMessage('PRODUTO ENCONTRA-SE INATIVO');
                    EdtCodPro.Clear;
                   EdtNomePro.Clear;
                   EdtValor.Clear;
                   EdtQuant.Clear;
                   EdtTotalItem.Clear;
                   EdtCodPro.SetFocus;
                    Exit;
                  end;
                   EdtNomePro.Text := fieldbyname('descricao').AsString;
                   EdtValor.Text   := fieldbyname('preco_venda').AsString;
                 //  if JaFoiBarras then
                       EdtCodPro.Text := fieldbyname('CODIGO').AsString;


                  
                   if FieldByName( 'BALANCA' ).AsString = 'S' then
                       begin
                                 bErroBalanca:= false;
                                 Application.CreateForm( TfrmBalanca, frmBalanca);
                                 frmBalanca.ShowModal;
                                 bErrobalanca := frmbalanca.ErroBalanca;
                                 edtQuant.Text := FloatTostr( frmBalanca.Quant );
                                 FreeAndNil( frmBalanca );
                                 if bErroBalanca and not ( strtocurr(edtquant.text) <= 0 ) then
                                    begin
                                       showmessage('Verifique a Balan�a');
                                       EdtQuant.Text:= '1';
                                       EdtQuant.SetFocus;
                                       exit;
                                    end;
                                 if strtocurr(edtquant.text) <= 0 then
                                    begin
                                       showmessage('Verifique a Balan�a');
                                       EdtQuant.Text:= '1';
                                       EdtQuant.SetFocus;
                                       exit;
                                    end;
                                 EdtQuantExit( nil );
                       end;
                end
             else
                begin
                 {  if not JaFoiBarras then
                      begin
                         JaFoiBarras := True;
                         Goto Inicio;
                      end; }
                   EdtCodPro.Clear;
                   EdtNomePro.Clear;
                   EdtValor.Clear;
                   EdtQuant.Clear;
                   EdtTotalItem.Clear;
                   EdtCodPro.SetFocus;
                   showmessage('Produto n�o Cadastrado');
                   EdtCodPro.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
       except
       dm.IBTransaction.Rollback;
//       showmessage('Erro ao buscar o produto');
  //     EdtCodPro.SetFocus;
     end;
   finally
     dm.QConsulta.Close;
   end;
   end;
end;

procedure TFrmMesas.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsPro.Click
   else
   if CharInSet( Chr( key ) , ['A'..'Z'] ) or CharInSet( Chr( key ), ['a'..'z'] ) then
      begin
          if dm.VerificaTecla( chr( Key ) ) then
             begin
                 Application.CreateForm( TfrmGrupoTeclas, frmGrupoTeclas );
                 frmGrupoTeclas.Tecla := UpCase( chr( Key ) );
                 if frmGrupoTeclas.ShowModal = mrOk then
                    begin
                       InsereItensGrupo( frmGrupoTeclas );
                    end;
                 FreeAndNil( frmGrupoTeclas );
             end;
          Key := 0;
      end;
end;

procedure TFrmMesas.EdtCodProKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8, 'A', 'a']) then
      key := #0;
end;

procedure TFrmMesas.QBuscaItensCalcFields(DataSet: TDataSet);
begin
   if QBuscaItensCONTA_ORIGEM.AsInteger > 0 then
      QBuscaItensCALC_DESCRICAO.AsString := QBuscaItensDESCRICAO.AsString + ' ' + 'TRANSF. DA MESA ' + QBuscaItensMESA_ORIGEM.AsString
   else
      QBuscaItensCALC_DESCRICAO.AsString := QBuscaItensDESCRICAO.AsString;
   QBuscaItensCALC_TOTAL.AsCurrency      := QBuscaItensQUANT.AsCurrency * QBuscaItensVALOR.AsCurrency;
end;

procedure TFrmMesas.BtnGravarClick(Sender: TObject);
begin
   if edtquant.Text = '0' then
     begin
        showmessage('Digite a Quantidade');
        edtquant.SetFocus;
        exit;
     end;

  if EdtValor.Text = '0' then
     begin
        showmessage('Produto sem Valor Unit�rio');
        EdtCodPro.SetFocus;
        exit;
     end;

  if IBTRMesa.Active then
     IBTRMesa.Commit;
  IBTRMesa.StartTransaction;
  try
    try
    if NumeroPedido = 0 then
     BuscaNumeroPedido;
      with IBSQLMesa do
         begin
            close;
            sql.Clear;
            sql.Add('INSERT INTO ITENS_CONTA_CLIENTE (CODIGO, ORDEM, COD_PRO, COD_VEND, QUANT, '+
                    'VALOR, COD_EMP, CANCELADO, PEDIDO_NUMERO, PEDIDO_DATA_HORA, OBSERVACAO) ' +
                    'VALUES(:1, :2, :3, :4, :5, :6, :7, 0, :PEDIDO_NUMERO, ' +
                    ' :PEDIDO_DATA_HORA, :OBSERVACAO)');

            Parambyname('1').AsInteger  := strtoint(EdtCodigo.Text);
            Parambyname('2').AsInteger  := iOrdem;
            Parambyname('3').AsInteger  := strtoint(EdtCodPro.text);
            Parambyname('4').AsInteger  := strtoint(EdtCodGarcon.text);
            Parambyname('5').AsCurrency := StrToCurr(EdtQuant.text);
            Parambyname('6').AsCurrency := StrToCurr(EdtValor.Text);
            Parambyname('7').AsInteger  := iEmp;
            ParamByName('PEDIDO_NUMERO').AsInteger := NumeroPedido;
            ParamByName('PEDIDO_DATA_HORA').AsDateTime := DataHora_Pedido;
            ParamByName( 'OBSERVACAO' ).AsString := edtObs.Text;
            ExecSQL;
         end;
      IBTRMesa.Commit;
    except
      IBTRMesa.Rollback;
      showmessage('Erro ao Gravar o Item');
      EdtCodPro.SetFocus;
    end
  finally
     IBSQLMesa.Close;
     LimpaItens;
     BuscaItens;
     BuscaAdiantamentos;
     EdtMesa.SetFocus;
  end;
end;

procedure TFrmMesas.BtnGravarEnter(Sender: TObject);
begin
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.BtnGravarExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
end;

procedure TFrmMesas.ApagaMesa(Num: String);
var
   iiNumMesa: Integer;
begin
   iiNumMesa := LocalizaContaCliente( Num );
   if iiNumMesa = 0 then
      EXIT;

   if dm.IBTRServer.Active then
       DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with dm.QConsultaServer do
       begin
          Close;
          SQL.Clear;
          SQL.Text := 'delete from MESAS_ADICIONAIS where COD_EMP=:CODEMP and COD=:COD';
          ParamByName( 'CODEMP' ).AsInteger := iEmp;
          ParamByName( 'COD' ).AsInteger := iiNumMesa;
          ExecSQL;
       end;
   DM.IBTRServer.Commit;

end;

procedure TFrmMesas.AtualizaMesas;
var
   I: Integer;
   Str: String;
   Parar: Boolean;
begin
   MostraMesas.Clear;
   if dm.IBTRServer.Active then
       DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with dm.QConsultaServer do
       begin
          Close;
          SQL.Clear;
          SQL.Text := 'select M.*,' +
                      ' case when COD < 2000 then COD' +
                      ' when COD < 3000 then COD - 2000' +
                      ' when COD < 4000 then COD - 3000' +
                      ' when COD < 5000 then COD - 4000' +
                      ' when COD < 6000 then COD - 5000' +
                      ' when COD < 7000 then COD - 6000' +
                      ' when COD < 8000 then COD - 7000' +
                      ' when COD < 9000 then COD - 8000 end' +
                      ' Ordem from MESAS_ADICIONAIS M where M.COD_EMP=:CODEMP order by Ordem, Cod';

          ParamByName( 'CODEMP' ).AsInteger := iEmp;
          Open;
          First;
          while not Eof do
              begin
                  with MostraMesas.Items.Add do
                      begin
                      //    GroupID := 0;
                          Str := '';
                          Parar := False;
                          for I := 1 to Length( FieldByName( 'DESCRICAO' ).AsString ) do
                             begin
                                if FieldByName( 'DESCRICAO' ).AsString[I] <> '0' then
                                   begin
                                      Parar := true;
                                      Str := Str + FieldByName( 'DESCRICAO' ).AsString[I];
                                   end
                                else
                                if Parar then
                                   Str := Str + FieldByName( 'DESCRICAO' ).AsString[I];
                             end;

                          Caption := Str;
                          if Trim( FieldByName( 'JUNTA' ).AsString ) = '' then
                             begin
                                  case VerificaStatusMesa( FieldByName( 'COD' ).AsInteger ) of
                                     1: ImageIndex := 0;
                                     2: ImageIndex := 0;
                                     0: ImageIndex := 1;
                                     3: ImageIndex := 3;
                                  end;
                             end
                          else
                             ImageIndex := 3;
                      end;
                  Next;
              end;
          Close;
       end;

   dm.IBTRServer.Commit;
end;

procedure TFrmMesas.BtnCancelarClick(Sender: TObject);
var iAuxOrdem : integer;
begin
   if Application.MessageBox('Confirma o Cancelamento do Item?', 'Aten��o', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        iAuxOrdem:= QBuscaItensORDEM.AsInteger;
        if IBTRMesa.Active then
           IBTRMesa.Commit;
        IBTRMesa.StartTransaction;
        try
          try
            with IBSQLMesa do
               begin
                  close;
                  sql.Clear;
                  sql.Add('UPDATE ITENS_CONTA_CLIENTE ' +
                          'SET CANCELADO = 1 ' +
                          'WHERE CODIGO = :1 AND ORDEM = :2');
                  Parambyname('1').AsInteger := strtoint(EdtCodigo.text);
                  Parambyname('2').AsInteger := iAuxOrdem;
                  ExecSQL;
               end;
            IBTRMesa.Commit;
          except
            IBTRMesa.Rollback;
            showmessage('Erro ao Cancelar o Item');
          end;
        finally
          IBSQLMesa.Close;
          LimpaItens;
          BuscaItens;
          BuscaAdiantamentos;
          EdtMesa.SetFocus;
        end;
     end;
end;

procedure TFrmMesas.BtnCancelarEnter(Sender: TObject);
begin
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.BtnCancelarExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
end;

procedure TFrmMesas.EdtMesaEnter(Sender: TObject);
begin
   AtualizaMesas;
   EdtMesa.SelectAll;
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtQuantEnter(Sender: TObject);
begin
   PosicionaFlexa( Sender );

end;

procedure TFrmMesas.EdtQuantExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
   if strtocurr(EdtQuant.Text) < 0 then
      begin
         showmessage('Quantidade menor que zero');
         EdtQuant.SetFocus;
         exit;
      end;
   EdtTotalItem.Text:= currtostr(strtocurr(EdtQuant.Text) * strtocurr(EdtValor.Text));

end;

procedure TFrmMesas.EdtTotalItemEnter(Sender: TObject);
begin
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtTotalItemExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
end;

procedure TFrmMesas.EdtValorEnter(Sender: TObject);
begin
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtValorExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
end;

procedure TFrmMesas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmMesas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned( thAtualizaMesas ) then
      begin
         thAtualizaMesas.Terminate;
         WaitForSingleObject( thAtualizaMesas.Handle, 500 );
      end;
   if IBTRMesa.Active then
      IBTRMesa.Commit;
   QBuscaItens.Close;
   Action:= caFree;
   Self := nil;
end;

procedure TFrmMesas.FormCreate(Sender: TObject);
begin
  MostraMesas.Clear;
   // dm.ScaleForm( Self, True );
  //dm.ScaleForm( Self, True );
  thAtualizaMesas := TAtualizaMesas.Create( MostraMesas, Self );
end;

procedure TFrmMesas.EdtMesaExit(Sender: TObject);
var
   Descricao: string;
begin
//  BuscaNumeroPedido;

   if NumeroPedido > 0 then
      begin
         if DM.IBTRServer.Active then
            DM.IBTRServer.Commit;
         DM.IBTRServer.StartTransaction;
         with DM.QConsultaServer do
              begin
                 Close;
                 SQL.Text := 'UPDATE ITENS_CONTA_CLIENTE SET '+
                             ' PEDIDO_FECHADO = 1 WHERE CODIGO =:CODIGO';
                 ParamByName( 'CODIGO' ).AsInteger := StrToInt( EdtCodigo.Text );
              end;
         dm.IBTRServer.Commit;
      end;
   NumeroPedido := 0;
   imgFlexa.Visible := False;
   if PressF9 then
      Exit;
   if trim(EdtMesa.Text) = '' then
      begin
//         EdtMesa.SetFocus;
         exit;
      end;
   Descricao := FormataStringD( EdtMesa.Text , '6', '0' );
   iedtMesa := LocalizaContaCliente( EdtMesa.Text );
   if iedtMesa = 0 then
      begin
         KDialog( 'Mesa inexistente!', 'Controle de Mesas', 'INFO' );
         Exit;
      end;
//   EdtMesa.Text := IntToStr( iiNumMesa );

   BuscaMesa;
   if iCodigoMesa > 0 then
      begin
         BuscaItens;
         BuscaAdiantamentos;
         panel2.Enabled:= true;
         EdtCodGarcon.SetFocus;
      end
   else
      begin
         if Application.MessageBox('Iniciar o Atendimento da Mesa?', 'Aten��o', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
            begin
               if IBTRMesa.Active then
                  IBTRMesa.Commit;
               IBTRMesa.StartTransaction;
               try
                 try
                   with QInsMesa do
                      begin
                         close;
                         Parambyname('data').AsDate      := date;
                         Parambyname('hora').AsTime      := now;
                         Parambyname('conta').AsInteger  := iedtMesa;
                         Parambyname('codcai').AsInteger := iCaixa;
                         Parambyname('codemp').AsInteger := iEmp;
                         open;
                         EdtCodigo.Text:= QInsMesaCODIGO.AsString;
                         iCodigoMesa   := QInsMesaCODIGO.AsInteger;
                         LData.Caption := DateToStr(date);
                         LHora.Caption := TimeToStr(now);
                         edtNumMesa.Text := Descricao;
                      end;
                   IBTRMesa.Commit;
                   panel2.Enabled:= true;
                   EdtCodGarcon.SetFocus;
                 except
                   IBTRMesa.Rollback;
                   showmessage('Erro ao Gravar o Registro da Mesa');
                   panel2.Enabled:= false;
                 end;
               finally
                 QInsMesa.Close;
                 BuscaItens;
                 BuscaAdiantamentos;
               end;
            end
         else
             begin
                EdtMesa.Clear;
                iedtMesa := 0;
                EdtMesa.SetFocus;
             end;
      end;
   AtualizaMesas;
end;



procedure TFrmMesas.EdtNomeGarconEnter(Sender: TObject);
begin
    PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtNomeGarconExit(Sender: TObject);
begin
   imgFlexa.Visible := False;
end;

procedure TFrmMesas.BtnMesasAbertasClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsMesasAbertas, FrmConsMesasAbertas);
   FrmConsMesasAbertas.showmodal;
   EdtMesa.SetFocus;
end;

procedure TFrmMesas.BtnTrocaMesaClick(Sender: TObject);
begin
   Application.CreateForm(TFrmTransfMesa, FrmTransfMesa);
   FrmTransfMesa.EdtOrigem.Text:= edtmesa.Text;
   FrmTransfMesa.showmodal;
end;

procedure TFrmMesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   NumeroMesa: String;
   iNumeroMesa: Integer;
   NumIni, NumFIm: Integer;
begin
   case key of
    vk_escape : begin
                   if PanelAjuda.Visible then
                      PanelAjuda.Visible := not PanelAjuda.Visible
                   else
                      close;
                end;
    vk_f4: LimpaTudo;
  //  vk_f5: BtnConferenciaClick( nil );
    vk_f6: fechapedido;
    vk_f10: BtnRecebimentoClick( nil );
    vk_f7: BtnMesasAbertasClick( nil );
    vk_f8: BtnTrocaMesaClick( nil );
   { vK_f10: begin
               Application.CreateForm(TFrmMenuFiscal, FrmMenuFiscal);
               FrmMenuFiscal.showmodal;
            end; }
    vk_f12: begin

            end;
    VK_F9: begin
              PressF9 := True;
              CriarMesasF9;
              AtualizaMesas;
           end;
     VK_F1 : begin
                PanelAjuda.Visible := not PanelAjuda.Visible;
             end;
   end;
   if ( ssCtrl in Shift ) and (Chr( Key ) in ['A', 'a'] ) and ( iCodigoMesa > 0 ) then
       begin
           Application.CreateForm( TfrmAdiantamentosMesa, frmAdiantamentosMesa);
           frmAdiantamentosMesa.CodigoDaMesa := iCodigoMesa;
           frmAdiantamentosMesa.ShowModal;
           BuscaAdiantamentos;
       end;
    if ( ssCtrl in Shift ) and (Chr( Key ) in ['B', 'b'] ) then
       begin
          DesmembrarMesas;
       end;

end;

procedure TFrmMesas.Timer1Timer(Sender: TObject);
begin
//   sb.Panels[3].Text:= datetostr(date);
  // sb.Panels[4].Text:= timetostr(time);
end;

function TFrmMesas.VefificaSePodeJuntar(StrMesa: String): Boolean;
begin
   Result := True;
   if dm.IBTRServer.Active then
      DM.IBTRServer.Commit;
   DM.IBTRServer.StartTransaction;

   with dm.QConsultaServer do
       begin
          Close;
          SQL.Text := 'Select * from MESAS_ADICIONAIS where JUNTA=:JUNTA';
          ParamByName( 'JUNTA' ).AsString :=  FormataStringD( StrMesa, '6', '0' );
          Open;
          if not IsEmpty then
             Result := False;
          Close;
       end;

   DM.IBTRServer.Commit;
end;

function TFrmMesas.VerificaStatusMesa(CodMesa: Integer): Integer;
begin
   if TRStatus.Active then
      TRStatus.Commit;
   TRStatus.StartTransaction;
   Qstatus.Close;
   QStatus.ParamByName( 'conta' ).AsInteger := CodMesa;
   QStatus.Open;
   Result := QStatusSTATUS.AsInteger;
   Qstatus.Close;
   TRStatus.Commit;
end;

procedure TFrmMesas.BtnConsGarconClick(Sender: TObject);
begin
   Application.CreateForm(TFormConsusuarios, FormConsUsuarios);
  // FrmConsVend.Tag:= 2;
   FormConsUsuarios.ShowModal;
   EdtCodGarcon.Text  := DM.SDS_UsuariosCODIGO.Text;
   EdtNomeGarcon.Text := DM.SDS_UsuariosUSUARIO.Text;
   EdtCodPro.SetFocus;
end;

procedure TFrmMesas.EdtCodGarconEnter(Sender: TObject);
begin
   EdtCodGarcon.SelectAll;
   PosicionaFlexa( Sender );
end;

procedure TFrmMesas.EdtCodGarconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsGarcon.Click;
end;

procedure TFrmMesas.EdtCodGarconExit(Sender: TObject);
begin
//   if (BtnSair.Focused) or (DBGrid1.Focused) or (edtmesa.focused) or
  //    (BtnConferencia.Focused) or (BtnMesasAbertas.Focused) or
    //  (BtnTrocaMesa.Focused) or (BtnRecebimento.Focused) then
      //exit;
   imgFlexa.Visible := False;
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.add('SELECT CODIGO, USUARIO, VENDEDOR ' +
                     'FROM USUARIOS ' +
                     'WHERE CODIGO = :CODVEND');
             Parambyname('codvend').AsInteger:= strtoint(EdtCodGarcon.Text);
             Open;
             if not fieldbyname('codigo').IsNull then
                begin
                   if trim(fieldbyname('vendedor').AsString) = 'S' then
                      EdtNomeGarcon.Text:= fieldbyname('usuario').AsString
                   else
                      begin
                         EdtNomeGarcon.Clear;
                         showmessage('Gar�on desativado');
                         EdtCodGarcon.SetFocus;
                      end;
                end
             else
                begin
                   showmessage('Gar�on n�o Cadastrado');
                   EdtCodGarcon.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
//       showmessage('Erro ao buscar o gar�on');
   //    EdtCodGarcon.SetFocus;
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

procedure TFrmMesas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if QBuscaItensCANCELADO.AsInteger = 1 then
      begin
         DBGrid1.Canvas.Font.Color:= clRed;
         Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      end;
end;

procedure TFrmMesas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ( not ( QBuscaItensCODIGO.IsNull ) ) and ( Key = VK_DELETE )  then
      BtnCancelar.Click;
end;

procedure TFrmMesas.DesmembrarMesas;
var
   I: Integer;
   numMesa: Integer;
   StrMesa:  String;
begin
//
   for I := 0 to MostraMesas.Items.Count - 1 do
        begin
           if MostraMesas.Items[I].Selected then
               begin
                  try
                     numMesa := LocalizaContaCliente( MostraMesas.Items[I].Caption );
                     if numMesa > 0 then
                        begin
                           if numMesa < 2000 then
                              begin
                                   StrMesa := '2' + FormataStringD( IntToStr( numMesa  ), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 3000 then
                              begin
                                   StrMesa := '3' + FormataStringD( IntToStr( numMesa - 2000 ), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 4000 then
                              begin
                                   StrMesa := '4' + FormataStringD( IntToStr( numMesa - 3000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 5000 then
                              begin
                                   StrMesa := '6' + FormataStringD( IntToStr( numMesa - 4000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 6000 then
                              begin
                                   StrMesa := '6' + FormataStringD( IntToStr( numMesa - 5000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 7000 then
                              begin
                                   StrMesa := '7' + FormataStringD( IntToStr( numMesa - 6000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 8000 then
                              begin
                                   StrMesa := '8' + FormataStringD( IntToStr( numMesa - 7000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end
                           else
                           if numMesa < 9000 then
                              begin
                                   StrMesa := '9' + FormataStringD( IntToStr( numMesa - 8000), '3', '0' );
                                  CriaMesa( StrMesa );
                              end;
                        end;
                  except

                  end;
               end;
        end;
    AtualizaMesas;
end;

procedure TFrmMesas.BtnConferenciaClick(Sender: TObject);
var cAuxTotal : currency;
    iAuxCOO : integer;
    iAuxCER : integer;
    sIndice : string;
    RelMesa: TStrings;
    cTotalAdiantamentos: Currency;
begin
   if iCodigoMesa = 0 then
      Exit;
   GeraComissao;
      
   cAuxTotal:= 0;
   sIndice := trim(dm.IndiceRelGerencial('MESA'));
   {Imprime o Cabe�alho}
   RelMesa := TStringList.Create;
   RelMesa.Clear;
   RelMesa.Add( '<n><ce>CONFER�NCIA DE MESA</ce></n>' );

//   if  AbreRelatoroGerencial(iECF, sIndice) = 0 then
           RelMesa.Add( 'Mesa: ' + FormataStringD(trim(EdtMesa.Text), '6', '0'));
           RelMesa.Add( 'Data: ' + LData.Caption + ' Hora:' + LHora.Caption );
           RelMesa.Add( FormataStringE( '-', '40', '-' ));
           RelMesa.Add( 'Item   Descricao    Qtd    Valor   Total');
           RelMesa.Add( FormataStringE( '-', '40', '-' ));

           { Impriem os Itens }
           with QBuscaItens do
              begin
                 DisableControls;
                 First;
                 while not eof do
                    begin
                       RelMesa.Add(  FormataStringD(QBuscaItensORDEM.AsString, '3', '0') + ' '   +
                                                       FormataStringE(copy(QBuscaItensDESCRICAO.Text, 1, 13), '13', ' ') +
                                                       FormataStringD(currtostrf(QBuscaItensQUANT.AsCurrency, ffnumber, 3), '6', ' ') +
                                                       FormataStringD(currtostrf(QBuscaItensVALOR.AsCurrency, ffnumber, 2), '8', ' ') +
                                                       FormataStringD(currtostrf(QBuscaItensCALC_TOTAL.AsCurrency, ffnumber, 2), '9', ' '));
                       if QBuscaItensCANCELADO.AsInteger = 1 then
                          RelMesa.Add(  FormataStringD('CANCELADO', '30', ' ')  + FormataStringD(currtostrf(QBuscaItensCALC_TOTAL.AsCurrency * -1, ffnumber, 2), '10', ' '));

                       if QBuscaItensCONTA_ORIGEM.AsInteger > 0 then
                          RelMesa.Add(  '    Transf. da Mesa: ' + QBuscaItensMESA_ORIGEM.AsString);

                       IF QBuscaItensCANCELADO.AsInteger = 0 then
                          cAuxTotal:= cAuxTotal + QBuscaItensCALC_TOTAL.AsCurrency;
                       next;
                    end;
                 EnableControls;
              end;
           RelMesa.Add( FormataStringE( '-', '40', '-' ));

           // FDIANTAMENTOS
           cTotalAdiantamentos := 0;
           if dm.IBTRServer.Active then
              dm.IBTRServer.Commit;
           dm.IBTRServer.StartTransaction;
           try
             try
               with dm.QConsultaServer do
                    begin
                       Close;
                       SQL.Text := 'select * from FDIANTAMENTO_CONTA_CLIENTE ' +
                                   ' where CODIGO=:COD';
                       ParamByName('COD' ).AsInteger := iCodigoMesa;
                       Open;
                       if not IsEmpty then
                           begin
                               RelMesa.Add( FormataStringC( 'FDIANTAMENTOS', '40', ' ' ));
                               RelMesa.Add( FormataStringE( 'Descri��o                      Valor', '40', ' ' ));
                               RelMesa.Add( FormataStringE( '-', '40', '-' ));
                           end;
                       while not Eof do
                          begin
                             RelMesa.Add( FormataStringE( FieldByName( 'DESCRICAO' ).AsString, '28', ' ' ) +
                             FormataStringD( FormatFloat( 'R$ ,0.00', FieldByName( 'VALOR' ).AsFloat ), '12', ' ' )
                             );
                             cTotalAdiantamentos := cTotalAdiantamentos + FieldByName( 'VALOR' ).AsFloat ;
                             Next;
                          end;
                    end;
             except
                 DM.QConsultaServer.Close;
                 DM.IBTRServer.Rollback;
             end;
           finally
               dm.QConsultaServer.Close;
           end;
          // FIM FDIANTAMENTOS
          RelMesa.Add( FormataStringE( '-', '40', '-' ));
          RelMesa.Add( FormataStringD('TOTAL: ', '31', ' ') + FormataStringD(currtostrf(cAuxTotal, ffnumber, 2), '9', ' '));
          RelMesa.Add( FormataStringD('FALTA PAGAR: ', '31', ' ') + FormataStringD(currtostrf(cAuxTotal - cTotalAdiantamentos, ffnumber, 2), '9', ' '));
          RelMesa.Add( ' ');

          RelMesa.Add( FormataStringC( 'AGUARDE A EMISS�O DO CUPOM FISCAL', '40', ' ' ) );

           { Fecha o Relat�rio Gerencial }
          dm.ECF.RelatorioGerencial( RelMesa, 1, StrToInt( sIndice ));
//           FechaRelatorioGerencial(iECF);

         /// desativei FDemir
           { Atualizando a mesa com o CER COO e CAIXA }
        {   iAuxCOO := strtoint(NumeroCupom(iECF));
           if iECF = 2 then
              iAuxCOO:= iAuxCOO - 1;

           try
             iAuxCER:= strtoint(NumeroCER(iECF));
           except
             iAuxCER:= 0;
           end;  }

           if dm.IBTRServer.Active then
              dm.IBTRServer.Commit;
           dm.IBTRServer.StartTransaction;
           try
             try
               with dm.QConsultaServer do
                  begin
                     close;
                     sql.Clear;
                     sql.text:= 'UPDATE CONTA_CLIENTE ' +
                                'SET COO = :COO, COD_CAI = :CODCAI, CER = :CER ' +
                                'WHERE CODIGO = :COD';
                     Parambyname('coo').AsInteger    := iAuxCOO;
                     Parambyname('codcai').AsInteger := iCaixa;
                     Parambyname('cod').AsInteger    := iCodigoMesa;
                     Parambyname('cer').AsInteger    := iAuxCER;
                     ExecSQL;
                  end;
               dm.IBTRServer.Commit;
             except
               dm.IBTRServer.Rollback;
               showmessage('Erro ao atualizar a Mesa com o COO e Num.ECF');
             end;
           finally
             dm.QConsultaServer.close;
           end;
      RelMesa.Free;

end;


procedure TFrmMesas.BtnRecebimentoClick(Sender: TObject);
var iAuxCOO : integer;
    iauxECF : integer;
    iAuxCER, Contador, e : integer;
begin
  { if dm.ECF.Estado = estRelatorio then
        Exit;   }

   iAuxCOO := 0;
   iauxECF := 0;

   if iCodigoMesa = 0 then
      exit;

  // GeraComissao;

   if (not (QBuscaItens.State = dsbrowse)) and (not (QBuscaItens.RecordCount > 0)) then
      exit;

   { busca o COO e NumECF - se estiver preenchido pode finalizar }
  { if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
       with dm.QConsultaServer do
          begin
             close;
             sql.Clear;
             sql.Text:= 'SELECT COO, COD_CAI, CER ' +
                        'FROM CONTA_CLIENTE '  +
                        'WHERE CODIGO = :COD';
             Parambyname('cod').AsInteger:= iCodigoMesa;
             Open;
             iAuxCOO := fieldbyname('COO').AsInteger;
             iauxECF := fieldbyname('cod_cai').AsInteger;
             iAuxCER := fieldbyname('CER').AsInteger;
          end;
       dm.IBTRServer.Commit;
     except
       dm.IBTRServer.Rollback;
       showmessage('Erro ao buscar o COO e Num.ECF da mesa');
     end;
   finally
     dm.QConsultaServer.Close;
   end; }

   { verifica se foi emitido o Relatorio Gerencial }
{   if (iAuxCOO > 0) and (iauxECF > 0) then
      begin

         iCodMesa:= iCodigoMesa;
         iCOOMesa:= iAuxCOO;
         iECFMesa:= iauxECF;
         iCERMesa:= iAuxCER;
         iNumMesa := 0;

         Application.CreateForm(TFrmVendasCaixa, FrmVendasCaixa);
         FrmVendasCaixa.Tag:= 1;
         FrmVendasCaixa.showmodal;
         AtualizaMesas;
      end
   else
      begin
          if Application.MessageBox('Deseja imprimir o cupom sem fazer a confer�ncia?', 'Aten��o', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
             begin
                iCodMesa:= iCodigoMesa;
                iCOOMesa:= 0;
                iECFMesa:= 0;
                iCERMesa:= 0;
                iNumMesa := iedtMesa;
                 Application.CreateForm(TFrmVendasCaixa, FrmVendasCaixa);
                 FrmVendasCaixa.Tag:= 1;
                 FrmVendasCaixa.showmodal;
                 AtualizaMesas;
             end;
      end; }

 if Application.MESSAGEBOX('Confirma a Gera��o da Venda e Fechamento da mesa?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin

formVendas:=TformVendas.Create(self);
formVendas.tag := 0;


//if not DMOS.SDS_OS_PRODUTO.Eof then
begin
formvendas.Sds_pedidos.Active := FALSE;
formvendas.Sds_pedidos.Active := True;

formvendas.SDS_pedidos_itens.Active := False;
Formvendas.SDS_pedidos_itens.Active := True;

//formprincipal.log(codigo_usuario,'VENDA',venda,'ALTEROU','ALTERA��O DA VENDA N� '+venda+'Cliente: '+ DM.sds_vendasCODIGO_CLIENTE.Text+' - '+DM.sds_vendasNOME_CLIENTE.text);

        {  if formVendas.Sds_pedidos.RecordCount = 0 then
          formvendas.inserir.click
          else }

formvendas.sds_pedidos.Insert;
formvendas.sds_pedidos.EDIT;
formvendas.SPC_Codigo.ExecProc;
N := (formvendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formvendas.sds_pedidosCODIGO.Text             :=IntTostr(N);
formvendas.N_venda.Text                       := IntToStr(N);
formvendas.sds_pedidosDATA_PEDIDO.AsDateTime  := date;
formvendas.sds_pedidosDATA_ENTREGA.AsDateTime := date;
formvendas.sds_pedidosVALOR_ITENS.ASFLOAT     := EdtTotal.Value;
formvendas.sds_pedidosVALOR_DESCONTO.AsFloat  := 0;
formvendas.Sds_pedidosVALOR_TOTAL.AsFloat     := EdtTotal.Value;

formvendas.sds_pedidosCODIGO_CLIENTE.Text     := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
formvendas.DBComboCliente.Text                := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;

 dm.SDS_Clientes.Active := false;
 dm.SDS_Clientes.SQL.Clear;
 dm.SDS_Clientes.sql.add('select * from clientes where CODIGO = ' + #39 + DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text + #39+'order by NOME_RS ASC');
 dm.SDS_Clientes.Active := True;

formvendas.Sds_pedidosNOME_CLIENTE.Text     :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
formvendas.Sds_pedidosCODIGO_CLIENTE.Text   :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
formvendas.Sds_pedidosENDERECO.Text         := DM.SDS_ClientesENDERECO.AsString;
formvendas.Sds_pedidosCPF_CNPJ.Text         := DM.SDS_ClientesCPF_CNPJ.Text;
formvendas.Sds_pedidosRG_IE.Text            := DM.SDS_ClientesRG_IE.Text;
formvendas.Sds_pedidosfone.Text             := DM.SDS_ClientesTELEFONE.Text;
formvendas.Sds_pedidosCIDADE.Text           := dm.SDS_ClientesCIDADE.AsString;
formvendas.Sds_pedidosBAIRRO.Text           := DM.Sds_clientesBairro.Text;
formvendas.Sds_pedidosPROPRIEDADE.Text      := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
formvendas.Sds_pedidosMED_VETERINARIO.Text  := DM.SDS_ClientesNOME_VETERINARIO.Text;
formvendas.DBComboCliente.Text              := DM.SDS_ClientesCODIGO.Text;
formvendas.Sds_pedidosCEP.Text              := removechar(DM.SDS_ClientesCEP.Text);
formvendas.Sds_pedidosUF.Text               := DM.SDS_ClientesUF.Text;
formvendas.Sds_pedidosCOD_IBGE.Text         := DM.SDS_ClientesCOD_IBGE.Text;
formvendas.Sds_pedidosNUMERO.AsInteger      := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
formvendas.Sds_pedidosTIPO.TEXT             := DM.SDS_ClientesTIPO.Text;
formvendas.Sds_pedidosIE_PRODUTOR.Text      := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
formvendas.Sds_pedidosPROD_RURAL.Text       := DM.SDS_ClientesPRODUTOR_RURAL.Text;

formvendas.sds_pedidosCOD_VENDEDOR.text     := FormPrincipal.usuario_temp;
formvendas.sds_pedidosUSUARIO.Text          := FormPrincipal.UserLogado;
formvendas.sds_pedidosCOD_EMPRESA.Text      := DM.SDS_EmpresaCODIGO.Text;
//formvendas.Sds_pedidosCOD_OS.Text         := DBEDIT1.Text;
formVendas.Sds_pedidoskm.Text               := '0';
formVendas.Sds_pedidosOBSERVACOES.TEXT      := 'OBRIGADO VOLTE SEMPRE';

formvendas.NValor:=1;
formvendas.NItem                            :=formvendas.NItem+formvendas.NValor;

//formvendas.Sds_pedidos_itens.Delete;

QBuscaItens.First;
Contador := QBuscaItens.RecordCount;
For E:=1 to Contador do
 begin
if QBuscaItensCANCELADO.AsInteger = 0 then
begin
 if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
   DM.IBTransaction.StartTransaction;
   with QItens do
      begin
         close;
         Parambyname('cod_ITEN').AsInteger:= QBuscaItensCODIGO.AsInteger;
         Parambyname('cod_PRO').AsInteger:= QBuscaItensCOD_PRO.AsInteger;
         open;
         Last;
      end;
   DM.IBTransaction.CommitRetaining;

formvendas.Sds_pedidos_itens.Insert;
formvendas.Sds_pedidos_itens.Edit;

formvendas.sds_pedidos_itensITEN.AsInteger            := QitensORDEM.AsInteger;
formvendas.Sds_pedidos_itensCODIGO.AsInteger          := FORMVENDAS.NItem;
formvendas.Sds_pedidos_itensCODIGO_ID.Text            := formvendas.N_venda.Text;
formvendas.Sds_pedidos_itensCODIGO_PROD.Text          := QBuscaItensCOD_PRO.Text;
formvendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := QitensCODIGO_BARRAS.Text;
formvendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := QitensDESCRICAO.Text;
formvendas.Sds_pedidos_itensDESCONTO.TEXT             := '0';
formvendas.Sds_pedidos_itensQUANTIDADE.AsFloat        := QBuscaItensQUANT.AsFloat;
formvendas.Sds_pedidos_itensPRECO_UNITARIO.AsFloat    := QBuscaItensVALOR.AsFloat;
formvendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat       := QBuscaItensQUANT.AsFloat * QBuscaItensVALOR.AsFloat;
formvendas.Sds_pedidos_itensVENDEDOR.Text             := QBuscaItensCOD_VEND.Text;
formvendas.Sds_pedidos_itensUNIDADE.Text              := QitensDESC_UNIDADE.Text;
formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := '0,01';
formvendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := '0';
formvendas.Sds_pedidos_itensFRACAO.text               := QitensFRACAO.Text;
formvendas.Sds_pedidos_itensCOD_NCM.Text              := QitensNCM_SH.Text;
formvendas.Sds_pedidos_itensPROD_SERV.Text            := QitensPROD_SERV.TEXT;
formvendas.sds_pedidos_itensPERC_ISS.Text             := '0';
formvendas.sds_pedidos_itensBASE_ISS.Text             := '0';
formvendas.sds_pedidos_itensVL_ISS.Text               := '0';
formvendas.sds_pedidos_itensPERC_ICM.Text             := '0';
formvendas.sds_pedidos_itensBASE_ICMS.Text            := '0';
formvendas.sds_pedidos_itensVL_ICM.Text               := '0';
formvendas.sds_pedidos_itensPERC_IPI.Text             := '0';
formvendas.sds_pedidos_itensBASE_IPI.Text             := '0';
formvendas.sds_pedidos_itensVL_IPI.Text               := '0';
formvendas.sds_pedidos_itensPERC_COFINS.Text          := '0';
formvendas.sds_pedidos_itensVL_COFINS.Text            := '0';
formvendas.sds_pedidos_itensPERC_ICMS_SUBST.Text      := '0';
formvendas.sds_pedidos_itensBASE_ICMS_SUBST.Text      := '0';
formvendas.sds_pedidos_itensVL_ICMS_SUBST.Text        := '0';
formvendas.sds_pedidos_itensPERC_PIS.Text             := '0';
formvendas.sds_pedidos_itensBASE_PIS.Text             := '0';
formvendas.sds_pedidos_itensVL_PIS.Text               := '0';
//formvendas.sds_pedidos_itensCOD_EMPRESA.Text          := DM.Sds_Vendas_itensCOD_EMPRESA.TEXT;

formvendas.Sds_pedidos_itens.Post;
end;
QBuscaItens.Next;

end;



     
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
//formvendas.reimprimir.Enabled := False;
formvendas.confirmar.Enabled := True;
//Navegador.Enabled := False;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
//formvendas.Alterar.Enabled:=false;
formvendas.cancelar.Enabled:=False;

formvendas.Edit60.Visible := true;
formvendas.E_desconto.Visible := true;
formvendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;

        // iCodigoConta := strtoint(edtcodigo.text);

   //   formvendas.sds_pedidos_itens.last;


     // formvendas.DBComboClienteExit(Sender);


      formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formvendas.sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;   

      CodigoMesa  :=  strtoint(edtcodigo.text);

        // iCodMesa:= strtoint(CodigoMesa);
        // iCOOMesa:= edtnummesa.text;

     formVendas.FormStyle := fsNormal;
     formVendas.Visible:= False;
     formvendas.Tag := 5;
     formvendas.Showmodal;
     //FrmMesas.WindowState := wsMinimized;
end;
end;
end;


procedure TFrmMesas.EdtCodProChange(Sender: TObject);
begin
IF (EdtCodPro.Text>='A') AND (EdtCodPro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EdtCodPro.Text>='0') AND (EdtCodPro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EdtCodPro.Text='' THEN
EDIT2.Text:=''
end;

{ TAtualizaMesas }

constructor TAtualizaMesas.Create( List: TListView; Form: TForm );
begin
  inherited Create( False );
  FMesas := List;
  FreeOnTerminate := True;
  FForm := Form;
end;

procedure TAtualizaMesas.Execute;
begin
  inherited;
  FConec := TFDConnection.Create( nil );
  FConec.ConnectionName := DM.Coneccao.Params.Database;
  FConec.Params.Clear;
  FConec.Params.Assign( dm.Coneccao.Params );
  FConec.LoginPrompt := False;
  FConec.Connected := true;
  FTransaction := TFDTransaction.Create( nil );
  FTransaction.Connection := FConec;
  while not Terminated do
     begin
        if FrmMesas.Active then
           AtualizaMesasNew;
        Sleep(500);
     end;
  if FTransaction.active then
     FTransaction.Commit;
  FreeAndNil( FTransaction );
  FConec.Connected := False;
  FreeAndNil( FConec );
end;

function TAtualizaMesas.VerificaStatusMesa(CodMesa: Integer): Integer;
var
   QCon: TFDQuery;
begin
   QCon := TFDQuery.Create( nil );
   QCon.Transaction := FTransaction;
   try
       with QCon do
           begin
              SQL.Text := 'select coalesce(' +
                          ' ( select first 1 c.status' +
                          ' from conta_cliente c' +
                          ' where c.conta = :conta and status <> 1' +
                          ' order by CODIGO desc  ), 1 ) status from  RDB$DATABASE';
              ParamByName( 'conta' ).AsInteger := CodMesa;
              Open;
              if FieldByName( 'STATUS' ).IsNull then
                 Result := 0
              else
                 Result := FieldByName( 'STATUS' ).AsInteger;
              Close;
           end;
   finally
      if QCon.Active then
         QCon.Close;
      FreeAndNil( QCon );
   end;
end;

procedure TAtualizaMesas.AtualizaMesasNew;
var
   I: Integer;
   Str: String;
   QCon: TFDQuery;
   Item: TListItem;
   UltimoRec: Integer;
begin
   QCon := TFDQuery.Create( nil );
   QCon.Transaction := FTransaction;
   UltimoRec := 0;
   try
       if FTransaction.Active then
          FTransaction.Commit;
       FTransaction.StartTransaction;
       with QCon do
           begin
              Close;
              SQL.Clear;
              SQL.Text := 'select M.*,' +
                          ' case when COD < 2000 then COD' +
                          ' when COD < 3000 then COD - 2000' +
                          ' when COD < 4000 then COD - 3000' +
                          ' when COD < 5000 then COD - 4000' +
                          ' when COD < 6000 then COD - 5000' +
                          ' when COD < 7000 then COD - 6000' +
                          ' when COD < 8000 then COD - 7000' +
                          ' when COD < 9000 then COD - 8000 end' +
                          ' Ordem from MESAS_ADICIONAIS M where M.COD_EMP=:CODEMP order by Ordem, Cod';

              ParamByName( 'CODEMP' ).AsInteger := iEmp;
              Open;
              First;
              Item := Nil;
              while not Eof do
                 begin
                  //  Synchronize(
                  //  procedure
                  //  begin
                        if FMesas.Items.Count < RecNo then
                          begin
                            Item := TListItem.Create( FMesas.Items );
                            FMesas.Items.AddItem( Item );
                          end
                        else
                           Item := FMesas.Items.Item[RecNo - 1];
                        with Item do
                           begin
                             //   GroupID := 0;
                                Str := TirarZeros( FieldByName( 'DESCRICAO' ).AsString );
                                Caption := Str;
                                if Trim( FieldByName( 'JUNTA' ).AsString ) = '' then
                                   begin
                                        case VerificaStatusMesa( FieldByName( 'COD' ).AsInteger ) of
                                           1: ImageIndex := 0;
                                           2: ImageIndex := 0;
                                           0: ImageIndex := 1;
                                           3: ImageIndex := 3;
                                        end;
                                   end
                                else
                                   ImageIndex := 3;
                           end;
                 //   end );
                    UltimoRec := RecNo;
                    Item := nil;
                    Next;
                 end;
              while FMesas.Items.Count > UltimoRec do
                   begin
                    //  Synchronize(
                     // procedure
                   //   begin
                          FMesas.Items.Delete( UltimoRec );
                   //   end );
                   end;
           end;
   finally
      if QCon.Active then
         QCon.Close;
      if FTransaction.Active then
         FTransaction.Commit;
      FreeAndNil( QCon );
   end;
end;


procedure TFrmMesas.edtObsEnter(Sender: TObject);
begin
PosicionaFlexa( Sender );
end;

procedure TFrmMesas.edtObsExit(Sender: TObject);
begin
imgFlexa.Visible := False;
end;

procedure TFrmMesas.edtObsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
      begin
         ApertouEnterQuant := True;
         BtnGravar.Click;
      end;
end;

end.
