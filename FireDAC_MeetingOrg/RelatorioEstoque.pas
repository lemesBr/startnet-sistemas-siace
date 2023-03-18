unit RelatorioEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,ModulodeDadosRelatorios,ModulodeDados, ExtCtrls, ComCtrls, DBCtrls,
  SUIDBCtrls, SUIEdit,  SUIButton,
  Mask, rxToolEdit, SUIDlg, RpRenderHTML, RpRenderRTF, RpDefine, RpRender,
  RpRenderPDF, aDvReflectionImage, sMaskEdit, sCustomComboEdit, sTooledit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet;

type
  TFormRelatorioEstoqueAtual = class(TForm)
    suiButton8: TsuiButton;
    suiButton7: TsuiButton;
    suiButton6: TsuiButton;
    suiButton5: TsuiButton;
    suiButton4: TsuiButton;
    suiButton3: TsuiButton;
    suiButton2: TsuiButton;
    suiButton1: TsuiButton;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    ForPrincipal: TsuiDBLookupComboBox;
    Bevel1: TBevel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    LPMarca: TsuiDBLookupComboBox;
    LPGrupo: TsuiDBLookupComboBox;
    LPSubGrupo: TsuiDBLookupComboBox;
    Label6: TLabel;
    suiButton9: TsuiButton;
    Label10: TLabel;
    suiButton10: TsuiButton;
    Msge: TsuiMessageDialog;
    Msgi: TsuiMessageDialog;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderHTML1: TRvRenderHTML;
    Label11: TLabel;
    suiButton11: TsuiButton;
    img: TAdvReflectionImage;
    Label12: TLabel;
    suiButton12: TsuiButton;
    suiDBLookupComboBox2: TsuiDBLookupComboBox;
    sDateEdit1: TsDateEdit;
    Label15: TLabel;
    frxDBDataset: TfrxDBDataset;
    qrRel: TFDQuery;
    qrRelCODIGO: TStringField;
    qrRelDESCRICAO: TStringField;
    qrRelESTOQUE_POSTERIOR: TBCDField;
    qrRelVALOR_UNITARIO: TBCDField;
    qrRelVALOR_TOTAL: TFMTBCDField;
    qrRelEMPRESA: TStringField;
    qrRelEMPRESA_CNPJ: TStringField;
    qrRelEMPRESA_FONE: TStringField;
    qrRelEMPRESA_LOGO: TBlobField;
    frxReport: TfrxReport;
    Label16: TLabel;
    suiButton13: TsuiButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton8Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton6Click(Sender: TObject);
    procedure suiButton9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton10Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton11Click(Sender: TObject);
    procedure suiButton12Click(Sender: TObject);
    procedure suiButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoqueAtual: TFormRelatorioEstoqueAtual;

implementation

uses ModulodeDadosConsultas,  Principal, UInventario_custo,
  frmRelatorioInventarioCategoriaDiversas,
  frmRelatorioInventarioGruposDiversos;

{$R *.dfm}

procedure TFormRelatorioEstoqueAtual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DMC.SDS_Est_Atual_Custo.Filtered := false;
Action:=CaFree;
FormRelatorioEstoqueAtual:=nil;
end;

procedure TFormRelatorioEstoqueAtual.suiButton2Click(Sender: TObject);
begin
Try
  DMC.SDS_Estoque_Atual_Minimo.Active := false;
  DMC.SDS_Estoque_Atual_Minimo.Active := true;
  
DMC.SDS_Estoque_Atual_Minimo.Refresh;
if  DMC.SDS_Estoque_Atual_Minimo.EOF then
  Begin
       Msgi.Text:= 'Não Há Estoque Igual ou Inferior ao Estoque Mínimo';
       Msgi.ShowModal;
    end
  else
  begin
    DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Minimo',False);
    DMR.RvRelatorios.Execute;
  end;
        Except
     Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton8Click(Sender: TObject);
Var
GRP: STRING;
begin
if LPSubGrupo.Text='' then
   begin
      Msgi.Text:= 'Entre Com o Nome do Sub-Grupo';
      Msgi.ShowModal;
      LPSubGrupo.SetFocus;
      end
  else
