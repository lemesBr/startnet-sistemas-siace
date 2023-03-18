unit UAcertoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, Buttons, ExtCtrls, ComCtrls, StdCtrls, AlignEdit,
  Mask, Grids, DBGrids, IBDatabase, DB,
  IBCustomDataSet, IBQuery, ImgList, ToolWin,
  rxToolEdit, rxCurrEdit, SUIButton, aDvGlowButton, acPNG, acDBGrid,
  aDvPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  sLabel;

type
  TFormAcertoEstoque = class(TFrmCadastroNovo)
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    cod_ace: TAlignEdit;
    Label2: TLabel;
    EdtData: TDateTimePicker;
    Label5: TLabel;
    Label10: TLabel;
    BtnConsPro: TSpeedButton;
    BtnAddPro: TSpeedButton;
    EdtNomePro: TEdit;
    Label11: TLabel;
    Label30: TLabel;
    DBGrid1: TsDBGrid;
    QInsAce: TFDQuery;
    QUpdAce: TFDQuery;
    QDelAce: TFDQuery;
    IBTRAce: TFDTransaction;
    QBuscaItens: TFDQuery;
    DSQBuscaItens: TDataSource;
    DelItem: TFDQuery;
    Label3: TLabel;
    QOrdem: TFDQuery;
    QOrdemORDEM: TIntegerField;
    EdtCodPro: TAlignEdit;
    Label4: TLabel;
    EdtEstoque: TCurrencyEdit;
    PanelPB: TPanel;
    PB: TProgressBar;
    BtnColetor: TButton;
    OP: TOpenDialog;
    QInsColetor: TFDQuery;
    EdtCodLocal: TAlignEdit;
    BtnConsLocal: TSpeedButton;
    EdtNomeLocal: TEdit;
    BtnAddLocal: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MemoOBS: TEdit;
    Label9: TLabel;
    QtdeFracionada: TCurrencyEdit;
    Image1: TImage;
    Label12: TLabel;
    qtdeFracao: TCurrencyEdit;
    BtnGrava: TAdvGlowButton;
    BtnExclui: TAdvGlowButton;
    EdtQuant: TEdit;
    EdtCodPro1: TAlignEdit;
    Edit2: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    myLabel3d2: TsLabelFX;
    EdtDataValidade: TDateEdit;
    edtVenda: TEdit;
    edtVenda2: TEdit;
    lblTipoAcerto: TsLabelFX;
    Ccusto: TEdit;
    Label15: TLabel;
    QBuscaItensCOD_ACE: TIntegerField;
    QBuscaItensCOD_PRO: TIntegerField;
    QBuscaItensCOD_MOT: TIntegerField;
    QBuscaItensCOD_EMP: TIntegerField;
    QBuscaItensORDEM: TIntegerField;
    QBuscaItensQUANT: TFMTBCDField;
    QBuscaItensVALOR_CUSTO: TFMTBCDField;
    QBuscaItensCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensDESCRICAO: TStringField;
    QBuscaItensCODIGO_BARRAS: TStringField;
    QBuscaItensPRECO_VENDA: TFMTBCDField;
    QBuscaItensPRECO_VENDA2: TFMTBCDField;
    QBuscaItensPRECO_CUSTO: TFMTBCDField;
    InsItem: TFDCommand;
    procedure EdtCodMotKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddMotClick(Sender: TObject);
    procedure BtnConsMotClick(Sender: TObject);
    procedure BtnConsProClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodProExit(Sender: TObject);
    procedure EdtCodProEnter(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BuscaItens;
    procedure FormShow(Sender: TObject);
    procedure BtnGravaClick(Sender: TObject);
    procedure LimpaItens;
    procedure BtnExcluiClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure Botoes(acao : string);
    procedure MemoOBSEnter(Sender: TObject);
    procedure MemoOBSExit(Sender: TObject);
    procedure MemoOBSKeyPress(Sender: TObject; var Key: Char);
    function  Ordem : integer;
    procedure FormCreate(Sender: TObject);
    procedure BtnColetorClick(Sender: TObject);
    procedure GravaItensColetor(const CodProd : integer; const Quant : currency;
          const Valor : currency);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtCodLocalEnter(Sender: TObject);
    procedure EdtCodLocalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtCodLocalExit(Sender: TObject);
    procedure BtnConsLocalClick(Sender: TObject);
    procedure BtnAddLocalClick(Sender: TObject);
    procedure EdtDataValidadeExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure EdtQuantEnter(Sender: TObject);
    procedure EdtQuantExit(Sender: TObject);
    procedure EdtDataValidadeEnter(Sender: TObject);
    procedure EdtCodProChange(Sender: TObject);
    procedure EdtQuantKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendaEnter(Sender: TObject);
    procedure edtVendaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaDataValidade;
    function ConvertCurrency(Text: String): Currency;
  end;

var
  FormAcertoEstoque: TFormAcertoEstoque;

implementation
Uses ModulodeDados, Ubibli1, UCadMotivo, UConsMotivo,
     UConsAcertoEstoque, UConsLocaisEstoque, UCadLocaisEstoque,
     ConsProdutos, Produtos, Z_RotinasGerais, Principal;
var  bGrava    : boolean;
     CUSTO_MEDIO, FRACAO, ESTOQUE : Real;
     cPrecoCusto, PRECO_ANT : currency;
{$R *.dfm}

function MessageDlgAde(Msg: string; AType: TMsgDlgType; AButtons:
TMsgDlgButtons;
IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean): Word;
var
I: Integer;
Mensagem: TForm;

begin
Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
Mensagem.HelpContext := IndiceHelp;
with Mensagem do
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TButton) then
    begin
      if (TButton(Components[i]).ModalResult = DefButton) then
      begin
        ActiveControl := TWincontrol(Components[i]);
      end;
    end;
  end;
  if Portugues then
  begin
    if Atype = mtConfirmation then
      Caption := 'Confirmação'
    else if AType = mtWarning then
      Caption := 'Aviso'
    else if AType = mtError then
      Caption := 'Erro'
    else if AType = mtInformation then
      Caption := 'Informação';
  end;
