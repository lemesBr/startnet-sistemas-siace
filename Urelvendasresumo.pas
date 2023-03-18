unit Urelvendasresumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, Mask, RXCtrls, StdCtrls, SUIButton,
  ExtCtrls,  FMTBcd, SqlExpr, DB, Provider, DBClient, Grids,
  XDBGrids, RxToolEdit, AdvOfficePager;

type
  TFormRelVendaResumo = class(TForm)
    FDvOfficePager11: TAdvOfficePage;
    Bevel1: TBevel;
    Image1: TImage;
    Edit2: TEdit;
    Panel3: TPanel;
    btnSuibtton1: TsuiButton;
    suiButton3: TsuiButton;
    suiButton1: TsuiButton;
    Panel5: TPanel;
    Label1: TLabel;
    CDS_RELGRUPO: TClientDataSet;
    SQL_RELGRUPO: TDataSetProvider;
    DTS_RELGRUPO: TDataSource;
    SQLD_RELGRUPO: TSQLDataSet;
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RzRadioGroup1: TRzRadioGroup;
    SQLD_RELGRUPOCODIGO: TIntegerField;
    SQLD_RELGRUPOVALOR_ITENS: TFMTBCDField;
    SQLD_RELGRUPOENC_FINANCEIRO: TFMTBCDField;
    SQLD_RELGRUPOVALOR_DESCONTO: TFMTBCDField;
    SQLD_RELGRUPOVALOR_TOTAL: TFMTBCDField;
    SQLD_RELGRUPOVALOR_COMISSAO: TFMTBCDField;
    SQLD_RELGRUPOUSUARIO: TStringField;
    SQLD_RELGRUPODATA_PEDIDO: TDateField;
    SQLD_RELGRUPODATA_ENTREGA: TDateField;
    SQLD_RELGRUPOCODIGO_CLIENTE: TIntegerField;
    SQLD_RELGRUPONOME_CLIENTE: TStringField;
    SQLD_RELGRUPOPAGAMENTO: TStringField;
    SQLD_RELGRUPOSTATUS: TStringField;
    SQLD_RELGRUPOSITUACAO: TStringField;
    SQLD_RELGRUPOUSUARIO_ENTREGA: TStringField;
    SQLD_RELGRUPOTP: TStringField;
    SQLD_RELGRUPOOBSERVACOES: TStringField;
    SQLD_RELGRUPOCOD_VENDEDOR: TIntegerField;
    SQLD_RELGRUPOCOD_PAGTO: TIntegerField;
    SQLD_RELGRUPON_CUPOM: TStringField;
    SQLD_RELGRUPON_ECF: TStringField;
    SQLD_RELGRUPOCOD_EMPRESA: TIntegerField;
    SQLD_RELGRUPOHORA: TTimeField;
    SQLD_RELGRUPOVALOR_ACRESCIMOS: TFMTBCDField;
    SQLD_RELGRUPOCOD_ORCAMENTO: TIntegerField;
    SQLD_RELGRUPOCOD_PEDIDO: TIntegerField;
    SQLD_RELGRUPOCOD_OS: TSmallintField;
    SQLD_RELGRUPONUM_NOTA: TIntegerField;
    SQLD_RELGRUPOSERIE_NOTA: TStringField;
    SQLD_RELGRUPOENDERECO: TStringField;
    SQLD_RELGRUPOCPF_CNPJ: TStringField;
    SQLD_RELGRUPORG_IE: TStringField;
    SQLD_RELGRUPOFONE: TStringField;
    SQLD_RELGRUPOCIDADE: TStringField;
    SQLD_RELGRUPOBAIRRO: TStringField;
    SQLD_RELGRUPON_PARTIDA: TStringField;
    SQLD_RELGRUPOPROPRIEDADE: TStringField;
    SQLD_RELGRUPOQUANT_VENDIDA: TFMTBCDField;
    SQLD_RELGRUPOSALDO_VENDIDO: TFMTBCDField;
    SQLD_RELGRUPOMED_VETERINARIO: TStringField;
    SQLD_RELGRUPODATA_VACINA: TDateField;
    SQLD_RELGRUPOVALOR_AVISTA: TFMTBCDField;
    SQLD_RELGRUPOVALOR_PRAZO: TFMTBCDField;
    SQLD_RELGRUPOUF: TStringField;
    SQLD_RELGRUPOCOD_IBGE: TStringField;
    SQLD_RELGRUPOCEP: TStringField;
    SQLD_RELGRUPONUMERO: TStringField;
    SQLD_RELGRUPOTIPO: TStringField;
    SQLD_RELGRUPOVALOR_PAGO: TFMTBCDField;
    SQLD_RELGRUPOVALOR_TROCO: TFMTBCDField;
    SQLD_RELGRUPOENTREGADOR: TStringField;
    SQLD_RELGRUPOTIPO_PEDIDO: TStringField;
    SQLD_RELGRUPOFECHADO: TStringField;
    SQLD_RELGRUPOMESA: TStringField;
    SQLD_RELGRUPOREFERENCIA: TStringField;
    SQLD_RELGRUPOCELULAR: TStringField;
    SQLD_RELGRUPOPROD_RURAL: TStringField;
    SQLD_RELGRUPOIE_PRODUTOR: TStringField;
    SQLD_RELGRUPOVLR_PIS: TFMTBCDField;
    SQLD_RELGRUPOVLR_COFINS: TFMTBCDField;
    SQLD_RELGRUPOKM: TIntegerField;
    SQLD_RELGRUPOCHAVE_FP: TStringField;
    SQLD_RELGRUPOCHAVE_FP_CANCEL: TStringField;
    SQLD_RELGRUPOCUPON_CANCELADO: TStringField;
    SQLD_RELGRUPOCRZ: TIntegerField;
    SQLD_RELGRUPOCHEK_BOX: TStringField;
    SQLD_RELGRUPOANO: TIntegerField;
    SQLD_RELGRUPOMODELO_NF: TStringField;
    SQLD_RELGRUPOCFOP_NF: TStringField;
    CDS_RELGRUPOCODIGO: TIntegerField;
    CDS_RELGRUPOVALOR_ITENS: TFMTBCDField;
    CDS_RELGRUPOENC_FINANCEIRO: TFMTBCDField;
    CDS_RELGRUPOVALOR_DESCONTO: TFMTBCDField;
    CDS_RELGRUPOVALOR_TOTAL: TFMTBCDField;
    CDS_RELGRUPOVALOR_COMISSAO: TFMTBCDField;
    CDS_RELGRUPOUSUARIO: TStringField;
    CDS_RELGRUPODATA_PEDIDO: TDateField;
    CDS_RELGRUPODATA_ENTREGA: TDateField;
    CDS_RELGRUPOCODIGO_CLIENTE: TIntegerField;
    CDS_RELGRUPONOME_CLIENTE: TStringField;
    CDS_RELGRUPOPAGAMENTO: TStringField;
    CDS_RELGRUPOSTATUS: TStringField;
    CDS_RELGRUPOSITUACAO: TStringField;
    CDS_RELGRUPOUSUARIO_ENTREGA: TStringField;
    CDS_RELGRUPOTP: TStringField;
    CDS_RELGRUPOOBSERVACOES: TStringField;
    CDS_RELGRUPOCOD_VENDEDOR: TIntegerField;
    CDS_RELGRUPOCOD_PAGTO: TIntegerField;
    CDS_RELGRUPON_CUPOM: TStringField;
    CDS_RELGRUPON_ECF: TStringField;
    CDS_RELGRUPOCOD_EMPRESA: TIntegerField;
    CDS_RELGRUPOHORA: TTimeField;
    CDS_RELGRUPOVALOR_ACRESCIMOS: TFMTBCDField;
    CDS_RELGRUPOCOD_ORCAMENTO: TIntegerField;
    CDS_RELGRUPOCOD_PEDIDO: TIntegerField;
    CDS_RELGRUPOCOD_OS: TSmallintField;
    CDS_RELGRUPONUM_NOTA: TIntegerField;
    CDS_RELGRUPOSERIE_NOTA: TStringField;
    CDS_RELGRUPOENDERECO: TStringField;
    CDS_RELGRUPOCPF_CNPJ: TStringField;
    CDS_RELGRUPORG_IE: TStringField;
    CDS_RELGRUPOFONE: TStringField;
    CDS_RELGRUPOCIDADE: TStringField;
    CDS_RELGRUPOBAIRRO: TStringField;
    CDS_RELGRUPON_PARTIDA: TStringField;
    CDS_RELGRUPOPROPRIEDADE: TStringField;
    CDS_RELGRUPOQUANT_VENDIDA: TFMTBCDField;
    CDS_RELGRUPOSALDO_VENDIDO: TFMTBCDField;
    CDS_RELGRUPOMED_VETERINARIO: TStringField;
    CDS_RELGRUPODATA_VACINA: TDateField;
    CDS_RELGRUPOVALOR_AVISTA: TFMTBCDField;
    CDS_RELGRUPOVALOR_PRAZO: TFMTBCDField;
    CDS_RELGRUPOUF: TStringField;
    CDS_RELGRUPOCOD_IBGE: TStringField;
    CDS_RELGRUPOCEP: TStringField;
    CDS_RELGRUPONUMERO: TStringField;
    CDS_RELGRUPOTIPO: TStringField;
    CDS_RELGRUPOVALOR_PAGO: TFMTBCDField;
    CDS_RELGRUPOVALOR_TROCO: TFMTBCDField;
    CDS_RELGRUPOENTREGADOR: TStringField;
    CDS_RELGRUPOTIPO_PEDIDO: TStringField;
    CDS_RELGRUPOFECHADO: TStringField;
    CDS_RELGRUPOMESA: TStringField;
    CDS_RELGRUPOREFERENCIA: TStringField;
    CDS_RELGRUPOCELULAR: TStringField;
    CDS_RELGRUPOPROD_RURAL: TStringField;
    CDS_RELGRUPOIE_PRODUTOR: TStringField;
    CDS_RELGRUPOVLR_PIS: TFMTBCDField;
    CDS_RELGRUPOVLR_COFINS: TFMTBCDField;
    CDS_RELGRUPOKM: TIntegerField;
    CDS_RELGRUPOCHAVE_FP: TStringField;
    CDS_RELGRUPOCHAVE_FP_CANCEL: TStringField;
    CDS_RELGRUPOCUPON_CANCELADO: TStringField;
    CDS_RELGRUPOCRZ: TIntegerField;
    CDS_RELGRUPOCHEK_BOX: TStringField;
    CDS_RELGRUPOANO: TIntegerField;
    CDS_RELGRUPOMODELO_NF: TStringField;
    CDS_RELGRUPOCFOP_NF: TStringField;
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btnSuibtton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVendaResumo: TFormRelVendaResumo;