Try
    DMC.SQLD_Estoque_Atual_SubGrupo.Active:=False;
    DMC.CDS_Estoque_Atual_SubGrupo.Active:=False;
    DMC.SQLD_Estoque_Atual_SubGrupo.Params[0].AsString:= LPSubGrupo.Text;
    DMC.SQLD_Estoque_Atual_SubGrupo.Active:=True;
    DMC.CDS_Estoque_Atual_SubGrupo.Active:=True;
    if  DMC.CDS_Estoque_Atual_SubGrupo.EOF then
  Begin
      Msgi.Text:= 'Este Sub-Grupo Não Possue Produdos no Estoque';
      Msgi.ShowModal;
     end
  else
   begin
     GRP:= DM.SDS_GruposDESCRICAO.AsString;
     DMR.RvRelatorios.SetParam('GRUPO',GRP);
     DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_SubGrupo',False);
     DMR.RvRelatorios.Execute;
  end;
      Except
      Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton7Click(Sender: TObject);
begin
if LPGrupo.Text='' then
   begin
      Msgi.Text:= 'Entre Com o Nome do Grupo de Produtos';
      Msgi.ShowModal;
      LPGrupo.SetFocus;
      end
  else
Try
    DMC.SQLD_Estoque_Atual_Grupo.Active:=False;
    DMC.CDS_Estoque_Atual_Grupo.Active:=False;
    DMC.CDS_Estoque_Atual_Grupo.Filtered:= False;
    DMC.CDS_Estoque_Atual_Grupo.Filter:= 'NOME_GRUPO = ' + QuotedStr(LPGrupo.Text);
    DMC.CDS_Estoque_Atual_Grupo.Filtered:= True;
    DMC.SQLD_Estoque_Atual_Grupo.Active:=True;
    DMC.CDS_Estoque_Atual_Grupo.Active:=True;
    if  DMC.CDS_Estoque_Atual_Grupo.EOF then
  Begin
      Msgi.Text:= 'Este Grupo Não Possue Produdos no Estoque';
      Msgi.ShowModal;
     end
  else
   begin
     DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Grupo',False);
     DMR.RvRelatorios.Execute;
  end;
      Except
      Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton5Click(Sender: TObject);
begin
if ForPrincipal.Text='' then
   begin
      Msgi.Text:= 'Entre com o Nome do Fornecedor';
      Msgi.ShowModal;
      ForPrincipal.SetFocus;
      end
  else
Try
    DMC.SQLD_Estoque_Atual_Fornecedor.Active:=False;
    DMC.CDS_Estoque_Atual_Fornecedor.Active:=False;
    DMC.SQLD_Estoque_Atual_Fornecedor.Params[0].AsString:=ForPrincipal.Text;
    DMC.SQLD_Estoque_Atual_Fornecedor.Active:=True;
    DMC.CDS_Estoque_Atual_Fornecedor.Active:=True;
    if  DMC.CDS_Estoque_Atual_Fornecedor.EOF then
  Begin
       Msgi.Text:= 'Este Fornecedor Não Possue Produdo no Estoque';
       Msgi.ShowModal;
      end
  else
   begin
      DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Fornecedor',False);
      DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end
end;

procedure TFormRelatorioEstoqueAtual.suiButton4Click(Sender: TObject);
var
DI, DF: String;
begin
Try
    DMC.SQLD_Estoque_Atual_Periodo.Active:=False;
    DMC.CDS_Estoque_Atual_Periodo.Active:=False;
    DMC.SQLD_Estoque_Atual_Periodo.Params[0].AsDate:=DateEdit1.Date;
    DMC.SQLD_Estoque_Atual_Periodo.Params[1].AsDate:=DateEdit2.Date;
    DMC.SQLD_Estoque_Atual_Periodo.Active:=True;
    DMC.CDS_Estoque_Atual_Periodo.Active:=True;
if  DMC.CDS_Estoque_Atual_Periodo.EOF then
  Begin
      Msgi.Text:= 'Nenhum Produto Foi Cadastrado Neste Período';
      Msgi.ShowModal;
    end
  else
  begin
    DI:= DateEdit1.Text;
    DF:= DateEdit2.Text;
    DMR.RvRelatorios.SetParam('DI',DI);
    DMR.RvRelatorios.SetParam('DF',DF);
    DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Periodo',False);
    DMR.RvRelatorios.Execute;
  end;
      Except
     Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton3Click(Sender: TObject);
begin
Try
DMC.SDS_Estoque_Atual_Maximo.Active := false;
DMC.SDS_Estoque_Atual_Maximo.Active := true;
DMC.SDS_Estoque_Atual_Maximo.Refresh;
if  DMC.SDS_Estoque_Atual_Maximo.EOF then
  Begin
       Msgi.Text:= 'Não Há Estoque Igual ou Superior ao Estoque Máximo';
       Msgi.ShowModal;
  end
  else
  begin
    DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Maximo',False);
    DMR.RvRelatorios.Execute;
  end;
        Except
      Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton6Click(Sender: TObject);