end;
if Portugues then
begin
  TButton(Mensagem.FindComponent('YES')).Caption := '&Entradas';
  TButton(Mensagem.FindComponent('NO')).Caption := '&Saidas';
end;
Result := Mensagem.ShowModal;
Mensagem.Free;
end;

procedure TFormAcertoEstoque.Botoes(acao : string);
begin
   {(N)OVO
    (G)RAVAR
    (C)ANCELAR
    (A)LTERAR
    (E)EXCLUIR
    (P)ESQUISAR/CONSULTAR }

   if (acao = 'N') or (acao = 'A') then
      begin
          btnNovo.Enabled      := false;
          BtnGravar.Enabled    := true;
          btnCancelar.Enabled  := true;
          BtnAlterar.Enabled   := false;
          if acao = 'N' then
             begin
                Limpaedit(FormAcertoEstoque);
                btnExcluir.Enabled   := false
             end
          else
              btnExcluir.Enabled:= true;
          BtnConsultar.Enabled:= false;
      end
   else
      begin
         if not (acao = 'G') then
            Limpaedit(FormAcertoEstoque);
         btnNovo.Enabled      := true;
         BtnGravar.Enabled    := false;
         btnCancelar.Enabled  := false;
         if (acao = 'C') or (acao = 'E') then
            begin
               btnalterar.Enabled   := false;
               BtnConsultar.Enabled := true;
            end
         else
            btnalterar.Enabled:= true;
         if acao = 'G' then
            btnExcluir.Enabled:= true
         else
            BtnExcluir.Enabled:= false;
      end;
end;

procedure TFormAcertoEstoque.GravaItensColetor(const CodProd : integer; const Quant : currency;
          const Valor : currency);
var iOrd : integer;
begin
   iOrd:= Ordem;
   iEmp := DM.SDS_EmpresaCODIGO.AsInteger;
   
   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QInsColetor do
      begin
         close;
         Parambyname('codace').AsInteger      := strtoint(cod_ace.Text);
         Parambyname('codemp').AsInteger      := iEmp;
         Parambyname('codmot').AsInteger      := lblTipoAcerto.Tag;
         Parambyname('codpro').AsInteger      := CodProd;
         Parambyname('ordem').AsInteger       := iOrd;
         Parambyname('quant').AsCurrency      := Quant;
         Parambyname('custo').AsCurrency      := 0;
         ExecSQL;
      end;
   IBTRAce.Commit;
   QInsColetor.Close;
end;

procedure TFormAcertoEstoque.LimpaItens;
begin
   EdtEstoque.Clear;
   edtcodpro.Clear;
   edtnomepro.Clear;
   edtquant.Text:= '1';
   EdtDataValidade.Clear;
   EdtCodPro.SetFocus;
   qtdeFracao.Text := '1';
   QtdeFracionada.Clear;
   Ccusto.Text := '0,000';
   edtVenda.Text := '0,000';
   edtVenda2.Text := '0,000';
end;

function TFormAcertoEstoque.Ordem : integer;
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with QOrdem do
      begin
         close;
         Parambyname('codace').Value  := cod_ace.Text;
         Open;
         result:= QOrdemORDEM.Value + 1;
      end;
   dm.IBTransaction.Commit;
   QOrdem.Close;
end;

procedure TFormAcertoEstoque.BuscaItens;
begin
   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('codace').AsInteger:= strtoint(cod_ace.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;
end;

procedure TFormAcertoEstoque.EdtCodMotKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #13, #8]) then
     key:= #0;
end;

procedure TFormAcertoEstoque.BtnAddMotClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmCadMotivo, FrmCadMotivo);
  FrmCadMotivo.Tag:= 0;
  FrmCadMotivo.ShowModal;
end;

procedure TFormAcertoEstoque.BtnConsMotClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsMotivo, FrmConsMotivo);
  FrmConsMotivo.Tag:= 2;
  FrmConsMotivo.ShowModal;
end;

procedure TFormAcertoEstoque.BtnConsProClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormConsProdutos, FormConsProdutos);
 // FormConsProdutos.tag:= 4;
  FormConsProdutos.Edit1.Text := EdtCodPro.Text;
  FormConsProdutos.showmodal;
  edtcodpro.Text       := dm.SDS_PRODUTOSCODIGO_BARRAS.AsString;
  edtcodpro1.Text      := dm.SDS_PRODUTOSCODIGO.AsString;
  edtnomepro.Text      := dm.SDS_PRODUTOSDESCRICAO.AsString;
  EdtEstoque.TEXT      := DM.SDS_PRODUTOSESTOQUE.Text;
  EdtDataValidade.Text := dm.SDS_PRODUTOSVALIDADE.AsString;
  QtdeFracionada.Text  := dm.SDS_PRODUTOSESTOQUE_FRACAO.AsString;
  qtdeFracao.Text      := dm.SDS_PRODUTOSFRACAO.AsString;
  edtVenda.Text       := FloatToStrF(dm.SDS_PRODUTOSPRECO_VENDA.AsFloat,ffNumber,12,3);
  edtVenda2.Text      := FloatToStrF(dm.SDS_PRODUTOSPRECO_VENDA2.AsFloat,ffNumber,12,3);
  EdtQuant.TEXT := '1';
  EdtQuant.SetFocus;

