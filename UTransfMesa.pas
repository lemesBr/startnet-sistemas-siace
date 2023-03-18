unit UTransfMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, AlignEdit, ComCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, IBStoredProc, Grids, DBGrids, IBDatabase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmTransfMesa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    EdtOrigem: TAlignEdit;
    EdtDestino: TAlignEdit;
    BtnTransfItem: TBitBtn;
    BtnSair: TBitBtn;
    IBSPTransf: TFDStoredproc;
    QTransf: TFDQuery;
    DBGrid1: TDBGrid;
    BtnOK: TBitBtn;
    BtnTransfTudo: TBitBtn;
    IBTRItensMesa: TFDTransaction;
    QBuscaItensOrigem: TFDQuery;
    DSQBuscaItensOrigem: TDataSource;
    QInsMesa: TFDQuery;
    QInsMesaCODIGO: TIntegerField;
    QOrdem: TFDQuery;
    QOrdemORDEM: TIntegerField;
    QBuscaMesa: TFDQuery;
    QBuscaItensOrigemCODIGO: TIntegerField;
    QBuscaItensOrigemORDEM: TIntegerField;
    QBuscaItensOrigemCOD_PRO: TIntegerField;
    QBuscaItensOrigemCOD_VEND: TIntegerField;
    QBuscaItensOrigemVALOR: TIBBCDField;
    QBuscaItensOrigemCONTA_ORIGEM: TIntegerField;
    QBuscaItensOrigemCANCELADO: TIntegerField;
    QBuscaItensOrigemCOD_EMP: TIntegerField;
    QBuscaItensOrigemQUANT: TIBBCDField;
    QBuscaItensOrigemNOME_PRO: TIBStringField;
    QBuscaItensOrigemDESC_CUPOM: TIBStringField;
    QBuscaItensOrigemUSUARIO: TIBStringField;
    QBuscaItensOrigemMESA_ORIGEM: TIBStringField;
    QBuscaItensOrigemCALC_DESCRICAO: TStringField;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function MesaAberta(const iMesa : integer) : integer;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtDestinoExit(Sender: TObject);
    procedure EdtDestinoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QBuscaItensOrigemCalcFields(DataSet: TDataSet);
    procedure BtnTransfTudoClick(Sender: TObject);
    procedure BtnTransfItemClick(Sender: TObject);
    function  OrdemItemDestino(const iCodigoContaCliente : integer) : integer;
    procedure FormCreate(Sender: TObject);
    procedure AtualizaDataMesa( codO, CodD: Integer );
  private
    { Private declarations }
  public
    { Public declarations }
    iedtOrigem: Integer;
    iedtDestino: Integer;
  end;

var
  FrmTransfMesa: TFrmTransfMesa;

implementation

Uses Ubibli1, UMesas, UDialog, ModulodeDados;

var iCodigoOrigem, iCodigoDestino : Integer;

{$R *.dfm}

function TFrmTransfMesa.MesaAberta(const iMesa : integer) : integer;
begin
   if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
        with dm.QConsultaServer do
           begin
              close;
              sql.Clear;
              sql.Text:= 'SELECT CODIGO ' +
                         'FROM CONTA_CLIENTE    ' +
                         'WHERE CONTA = :CONTA AND STATUS = 0';
              Parambyname('conta').AsInteger:= iMesa;
              open;
              Result:= fieldbyname('codigo').AsInteger;
           end;
        dm.IBTRServer.Commit;
     except
        dm.IBTRServer.Rollback;
        result:= 0;
        showmessage('Erro ao buscar o c�digo da Conta');
     end;
   finally
     dm.QConsultaServer.Close;
   end;
end;

procedure TFrmTransfMesa.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmTransfMesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if IBTRItensMesa.Active then
      IBTRItensMesa.Commit;
   QBuscaItensOrigem.Close;
   Action:= caFree;
   Self := nil;
end;

procedure TFrmTransfMesa.FormCreate(Sender: TObject);
begin
//  dm.ScaleForm( Self, False );
end;

procedure TFrmTransfMesa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmTransfMesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
   begin
      close;
   end;
   {else
      if key = vk_f10 then
         begin
            Application.CreateForm(TFrmMenuFiscal, FrmMenuFiscal);
            FrmMenuFiscal.showmodal;
         end;   }
end;

procedure TFrmTransfMesa.EdtDestinoExit(Sender: TObject);
begin
   if BtnSair.Focused then
      exit;
   if trim(EdtOrigem.Text) = trim(EdtDestino.Text) then
      begin
         showmessage('A mesa destino n�o pode ser igual a mesa origem');
         EdtDestino.SetFocus;
      end;
end;

