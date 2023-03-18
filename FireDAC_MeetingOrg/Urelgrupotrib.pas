unit Urelgrupotrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzRadGrp, rxToolEdit, Mask, RXCtrls, StdCtrls, SUIButton,
  ExtCtrls, aDvOfficePager, FMTBcd, SqlExpr, DB, Provider, DBClient, Grids,
  XDBGrids;

type
  TFormRelGrupoT = class(TForm)
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
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    RxLabel2: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    RxLabel1: TRxLabel;
    Grupo_Trib: TComboEdit;
    Panel6: TPanel;
    D_grupo_t: TRxLabel;
    RzRadioGroup1: TRzRadioGroup;
    CDS_RELGRUPO: TClientDataSet;
    SQL_RELGRUPO: TDataSetProvider;
    DTS_RELGRUPO: TDataSource;
    SQLD_RELGRUPO: TSQLDataSet;
    SQLD_RELGRUPOCODIGO_BARRAS: TStringField;
    SQLD_RELGRUPOREFERENCIA: TStringField;
    SQLD_RELGRUPOGRUPO_TRIBUTACAO: TIntegerField;
    SQLD_RELGRUPONR_SEQUENCIA: TIntegerField;
    SQLD_RELGRUPONR_NOTA: TIntegerField;
    SQLD_RELGRUPOCOD_PRODUTO: TStringField;
    SQLD_RELGRUPOCOD_NCM: TStringField;
    SQLD_RELGRUPODESCRICAO_PRODUTO: TStringField;
    SQLD_RELGRUPOPROD_SERV: TStringField;
    SQLD_RELGRUPOQT_PRODUTO: TFMTBCDField;
    SQLD_RELGRUPOVL_UNITARIO: TFMTBCDField;
    SQLD_RELGRUPOVL_TOTAL: TFMTBCDField;
    SQLD_RELGRUPODT_LANCAMENTO: TDateField;
    SQLD_RELGRUPOPESO_LIQUIDO: TFloatField;
    SQLD_RELGRUPOCD_ATUALIZACAO: TIntegerField;
    SQLD_RELGRUPOCST: TStringField;
    SQLD_RELGRUPOPC_RED_BASE_ICM: TFMTBCDField;
    SQLD_RELGRUPOALIQ_ICM: TFMTBCDField;
    SQLD_RELGRUPOALIQ_ICM_SUBST: TFMTBCDField;
    SQLD_RELGRUPOALIQ_IPI: TFMTBCDField;
    SQLD_RELGRUPOALIQ_ISS: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_ICM: TFMTBCDField;
    SQLD_RELGRUPOVL_ICM: TFMTBCDField;
    SQLD_RELGRUPOVL_ICM_SUBST: TFMTBCDField;
    SQLD_RELGRUPOVL_IPI: TFMTBCDField;
    SQLD_RELGRUPOVL_ISS: TFMTBCDField;
    SQLD_RELGRUPODT_ALTERACAO: TDateField;
    SQLD_RELGRUPODESC_UNIDADE: TStringField;
    SQLD_RELGRUPOPERC_DESCONTO: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_ICM_SUBST: TFMTBCDField;
    SQLD_RELGRUPOCD_CONTA: TIntegerField;
    SQLD_RELGRUPOCFOP: TStringField;
    SQLD_RELGRUPOVL_DESCONTO: TFMTBCDField;
    SQLD_RELGRUPOVL_CONTABIL: TFMTBCDField;
    SQLD_RELGRUPOVL_OUTROS: TFMTBCDField;
    SQLD_RELGRUPOVL_ISENTO: TFMTBCDField;
    SQLD_RELGRUPOALIQ_PIS: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_PIS: TFMTBCDField;
    SQLD_RELGRUPOVL_PIS: TFMTBCDField;
    SQLD_RELGRUPOALIQ_COFINS: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_COFINS: TFMTBCDField;
    SQLD_RELGRUPOVL_COFINS: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_ISS: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_IPI: TFMTBCDField;
    SQLD_RELGRUPOALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    SQLD_RELGRUPOVL_ICM_PROPRIO_ST: TFMTBCDField;
    SQLD_RELGRUPOALIQ_ICM_SUBST_REAL: TFMTBCDField;
    SQLD_RELGRUPOVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    SQLD_RELGRUPOVL_ICM_SUBST_REAL: TFMTBCDField;
    SQLD_RELGRUPOITEN: TIntegerField;
    SQLD_RELGRUPOCODIGO_PROD: TIntegerField;
    SQLD_RELGRUPOCST_PIS: TStringField;
    SQLD_RELGRUPOCST_COFINS: TStringField;
    SQLD_RELGRUPOCST_IPI: TStringField;
    SQLD_RELGRUPODT_EMISSAO: TDateField;
    SQLD_RELGRUPOSTATUS_CANCELADO: TStringField;
    SQLD_RELGRUPOSTATUS: TStringField;
    CDS_RELGRUPOCODIGO_BARRAS: TStringField;
    CDS_RELGRUPOREFERENCIA: TStringField;
    CDS_RELGRUPOGRUPO_TRIBUTACAO: TIntegerField;
    CDS_RELGRUPONR_SEQUENCIA: TIntegerField;
    CDS_RELGRUPONR_NOTA: TIntegerField;
    CDS_RELGRUPOCOD_PRODUTO: TStringField;
    CDS_RELGRUPOCOD_NCM: TStringField;
    CDS_RELGRUPODESCRICAO_PRODUTO: TStringField;
    CDS_RELGRUPOPROD_SERV: TStringField;
    CDS_RELGRUPOQT_PRODUTO: TFMTBCDField;
    CDS_RELGRUPOVL_UNITARIO: TFMTBCDField;
    CDS_RELGRUPOVL_TOTAL: TFMTBCDField;
    CDS_RELGRUPODT_LANCAMENTO: TDateField;
    CDS_RELGRUPOPESO_LIQUIDO: TFloatField;
    CDS_RELGRUPOCD_ATUALIZACAO: TIntegerField;
    CDS_RELGRUPOCST: TStringField;
    CDS_RELGRUPOPC_RED_BASE_ICM: TFMTBCDField;
    CDS_RELGRUPOALIQ_ICM: TFMTBCDField;
    CDS_RELGRUPOALIQ_ICM_SUBST: TFMTBCDField;
    CDS_RELGRUPOALIQ_IPI: TFMTBCDField;
    CDS_RELGRUPOALIQ_ISS: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_ICM: TFMTBCDField;
    CDS_RELGRUPOVL_ICM: TFMTBCDField;
    CDS_RELGRUPOVL_ICM_SUBST: TFMTBCDField;
    CDS_RELGRUPOVL_IPI: TFMTBCDField;
    CDS_RELGRUPOVL_ISS: TFMTBCDField;
    CDS_RELGRUPODT_ALTERACAO: TDateField;
    CDS_RELGRUPODESC_UNIDADE: TStringField;
    CDS_RELGRUPOPERC_DESCONTO: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_ICM_SUBST: TFMTBCDField;
    CDS_RELGRUPOCD_CONTA: TIntegerField;
    CDS_RELGRUPOCFOP: TStringField;
    CDS_RELGRUPOVL_DESCONTO: TFMTBCDField;
    CDS_RELGRUPOVL_CONTABIL: TFMTBCDField;
    CDS_RELGRUPOVL_OUTROS: TFMTBCDField;
    CDS_RELGRUPOVL_ISENTO: TFMTBCDField;
    CDS_RELGRUPOALIQ_PIS: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_PIS: TFMTBCDField;
    CDS_RELGRUPOVL_PIS: TFMTBCDField;
    CDS_RELGRUPOALIQ_COFINS: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_COFINS: TFMTBCDField;
    CDS_RELGRUPOVL_COFINS: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_ISS: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_IPI: TFMTBCDField;
    CDS_RELGRUPOALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    CDS_RELGRUPOVL_ICM_PROPRIO_ST: TFMTBCDField;
    CDS_RELGRUPOALIQ_ICM_SUBST_REAL: TFMTBCDField;
    CDS_RELGRUPOVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    CDS_RELGRUPOVL_ICM_SUBST_REAL: TFMTBCDField;
    CDS_RELGRUPOITEN: TIntegerField;
    CDS_RELGRUPOCODIGO_PROD: TIntegerField;
    CDS_RELGRUPOCST_PIS: TStringField;
    CDS_RELGRUPOCST_COFINS: TStringField;
    CDS_RELGRUPOCST_IPI: TStringField;
    CDS_RELGRUPODT_EMISSAO: TDateField;
    CDS_RELGRUPOSTATUS_CANCELADO: TStringField;
    CDS_RELGRUPOSTATUS: TStringField;
    procedure Grupo_TribButtonClick(Sender: TObject);
    procedure Grupo_TribExit(Sender: TObject);
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
  FormRelGrupoT: TFormRelGrupoT;