end;

procedure TFormAcertoEstoque.BtnAddProClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormProdutos, FormProdutos);
 // FormProdutos.tag:= 0;
  //FormProdutos.showmodal;
end;

procedure TFormAcertoEstoque.EdtCodProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     BtnConsPro.Click
  else
     if key = vk_f3 then
        BtnAddPro.Click;

  if Key = VK_RETURN THEN
  BEGIN
  if (edtcodpro.Text = '') then
  ShowMessage('Código do Produto deve ser Informado');
  EdtCodPro.SetFocus;
  end;
end;

procedure TFormAcertoEstoque.EdtCodProExit(Sender: TObject);
var bAux : boolean;
begin
  inherited;

 if (edtcodpro.Text = '') or (DBGrid1.Focused) or (BtnColetor.Focused) then
     exit;
 // EdtCodPro.SetFocus;
  CorSaida(Sender);
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
   // try
      with dm.QConsulta do
        begin
           close;
           sql.Clear;
          { if length(trim(EdtCodPro.Text)) > 7 then
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE ' +
                         'FROM PRODUTOS WHERE CODIGO_BARRAS = ' + #39 + Trim(EdtCodPro.Text) + #39);
              end
           else }
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE,  PRECO_CUSTO, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
                 Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);
                end;
           Open;
           if not FieldByName('CODIGO_BARRAS').IsNull then
              begin
                 bAux:= true;
                 EdtCodPro1.Text      := fieldbyname('CODIGO').AsString;
                 EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
                 EdtNomePro.Text      := fieldbyname('descricao').AsString;
                 EdtDataValidade.Text := fieldbyname('validade').AsString;
                 QtdeFracionada.Text  := fieldbyname('ESTOQUE_FRACAO').AsString;
                 qtdeFracao.Text      := fieldbyname('FRACAO').AsString;
                 Ccusto.Text       := FloatToStrF(fieldbyname('PRECO_CUSTO').Value,ffNumber,12,3);
                 edtVenda.Text       := FloatToStrF(fieldbyname('PRECO_VENDA').Value,ffNumber,12,3);
                 edtVenda2.Text      := FloatToStrF(fieldbyname('PRECO_VENDA2').Value,ffNumber,12,3);
                 EdtQuant.TEXT := '1';
                 EdtQuant.SetFocus;
              end
           else
              begin
                 bAux:= false;
                 LimpaItens;
                 showmessage('Produto não Cadastrado');
              end;
        end;
      dm.IBTransaction.Commit;
    {except
      dm.IBTransaction.Rollback;
      bAux:= false;
      showmessage('Erro ao buscar o produto');
      EdtCodPro.SetFocus;
    end; }
  finally
    dm.QConsulta.Close;
  end;
                dm.SDS_PRODUTOS.Active := false;
                DM.Sds_produtos.sql.clear;
                DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + edtcodpro.Text + '%' + #39+'' +'ORDER BY DESCRICAO');
                dm.SDS_PRODUTOS.Active := True;
                if DM.Sds_produtosCODIGO_LOCAL_ESTOQUE.text='' then
                 begin
                 ShowMessage('Produtos nao Lancaço neste Local de Estoque');
                 Exit;
                 EdtCodPro.SetFocus;
                end;


   EdtQuant.TEXT := '1';
  if bAux then
   EdtEstoque.Text:= currtostr(dm.BuscaEstoqueProduto(strtoint(EdtCodPro1.Text), iEmp));
end;
end;

procedure TFormAcertoEstoque.EdtCodProEnter(Sender: TObject);
begin
  inherited;
  CorEntrada(Sender);
  edtcodpro.SelectAll;
end;

