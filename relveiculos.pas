unit relveiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, RXCtrls, SUIButton, FMTBcd, DB,
  Provider, DBClient, SqlExpr, Grids, DBGrids, aDvGlowButton;

type
  TFormRelVeiculos = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel1: TRxLabel;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    Panel2: TPanel;
    Qry_RelIpva: TSQLQuery;
    cds_relIpva: TClientDataSet;
    cds_relIpvaNOME: TStringField;
    cds_relIpvaCOD_CLI: TIntegerField;
    cds_relIpvaNOME_CLI: TStringField;
    cds_relIpvaCOMBUSTIVEL: TStringField;
    cds_relIpvaANO: TStringField;
    cds_relIpvaPLACA: TStringField;
    cds_relIpvaUFPLACA: TStringField;
    cds_relIpvaCIDADE: TStringField;
    cds_relIpvaCHASSI: TStringField;
    cds_relIpvaCOD_CLIENTE: TIntegerField;
    cds_relIpvaISENTO_IPVA: TStringField;
    cds_relIpvaFJ_CLI: TStringField;
    cds_relIpvaENDRES_CLI: TStringField;
    cds_relIpvaBAIRES_CLI: TStringField;
    cds_relIpvaCIDRES_CLI: TStringField;
    cds_relIpvaESTRES_CLI: TStringField;
    cds_relIpvaCEPRES_CLI: TStringField;
    cds_relIpvaTELRES_CLI: TStringField;
    cds_relIpvaRENAVAM: TStringField;
    cds_relIpvaNUMRES_CLI: TStringField;
    cds_relIpvaEMAIL_CLI: TStringField;
    cds_relIpvaCODIGO: TIntegerField;
    cds_relIpvaCOR: TStringField;
    cds_relIpvaOBS1: TStringField;
    cds_relIpvaOBS2: TStringField;
    cds_relIpvaOBS3: TStringField;
    cds_relIpvaCNPJ_CLI: TStringField;
    cds_relIpvaATIVO_CLI: TStringField;
    cds_relIpvaNASCIMENTO_CLI: TDateField;
    cds_relIpvaINSC_ESTADUAL: TStringField;
    cds_relIpvaCELULAR_CLI: TStringField;
    DataSetProvider1: TDataSetProvider;
    dts_relIpva: TDataSource;
    Qry_RelIpvaNOME: TStringField;
    Qry_RelIpvaCOD_CLI: TIntegerField;
    Qry_RelIpvaNOME_CLI: TStringField;
    Qry_RelIpvaCOMBUSTIVEL: TStringField;
    Qry_RelIpvaANO: TStringField;
    Qry_RelIpvaPLACA: TStringField;
    Qry_RelIpvaUFPLACA: TStringField;
    Qry_RelIpvaCIDADE: TStringField;
    Qry_RelIpvaCHASSI: TStringField;
    Qry_RelIpvaCOD_CLIENTE: TIntegerField;
    Qry_RelIpvaISENTO_IPVA: TStringField;
    Qry_RelIpvaFJ_CLI: TStringField;
    Qry_RelIpvaENDRES_CLI: TStringField;
    Qry_RelIpvaBAIRES_CLI: TStringField;
    Qry_RelIpvaCIDRES_CLI: TStringField;
    Qry_RelIpvaESTRES_CLI: TStringField;
    Qry_RelIpvaCEPRES_CLI: TStringField;
    Qry_RelIpvaTELRES_CLI: TStringField;
    Qry_RelIpvaCODIGO: TIntegerField;
    Qry_RelIpvaRENAVAM: TStringField;
    Qry_RelIpvaNUMRES_CLI: TStringField;
    Qry_RelIpvaEMAIL_CLI: TStringField;
    Qry_RelIpvaCOR: TStringField;
    Qry_RelIpvaOBS1: TStringField;
    Qry_RelIpvaOBS2: TStringField;
    Qry_RelIpvaOBS3: TStringField;
    Qry_RelIpvaCNPJ_CLI: TStringField;
    Qry_RelIpvaATIVO_CLI: TStringField;
    Qry_RelIpvaNASCIMENTO_CLI: TDateField;
    Qry_RelIpvaINSC_ESTADUAL: TStringField;
    Qry_RelIpvaCELULAR_CLI: TStringField;
    Edit3: TEdit;
    blocalizar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVeiculos: TFormRelVeiculos;

implementation

uses ModulodeDados, relatorioVeiculos;

{$R *.dfm}

procedure TFormRelVeiculos.FormShow(Sender: TObject);
begin
dm.sds_cidades.close;
dm.sds_cidades.open;
end;

procedure TFormRelVeiculos.suiButton7Click(Sender: TObject);
var
    codveic, codveic1, cidade: string;
begin
     codveic:=edit1.text;

     codveic1:=edit2.text;

     cidade:= Edit3.Text;
  if Tag = 0 then
  begin
    cds_relIpva.Active :=FALSE;
    Qry_RelIpva.close;
    Qry_RelIpva.SQL.Clear;
    Qry_RelIpva.SQL.add('select * from V_VEICULOS where COD_CLI >0'+'');
    if codveic > '' then
    Qry_RelIpva.SQL.add('and CODIGO >='+QuotedStr(codveic)+' and CODIGO <='+QuotedStr(codveic1)+'');
    if cidade > '' then
    Qry_RelIpva.SQL.add(' and CIDADE ='+QuotedStr(cidade)+'');
    Qry_RelIpva.SQL.add(' ORDER BY NOME_CLI ASC');
    Qry_RelIpva.Open;
    cds_relIpva.Active :=TRUE;
    cds_relIpva.Filtered := false;
  //  suiButton4.Enabled := False;
  end else

  if Tag = 1 then
  begin
    cds_relIpva.Active :=FALSE;
    Qry_RelIpva.close;
    Qry_RelIpva.SQL.Clear;
    Qry_RelIpva.SQL.add('select * from V_VEICULOS where COD_CLI >0'+'');
    if codveic > '' then
    Qry_RelIpva.SQL.add('and CODIGO >='+QuotedStr(codveic)+' and CODIGO <='+QuotedStr(codveic1)+'');
    if cidade > '' then
    Qry_RelIpva.SQL.add(' and CIDADE <>'+QuotedStr(cidade)+'');
    Qry_RelIpva.SQL.add(' ORDER BY NOME_CLI ASC');
    Qry_RelIpva.Open;
    cds_relIpva.Active :=TRUE;
    cds_relIpva.Filtered := false;
  //  suiButton4.Enabled := False;
  end;


IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
begin
FormRelatoriosVeic := TFormRelatoriosVeic.Create(self);
FormRelatoriosVeic.RLReport1.Prepare;
FormRelatoriosVeic.RLReport1.PreviewModal;
end ELSE
BEGIN
 FormRelatoriosVeic := TFormRelatoriosVeic.Create(self);
 FormRelatoriosVeic.RLReport1.DefaultFilter.Destroy;
 FormRelatoriosVeic.RLReport1.Prepare;
 FormRelatoriosVeic.RLReport1.PreviewModal;
end;
end;

procedure TFormRelVeiculos.DBLookupComboBox1Exit(Sender: TObject);
begin
Edit3.Text := DBLookupComboBox1.Text;
end;

procedure TFormRelVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormRelVeiculos := nil;
end;

end.