procedure TFrmTransfMesa.EdtDestinoEnter(Sender: TObject);
begin
   EdtOrigem.SelectAll;
end;

procedure TFrmTransfMesa.FormShow(Sender: TObject);
begin

   EdtOrigem.Clear;
   EdtDestino.Clear;
   EdtOrigem.SetFocus;
end;

procedure TFrmTransfMesa.AtualizaDataMesa( codO, Codd: Integer );
var
   DataMesaO: TDateTime;
   DataMesaD: TDateTime;

begin
   if dm.IBTRServer.Active then
      dm.IBTRServer.Commit;
   dm.IBTRServer.StartTransaction;
   try
     try
        with dm.QConsultaServer do
           begin
              close;
              sql.Clear;
              sql.Text:= 'select ( select cc.DATA_ABERTURA from conta_cliente cc '+
              'where cc.CODIGO=:COD1 ) DATA1, '+
              ' ( select c.DATA_ABERTURA from conta_cliente c where c.CODIGO=:COD2) '+
              ' DATA2 from RDB$DATABASE';
              Parambyname('COD1').AsInteger:= codo;
              Parambyname('COD2').AsInteger:= CodD;
              open;
              DataMesaO := fieldbyname('DATA1').AsDateTime;
              DataMesaD := fieldbyname('DATA2').AsDateTime;

           end;
        dm.IBTRServer.Commit;
     except
        dm.IBTRServer.Rollback;
        showmessage('Erro ao buscar Data da Mesa');
        Exit;

     end;
   finally
     dm.QConsultaServer.Close;
   end;
   if DataMesaO < DataMesaD then
      begin
             if dm.IBTRServer.Active then
                dm.IBTRServer.Commit;
             dm.IBTRServer.StartTransaction;
             try
               try
                  with dm.QConsultaServer do
                     begin
                        close;
                        sql.Clear;
                        sql.Text:= 'UPDATE CONTA_CLIENTE SET DATA_ABERTURA=:DATAA WHERE CODIGO=:COD';
                        Parambyname('COD').AsInteger:= CodD;
                        ParamByName('DATAA').AsDate :=  DataMesaO; ;
                        ExecSQL;
                     end;
                  dm.IBTRServer.Commit;
               except
                  dm.IBTRServer.Rollback;
                  showmessage('Erro ao buscar ao Cadastrar data Nova');
                  Exit;

               end;
             finally
               dm.QConsultaServer.Close;
             end;
      end;
end;

procedure TFrmTransfMesa.BtnOKClick(Sender: TObject);
var iAuxCodMesaOrigem : integer;
begin
   if (trim(EdtOrigem.Text) = '') or (trim(EdtDestino.Text) = '') then
      begin
         showmessage('Verifique os n�meros das Mesas');
         EdtOrigem.SetFocus;
         exit;
      end;
   iedtOrigem := FrmMesas.LocalizaContaCliente( EdtOrigem.Text );
   iedtDestino := FrmMesas.LocalizaContaCliente( EdtDestino.Text );
   if iedtOrigem = 0 then
      begin
         KDialog( 'Mesa de Origem inexistente!', 'Transfer�ncia de Mesas', 'INFO' );
         Exit;
      end;
   if iedtDestino = 0 then
      begin
         KDialog( 'Mesa de Destino inexistente!', 'Transfer�ncia de Mesas', 'INFO' );
         Exit;
      end;

   iAuxCodMesaOrigem:= MesaAberta(iedtOrigem);

   { busca os itens da Mesa de Origem }
   if IBTRItensMesa.Active then
      IBTRItensMesa.Commit;
   IBTRItensMesa.StartTransaction;
   with QBuscaItensOrigem do
     begin
        close;
        ParamByName('cod').AsInteger:= iAuxCodMesaOrigem;
        open;
     end;
end;

procedure TFrmTransfMesa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if QBuscaItensOrigemCANCELADO.AsInteger = 1 then
      begin
         DBGrid1.Canvas.Font.Color:= clRed;
         Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
      end;
end;

procedure TFrmTransfMesa.QBuscaItensOrigemCalcFields(DataSet: TDataSet);
begin
   if QBuscaItensOrigemCONTA_ORIGEM.AsInteger > 0 then
      QBuscaItensOrigemCALC_DESCRICAO.AsString := QBuscaItensOrigemDESC_CUPOM.AsString + ' ' + 'TRANSF. DA MESA ' + QBuscaItensOrigemMESA_ORIGEM.AsString
   else
      QBuscaItensOrigemCALC_DESCRICAO.AsString := QBuscaItensOrigemDESC_CUPOM.AsString;
end;