procedure TFormAcertoEstoque.BtnGravarClick(Sender: TObject);
begin
  inherited;
{  if (bGrava) and (not DM.Acesso('M012','I')) then
     begin
        Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
        Abort;
        Exit;
     end;}
    
   // iEmp := dm.SDS_EmpresaCODIGO.AsInteger;
      
  if not panel5.Enabled then
     begin
        showmessage('Acerto já gravado');
        exit;
     end;

  if EdtCodLocal.Text = '' then
  begin
    EdtCodLocal.Text:= '1';
    EdtNomeLocal.Text:= 'GERAL';
  end;

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(cod_ace) as N_CODIGO FROM acerto_estoque');
   DM.ProxCod.Open;

  if IBTRAce.Active then
     IBTRAce.Commit;
  IBTRAce.StartTransaction;
  if bGrava = true then
     begin
        try
        //  try
            with QInsAce do
               begin
                  close;
                  cod_ace.Text:= inttostr(DM.ProxCodN_CODIGO.ASINTEGER + 1); //inttostr(prxcod('acerto_estoque', 'cod_ace', dm.IBTransaction, dm.QConsulta));
                  Parambyname('codemp').AsInteger  := iEmp;
                  Parambyname('codace').AsInteger  := strtoint(cod_ace.Text);
                  Parambyname('codmot').AsInteger  := lblTipoAcerto.Tag;
                  Parambyname('dataace').AsDate    := EdtData.Date;
                  Parambyname('obs').AsString      := trim(MemoOBS.Text);
                  Parambyname('local').AsInteger   := strtoint(EdtCodLocal.Text);
                  ExecSQL;
                  panel5.Enabled:= false;
                  panel6.Enabled:= true;
               end;
            IBTRAce.Commit;
            Botoes('G');
         { except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o Acerto');
            panel5.Enabled:= false;
            panel6.Enabled:= true;
          end;   }
        finally
          QInsAce.Close;
          btngrava.Enabled   := true;
          btnexclui.Enabled  := true;
        end;
     end
  else
     begin
        try
       //   try
            with QUpdAce do
               begin
                  close;
                  Parambyname('codace').AsInteger  := strtoint(cod_ace.Text);
                  Parambyname('dataace').AsDate    := EdtData.Date;
                  Parambyname('obs').AsString      := trim(MemoOBS.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
            panel5.Enabled:= false;
            panel6.Enabled:= true;
            Botoes('G');
        {  except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o Acerto');
          end; }
        finally
          QUpdAce.Close;
          btngrava.Enabled := true;
          btnexclui.Enabled:= true;
        end;
     end;
  BuscaItens;
  LimpaItens;
end;

procedure TFormAcertoEstoque.BtnNovoClick(Sender: TObject);
begin
  inherited;
  if MessageDlgAde('Informe o tipo de Acerto (Entradas ou Saidas).',MtInformation,[MbYes, MbNo],0, mrNo, True)=Mrno Then
  begin
    lblTipoAcerto.Tag:= 2;
    lblTipoAcerto.Caption:= 'Saidas';
  end
  else
  begin
    lblTipoAcerto.Tag:= 1;
    lblTipoAcerto.Caption:= 'Entradas';
  end;

  if IBTRAce.Active then
     IBTRAce.Commit;
  QBuscaItens.Close;
  bGrava:= true;
  {if not DM.Acesso('M012','I') then
     begin
        Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
        panel5.Enabled:= false;
        panel6.Enabled:= false;
        Abort;
        Exit;
     end;}
  Botoes('N');
  panel5.Enabled     := true;
  panel6.Enabled     := false;
  EdtData.Date       := date;
  btngrava.Enabled   := false;
  btnexclui.Enabled  := false;

  Edtdata.SetFocus;
end;

procedure TFormAcertoEstoque.BtnCancelarClick(Sender: TObject);
begin
  inherited;

  if not panel5.Enabled then
     showmessage('Acerto já foi gravado')
  else
     begin
        Botoes('C');
        panel5.Enabled:= false;
        panel6.Enabled:= false;
     end;
end;

procedure TFormAcertoEstoque.BtnAlterarClick(Sender: TObject);
begin
  inherited;
 { if not DM.Acesso('M012','A') then
     begin
        Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
        Abort;
        Exit;
     end; }
  bGrava:= false;
  panel5.Enabled       := true;

  EdtCodLocal.Enabled  := false;
  BtnConsLocal.Enabled := false;
  BtnAddLocal.Enabled  := false;

  Botoes('A');
  edtdata.SetFocus;
end;

procedure TFormAcertoEstoque.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  {if not DM.Acesso('M012','E') then
     begin
        Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
        Abort;
        Exit;
     end;}

  if Application.MessageBox('Confirma a Exclusão do Acerto?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        if IBTRAce.Active then
           IBTRAce.Commit;
        QBuscaItens.Close;
        IBTRAce.StartTransaction;
        try
          try
            with QDelAce do
               begin
                  close;
                  Parambyname('codace').AsInteger:= strtoint(cod_ace.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
            panel5.Enabled:= false;
            panel6.Enabled:= false;
            Botoes('E');
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Excluir o Acerto');
         end;
        finally
          QDelAce.Close;
        end;
     end;
end;

procedure TFormAcertoEstoque.FormShow(Sender: TObject);
begin
  inherited;
 // SetWindowPos(Handle,HWND_TOP,140,20,0,0,SWP_NOSIZE);

  panel5.Enabled   := false;
  panel6.Enabled   := false;
  if tag = 0 then
     begin
        bGrava:= true;
      {  if not DM.Acesso('M012','I') then
           begin
             Application.MessageBox('Você não tem permissão para efetuar esta operação.', 'Aviso', mb_ApplModal + mb_iconInformation + mb_OK + mb_DefButton1);
             Botoes('C');
           end
        else}
           begin
             Botoes('N');
             panel5.Enabled   := true;
             Edtdata.Date     := date;
             btngrava.Enabled := false;
             btnexclui.Enabled:= false;

             if MessageDlgAde('Informe o tipo de Acerto (Entradas ou Saidas).',MtInformation,[MbYes, MbNo],0, mrNo, True)=Mrno Then
              begin
                lblTipoAcerto.Tag:= 2;
                lblTipoAcerto.Caption:= 'Saidas';
              end
              else
              begin
                lblTipoAcerto.Tag:= 1;
                lblTipoAcerto.Caption:= 'Entradas';
              end;

             Edtdata.SetFocus;
           end;
     end
  else
     if tag = 1 then
        begin
           Botoes('G');
           btngrava.Enabled := true;
           btnexclui.Enabled:= true;
        end;
end;

procedure TFormAcertoEstoque.AtualizaDataValidade;
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.fConsulta do
      begin
         close;
         CommandText.Clear;
         CommandText.Text:= 'UPDATE PRODUTOS SET VALIDADE = :DATA, PRECO_CUSTO =:CUSTO, PRECO_VENDA = :VENDA, PRECO_VENDA2 = :VENDA2 ' +
                    'WHERE CODIGO = :CODPRO';

            Parambyname('data').AsDateTime    := EdtDataValidade.Date;
            IF ConvertCurrency(Ccusto.Text) > 0 then
              Parambyname('CUSTO').AsFloat    :=   ConvertCurrency(Ccusto.Text)
            ELSE
              parambyname('CUSTO').AsFloat    := cPrecoCusto;
            Parambyname('VENDA').AsFloat    := ConvertCurrency(edtVenda.Text);
            Parambyname('VENDA2').AsFloat    := ConvertCurrency(edtVenda2.Text);
            Parambyname('codpro').AsInteger  := strtoint(EdtCodPro1.Text);
         open;
      end;
   dm.IBTransaction.Commit;
   dm.fConsulta.Close;
end;

function TFormAcertoEstoque.ConvertCurrency(Text: String): Currency;
var
  VALOR: String;
begin
  //Se o text for diferente de vazio
  if Text <> '' then
  begin
    //Variavel valor recebe o mesmo
    VALOR:= Text;
    //Faz um loop para encontrar o ponto e se encontrar deleta o mesmo
    while Pos('.',VALOR) > 0 do
      Delete(VALOR,Pos('.',VALOR),1);
    //Remove os espaços e convert para Currency
    Result:= StrToCurr(Trim(Valor));
  end
  //Se for vazio passa 0
  else
    Result:= 0;
end;

procedure TFormAcertoEstoque.BtnGravaClick(Sender: TObject);
begin
  if (qtdeFracao.Text = '') or (ConvertCurrency(qtdeFracao.Text) <= 0) then
    qtdeFracao.Text:= '1';
  if EdtQuant.text = '' then
    qtdeFracao.Text:= '0';

  if ConvertCurrency(edtVenda.Text) <= 0 then
  begin
    Application.MessageBox('O Preço de Venda não pode ser menor ou igual a 0!!!', 'Atenção', mb_applmodal+MB_ICONWARNING+MB_OK);
    edtVenda.SetFocus;
    Exit;
  end;

  if ConvertCurrency(edtVenda2.Text) < 0 then
  begin
    Application.MessageBox('O Preço de Venda 2 não pode ser menor que 0!!!', 'Atenção', mb_applmodal+MB_ICONWARNING+MB_OK);
    edtVenda2.SetFocus;
    Exit;
  end;

  if EdtCodPro.Text = '' then
  begin
    Application.MessageBox('É necessário preencher o código do Produto!', 'Atenção', mb_applmodal+MB_ICONWARNING+MB_OK);
    EdtCodPro.SetFocus;
    Exit;
  end;

  AtualizaDataValidade;
  inherited;
  cPrecoCusto:= 0;
  if edtquant.Text = '0' then
  begin
    showmessage('Digite a quantidade');
    edtquant.SetFocus;
    exit;
  end;

  { BUSCA O CUSTO DO PRODUTO }
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
  //  try
      with dm.QConsulta do
         begin
            close;
            SQL.Clear;
            SQL.add('SELECT PRECO_CUSTO, CUSTO_MEDIO, PRECO_VENDA FROM PRODUTOS WHERE CODIGO = :CODPRO');
            Parambyname('CODPRO').AsInteger:= strtoint(EdtCodPro1.Text);
            open;
            cPrecoCusto:=  fieldbyname('preco_custo').AsCurrency;
            CUSTO_MEDIO := fieldbyname('custo_MEDIO').AsCurrency;
            PRECO_ANT   := fieldbyname('preco_VENDA').AsCurrency;
         end;
      dm.IBTransaction.Commit;
  {  except
      dm.IBTransaction.StartTransaction;
      showmessage('Erro ao buscar o custo do produto');
    end; }
  finally
    dm.QConsulta.Close;
  end;
    //    showmessage('ok');

   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('SELECT MAX(ORDEM) AS N_CODIGO FROM ITENS_ACERTO_ESTOQUE WHERE COD_ACE = :CODACE');
   dm.ProxCod.parambyname('codace').AsInteger    := strtoint(cod_ace.Text);
   DM.ProxCod.Open;


  if IBTRAce.Active then
     IBTRAce.Commit;
  IBTRAce.StartTransaction;
  try
  // try
      with InsItem do
         begin
            close;
            parambyname('codace').AsInteger    := strtoint(cod_ace.Text);
            parambyname('codpro').AsInteger    := strtoint(EdtCodPro1.Text);
            Parambyname('codmot').AsInteger    := lblTipoAcerto.Tag;
            parambyname('quant').AsCurrency    := ConvertCurrency(EdtQuant.Text);
            Parambyname('codemp').AsInteger    := iEmp;
            Parambyname('ordem').AsInteger     := dm.ProxCodN_CODIGO.AsInteger + 1;
            if ConvertCurrency(Ccusto.Text)  > 0 then
              Parambyname('custo').AsCurrency := ConvertCurrency(Ccusto.Text)
            else
              Parambyname('custo').AsCurrency    := cPrecoCusto;
            Parambyname('fracao').AsInteger     := strtoint(qtdeFracao.Text);
            Parambyname('local').AsInteger     := strtoint(EdtCodLocal.Text);
            open ;

         end;
      IBTRAce.Commit;
      atualizaDataValidade;
      ordem;
 {   except
      IBTRAce.Rollback;
      showmessage('Erro ao Gravar o Item, ' + #13 +
                  'Verifique que já foi lançado');
    end;  }
  finally

    InsItem.Close;
  end;
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_OCORRENCIA) as N_CODIGO FROM PRODUTOS_PRECOS_LOG');
   DM.ProxCod.Open;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
   DM.IBTransaction.StartTransaction;
   try
   // try
      with dm.logpro do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger         := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger          := strtoint(dm.sds_empresacodigo.Text);
            Parambyname('ID_PRODUTO').AsInteger         := strtoint(EdtCodPro1.Text);
            parambyname('ID_OCORRENCIA').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;
            Parambyname('TIPO_ALTERACAO').AsInteger     := 3; //acerto de estoque
            Parambyname('DATA_HORA').AsDateTime         := date;
            Parambyname('ID_USUARIO').Asinteger         := dm.sds_usuariosCodigo.AsInteger;
            Parambyname('P_COMPRA_ANT').Asfloat         := cPrecoCusto;
            Parambyname('P_CUSTO_ANT').Asfloat          := cPrecoCusto;
            Parambyname('P_CUSTO_MEDIO_ANT').Asfloat    := CUSTO_MEDIO;
            Parambyname('P_VENDA_ANT').Asfloat          := preco_ant;
            Parambyname('P_COMPRA_NOVO').Asfloat        := cPrecoCusto;
            Parambyname('P_CUSTO_NOVO').Asfloat         := cPrecoCusto;
            Parambyname('P_CUSTO_MEDIO_NOVO').Asfloat   := CUSTO_MEDIO;
            Parambyname('P_VENDA_NOVO').Asfloat         := ConvertCurrency(edtVenda.Text);
            ExecSQL;
         end;
      DM.IBTransaction.Commit;  
    {except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o log do produto, ' + #13 +
                  'Verifique que já foi lançFDo');
    end;}
   finally
    DM.LogPro.Close;
   end;
  {   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
   DM.ProxCod.Open; }

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with dm.logEst do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger      :=1;
            Parambyname('ID_PRODUTO').AsInteger     := strtoint(EdtCodPro1.Text);
            Parambyname('ID_LOTE').Value            := null;
            Parambyname('ID_PRODUTO_SERIE').Value  := null;
            Parambyname('DATA').AsDateTime     := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger   :=  strtoint(cod_ace.Text);
            Parambyname('FRACAO').Asfloat           := strtoint(qtdeFracao.Text);
            Parambyname('ESTOQUE_ANTERIOR').Asfloat := ConvertCurrency(EdtEstoque.Text);
            Parambyname('QUANTIDADE').Asfloat       :=  ConvertCurrency(EdtQuant.Text);
             if lblTipoAcerto.Tag = 1 THEN
            begin
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := EdtEstoque.VALUE + ConvertCurrency(EdtQuant.Text);
            end;
             if lblTipoAcerto.Tag = 2 THEN
            begin
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := EdtEstoque.VALUE - ConvertCurrency(EdtQuant.Text);
            end;

            Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE

            if lblTipoAcerto.Tag = 1 THEN
            begin
            Parambyname('OPERACAO').TEXT             := '+';
            end;
            if lblTipoAcerto.Tag = 2 THEN
            begin
            Parambyname('OPERACAO').TEXT             := '-';
            end;
            Parambyname('ACAO_BD').TEXT               := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value              :=  null;
            parambyname('COD_COMPRA').value              :=  null;
            Parambyname('HISTORICO').TEXT               := 'Inclusão do Acerto Estoque Nº ' + cod_ace.Text;
            Parambyname('HORA').AsString           := TimeToStr(Time);
            ExecSQL;
         end;
      DM.IBTransaction.Commit;

    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                  'Verifique que já foi lançado');
    end;
  finally
    DM.logEst.Close;
   end;


    LimpaItens;
    BuscaItens;
    IF lblTipoAcerto.Tag = 1 THEN
      formprincipal.log(codigo_usuario,'AC_ESTOQUE',QBuscaItensCOD_PRO.Text,'ALT +','FDICIONOU EST. DO PRODUTO Nº '+QBuscaItensCOD_PRO.Text +' Nome: '+ QBuscaItensDESCRICAO.text + ' Qtde '+ QBuscaItensQUANT.text)
    ELSE
      formprincipal.log(codigo_usuario,'AC_ESTOQUE',QBuscaItensCOD_PRO.Text,'ALT -','DIMINUIU EST. DO PRODUTO Nº '+QBuscaItensCOD_PRO.Text +' Nome: '+ QBuscaItensDESCRICAO.text + ' Qtde '+ QBuscaItensQUANT.text);


  BuscaItens;