implementation

uses ModulodeDados, Principal, UrelVendas_Resumo;

{$R *.dfm}

procedure TFormRelVendaResumo.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
end;

procedure TFormRelVendaResumo.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormRelVendaResumo.btnSuibtton1Click(Sender: TObject);
begin
  if (DateEdit1.Text = '  /  /    ') and (DateEdit2.Text = '  /  /    ') then
  begin
    ShowMessage('Favor informar um periodo a ser impresso');
  end else
  If DateEdit2.Date < DateEdit1.Date Then
  begin
    ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
    DateEdit2.Date := DateEdit1.Date;
  end  Else
  begin
 CDS_RELGRUPO.Close;
 SQLD_RELGRUPO.Close;
 IF RzRadioGroup1.ItemIndex = 0 THEN
 SQLD_RELGRUPO.CommandText :='select * from pedidos where num_nota > 0  and data_pedido between :datai and :dataf order by data_pedido Asc'
 else
 SQLD_RELGRUPO.CommandText :='select * from pedidos where data_pedido between :datai and :dataf order by data_pedido Asc';
 SQLD_RELGRUPO.Params.Parambyname('DATAI').AsDate   := DateEdit1.DATE;
 SQLD_RELGRUPO.Params.Parambyname('DATAF').AsDate    := DateEdit2.DATE;
 SQLD_RELGRUPO.Open;

 CDS_RELGRUPO.Open;


FormRel_vendasResumo := TFormRel_vendasResumo.Create(self);
FormRel_vendasResumo.RLReport1.Prepare;
FormRel_vendasResumo.RLReport1.PreviewModal;
end;
end;

procedure TFormRelVendaResumo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then
begin
close;
end;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.