implementation

uses ModulodeDados, UConsGRP, Principal, UGrupoTributacao, URelatorioGtrib;

{$R *.dfm}

procedure TFormRelGrupoT.Grupo_TribButtonClick(Sender: TObject);
begin
     FormConsGrupoT:=TFormConsGrupoT.Create(self);
      FormConsGrupoT.ShowModal;
      Grupo_Trib.Text := DM.Sds_Grupo_tribCod_grupo.text;
      D_grupo_t.Caption :=  DM.Sds_Grupo_tribDescricao.text;
end;

procedure TFormRelGrupoT.Grupo_TribExit(Sender: TObject);
begin
IF Grupo_Trib.TEXT > '999999' then
begin
  Grupo_Trib.Text := '';
  Grupo_Trib.SetFocus;
end ELSE
if Grupo_Trib.Text = '' then
begin
Grupo_Trib.Clear;
end else
IF Grupo_Trib.TEXT > '' then
begin
DM.Sds_grupo_trib.Open;
DM.Sds_grupo_trib.Refresh;

if (DM.Sds_grupo_trib.Locate('COD_GRUPO', VarArrayOf([Grupo_Trib.Text]),[])) then
begin
D_GRUPO_T.Caption:= dm.sds_Grupo_tribdESCRICAO.TEXT;
Grupo_Trib.Text:= dm.sds_Grupo_tribCOD_GRUPO.TEXT;
btnSuibtton1.SetFocus;
end else
begin
FormPrincipal.MsgAtencao.HTMLText.text:= 'Grupo de Tributacao Inexistente !!!';
FormPrincipal.MsgAtencao.Execute;
if FormTributacao=nil   then
    begin
     FormTributacao:=TFormTributacao.Create(self);
      FormTributacao.Showmodal;
      end;