end;

procedure TFormAcertoEstoque.BtnExcluiClick(Sender: TObject);
var iOrdem : integer;

begin
  inherited;
  if not DSQBuscaItens.DataSet.IsEmpty then
  begin
  iOrdem:= QBuscaItensORDEM.AsInteger;

  if Application.MessageBox('Confirma a Exclusão do Item?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
   { BUSCA O CUSTO DO PRODUTO }
     // BUSCA ESTOQUE
       if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

        try
          with dm.qConsulta do
             begin
                close;
                sql.Clear;
                sql.add('SELECT ESTOQUE, FRACAO FROM PRODUTOS WHERE CODIGO = :CODPRO');
                Parambyname('CODPRO').AsInteger:= QBuscaItensCOD_PRO.ASINTEGER;
                open;
                estoque:= fieldbyname('ESTOQUE').AsCurrency;
                FRACAO := fieldbyname('FRACAO').AsCurrency;

             end;
          dm.IBTransaction.Commit;
        except
          dm.IBTransaction.StartTransaction;
          showmessage('Erro ao buscar o custo do produto');
        end;


   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
   DM.ProxCod.Open;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with dm.logEst do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('ID_PRODUTO').AsInteger     :=  QBuscaItensCOD_PRO.ASINTEGER ;
            Parambyname('ID_LOTE').Value            := null;
            Parambyname('ID_PRODUTO_SERIE').Value   := null;
            Parambyname('DATA').AsDateTime          := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger   := strtoint(cod_ace.Text);
            Parambyname('FRACAO').Asfloat           := FRACAO;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat := ESTOQUE;
            Parambyname('QUANTIDADE').Asfloat       :=  QBuscaItensQUANT.AsFloat;

            Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 4;  // 4 - ACERTO ESTOQUE
            if lblTipoAcerto.Tag = 1 THEN
            begin
            Parambyname('OPERACAO').TEXT             := '-';
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE - QBuscaItensQUANT.AsFloat;
            end;
            if lblTipoAcerto.Tag = 2 THEN
            begin
            Parambyname('OPERACAO').TEXT             := '+';
             Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + QBuscaItensQUANT.AsFloat;
            end;
            Parambyname('ACAO_BD').TEXT               := 'E';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').value              :=  null;
            parambyname('COD_COMPRA').value              :=  null;
            Parambyname('HISTORICO').TEXT               := 'Exclusão do Acerto Estoque Nº ' +cod_ace.Text;
            Parambyname('HORA').AsString           := TimeToStr(Time);
            ExecSQL;
         end;
      DM.IBTransaction.Commit;

    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                  'Verifique que já foi lançado');
    end;
  finally
    dm.logEst.Close;
   end;


        try
          try
            with DelItem do
               begin
                  close;
                  Parambyname('codace').AsInteger := strtoint(cod_ace.text);
                  Parambyname('ordem').AsInteger  := iOrdem;
                  ExecSQL;
               end;
            IBTRAce.Commit;
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Excluir o Item');
          end;
        finally
          DelItem.Close;
          LimpaItens;
          BuscaItens;
          formprincipal.log(codigo_usuario,'AC_ESTOQUE',QBuscaItensCOD_PRO.Text,'EXCLUI','EXCLUSAO ACERTO DO PRODUTO Nº '+QBuscaItensCOD_PRO.Text +' Nome: '+ QBuscaItensDESCRICAO.text + 'Qtde '+ QBuscaItensQUANT.text);
        end;
     end;
  end
  else
    Application.MessageBox('Você não possue item para que possa excluir!!!', 'Atenção', mb_applmodal+MB_ICONWARNING+MB_OK);
