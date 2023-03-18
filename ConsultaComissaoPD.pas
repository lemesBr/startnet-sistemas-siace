unit ConsultaComissaoPD;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask,  Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes,  Graphics,  Forms, Dialogs,DBCtrls, DBActns, ActnList,
  ComCtrls, ToolWin, Db, buttons, Menus,IBCustomDataSet, IBQuery,
  IBUpdateSQL, DBClient, SimpleDS, FMTBcd, SqlExpr, RXCtrls,
  SUIDlg, RxToolEdit;

type
  TFormConsultaComissaoPD = class(TForm)
    Panel6: TPanel;
    Navigator3: TsuiDBNavigator;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    suiDBNavigator6: TsuiDBNavigator;
    Panel5: TPanel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    suiButton8: TsuiButton;
    Panel7: TPanel;
    Panel18: TPanel;
    suiDBGrid5: TsuiDBGrid;
    Panel19: TPanel;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    RxLabel23: TRxLabel;
    RxLabel25: TRxLabel;
    suiDBEdit21: TsuiDBEdit;
    suiDBEdit22: TsuiDBEdit;
    suiDBEdit23: TsuiDBEdit;
    suiDBEdit24: TsuiDBEdit;
    suiDBEdit25: TsuiDBEdit;
    suiDBEdit26: TsuiDBEdit;
    suiDBEdit27: TsuiDBEdit;
    suiDBEdit28: TsuiDBEdit;
    suiDBEdit29: TsuiDBEdit;
    Panel21: TPanel;
    suiDBGrid6: TsuiDBGrid;
    Edit1: TComboEdit;
    Panel1: TPanel;
    suiButton2: TsuiButton;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    Panel2: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure DateEdit5Enter(Sender: TObject);
    procedure DateEdit5Exit(Sender: TObject);
    procedure DateEdit6Enter(Sender: TObject);
    procedure DateEdit6Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    
  private
  
  public

  end;

var
  FormConsultaComissaoPD: TFormConsultaComissaoPD;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas3, ConsUsuarios,
  Principal;



{$R *.DFM}

procedure TFormConsultaComissaoPD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsultaComissaoPD:=nil;
end;

procedure TFormConsultaComissaoPD.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaComissaoPD.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaComissaoPD.FormShow(Sender: TObject);
begin
    DMC3.SQLD_PedidosUsuario.Active:=FALSE;
    DMC3.CDS_PedidosUsuario.Active:=FALSE;
    DMC3.SDS_ItensPedidoUsuario.Active:=FALSE;
    RxLabel9.Caption:= '';

end;

procedure TFormConsultaComissaoPD.suiButton8Click(Sender: TObject);
var
X: Real;
begin
Try
    DMC3.SQLD_PedidosUsuario.Active:=False;
    DMC3.CDS_PedidosUsuario.Active:=False;
    DMC3.SQLD_PedidosUsuario.Params[0].AsDate:=DateEdit5.Date;
    DMC3.SQLD_PedidosUsuario.Params[1].AsDate:=DateEdit6.Date;
    DMC3.SQLD_PedidosUsuario.Params[2].AsString:=Edit1.Text;
    DMC3.SQLD_PedidosUsuario.Active:=True;
    DMC3.CDS_PedidosUsuario.Active:=True;
    DMC3.SDS_ItensPedidoUsuario.Active:=True;
    X:= X + DMC3.CDS_PedidosUsuario.FieldByname('VALOR_COMISSAO').AsFloat;
    DMC3.CDS_PedidosUsuario.Next;
    RXLabel9.Caption:= FormatFloat('R$: ##,##0.00',X);
    While not DMC3.CDS_PedidosUsuario.Eof do
    begin
    X:= X + DMC3.CDS_PedidosUsuario.FieldByname('VALOR_COMISSAO').AsFloat;
    DMC3.CDS_PedidosUsuario.Next;
    RXLabel9.Caption:= FormatFloat('R$: ##,##0.00',X);
    end;
    DMC3.CDS_PedidosUsuario.First;

    If  DMC3.CDS_PedidosUsuario.EOF then
  Begin
       MSG_NR.ShowModal;
  end;
        Except
     MSG_ERRO.ShowModal;
   end;
end;

procedure TFormConsultaComissaoPD.Edit1ButtonClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      Edit1.Text:= DM.SDS_UsuariosUSUARIO.Text;
      suiButton8.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormConsultaComissaoPD.DateEdit5Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaComissaoPD.DateEdit5Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaComissaoPD.DateEdit6Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaComissaoPD.DateEdit6Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaComissaoPD.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaComissaoPD.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.