procedure TFrmTransfMesa.BtnTransfTudoClick(Sender: TObject);
begin
   if trim(EdtOrigem.Text) = '' then
      begin
         showmessage('Digite a Mesa Origem');
         EdtOrigem.SetFocus;
         exit;
      end;

   if trim(EdtDestino.Text) = '' then
      begin
         showmessage('Digite a Mesa Destino');
         EdtDestino.SetFocus;
         exit;
      end;

   iCodigoOrigem  := MesaAberta(iedtOrigem);
   iCodigoDestino := MesaAberta(iedtDestino);

   if iCodigoOrigem = 0 then
      begin
         showmessage('Mesa de Origem n�o Aberta');
         EdtOrigem.SetFocus;
         exit;
         abort;
      end;

   if iCodigoDestino = 0 then
      begin
         if Application.MessageBox('Confirma a transfer�ncia da mesa?', 'Aten��o', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
            begin
               if dm.IBTRServer.Active then
                  dm.IBTRServer.Commit;
               dm.IBTRServer.StartTransaction;
               try
                 try
                   with QTransf do
                      begin
                         close;
                         sql.Clear;
                         sql.Text:= 'UPDATE CONTA_CLIENTE  ' +
                                    'SET CONTA = :CONTA, CONTA_ORIGEM = :ORIGEM ' +
                                    'WHERE CODIGO = :COD';
                         Parambyname('conta').AsInteger  := iedtDestino;
                         Parambyname('cod').AsInteger    := iCodigoOrigem;
                         Parambyname('origem').AsInteger := iedtOrigem;
                         ExecSQL;

                         close;
                         sql.Text:= 'UPDATE ITENS_CONTA_CLIENTE ' +
                                    'SET CONTA_ORIGEM = :ORIGEM ' +
                                    'WHERE CODIGO = :COD';
                         Parambyname('origem').AsInteger := iedtOrigem;
                         Parambyname('cod').AsInteger    := iCodigoOrigem;
                         ExecSQL;

                         close;
                      end;
                   dm.IBTRServer.Commit;
                   showmessage('Troca efetuada com sucesso');
                   AtualizaDataMesa( iCodigoOrigem, iCodigoDestino );
                   FrmMesas.EdtMesa.Text:= EdtDestino.text;
                 except
                   dm.IBTRServer.Rollback;
                   showmessage('Erro ao Transferir a Mesa');
                 end;
               finally
                 QTransf.Close;
               end;
            end;
      end
   else
      begin
         if application.MessageBox(pchar('Mesa ' + EdtDestino.Text + ' Ocupada, Deseja juntar as Mesas?'), 'Mesa Ocupada', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
            begin
               if dm.IBTRServer.Active then
                  dm.IBTRServer.Commit;
               dm.IBTRServer.StartTransaction;
               try
                 try
                   with IBSPTransf do
                      begin
                         close;
                         Parambyname('newcod').AsInteger:= iCodigoDestino;
                         Parambyname('oldcod').AsInteger:= iCodigoOrigem;
                         ExecProc;
                      end;
                   dm.IBTRServer.Commit;
                   AtualizaDataMesa( iCodigoOrigem, iCodigoDestino );
                   FrmMesas.EdtMesa.Text:= EdtDestino.text;
                 except
                   dm.IBTRServer.Rollback;
                   showmessage('Erro ao Juntar as Mesas');
                 end;
               finally
                 IBSPTransf.Close;
               end;
            end;
      end;
   FrmMesas.EdtMesa.Text:= EdtDestino.Text;
   FrmMesas.EdtMesaExit(sender);
   close;
end;

procedure TFrmTransfMesa.BtnTransfItemClick(Sender: TObject);

var iAuxCodigo : integer;
    iAuxOrdem  : integer;
label
    VerificaMesa;
begin
      if trim(EdtOrigem.Text) = '' then
      begin
         showmessage('Digite a Mesa Origem');
         EdtOrigem.SetFocus;
         exit;
      end;

   if trim(EdtDestino.Text) = '' then
      begin
         showmessage('Digite a Mesa Destino');
         EdtDestino.SetFocus;
         exit;
      end;

   iCodigoOrigem  := MesaAberta(iedtOrigem);
   iCodigoDestino := MesaAberta(iedtDestino);

   if iCodigoOrigem = 0 then
      begin
         showmessage('Mesa de Origem n�o Aberta');
         EdtOrigem.SetFocus;
         exit;
         abort;
      end;

   if not (QBuscaItensOrigem.State = dsBrowse) then
      exit;

   if QBuscaItensOrigemCANCELADO.AsInteger = 1 then
      begin
         showmessage('Item Cancelado n�o pode ser transferido');
         exit;
      end;

   { verifica se tem item selecionado }
   VerificaMesa:
   if iCodigoDestino = 0 then
      begin
         if Application.MessageBox('Deseja Abrir a Mesa Destino?', 'Aten��o', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
            begin
               if dm.IBTRServer.Active then
                  dm.IBTRServer.Commit;
               dm.IBTRServer.StartTransaction;
               try
                 try
                   with QInsMesa do
                      begin
                         close;
                         Parambyname('data').AsDate      := date;
                         Parambyname('hora').AsTime      := now;
                         Parambyname('conta').AsInteger  := strtoint(EdtDestino.Text);
                         Parambyname('codcai').AsInteger := iCaixa;
                         Parambyname('codemp').AsInteger := iEmp;
                         open;
                         iCodigoDestino:= QInsMesaCODIGO.AsInteger;

                      end;
                   dm.IBTRServer.Commit;
                 except
                   dm.IBTRServer.Rollback;
                   showmessage('Erro ao Abrir a Mesa');
                   Exit;
                 end;
               finally
                 QInsMesa.Close;

               end;
               goto VerificaMesa;
            end;
      end
   else
      begin
         if application.MessageBox('Confirma a Transfer�ncia do Item', 'Mesa Ocupada', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton1) = 6 then
            begin
               iAuxCodigo := QBuscaItensOrigemCODIGO.AsInteger;
               iAuxOrdem  := QBuscaItensOrigemORDEM.AsInteger;

               { gravando o item na mesa destino }
               if dm.IBTRServer.Active then
                  dm.IBTRServer.Commit;
               dm.IBTRServer.StartTransaction;
               try
                 try
                   with dm.QConsultaServer do
                      begin
                         close;
                         sql.Clear;
                         sql.Add('INSERT INTO ITENS_CONTA_CLIENTE (CODIGO, ORDEM, COD_PRO, COD_VEND, ' +
                                'QUANT, VALOR, COD_EMP, CANCELADO, CONTA_ORIGEM) ' +
                                 'VALUES(:1, :2, :3, :4, :5, :6, :7, :8, :9)');
                         Parambyname('1').AsInteger  := iCodigoDestino;
                         Parambyname('2').AsInteger  := OrdemItemDestino(iCodigoDestino);
                         Parambyname('3').AsInteger  := QBuscaItensOrigemCOD_PRO.AsInteger;
                         Parambyname('4').AsInteger  := QBuscaItensOrigemCOD_VEND.AsInteger;
                         Parambyname('5').AsCurrency := QBuscaItensOrigemQUANT.AsCurrency;
                         Parambyname('6').AsCurrency := QBuscaItensOrigemVALOR.AsCurrency;
                         Parambyname('7').AsInteger  := QBuscaItensOrigemCOD_EMP.AsInteger;
                         Parambyname('8').AsInteger  := QBuscaItensOrigemCANCELADO.AsInteger;
                         Parambyname('9').AsInteger  := iedtOrigem;
                         ExecSQL;
                      end;
                   dm.IBTRServer.Commit;
                 except
                   dm.IBTRServer.Rollback;
                   showmessage('Erro ao Gravar o Item');
                 end;
               finally
                 dm.QConsultaServer.Close;
               end;

               { deletando o item da mesa Origem }
               if dm.IBTRServer.Active then
                  dm.IBTRServer.Commit;
               dm.IBTRServer.StartTransaction;
               try
                 try
                   with dm.QConsultaServer do
                      begin
                         close;
                         sql.Clear;
                         sql.Text:= 'DELETE FROM ITENS_CONTA_CLIENTE ' +
                                    'WHERE CODIGO = :COD AND ORDEM = :ORD';
                         Parambyname('cod').AsInteger  := iAuxCodigo;
                         Parambyname('ord').AsInteger  := iAuxOrdem;
                         ExecSQL;
                      end;
                   dm.IBTRServer.Commit;
                 except
                   dm.IBTRServer.Rollback;
                   showmessage('Erro ao Excluir o Item da Mesa Origem');
                 end;
               finally
                 dm.QConsultaServer.Close;
                 BtnOK.Click;
               end;
               AtualizaDataMesa( iCodigoOrigem, iCodigoDestino );
            end;
      end;
end;

function TFrmTransfMesa.OrdemItemDestino(const iCodigoContaCliente : integer) : integer;
begin
   if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
   DM.IBTransaction.StartTransaction;
   with QOrdem do
      begin
         close;
         parambyname('codigo').AsInteger:= iCodigoContaCliente;
         open;
         result:= QOrdemORDEM.AsInteger + 1;
      end;
   DM.IBTransaction.Commit;
   QOrdem.close;
end;

end.