end;

procedure TFormAcertoEstoque.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsAcertoEstoque, FrmConsAcertoEstoque);
  FrmConsAcertoEstoque.tag:= 0;
  FrmConsAcertoEstoque.showmodal;
end;

procedure TFormAcertoEstoque.MemoOBSEnter(Sender: TObject);
begin
  inherited;
  CorEntrada(SENDER);
  //FormAcertoEstoque.KeyPreview:= false;
end;

procedure TFormAcertoEstoque.MemoOBSExit(Sender: TObject);
begin
  inherited;
  CorSaida(SENDER);
  //FormAcertoEstoque.KeyPreview:= true;
  //BtnGravar.SetFocus;
  BtnGravarClick(Sender);
end;

procedure TFormAcertoEstoque.MemoOBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    key:= UpCase(key);
end;

procedure TFormAcertoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  PanelPB.Visible:= false;
end;

procedure TFormAcertoEstoque.BtnColetorClick(Sender: TObject);
var txt : TStrings;
    i   : integer;
    sCodBarra    : string;
    sQuant       : string;
    cQuant       : currency;
    iPosVirgula  : integer;
    iAuxCodProd  : integer;
begin
  inherited;
  if OP.Execute then
      begin
         if Application.MessageBox('Confirma a Importação?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
            begin
               txt:= TStringList.Create;
               txt.LoadFromFile(OP.FileName);
               PanelPB.Visible:= true;
               pb.Max:= txt.Count;
               pb.Min:= 0;
               if txt.Count = 0 then
                  raise Exception.Create('arquivo vazio');

               for i:= 0 to txt.Count -1 do
                  begin
                     try
                       iPosVirgula:= pos(',', txt[i]);
                       sCodBarra  := IntToStr(StrToInt64(copy(txt[i], 1, (iPosVirgula - 1))));
                       sQuant     := copy(txt[i], iPosVirgula + 1, length(txt[i]) - iPosVirgula);
                       cQuant     := StrToCurr(InverteValor(sQuant));
                       if cQuant > 0 then
                          begin
                             {busca o produto}
                             with dm.QConsulta do
                                 begin
                                    if dm.IBTransaction.Active then
                                       dm.IBTransaction.Commit;
                                    dm.IBTransaction.StartTransaction;

                                    close;
                                    sql.Clear;
                                    sql.Add('SELECT CODIGO ' +
                                            'FROM PRODUTOS ' +
                                            'WHERE CODIGO_BARRA = ' + #39 + sCodBarra + #39);
                                    Open;
                                    iAuxCodProd:= fieldbyname('cod_pro').AsInteger;
                                    dm.IBTransaction.Commit;
                                    close;

                                    if iAuxCodProd > 0 then
                                       begin
                                          GravaItensColetor(iAuxCodProd, cQuant, 0);
                                       end;
                                 end;
                          end;
                     except
                     end;
                     pb.Position:= i + 1;
                  end;
               txt.Free;
               PanelPB.Visible:= false;
               LimpaItens;
               BuscaItens;
            end;
      end;
end;

procedure TFormAcertoEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if IBTRAce.Active then
     IBTRAce.Commit;
  Action:= caFree;
end;

procedure TFormAcertoEstoque.EdtCodLocalEnter(Sender: TObject);
begin
  inherited;
  CorEntrada(Sender);
  EdtCodLocal.SelectAll;
end;

procedure TFormAcertoEstoque.EdtCodLocalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
     BtnConsLocal.Click;
end;

procedure TFormAcertoEstoque.EdtCodLocalExit(Sender: TObject);
begin
  inherited;
  {if ToolBar1.Focused then
     exit;}
  if EdtCodLocal.Text > '' then
  begin
  CorSaida(Sender);
  EdtNomeLocal.Text:= consulta('locais_estoque', EdtCodLocal, 'codigo', 'descricao', dm.IBTransaction, dm.qConsulta);
  if trim(EdtNomeLocal.Text) = '' then
     begin
        showmessage('Local de Estoque não Cadastrado');
        EdtCodLocal.SetFocus;
     end;
end;
end;

procedure TFormAcertoEstoque.BtnConsLocalClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmConsLocaisEstoque, FrmConsLocaisEstoque);
  FrmConsLocaisEstoque.Tag:= 2;
  FrmConsLocaisEstoque.ShowModal;
end;

procedure TFormAcertoEstoque.BtnAddLocalClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmCadLocaisEstoque, FrmCadLocaisEstoque);
  FrmCadLocaisEstoque.Tag:= 0;
  FrmCadLocaisEstoque.ShowModal;