begin
if LPMarca.Text='' then
   begin
      Msgi.Text:= 'Entre Com o Nome da Marca do Produto';
      Msgi.ShowModal;
      LPMarca.SetFocus;
      end
  else
Try
    DMC.SQLD_Estoque_Atual_Marca.Active:=False;
    DMC.CDS_Estoque_Atual_Marca.Active:=False;
    DMC.SQLD_Estoque_Atual_Marca.Params[0].AsString:=LPMarca.Text;
    DMC.SQLD_Estoque_Atual_Marca.Active:=True;
    DMC.CDS_Estoque_Atual_Marca.Active:=True;
    if  DMC.CDS_Estoque_Atual_Marca.EOF then
  Begin
  Msgi.Text:= 'Esta Marca Não Possue Produdos no Estoque';
  Msgi.ShowModal;
  end
  else
   begin
     DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Marca',False);
     DMR.RvRelatorios.Execute;
  end;
      Except
      Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton9Click(Sender: TObject);
begin
Try
  DMC.SDS_Estoque_Atual_Zerado.Active := false;
  DMC.SDS_Estoque_Atual_Zerado.Active := true;

//DMC.SDS_Estoque_Atual_Zerado.Refresh;
if  DMC.SDS_Estoque_Atual_Zerado.Eof then
  Begin
       Msgi.Text:= 'Não Há Estoque Zerado ou Negativo';
       Msgi.ShowModal;
    end
  else
  begin
    DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Negativo',False);
    DMR.RvRelatorios.Execute;
  end;
   Except
     Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelatorioEstoqueAtual.suiButton10Click(Sender: TObject);
begin
Try
DMC.SDS_Estoque_Atual.Active:= False;
DMC.SDS_Estoque_Atual.Active:= True;
if  DMC.SDS_Estoque_Atual.EOF then
  Begin
       Msgi.Text:= 'Não Há Itens no Estoque Geral';
       Msgi.ShowModal;
       end
  else
  begin
    DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual',False);
    DMR.RvRelatorios.Execute;
  end;
        Except
      Msge.ShowModal;
   end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton1Click(Sender: TObject);
begin
  frxReport.LoadFromFile('C:\siace\rel\RelatorioEstoque.fr3');
  FrxReport.Variables['DATA'] := QuotedStr(DateToStr(DateEdit1.Date));
  qrRel.Close;
  qrRel.ParamByName('DATA').AsDate:= DateEdit1.Date;
  qrRel.Open;
  frxReport.ShowReport;

//Try
////DMC.SDS_Est_Atual_Custo.Active:= False;
////DMC.SDS_Est_Atual_Custo.Active:= True;
//DMC.SDS_Est_Atual_Custo.Close;
//DMC.SDS_Est_Atual_Custo.SQL.Clear;
//DMC.SDS_Est_Atual_Custo.SQL.Add( 'select * from V_ESTOQUE_ATUAL_CUSTO  ORDER BY DESCRICAO ASC');
//DMC.SDS_Est_Atual_Custo.Open;
//
//if  DMC.SDS_Est_Atual_Custo.EOF then
//  Begin
//       Msgi.Text:= 'Não Há Itens no Estoque Geral';
//       Msgi.ShowModal;
//  end
//  else
//  begin
//    DMR.RvRelatorios.SelectReport('Rp_Est_Atual_Custo',False);
//    DMR.RvRelatorios.Execute;
//  end;
//        Except
//    Msge.ShowModal;
//  end;
end;

procedure TFormRelatorioEstoqueAtual.FormShow(Sender: TObject);
begin
DM.SDS_CATEGORIA.Active:= False;
DM.SDS_Fornecedores.Active:= False;
DM.SDS_Grupos.Active:= False;
DM.SDS_SubGrupos.Active:= False;
DM.SDS_Marcas.Active:= False;
DM.SDS_Fornecedores.Active:= True;
DM.SDS_Grupos.Active:= True;
DM.SDS_SubGrupos.Active:= True;
DM.SDS_Marcas.Active:= True;
DM.SDS_CATEGORIA.Active:= True;
end;