Grupo_Trib.Clear;
D_GRUPO_T.Caption:= dm.sds_Grupo_tribdESCRICAO.TEXT;
Grupo_Trib.Text:= dm.sds_Grupo_tribCod_grupo.TEXT;
btnSuibtton1.SetFocus;
end;
end;
end;

procedure TFormRelGrupoT.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
Grupo_Trib.Clear;
D_GRUPO_T.CAPTION := '';
end;

procedure TFormRelGrupoT.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormRelGrupoT.btnSuibtton1Click(Sender: TObject);
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
 SQLD_RELGRUPO.Params.Parambyname('DATAI').AsDate   := DateEdit1.DATE;
 SQLD_RELGRUPO.Params.Parambyname('DATAF').AsDate    := DateEdit2.DATE;
 SQLD_RELGRUPO.Params.Parambyname('GRUPO').AsInteger    := StrToInt(Grupo_Trib.TEXT);
 IF RzRadioGroup1.ItemIndex = 0 THEN
 SQLD_RELGRUPO.Params.Parambyname('STAT').AsString       := 'S'
 else
 SQLD_RELGRUPO.Params.Parambyname('STAT').AsString       := 'N';
 SQLD_RELGRUPO.Open;

 CDS_RELGRUPO.Open;


FormRelatorioGtrib := TFormRelatorioGtrib.Create(self);
FormRelatorioGtrib.RLReport1.Prepare;
FormRelatorioGtrib.RLReport1.Preview();
end;
end;

procedure TFormRelGrupoT.FormKeyPress(Sender: TObject; var Key: Char);
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
