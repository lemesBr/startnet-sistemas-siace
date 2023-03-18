unit UAlteraPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, IBDatabase, Mask, Buttons,
  AlignEdit, RxPlacemnt, RxToolEdit, RxCurrEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmAlteraPreco = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    QConsProd: TFDQuery;
    DSQConsPro: TDataSource;
    IBTRLocal: TFDTransaction;
    QAux: TFDQuery;
    PanelEstoque: TPanel;
    Label1: TLabel;
    EdtEstMin: TCurrencyEdit;
    BtnConfirma: TButton;
    BtnCancela: TButton;
    DBGrid: TDBGrid;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ComboCons: TComboBox;
    RdgAtivo: TRadioGroup;
    GB2: TGroupBox;
    BtnConsSub: TSpeedButton;
    BtnConsGrupo: TSpeedButton;
    BtnCons: TSpeedButton;
    EdtCons: TEdit;
    EdtCodGrupo: TAlignEdit;
    EdtCodSub: TAlignEdit;
    EdtNomeGrupo: TEdit;
    EdtNomeSub: TEdit;
    EdtCod: TAlignEdit;
    EdtNome: TEdit;
    BtnOk: TButton;
    BtnSair: TButton;
    QConsProdCODIGO: TIntegerField;
    QConsProdCODIGO_BARRAS: TStringField;
    QConsProdESTOQUE: TBCDField;
    QConsProdATIVO: TStringField;
    QConsProdDESCRICAO: TStringField;
    QConsProdSECCAO: TIntegerField;
    QConsProdCODIGO_GRUPO: TIntegerField;
    QConsProdCODIGO_SUBGRUPO: TIntegerField;
    QConsProdCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QConsProdREFERENCIA: TStringField;
    QConsProdPRECO_VENDA: TFMTBCDField;
    QConsProdNOME_GRUPO: TStringField;
    QConsProdNOME_SUBGRUPO: TStringField;
    QConsProdPRECO_PROMOCAO: TFMTBCDField;
    QConsProdESTOQUE_MINIMO: TIntegerField;
    QConsProdVALIDADE: TDateField;
    QConsProdICMS: TFMTBCDField;
    QConsProdMARGEM_LUCRO2: TFMTBCDField;
    QConsProdNCM_SH: TStringField;
    QConsProdIPI_IRPJ: TFMTBCDField;
    QConsProdSIT_TRIBUTARIA: TStringField;
    QConsProdOUTROS_IMPOSTOS: TFMTBCDField;
    QConsProdPRECO_CUSTO: TFMTBCDField;
    QConsProdMARGEM_LUCRO: TFMTBCDField;
    QConsProdPRECO_VENDA2: TFMTBCDField;
    QConsProdVALIDADE_PRODUTO: TStringField;
    QConsProdDESC_SECCAO: TStringField;
    QConsProdDESC_GRUPO_TRIBUTACAO: TStringField;
    QConsProdUNIDADE: TStringField;
    QConsProdDESC_LOCAL_ESTOQUE: TStringField;
    QConsProdPERC_ALIQUOTA_PIS: TFMTBCDField;
    QConsProdPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QConsProdFLAG_PIS_COFINS: TStringField;
    QConsProdCALC_PIS_COFINS: TStringField;
    procedure ComboConsChange(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEnter(Sender: TObject);
    procedure DBGridExit(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure ComboConsKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodGrupoEnter(Sender: TObject);
    procedure EdtCodGrupoExit(Sender: TObject);
    procedure EdtCodGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodSubEnter(Sender: TObject);
    procedure EdtCodSubExit(Sender: TObject);
    procedure EdtCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsGrupoClick(Sender: TObject);
    procedure BtnConsSubClick(Sender: TObject);
    procedure EdtCodEnter(Sender: TObject);
    procedure EdtCodExit(Sender: TObject);
    procedure EdtCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QConsProdCalcFields(DataSet: TDataSet);
    procedure AtivaDesativa;
  private
    { Private declarations }
  public
    { Public declarations }
  end;                                 

  var
  FrmAlteraPreco: TFrmAlteraPreco;
  

implementation
uses ModulodeDados, Ubibli1, UAltPreco, UUltimaCompra, UAlterarSecaoGrupo, UProdutosComposicao,
     UConsLab, UFormacaoPreco, UConsGRP, UConsLocaisEstoque, ConsGrupos,
  ConsSubGrupos, ConsSeccao;

{$R *.dfm}

procedure TFrmAlteraPreco.AtivaDesativa;
var iAux : integer;
begin
   { VERIFICA SE TEM ALGUM SELECIONADO }
   iAux:= 0;
   if not (QConsProd.State = dsBrowse) then
      exit;
   iAuxCodPro:= QConsProdCODIGO.AsInteger;
   with QConsProd do
      begin
         DisableControls;
         First;
         while not eof do
           begin
              if DBGrid.SelectedRows.CurrentRowSelected then
                 begin
                    iAux:= 1;
                    Break;
                 end;
              next;
           end;
         First;
         EnableControls;
      end;

   if not (iAux > 0) then
      begin
         showmessage('Nenhum produto selecionado');
         exit;
      end;

   if Application.MessageBox('Deseja Ativar/Desativar o(s) Produto(s)?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
      begin
         QConsProd.DisableControls;
         QConsProd.First;
         while not QConsProd.Eof do
            begin
               if FrmAlteraPreco.DBGrid.SelectedRows.CurrentRowSelected then
                  begin
                     if dm.IBTransaction.Active then
                        dm.IBTransaction.Commit;
                     dm.IBTransaction.StartTransaction;
                     try
                       try
                         with dm.QConsulta do
                            begin
                               close;
                               sql.Clear;
                               if trim(QConsProdATIVO.AsString) = 'A' then
                                  sql.Add('UPDATE PRODUTOS SET ATIVO = ' + #39 + 'I' + #39 + ', ' +
                                          'PRECO_VENDA = 0, PRECO_VENDA2 = 0, PRECO_PROMOCAO = 0 ' +
                                          'WHERE CODIGO = :CODPRO')
                               else
                                  sql.add('UPDATE PRODUTOS SET ATIVO = ' + #39 + 'A' + #39 +
                                          ' WHERE CODIGO = :CODPRO');
                               Parambyname('codpro').AsInteger:= QConsProdCODIGO.AsInteger;
                               ExecSQL;
                            end;
                         dm.IBTransaction.Commit;
                       except
                         dm.IBTransaction.Rollback;
                         showmessage('Erro ao atualizar o produto');
                       end;
                     finally
                       dm.QConsulta.Close;
                     end;
                  end;
               QConsProd.Next;
            end;
         QConsProd.EnableControls;
         BtnOk.Click;
      end;
end;

procedure TFrmAlteraPreco.ComboConsChange(Sender: TObject);
begin
   gb2.Caption:= 'Digite o Item Desejado';
   edtcons.Clear;
   EdtCod.Clear;
   EdtNome.Clear;
   EdtCodGrupo.Clear;
   EdtNomeGrupo.Clear;
   EdtCodSub.Clear;
   EdtNomeSub.Clear;

   case combocons.ItemIndex of
    0,1,2,3,8:   begin
                  gb2.Caption     := 'Digite o Item Desejado';
                  GB2.Height      := 49;

                  RdgAtivo.Width  := 689;
                  RdgAtivo.Height := 33;

                  EdtCod.Visible  := false;
                  BtnCons.Visible := false;
                  EdtNome.Visible := false;

                  EdtCodGrupo.Visible  := false;
                  BtnConsGrupo.Visible := false;
                  EdtNomeGrupo.Visible := false;

                  EdtCodSub.Visible  := false;
                  BtnConsSub.Visible := false;
                  EdtNomeSub.Visible := false;

                  EdtCons.Visible:= true;
               end;
    4: begin
          gb2.Caption     := 'Seção/Grupo/Sub-Grupo';
          GB2.Height      := 93;

          RdgAtivo.Width  := 249;
          RdgAtivo.Height := 41;

          EdtCod.Visible  := true;
          BtnCons.Visible := true;
          EdtNome.Visible := true;

          EdtCodGrupo.Visible  := true;
          BtnConsGrupo.Visible := true;
          EdtNomeGrupo.Visible := true;

          EdtCodSub.Visible  := true;
          BtnConsSub.Visible := true;
          EdtNomeSub.Visible := true;

          EdtCons.Visible:= false;
       end;
    5,6,7:begin
           gb2.Caption          := 'Digite o Item Desejado';
           GB2.Height           := 49;

           RdgAtivo.Width       := 689;
           RdgAtivo.Height      := 33;

           EdtCons.Visible      := false;
           EdtCod.Visible       := true;
           BtnCons.Visible      := true;
           EdtNome.Visible      := true;

           EdtCodGrupo.Visible  := false;
           BtnConsGrupo.Visible := false;
           EdtNomeGrupo.Visible := false;

           EdtCodSub.Visible    := false;
           BtnConsSub.Visible   := false;
           EdtNomeSub.Visible   := false;
        end;
   end;
end;

procedure TFrmAlteraPreco.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAlteraPreco.BtnOkClick(Sender: TObject);
var sScript : string;
begin
   sScript:=  'SELECT P.CODIGO, P.CODIGO_BARRAS, P.ATIVO, P.DESCRICAO, P.ESTOQUE, P.SECCAO, P.CODIGO_GRUPO, P.CODIGO_SUBGRUPO, P.CODIGO_LOCAL_ESTOQUE, P.PRECO_VENDA, ' +
              'P.PRECO_PROMOCAO, P.ESTOQUE_MINIMO, P.VALIDADE, P.ICMS, P.MARGEM_LUCRO2, P.REFERENCIA, p.ncm_sh,' +
              'P.IPI_IRPJ, P.SIT_TRIBUTARIA, P.OUTROS_IMPOSTOS, P.NOME_GRUPO, P.NOME_SUBGRUPO,' +
              'P.PRECO_CUSTO, P.MARGEM_LUCRO, P.PRECO_VENDA2, P.VALIDADE_PRODUTO, S.DESCRICAO AS DESC_SECCAO, G.DESCRICAO AS DESC_GRUPO_TRIBUTACAO, ' +
              'U.ABREVIATURA AS UNIDADE, SE.DESCRICAO AS DESC_LOCAL_ESTOQUE, G.PERC_ALIQUOTA_PIS, G.PERC_ALIQUOTA_COFINS, G.FLAG_PIS_COFINS ' +  
              'FROM PRODUTOS P ' +
              'INNER JOIN SECCAO S ' +
              'ON (P.SECCAO = S.CODIGO) ' +
              'INNER JOIN GRUPO_TRIBUTACAO G ' +
              'ON (P.GRUPO_TRIBUTACAO = G.COD_GRUPO) ' +
              'INNER JOIN UNIDADES U ' +
              'ON (P.UNIDADE = U.CODIGO) ' +
              'INNER JOIN LOCAIS_ESTOQUE SE ' +
              'ON (P.CODIGO_LOCAL_ESTOQUE = SE.CODIGO) ';
            //  'LEFT OUTER JOIN SECAO_GRUPO SG ' +
            //   'ON (P.COD_SEC = SG.COD_SEC AND P.COD_GRUPO = SG.COD_GRUPO) ' +
            //  'LEFT OUTER JOIN SECAO_GRUPO_SUBGRUPO SGS ' +
            //  'ON (P.COD_SEC = SGS.COD_SEC AND P.COD_GRUPO = SGS.COD_GRUPO AND P.SUB_GRUPO = SGS.COD_SUBGRUPO) ';


   case combocons.ItemIndex of
    0: sScript:= sScript + ' WHERE P.DESCRICAO LIKE ' + #39 + '%' + edtcons.Text + '%' + #39 +' and  cod_empresa =:codemp';

    1: sScript:= sScript + ' WHERE P.DESCRICAO LIKE ' + #39 + edtcons.Text + '%' + #39+' and  cod_empresa =:codemp';

    2: sScript:= sScript + ' WHERE P.CODIGO_BARRAS = ' + #39 + trim(edtcons.Text) + #39+' and  cod_empresa =:codemp';

    3:begin
         if trim(EdtCons.Text) = '' then
            begin
               showmessage('digite o código do produto');
               edtcons.SetFocus;
               exit;
               abort;
            end;
         sScript:= sScript + ' WHERE P.CODIGO = ' + trim(EdtCons.Text)+' and  cod_empresa =:codemp';
      end;
    4:begin
         if trim(EdtCodSub.Text) <> '' then
            begin
               sScript:= sScript + ' WHERE P.SECCCAO = ' + trim(EdtCod.Text) +
                                   ' AND P.CODIGO_GRUPO = ' + trim(EdtCodGrupo.Text) +
                                   ' AND P.CODIGO_SUBGRUPO = ' + trim(EdtCodSub.Text)+' and  cod_empresa =:codemp';
            end
         else
            if trim(EdtCodGrupo.Text) <> '' then
               begin
                  sScript:= sScript + ' WHERE P.SECCAO = ' + trim(EdtCod.Text) +
                                      ' AND P.CODIGO_GRUPO = ' + trim(EdtCodGrupo.Text)+' and  cod_empresa =:codemp';
               end
            else
               if trim(edtcod.Text) <> '' then
                  sScript:= sScript + ' WHERE P.SECCAO = ' + trim(EdtCod.Text)+ ' and  cod_empresa =:codemp'
               else
                  begin
                     showmessage('Digite a Seção');
                     EdtCod.SetFocus;
                     exit;
                  end;
      end;

    5:sScript:= sScript + ' WHERE P.COD_LAB = ' + trim(EdtCod.Text)+' and  cod_empresa =:codemp';
    6:sScript:= sScript + ' WHERE P.GRUPO_TRIBUTACAO = ' + trim(EdtCod.Text)+' and  cod_empresa =:codemp';
    7:sScript:= sScript + ' WHERE P.CODIGO_LOCAL_ESTOQUE = ' + trim(EdtCod.Text)+' and  cod_empresa =:codemp';
    8:sScript:= sScript + ' WHERE P.REFERENCIA = ' + #39 + edtcons.Text + #39+' and  cod_empresa =:codemp';

   end;

   case RdgAtivo.ItemIndex of
    0: sScript:= sScript + ' AND P.ATIVO = ' + #39 + 'A' + #39 +' and  cod_empresa =:codemp';
    1: sScript:= sScript + ' AND P.ATIVO = ' + #39 + 'I' + #39 +' and  cod_empresa =:codemp';
   end;
   sScript:= sScript + ' ORDER BY P.DESCRICAO';

   if IBTRLocal.Active then
      IBTRLocal.Commit;
   IBTRLocal.StartTransaction;
   with QConsProd do
      begin
         close;
         sql.Clear;
       {  sql.Text:= 'SELECT * ' +
                    'FROM SP_CONSUTA_PRODUTO (:SCRIPT, :DATAINI, :DATAFIN, :CODEMP)';}

        // Parambyname('script').AsString  := sScript;
        // Parambyname('dataini').AsDate   := date - 30;
        // Parambyname('datafin').AsDate   := date;
         sql.Text:= sScript;
         Parambyname('codemp').AsInteger := iemp;
         open;
         if not (fieldbyname('codigo').IsNull) then
            begin
               dbgrid.SetFocus;
               QConsProd.Locate('CODIGO', iAuxCodPro, []);
               iAuxCodPro:= 0;
            end
         else
            begin
               if EdtCons.Visible then
                  edtcons.SetFocus
               else
                  edtcod.SetFocus;
            end;
      end;
end;

procedure TFrmAlteraPreco.FormShow(Sender: TObject);
begin
   {busca a posicao do combo}
  try
     ComboCons.ItemIndex:= strtoint(dm.LeINI('siace.ini', 'PosicaoCombobox', 'FrmAlteraPreco.ComboCons'));
   except
     ComboCons.ItemIndex:= 0;
   end;

   ComboConsChange(self);
   ComboCons.SetFocus;
end;

procedure TFrmAlteraPreco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      begin
         if PanelEstoque.Visible then
            Begin
               DBGrid.SetFocus;
               PanelEstoque.Visible:= false;
            end
         else
            close;
      end;
end;

procedure TFrmAlteraPreco.DBGridDblClick(Sender: TObject);
begin
   iAuxCodPro:= QConsProdCODIGO.AsInteger;
   if iTipoEmp = 'S' then
      begin
         Application.CreateForm(TFrmAltPreco, FrmAltPreco);
         FrmAltPreco.Tag := 1;
         with FrmAltPreco do
            begin
               LProduto.Caption    := QConsProdCODIGO.AsString + ' - ' + QConsProdDESCRICAO.AsString;
               edtvalor.Text       := QConsProdPRECO_VENDA.AsString;
               edtpromocao.Text    := QConsProdPRECO_PROMOCAO.AsString;
               EdtProgramado.Text  := QConsProdPRECO_VENDA2.AsString;
               EdtCusto.Text       := QConsProdPRECO_CUSTO.AsString;
               edit1.Text          := QConsProdNCM_SH.Text;
               showmodal;
            end;
      end
   else
      begin
         Application.CreateForm(TFrmFormacaoPreco, FrmFormacaoPreco);
         FrmFormacaoPreco.EdtCodProd.Text  := QConsProdCODIGO.AsString;
         FrmFormacaoPreco.EdtNomeProd.Text := QConsProdDESCRICAO.AsString;
         FrmFormacaoPreco.Tag:= 1;
         FrmFormacaoPreco.ShowModal;
      end;
end;

procedure TFrmAlteraPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if IBTRLocal.Active then
      IBTRLocal.Commit;
   QConsProd.Close;

   {grava a posicao do combo}
   dm.GravaIni('siace.ini', 'PosicaoCombobox', 'FrmAlteraPreco.ComboCons', inttostr(ComboCons.itemIndex));

   Action:= caFree;
end;

procedure TFrmAlteraPreco.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      DBGridDblClick(sender);
end;

procedure TFrmAlteraPreco.DBGridEnter(Sender: TObject);
begin
   FrmAlteraPreco.KeyPreview:= false;
end;

procedure TFrmAlteraPreco.DBGridExit(Sender: TObject);
begin
   FrmAlteraPreco.KeyPreview:= true;
end;

procedure TFrmAlteraPreco.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
    vk_escape : close;
    vk_f2: begin
              if EdtCons.Visible then
                 edtcons.SetFocus
              else
                 EdtCod.SetFocus;
           end;
    vk_f3: begin
              Application.CreateForm(TFrmUltimaCompra, FrmUltimaCompra);
              FrmUltimaCompra.EdtCodPro.Text := QConsProdCODIGO.AsString;
              FrmUltimaCompra.EdtNomePro.Text:= QConsProdDESCRICAO.AsString;
              FrmUltimaCompra.ShowModal;
           end;
    vk_f7: begin
              if not (QConsProd.State = dsBrowse) then
                 exit;
              Application.CreateForm(TFrmAlterarSecao, FrmAlterarSecao);
              FrmAlterarSecao.EdtCodSec.Text   := QConsProdSECCAO.AsString;
              FrmAlterarSecao.EdtNomeSec.Text  := QConsProdDESC_SECCAO.AsString;
              FrmAlterarSecao.EdtCodGrupo.Text := QConsProdCODIGO_GRUPO.AsString;
              FrmAlterarSecao.EdtNomeGrupo.Text:= QConsProdNOME_GRUPO.AsString;
              FrmAlterarSecao.EdtCodSub.Text   := QConsProdCODIGO_SUBGRUPO.AsString;
              FrmAlterarSecao.EdtNomeSub.Text  := QConsProdNOME_SUBGRUPO.AsString;
              FrmAlterarSecao.EdtCodSetor.text := QConsProdCODIGO_LOCAL_ESTOQUE.AsString;
              FrmAlterarSecao.EdtNomeSetor.Text:= QConsProdDESC_LOCAL_ESTOQUE.AsString;
              FrmAlterarSecao.showmodal;
           end;
    {vk_f8: begin
              if not (QConsProd.State = dsBrowse) then
                 exit;
              Application.CreateForm(TFrmAlterarGRP, FrmAlterarGRP);
              FrmAlterarGRP.showmodal;
           end; }
    vk_f9: begin
              if not (QConsProd.State = dsBrowse) then
                 exit;
              Application.CreateForm(TFrmProdutosComposicao, FrmProdutosComposicao);
              FrmProdutosComposicao.showmodal;
           end;
    vk_f11:begin
              PanelEstoque.Visible:= true;
              EdtEstMin.Text:= QConsProdESTOQUE_MINIMO.AsString;
              EdtEstMin.SetFocus;
              EdtEstMin.SetFocus;
           end;
    vk_f12:AtivaDesativa;
   end;
end;

procedure TFrmAlteraPreco.BtnCancelaClick(Sender: TObject);
begin
   DBGrid.SetFocus;
   PanelEstoque.Visible:= false;
end;

procedure TFrmAlteraPreco.BtnConfirmaClick(Sender: TObject);
begin
   iAuxCodPro:= QConsProdCODIGO.AsInteger;

   if dm.IBTRAux.Active then
      dm.IBTRAux.Commit;
   dm.IBTRAux.StartTransaction;
   try
     try
       with QAux do
          begin
             close;
             sql.Clear;
             sql.add('UPDATE PRODUTOS SET ESTOQUE_MINIMO = :EST ' +
                     'WHERE CODIGO = :CODPRO');
             Parambyname('est').AsCurrency   := strtocurr(EdtEstMin.Text);
             Parambyname('codpro').AsInteger := QConsProdCODIGO.AsInteger;
             ExecSQL;
          end;
       dm.IBTRAux.Commit;
     except
       dm.IBTRAux.Rollback;
       showmessage('Erro ao atualizar o estoque mínimo do produto');
     end;
   finally
     QAux.Close;
     DBGrid.SetFocus;
     PanelEstoque.Visible:= false;
     BtnOk.Click;
   end;
end;

procedure TFrmAlteraPreco.ComboConsKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmAlteraPreco.EdtCodGrupoEnter(Sender: TObject);
begin
   EdtCodGrupo.SelectAll;
end;

procedure TFrmAlteraPreco.EdtCodGrupoExit(Sender: TObject);
begin
   if (BtnSair.Focused) or (ComboCons.Focused) then
       exit;

   if trim(EdtCodGrupo.Text) = '' then
     begin
         EdtNomeGrupo.Clear;
         exit;
     end;

  if trim(EdtCod.Text) = '' then
     begin
        EdtNomeGrupo.Clear;
        EdtCodGrupo.Clear;
        edtcod.SetFocus;
        exit;
     end;

  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
         begin
            close;
            sql.Clear;
            sql.add('SELECT COD_GRUPO, DESCRICAO ' +
                    'FROM SECAO_GRUPO ' +
                    'WHERE COD_SEC = :CODSEC AND COD_GRUPO = :CODGRUPO');
            Parambyname('codsec').AsInteger   := strtoint(EdtCod.Text);
            Parambyname('codgrupo').AsInteger := strtoint(EdtCodGrupo.Text);
            Open;
            if not (fieldbyname('cod_grupo').IsNull) then
               edtNomeGrupo.Text:= fieldbyname('descricao').AsString
            else
               begin
                  ShowMessage('Grupo não Cadastrado');
                  EdtNomeGrupo.Clear;
                  EdtCodGrupo.Clear;
                  EdtCodGrupo.SetFocus;
               end;
         end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro o buscar o Grupo');
    end;
  finally
    dm.QConsulta.Close;
  end;
end;

procedure TFrmAlteraPreco.EdtCodGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsGrupo.Click;
end;

procedure TFrmAlteraPreco.EdtCodGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key:= #0;
end;

procedure TFrmAlteraPreco.EdtCodSubEnter(Sender: TObject);
begin
   EdtCodSub.SelectAll;
end;

procedure TFrmAlteraPreco.EdtCodSubExit(Sender: TObject);
begin
   if (BtnSair.Focused) or (ComboCons.Focused) then
       exit;

   if EdtCodSub.Text = '' then
     begin
        EdtNomeSub.Clear;
        exit;
     end;

  if trim(EdtCod.Text) = '' then
     begin
        EdtCod.SetFocus;
        exit;
     end;

  if trim(EdtCodGrupo.Text) = '' then
     begin
        EdtCodSub.Clear;
        EdtNomeSub.Clear;
        EdtCodGrupo.SetFocus;
        exit;
     end;

  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
         begin
            close;
            sql.Clear;
            sql.add('SELECT COD_SUBGRUPO, DESCRICAO ' +
                    'FROM SECAO_GRUPO_SUBGRUPO ' +
                    'WHERE COD_SEC = :CODSEC AND COD_GRUPO = :CODGRUPO AND COD_SUBGRUPO = :CODSUB');
            Parambyname('codsec').AsInteger   := strtoint(EdtCod.Text);
            Parambyname('codgrupo').AsInteger := strtoint(EdtCodGrupo.Text);
            Parambyname('codsub').AsInteger   := strtoint(EdtCodSub.Text);
            Open;
            if not (fieldbyname('cod_subgrupo').IsNull) then
               EdtNomeSub.Text:= fieldbyname('descricao').AsString
            else
               begin
                  ShowMessage('Sub-Grupo não Cadastrado');
                  EdtNomeSub.Clear;
                  EdtCodSub.Clear;
                  EdtCodSub.SetFocus;
               end;
         end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
      showmessage('Erro o buscar o Sub-Grupo');
    end;
  finally
    dm.QConsulta.Close;
  end;
end;

procedure TFrmAlteraPreco.EdtCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsSub.Click;
end;

procedure TFrmAlteraPreco.BtnConsGrupoClick(Sender: TObject);
begin
   if trim(EdtCod.Text) = '' then
      exit;
   Application.CreateForm(TFormConsGrupos, FormConsGrupos);
 //  FormConsGrupos.tag:= 3;
   FormConsGrupos.showmodal;
   EdtCodGrupo.Text := DM.SDS_GruposCODIGO.Text;
   EdtNomeGrupo.Text := DM.SDS_GruposDESCRICAO.Text;

end;

procedure TFrmAlteraPreco.BtnConsSubClick(Sender: TObject);
begin
   if (trim(edtcod.Text) = '') or (trim(EdtCodGrupo.Text) = '') then
      exit;
   Application.CreateForm(TFormConsSubGrupos, FormConsSubGrupos);
   FormConsSubGrupos.tag:= 3;
   FormConsSubGrupos.showmodal;
end;

procedure TFrmAlteraPreco.EdtCodEnter(Sender: TObject);
begin
   EdtCod.SelectAll;
end;

procedure TFrmAlteraPreco.EdtCodExit(Sender: TObject);
begin
   if (BtnSair.Focused) or (ComboCons.Focused) then
       exit;
   case ComboCons.ItemIndex of
    4:begin
         EdtNome.Text:= Consulta('secao', edtcod, 'cod_sec', 'nome_sec', dm.IBTransaction, dm.QConsulta);
         if EdtNome.Text = '' then
            begin
               showmessage('Seção não cadastrada');
               EdtCod.SetFocus;
            end;
      end;
    5:begin
         EdtNome.Text:= Consulta('laboratorio', edtcod, 'cod_lab', 'nome_lab', dm.IBTransaction, dm.QConsulta);
         if EdtNome.Text = '' then
            begin
               showmessage('Fabricante não cadastrado');
               EdtCod.SetFocus;
            end;
      end;
    6:begin
         EdtNome.Text:= Consulta('grupo_icms', edtcod, 'cod_grp', 'nome_grp', dm.IBTransaction, dm.QConsulta);
         if EdtNome.Text = '' then
            begin
               showmessage('Grupo de ICMS não cadastrado');
               EdtCod.SetFocus;
            end;
      end;
    7:begin
         EdtNome.Text:= Consulta('setores_estoque', edtcod, 'codigo', 'descricao', dm.IBTransaction, dm.QConsulta);
         if EdtNome.Text = '' then
            begin
               showmessage('Setor de Estoque não cadastrado');
               EdtCod.SetFocus;
            end;
      end;
   end;
end;

procedure TFrmAlteraPreco.EdtCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnCons.Click;
end;

procedure TFrmAlteraPreco.BtnConsClick(Sender: TObject);
begin
   case ComboCons.ItemIndex of
    4:begin
         Application.CreateForm(TFormConsSeccao, FormConsSeccao);
         FormConsSeccao.tag:= 21;
         FormConsSeccao.showmodal;
      end;
    5:begin
         Application.CreateForm(TFrmConsLab, FrmConsLab);
         FrmConsLab.tag:= 9;
         FrmConsLab.showmodal;
      end;
    6:begin
         Application.CreateForm(TFormConsGrupoT, FormConsGrupoT);
         FormConsGrupoT.tag:= 13;
         FormConsGrupoT.showmodal;
      end;
    7:begin
         Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
         FrmConsLocaisEstoque.tag:= 3;
         FrmConsLocaisEstoque.showmodal;
      end;
   end;
end;

procedure TFrmAlteraPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmAlteraPreco.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if trim(QConsProdATIVO.AsString) = 'I' then
      begin
         DBGrid.Canvas.Font.Color:= clRed;
         Dbgrid.DefaultDrawDataCell(Rect, dbgrid.columns[datacol].field, State);
      end;
end;

procedure TFrmAlteraPreco.QConsProdCalcFields(DataSet: TDataSet);
begin
   if trim(QConsProdFLAG_PIS_COFINS.AsString) = 'T' then
      QConsProdCALC_PIS_COFINS.AsString:= 'ISENTO'
   else
      QConsProdCALC_PIS_COFINS.AsString:= 'NORMAL';
end;

end.