procedure TFormRelatorioEstoqueAtual.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton11Click(Sender: TObject);
begin
  try
    FRelatorioInventarioCategoriaDiversas:=  TFRelatorioInventarioCategoriaDiversas.Create(Self);
    FRelatorioInventarioCategoriaDiversas.ShowModal;
  finally
    if FRelatorioInventarioCategoriaDiversas.Pesquisa <> '' then
    begin
      DMC.SDS_Est_Atual_Custo.Active := false;
      DMC.SDS_Est_Atual_Custo.Active := True;
      DMC.SDS_Est_Atual_Custo.Filtered := false;
      DMC.SDS_Est_Atual_Custo.Filter   := FRelatorioInventarioCategoriaDiversas.Pesquisa;
      DMC.SDS_Est_Atual_Custo.Filtered := TRUE;

      try
        if  DMC.SDS_Est_Atual_Custo.EOF then
        Begin
          ShowMessage('Não Há Itens em Estoque');
        end
        else
        begin
          if DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' then
          begin
            FormInventario_Custo := TFormInventario_Custo.create(Self);
            FormInventario_Custo.Tag := 1;
            FormInventario_Custo.RLReport1.DefaultFilter.Destroy;
            FormInventario_Custo.RLReport1.Prepare;
            FormInventario_Custo.RLReport1.PreviewModal;
          end else
          if DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' then
          begin
            FormInventario_Custo := tFormInventario_Custo.create(Self);
            FormInventario_Custo.Tag := 1;
            FormInventario_Custo.RLReport1.Prepare;
            FormInventario_Custo.RLReport1.PreviewModal;
          end;
        end;
      Except
        ShowMessage('Erro ao Gerar o Inventário');
      end;
    end;
    FreeAndNil(FRelatorioInventarioCategoriaDiversas);
  end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton12Click(Sender: TObject);
begin
DMC.SDS_Est_Atual_Custo.Active := false;
DMC.SDS_Est_Atual_Custo.Active := True;
DMC.SDS_Est_Atual_Custo.Filtered := false;
DMC.SDS_Est_Atual_Custo.Filter   := 'CODIGO_GRUPO = ' +DM.SDS_GruposCODIGO.Text +'';
DMC.SDS_Est_Atual_Custo.Filtered := TRUE;
TRY
if  DMC.SDS_Est_Atual_Custo.EOF then
  Begin
       ShowMessage('Não Há Itens em Estoque');
  end
  else
  begin
      IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
     BEGIN
     FormInventario_Custo := TFormInventario_Custo.create(Self);
     FormInventario_Custo.Tag := 1;
     FormInventario_Custo.RLReport1.DefaultFilter.Destroy;
     FormInventario_Custo.RLReport1.Prepare;
     FormInventario_Custo.RLReport1.PreviewModal;
     end else
     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
     BEGIN
     FormInventario_Custo := tFormInventario_Custo.create(Self);
     FormInventario_Custo.Tag := 1;
     FormInventario_Custo.RLReport1.Prepare;
     FormInventario_Custo.RLReport1.PreviewModal;
     end;
  end;
   Except
        ShowMessage('Erro ao Gerar o Inventário');
  end;
end;

procedure TFormRelatorioEstoqueAtual.suiButton13Click(Sender: TObject);
begin
  try
    FRelatorioInventarioGruposDiversos:= TFRelatorioInventarioGruposDiversos.Create(Self);
    FRelatorioInventarioGruposDiversos.ShowModal;
  finally
    if FRelatorioInventarioGruposDiversos.Pesquisa <> '' then
    begin
      DMC.SQLD_Estoque_Atual_Grupo.Active:=False;
      DMC.CDS_Estoque_Atual_Grupo.Active:=False;
      DMC.CDS_Estoque_Atual_Grupo.Filtered:= False;
      DMC.CDS_Estoque_Atual_Grupo.Filter:= FRelatorioInventarioGruposDiversos.Pesquisa;
      DMC.CDS_Estoque_Atual_Grupo.Filtered:= True;
      DMC.SQLD_Estoque_Atual_Grupo.Active:= True;
      DMC.CDS_Estoque_Atual_Grupo.Active:=True;

      if  DMC.CDS_Estoque_Atual_Grupo.EOF then
      Begin
        Msgi.Text:= 'Este Grupo Não Possue Produdos no Estoque';
        Msgi.ShowModal;
      end
      else
      begin
        DMR.RvRelatorios.SelectReport('Rp_Estoque_Atual_Grupo',False);
        DMR.RvRelatorios.Execute;
      end;
    end;
    FreeAndNil(FRelatorioInventarioGruposDiversos);
  end;
end;

end.