end;

procedure TFormAcertoEstoque.EdtDataValidadeExit(Sender: TObject);
begin
  inherited;
  if EdtDataValidade.Text = '  /  /    ' then
     exit;
  CorSaida(Sender);
  try
    strtodate(EdtDataValidade.Text);
  except
    showmessage('Data inválida');
    EdtDataValidade.SetFocus;
  end;
end;

procedure TFormAcertoEstoque.BtnSairClick(Sender: TObject);
begin
  inherited;
CLOSE;
end;

procedure TFormAcertoEstoque.EdtQuantEnter(Sender: TObject);
begin
  inherited;
CorEntrada(Sender);
EdtQuant.Clear;
EdtQuant.Text := '1';
EdtQuant.SelectAll;
end;

procedure TFormAcertoEstoque.EdtQuantExit(Sender: TObject);
begin
  inherited;
  CorSaida(Sender);
  IF EdtQuant.Text = '' THEN
  begin
  ShowMessage('Quantidade informada invalida');
  EdtQuant.text :='1';
  EdtQuant.SetFocus;
  end;
end;

procedure TFormAcertoEstoque.EdtDataValidadeEnter(Sender: TObject);
begin
  inherited;
CorEntrada(SENDER);
end;

procedure TFormAcertoEstoque.EdtCodProChange(Sender: TObject);
begin
  inherited;
IF (EdtCodPro.Text>='A') AND (EdtCodPro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EdtCodPro.Text>='0') AND (EdtCodPro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EdtCodPro.Text='' THEN
EDIT2.Text:=''

end;

procedure TFormAcertoEstoque.EdtQuantKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (not(Key in ['0'..'9','.',','])) and (ord(Key)<> 8) and (Key <> #0)then
    Key:= #0;
end;

procedure TFormAcertoEstoque.edtVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not(Key in ['0'..'9','.',','])) and (ord(Key)<> 8) and (Key <> #0)then
    Key:= #0;
end;

procedure TFormAcertoEstoque.edtVendaEnter(Sender: TObject);
var
  VALOR: String;
begin
  if TEdit(Sender).Text <> '' then
  begin
    VALOR:= TEdit(Sender).Text;
    while Pos('.',VALOR) > 0 do
      Delete(VALOR,Pos('.',VALOR),1);
      
    TEdit(Sender).Text:= VALOR;
  end;
end;

procedure TFormAcertoEstoque.edtVendaExit(Sender: TObject);
begin
  if TEdit(Sender).Text <> '' then
  begin
    TEdit(Sender).Text:= FloatToStrF(StrToFloat(TEdit(Sender).Text),ffNumber,12,3);
  end
  else
    TEdit(Sender).Text:= '0,000';
end;

end.
