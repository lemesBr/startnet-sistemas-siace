
{********************************************************************************}
{                                                                                }
{                                XML Data Binding                                }
{                                                                                }
{         Generated on: 31/03/2010 14:59:40                                      }
{       Generated from: C:\Projetos\Novo\sngpc\sngpcComplexTypes200711v1_0.xsd   }
{   Settings stored in: C:\Projetos\Novo\sngpc\sngpcComplexTypes200711v1_0.xdb   }
{                                                                                }
{********************************************************************************}

unit sngpcComplexTypes200711v1_0;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLCt_NotaFiscal = interface;
  IXMLCt_Medicamento = interface;
  IXMLCt_Insumo = interface;
  IXMLCt_InsumoEntrada = interface;
  IXMLCt_InsumoTransferencia = interface;
  IXMLCt_InsumoPerda = interface;
  IXMLCt_InsumoVendaAoConsumidor = interface;
  IXMLCt_Comprador = interface;
  IXMLCt_Prescritor = interface;
  IXMLCt_Retorno = interface;
  IXMLSt_DescricaoValidacaoList = interface;

{ IXMLCt_NotaFiscal }

  IXMLCt_NotaFiscal = interface(IXMLNode)
    ['{73BED90E-D3BB-4007-8A2A-23C9044ECBAF}']
    { Property Accessors }
    function Get_NumeroNotaFiscal: Integer;
    function Get_TipoOperacaoNotaFiscal: WideString;
    function Get_DataNotaFiscal: WideString;
    function Get_CnpjOrigem: WideString;
    function Get_CnpjDestino: WideString;
    procedure Set_NumeroNotaFiscal(Value: Integer);
    procedure Set_TipoOperacaoNotaFiscal(Value: WideString);
    procedure Set_DataNotaFiscal(Value: WideString);
    procedure Set_CnpjOrigem(Value: WideString);
    procedure Set_CnpjDestino(Value: WideString);
    { Methods & Properties }
    property NumeroNotaFiscal: Integer read Get_NumeroNotaFiscal write Set_NumeroNotaFiscal;
    property TipoOperacaoNotaFiscal: WideString read Get_TipoOperacaoNotaFiscal write Set_TipoOperacaoNotaFiscal;
    property DataNotaFiscal: WideString read Get_DataNotaFiscal write Set_DataNotaFiscal;
    property CnpjOrigem: WideString read Get_CnpjOrigem write Set_CnpjOrigem;
    property CnpjDestino: WideString read Get_CnpjDestino write Set_CnpjDestino;
  end;

{ IXMLCt_Medicamento }

  IXMLCt_Medicamento = interface(IXMLNode)
    ['{47CF29CA-E48D-4CEE-AB9F-7D08FA18EC08}']
    { Property Accessors }
    function Get_RegistroMSMedicamento: WideString;
    function Get_NumeroLoteMedicamento: WideString;
    function Get_QuantidadeMedicamento: Integer;
    procedure Set_RegistroMSMedicamento(Value: WideString);
    procedure Set_NumeroLoteMedicamento(Value: WideString);
    procedure Set_QuantidadeMedicamento(Value: Integer);
    { Methods & Properties }
    property RegistroMSMedicamento: WideString read Get_RegistroMSMedicamento write Set_RegistroMSMedicamento;
    property NumeroLoteMedicamento: WideString read Get_NumeroLoteMedicamento write Set_NumeroLoteMedicamento;
    property QuantidadeMedicamento: Integer read Get_QuantidadeMedicamento write Set_QuantidadeMedicamento;
  end;

{ IXMLCt_Insumo }

  IXMLCt_Insumo = interface(IXMLNode)
    ['{110D5B8E-E522-47CA-8D04-CDA8020559F6}']
    { Property Accessors }
    function Get_CodigoInsumo: WideString;
    function Get_NumeroLoteInsumo: WideString;
    function Get_InsumoCNPJFornecedor: WideString;
    procedure Set_CodigoInsumo(Value: WideString);
    procedure Set_NumeroLoteInsumo(Value: WideString);
    procedure Set_InsumoCNPJFornecedor(Value: WideString);
    { Methods & Properties }
    property CodigoInsumo: WideString read Get_CodigoInsumo write Set_CodigoInsumo;
    property NumeroLoteInsumo: WideString read Get_NumeroLoteInsumo write Set_NumeroLoteInsumo;
    property InsumoCNPJFornecedor: WideString read Get_InsumoCNPJFornecedor write Set_InsumoCNPJFornecedor;
  end;

{ IXMLCt_InsumoEntrada }

  IXMLCt_InsumoEntrada = interface(IXMLNode)
    ['{18D24BCC-731F-4D2E-9013-612702142504}']
    { Property Accessors }
    function Get_InsumoEntrada: IXMLCt_Insumo;
    function Get_QuantidadeInsumoEntrada: WideString;
    function Get_TipoUnidadeEntrada: WideString;
    procedure Set_QuantidadeInsumoEntrada(Value: WideString);
    procedure Set_TipoUnidadeEntrada(Value: WideString);
    { Methods & Properties }
    property InsumoEntrada: IXMLCt_Insumo read Get_InsumoEntrada;
    property QuantidadeInsumoEntrada: WideString read Get_QuantidadeInsumoEntrada write Set_QuantidadeInsumoEntrada;
    property TipoUnidadeEntrada: WideString read Get_TipoUnidadeEntrada write Set_TipoUnidadeEntrada;
  end;

{ IXMLCt_InsumoTransferencia }

  IXMLCt_InsumoTransferencia = interface(IXMLNode)
    ['{AF60B240-3554-4662-9A17-231466E48EF3}']
    { Property Accessors }
    function Get_InsumoTransferencia: IXMLCt_Insumo;
    function Get_QuantidadeInsumoTransferencia: WideString;
    function Get_TipoUnidadeTransferencia: WideString;
    procedure Set_QuantidadeInsumoTransferencia(Value: WideString);
    procedure Set_TipoUnidadeTransferencia(Value: WideString);
    { Methods & Properties }
    property InsumoTransferencia: IXMLCt_Insumo read Get_InsumoTransferencia;
    property QuantidadeInsumoTransferencia: WideString read Get_QuantidadeInsumoTransferencia write Set_QuantidadeInsumoTransferencia;
    property TipoUnidadeTransferencia: WideString read Get_TipoUnidadeTransferencia write Set_TipoUnidadeTransferencia;
  end;

{ IXMLCt_InsumoPerda }

  IXMLCt_InsumoPerda = interface(IXMLNode)
    ['{1EF9D6D9-A658-4B8C-969D-2A4608BA0000}']
    { Property Accessors }
    function Get_InsumoPerda: IXMLCt_Insumo;
    function Get_QuantidadeInsumoPerda: WideString;
    function Get_TipoUnidadePerda: WideString;
    procedure Set_QuantidadeInsumoPerda(Value: WideString);
    procedure Set_TipoUnidadePerda(Value: WideString);
    { Methods & Properties }
    property InsumoPerda: IXMLCt_Insumo read Get_InsumoPerda;
    property QuantidadeInsumoPerda: WideString read Get_QuantidadeInsumoPerda write Set_QuantidadeInsumoPerda;
    property TipoUnidadePerda: WideString read Get_TipoUnidadePerda write Set_TipoUnidadePerda;
  end;

{ IXMLCt_InsumoVendaAoConsumidor }

  IXMLCt_InsumoVendaAoConsumidor = interface(IXMLNode)
    ['{43CFBC12-41F3-4032-B98E-A662C7E91775}']
    { Property Accessors }
    function Get_InsumoVendaAoConsumidor: IXMLCt_Insumo;
    function Get_QuantidadeDeInsumoPorUnidadeFarmacotecnica: WideString;
    function Get_UnidadeDeMedidaDoInsumo: WideString;
    function Get_UnidadeFarmacotecnica: Integer;
    function Get_QuantidadeDeUnidadesFarmacotecnicas: WideString;
    procedure Set_QuantidadeDeInsumoPorUnidadeFarmacotecnica(Value: WideString);
    procedure Set_UnidadeDeMedidaDoInsumo(Value: WideString);
    procedure Set_UnidadeFarmacotecnica(Value: Integer);
    procedure Set_QuantidadeDeUnidadesFarmacotecnicas(Value: WideString);
    { Methods & Properties }
    property InsumoVendaAoConsumidor: IXMLCt_Insumo read Get_InsumoVendaAoConsumidor;
    property QuantidadeDeInsumoPorUnidadeFarmacotecnica: WideString read Get_QuantidadeDeInsumoPorUnidadeFarmacotecnica write Set_QuantidadeDeInsumoPorUnidadeFarmacotecnica;
    property UnidadeDeMedidaDoInsumo: WideString read Get_UnidadeDeMedidaDoInsumo write Set_UnidadeDeMedidaDoInsumo;
    property UnidadeFarmacotecnica: Integer read Get_UnidadeFarmacotecnica write Set_UnidadeFarmacotecnica;
    property QuantidadeDeUnidadesFarmacotecnicas: WideString read Get_QuantidadeDeUnidadesFarmacotecnicas write Set_QuantidadeDeUnidadesFarmacotecnicas;
  end;

{ IXMLCt_Comprador }

  IXMLCt_Comprador = interface(IXMLNode)
    ['{6CC1BA59-C041-493D-93EB-6AB147A7AA4A}']
    { Property Accessors }
    function Get_NomeComprador: WideString;
    function Get_TipoDocumento: WideString;
    function Get_NumeroDocumento: WideString;
    function Get_OrgaoExpedidor: WideString;
    function Get_UFEmissaoDocumento: WideString;
    procedure Set_NomeComprador(Value: WideString);
    procedure Set_TipoDocumento(Value: WideString);
    procedure Set_NumeroDocumento(Value: WideString);
    procedure Set_OrgaoExpedidor(Value: WideString);
    procedure Set_UFEmissaoDocumento(Value: WideString);
    { Methods & Properties }
    property NomeComprador: WideString read Get_NomeComprador write Set_NomeComprador;
    property TipoDocumento: WideString read Get_TipoDocumento write Set_TipoDocumento;
    property NumeroDocumento: WideString read Get_NumeroDocumento write Set_NumeroDocumento;
    property OrgaoExpedidor: WideString read Get_OrgaoExpedidor write Set_OrgaoExpedidor;
    property UFEmissaoDocumento: WideString read Get_UFEmissaoDocumento write Set_UFEmissaoDocumento;
  end;

{ IXMLCt_Prescritor }

  IXMLCt_Prescritor = interface(IXMLNode)
    ['{4AB22611-26AD-42A5-8BF1-AF05A483D763}']
    { Property Accessors }
    function Get_NomePrescritor: WideString;
    function Get_NumeroRegistroProfissional: WideString;
    function Get_ConselhoProfissional: WideString;
    function Get_UFConselho: WideString;
    procedure Set_NomePrescritor(Value: WideString);
    procedure Set_NumeroRegistroProfissional(Value: WideString);
    procedure Set_ConselhoProfissional(Value: WideString);
    procedure Set_UFConselho(Value: WideString);
    { Methods & Properties }
    property NomePrescritor: WideString read Get_NomePrescritor write Set_NomePrescritor;
    property NumeroRegistroProfissional: WideString read Get_NumeroRegistroProfissional write Set_NumeroRegistroProfissional;
    property ConselhoProfissional: WideString read Get_ConselhoProfissional write Set_ConselhoProfissional;
    property UFConselho: WideString read Get_UFConselho write Set_UFConselho;
  end;

{ IXMLCt_Retorno }

  IXMLCt_Retorno = interface(IXMLNode)
    ['{07D74483-7C7D-45DE-84E2-7B7CC28D90DD}']
    { Property Accessors }
    function Get_Hash: WideString;
    function Get_DataInicioRetorno: WideString;
    function Get_DataFimRetorno: WideString;
    function Get_DataTransmissao: WideString;
    function Get_DataValidacao: WideString;
    function Get_DescricaoValidacao: IXMLSt_DescricaoValidacaoList;
    function Get_Validado: WideString;
    procedure Set_Hash(Value: WideString);
    procedure Set_DataInicioRetorno(Value: WideString);
    procedure Set_DataFimRetorno(Value: WideString);
    procedure Set_DataTransmissao(Value: WideString);
    procedure Set_DataValidacao(Value: WideString);
    procedure Set_Validado(Value: WideString);
    { Methods & Properties }
    property Hash: WideString read Get_Hash write Set_Hash;
    property DataInicioRetorno: WideString read Get_DataInicioRetorno write Set_DataInicioRetorno;
    property DataFimRetorno: WideString read Get_DataFimRetorno write Set_DataFimRetorno;
    property DataTransmissao: WideString read Get_DataTransmissao write Set_DataTransmissao;
    property DataValidacao: WideString read Get_DataValidacao write Set_DataValidacao;
    property DescricaoValidacao: IXMLSt_DescricaoValidacaoList read Get_DescricaoValidacao;
    property Validado: WideString read Get_Validado write Set_Validado;
  end;

{ IXMLSt_DescricaoValidacaoList }

  IXMLSt_DescricaoValidacaoList = interface(IXMLNodeCollection)
    ['{17D53A24-FB77-46C1-9F23-2255B3692F97}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLCt_NotaFiscal = class;
  TXMLCt_Medicamento = class;
  TXMLCt_Insumo = class;
  TXMLCt_InsumoEntrada = class;
  TXMLCt_InsumoTransferencia = class;
  TXMLCt_InsumoPerda = class;
  TXMLCt_InsumoVendaAoConsumidor = class;
  TXMLCt_Comprador = class;
  TXMLCt_Prescritor = class;
  TXMLCt_Retorno = class;
  TXMLSt_DescricaoValidacaoList = class;

{ TXMLCt_NotaFiscal }

  TXMLCt_NotaFiscal = class(TXMLNode, IXMLCt_NotaFiscal)
  protected
    { IXMLCt_NotaFiscal }
    function Get_NumeroNotaFiscal: Integer;
    function Get_TipoOperacaoNotaFiscal: WideString;
    function Get_DataNotaFiscal: WideString;
    function Get_CnpjOrigem: WideString;
    function Get_CnpjDestino: WideString;
    procedure Set_NumeroNotaFiscal(Value: Integer);
    procedure Set_TipoOperacaoNotaFiscal(Value: WideString);
    procedure Set_DataNotaFiscal(Value: WideString);
    procedure Set_CnpjOrigem(Value: WideString);
    procedure Set_CnpjDestino(Value: WideString);
  end;

{ TXMLCt_Medicamento }

  TXMLCt_Medicamento = class(TXMLNode, IXMLCt_Medicamento)
  protected
    { IXMLCt_Medicamento }
    function Get_RegistroMSMedicamento: WideString;
    function Get_NumeroLoteMedicamento: WideString;
    function Get_QuantidadeMedicamento: Integer;
    procedure Set_RegistroMSMedicamento(Value: WideString);
    procedure Set_NumeroLoteMedicamento(Value: WideString);
    procedure Set_QuantidadeMedicamento(Value: Integer);
  end;

{ TXMLCt_Insumo }

  TXMLCt_Insumo = class(TXMLNode, IXMLCt_Insumo)
  protected
    { IXMLCt_Insumo }
    function Get_CodigoInsumo: WideString;
    function Get_NumeroLoteInsumo: WideString;
    function Get_InsumoCNPJFornecedor: WideString;
    procedure Set_CodigoInsumo(Value: WideString);
    procedure Set_NumeroLoteInsumo(Value: WideString);
    procedure Set_InsumoCNPJFornecedor(Value: WideString);
  end;

{ TXMLCt_InsumoEntrada }

  TXMLCt_InsumoEntrada = class(TXMLNode, IXMLCt_InsumoEntrada)
  protected
    { IXMLCt_InsumoEntrada }
    function Get_InsumoEntrada: IXMLCt_Insumo;
    function Get_QuantidadeInsumoEntrada: WideString;
    function Get_TipoUnidadeEntrada: WideString;
    procedure Set_QuantidadeInsumoEntrada(Value: WideString);
    procedure Set_TipoUnidadeEntrada(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_InsumoTransferencia }

  TXMLCt_InsumoTransferencia = class(TXMLNode, IXMLCt_InsumoTransferencia)
  protected
    { IXMLCt_InsumoTransferencia }
    function Get_InsumoTransferencia: IXMLCt_Insumo;
    function Get_QuantidadeInsumoTransferencia: WideString;
    function Get_TipoUnidadeTransferencia: WideString;
    procedure Set_QuantidadeInsumoTransferencia(Value: WideString);
    procedure Set_TipoUnidadeTransferencia(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_InsumoPerda }

  TXMLCt_InsumoPerda = class(TXMLNode, IXMLCt_InsumoPerda)
  protected
    { IXMLCt_InsumoPerda }
    function Get_InsumoPerda: IXMLCt_Insumo;
    function Get_QuantidadeInsumoPerda: WideString;
    function Get_TipoUnidadePerda: WideString;
    procedure Set_QuantidadeInsumoPerda(Value: WideString);
    procedure Set_TipoUnidadePerda(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_InsumoVendaAoConsumidor }

  TXMLCt_InsumoVendaAoConsumidor = class(TXMLNode, IXMLCt_InsumoVendaAoConsumidor)
  protected
    { IXMLCt_InsumoVendaAoConsumidor }
    function Get_InsumoVendaAoConsumidor: IXMLCt_Insumo;
    function Get_QuantidadeDeInsumoPorUnidadeFarmacotecnica: WideString;
    function Get_UnidadeDeMedidaDoInsumo: WideString;
    function Get_UnidadeFarmacotecnica: Integer;
    function Get_QuantidadeDeUnidadesFarmacotecnicas: WideString;
    procedure Set_QuantidadeDeInsumoPorUnidadeFarmacotecnica(Value: WideString);
    procedure Set_UnidadeDeMedidaDoInsumo(Value: WideString);
    procedure Set_UnidadeFarmacotecnica(Value: Integer);
    procedure Set_QuantidadeDeUnidadesFarmacotecnicas(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_Comprador }

  TXMLCt_Comprador = class(TXMLNode, IXMLCt_Comprador)
  protected
    { IXMLCt_Comprador }
    function Get_NomeComprador: WideString;
    function Get_TipoDocumento: WideString;
    function Get_NumeroDocumento: WideString;
    function Get_OrgaoExpedidor: WideString;
    function Get_UFEmissaoDocumento: WideString;
    procedure Set_NomeComprador(Value: WideString);
    procedure Set_TipoDocumento(Value: WideString);
    procedure Set_NumeroDocumento(Value: WideString);
    procedure Set_OrgaoExpedidor(Value: WideString);
    procedure Set_UFEmissaoDocumento(Value: WideString);
  end;

{ TXMLCt_Prescritor }

  TXMLCt_Prescritor = class(TXMLNode, IXMLCt_Prescritor)
  protected
    { IXMLCt_Prescritor }
    function Get_NomePrescritor: WideString;
    function Get_NumeroRegistroProfissional: WideString;
    function Get_ConselhoProfissional: WideString;
    function Get_UFConselho: WideString;
    procedure Set_NomePrescritor(Value: WideString);
    procedure Set_NumeroRegistroProfissional(Value: WideString);
    procedure Set_ConselhoProfissional(Value: WideString);
    procedure Set_UFConselho(Value: WideString);
  end;

{ TXMLCt_Retorno }

  TXMLCt_Retorno = class(TXMLNode, IXMLCt_Retorno)
  private
    FDescricaoValidacao: IXMLSt_DescricaoValidacaoList;
  protected
    { IXMLCt_Retorno }
    function Get_Hash: WideString;
    function Get_DataInicioRetorno: WideString;
    function Get_DataFimRetorno: WideString;
    function Get_DataTransmissao: WideString;
    function Get_DataValidacao: WideString;
    function Get_DescricaoValidacao: IXMLSt_DescricaoValidacaoList;
    function Get_Validado: WideString;
    procedure Set_Hash(Value: WideString);
    procedure Set_DataInicioRetorno(Value: WideString);
    procedure Set_DataFimRetorno(Value: WideString);
    procedure Set_DataTransmissao(Value: WideString);
    procedure Set_DataValidacao(Value: WideString);
    procedure Set_Validado(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSt_DescricaoValidacaoList }

  TXMLSt_DescricaoValidacaoList = class(TXMLNodeCollection, IXMLSt_DescricaoValidacaoList)
  protected
    { IXMLSt_DescricaoValidacaoList }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

implementation

{ TXMLCt_NotaFiscal }

function TXMLCt_NotaFiscal.Get_NumeroNotaFiscal: Integer;
begin
  Result := ChildNodes['numeroNotaFiscal'].NodeValue;
end;

procedure TXMLCt_NotaFiscal.Set_NumeroNotaFiscal(Value: Integer);
begin
  ChildNodes['numeroNotaFiscal'].NodeValue := Value;
end;

function TXMLCt_NotaFiscal.Get_TipoOperacaoNotaFiscal: WideString;
begin
  Result := ChildNodes['tipoOperacaoNotaFiscal'].Text;
end;

procedure TXMLCt_NotaFiscal.Set_TipoOperacaoNotaFiscal(Value: WideString);
begin
  ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := Value;
end;

function TXMLCt_NotaFiscal.Get_DataNotaFiscal: WideString;
begin
  Result := ChildNodes['dataNotaFiscal'].Text;
end;

procedure TXMLCt_NotaFiscal.Set_DataNotaFiscal(Value: WideString);
begin
  ChildNodes['dataNotaFiscal'].NodeValue := Value;
end;

function TXMLCt_NotaFiscal.Get_CnpjOrigem: WideString;
begin
  Result := ChildNodes['cnpjOrigem'].Text;
end;

procedure TXMLCt_NotaFiscal.Set_CnpjOrigem(Value: WideString);
begin
  ChildNodes['cnpjOrigem'].NodeValue := Value;
end;

function TXMLCt_NotaFiscal.Get_CnpjDestino: WideString;
begin
  Result := ChildNodes['cnpjDestino'].Text;
end;

procedure TXMLCt_NotaFiscal.Set_CnpjDestino(Value: WideString);
begin
  ChildNodes['cnpjDestino'].NodeValue := Value;
end;

{ TXMLCt_Medicamento }

function TXMLCt_Medicamento.Get_RegistroMSMedicamento: WideString;
begin
  Result := ChildNodes['registroMSMedicamento'].Text;
end;

procedure TXMLCt_Medicamento.Set_RegistroMSMedicamento(Value: WideString);
begin
  ChildNodes['registroMSMedicamento'].NodeValue := Value;
end;

function TXMLCt_Medicamento.Get_NumeroLoteMedicamento: WideString;
begin
  Result := ChildNodes['numeroLoteMedicamento'].Text;
end;

procedure TXMLCt_Medicamento.Set_NumeroLoteMedicamento(Value: WideString);
begin
  ChildNodes['numeroLoteMedicamento'].NodeValue := Value;
end;

function TXMLCt_Medicamento.Get_QuantidadeMedicamento: Integer;
begin
  Result := ChildNodes['quantidadeMedicamento'].NodeValue;
end;

procedure TXMLCt_Medicamento.Set_QuantidadeMedicamento(Value: Integer);
begin
  ChildNodes['quantidadeMedicamento'].NodeValue := Value;
end;

{ TXMLCt_Insumo }

function TXMLCt_Insumo.Get_CodigoInsumo: WideString;
begin
  Result := ChildNodes['codigoInsumo'].Text;
end;

procedure TXMLCt_Insumo.Set_CodigoInsumo(Value: WideString);
begin
  ChildNodes['codigoInsumo'].NodeValue := Value;
end;

function TXMLCt_Insumo.Get_NumeroLoteInsumo: WideString;
begin
  Result := ChildNodes['numeroLoteInsumo'].Text;
end;

procedure TXMLCt_Insumo.Set_NumeroLoteInsumo(Value: WideString);
begin
  ChildNodes['numeroLoteInsumo'].NodeValue := Value;
end;

function TXMLCt_Insumo.Get_InsumoCNPJFornecedor: WideString;
begin
  Result := ChildNodes['insumoCNPJFornecedor'].Text;
end;

procedure TXMLCt_Insumo.Set_InsumoCNPJFornecedor(Value: WideString);
begin
  ChildNodes['insumoCNPJFornecedor'].NodeValue := Value;
end;

{ TXMLCt_InsumoEntrada }

procedure TXMLCt_InsumoEntrada.AfterConstruction;
begin
  RegisterChildNode('insumoEntrada', TXMLCt_Insumo);
  inherited;
end;

function TXMLCt_InsumoEntrada.Get_InsumoEntrada: IXMLCt_Insumo;
begin
  Result := ChildNodes['insumoEntrada'] as IXMLCt_Insumo;
end;

function TXMLCt_InsumoEntrada.Get_QuantidadeInsumoEntrada: WideString;
begin
  Result := ChildNodes['quantidadeInsumoEntrada'].Text;
end;

procedure TXMLCt_InsumoEntrada.Set_QuantidadeInsumoEntrada(Value: WideString);
begin
  ChildNodes['quantidadeInsumoEntrada'].NodeValue := Value;
end;

function TXMLCt_InsumoEntrada.Get_TipoUnidadeEntrada: WideString;
begin
  Result := ChildNodes['tipoUnidadeEntrada'].Text;
end;

procedure TXMLCt_InsumoEntrada.Set_TipoUnidadeEntrada(Value: WideString);
begin
  ChildNodes['tipoUnidadeEntrada'].NodeValue := Value;
end;

{ TXMLCt_InsumoTransferencia }

procedure TXMLCt_InsumoTransferencia.AfterConstruction;
begin
  RegisterChildNode('insumoTransferencia', TXMLCt_Insumo);
  inherited;
end;

function TXMLCt_InsumoTransferencia.Get_InsumoTransferencia: IXMLCt_Insumo;
begin
  Result := ChildNodes['insumoTransferencia'] as IXMLCt_Insumo;
end;

function TXMLCt_InsumoTransferencia.Get_QuantidadeInsumoTransferencia: WideString;
begin
  Result := ChildNodes['quantidadeInsumoTransferencia'].Text;
end;

procedure TXMLCt_InsumoTransferencia.Set_QuantidadeInsumoTransferencia(Value: WideString);
begin
  ChildNodes['quantidadeInsumoTransferencia'].NodeValue := Value;
end;

function TXMLCt_InsumoTransferencia.Get_TipoUnidadeTransferencia: WideString;
begin
  Result := ChildNodes['tipoUnidadeTransferencia'].Text;
end;

procedure TXMLCt_InsumoTransferencia.Set_TipoUnidadeTransferencia(Value: WideString);
begin
  ChildNodes['tipoUnidadeTransferencia'].NodeValue := Value;
end;

{ TXMLCt_InsumoPerda }

procedure TXMLCt_InsumoPerda.AfterConstruction;
begin
  RegisterChildNode('insumoPerda', TXMLCt_Insumo);
  inherited;
end;

function TXMLCt_InsumoPerda.Get_InsumoPerda: IXMLCt_Insumo;
begin
  Result := ChildNodes['insumoPerda'] as IXMLCt_Insumo;
end;

function TXMLCt_InsumoPerda.Get_QuantidadeInsumoPerda: WideString;
begin
  Result := ChildNodes['quantidadeInsumoPerda'].Text;
end;

procedure TXMLCt_InsumoPerda.Set_QuantidadeInsumoPerda(Value: WideString);
begin
  ChildNodes['quantidadeInsumoPerda'].NodeValue := Value;
end;

function TXMLCt_InsumoPerda.Get_TipoUnidadePerda: WideString;
begin
  Result := ChildNodes['tipoUnidadePerda'].Text;
end;

procedure TXMLCt_InsumoPerda.Set_TipoUnidadePerda(Value: WideString);
begin
  ChildNodes['tipoUnidadePerda'].NodeValue := Value;
end;

{ TXMLCt_InsumoVendaAoConsumidor }

procedure TXMLCt_InsumoVendaAoConsumidor.AfterConstruction;
begin
  RegisterChildNode('insumoVendaAoConsumidor', TXMLCt_Insumo);
  inherited;
end;

function TXMLCt_InsumoVendaAoConsumidor.Get_InsumoVendaAoConsumidor: IXMLCt_Insumo;
begin
  Result := ChildNodes['insumoVendaAoConsumidor'] as IXMLCt_Insumo;
end;

function TXMLCt_InsumoVendaAoConsumidor.Get_QuantidadeDeInsumoPorUnidadeFarmacotecnica: WideString;
begin
  Result := ChildNodes['quantidadeDeInsumoPorUnidadeFarmacotecnica'].Text;
end;

procedure TXMLCt_InsumoVendaAoConsumidor.Set_QuantidadeDeInsumoPorUnidadeFarmacotecnica(Value: WideString);
begin
  ChildNodes['quantidadeDeInsumoPorUnidadeFarmacotecnica'].NodeValue := Value;
end;

function TXMLCt_InsumoVendaAoConsumidor.Get_UnidadeDeMedidaDoInsumo: WideString;
begin
  Result := ChildNodes['unidadeDeMedidaDoInsumo'].Text;
end;

procedure TXMLCt_InsumoVendaAoConsumidor.Set_UnidadeDeMedidaDoInsumo(Value: WideString);
begin
  ChildNodes['unidadeDeMedidaDoInsumo'].NodeValue := Value;
end;

function TXMLCt_InsumoVendaAoConsumidor.Get_UnidadeFarmacotecnica: Integer;
begin
  Result := ChildNodes['unidadeFarmacotecnica'].NodeValue;
end;

procedure TXMLCt_InsumoVendaAoConsumidor.Set_UnidadeFarmacotecnica(Value: Integer);
begin
  ChildNodes['unidadeFarmacotecnica'].NodeValue := Value;
end;

function TXMLCt_InsumoVendaAoConsumidor.Get_QuantidadeDeUnidadesFarmacotecnicas: WideString;
begin
  Result := ChildNodes['quantidadeDeUnidadesFarmacotecnicas'].Text;
end;

procedure TXMLCt_InsumoVendaAoConsumidor.Set_QuantidadeDeUnidadesFarmacotecnicas(Value: WideString);
begin
  ChildNodes['quantidadeDeUnidadesFarmacotecnicas'].NodeValue := Value;
end;

{ TXMLCt_Comprador }

function TXMLCt_Comprador.Get_NomeComprador: WideString;
begin
  Result := ChildNodes['nomeComprador'].Text;
end;

procedure TXMLCt_Comprador.Set_NomeComprador(Value: WideString);
begin
  ChildNodes['nomeComprador'].NodeValue := Value;
end;

function TXMLCt_Comprador.Get_TipoDocumento: WideString;
begin
  Result := ChildNodes['tipoDocumento'].Text;
end;

procedure TXMLCt_Comprador.Set_TipoDocumento(Value: WideString);
begin
  ChildNodes['tipoDocumento'].NodeValue := Value;
end;

function TXMLCt_Comprador.Get_NumeroDocumento: WideString;
begin
  Result := ChildNodes['numeroDocumento'].Text;
end;

procedure TXMLCt_Comprador.Set_NumeroDocumento(Value: WideString);
begin
  ChildNodes['numeroDocumento'].NodeValue := Value;
end;

function TXMLCt_Comprador.Get_OrgaoExpedidor: WideString;
begin
  Result := ChildNodes['orgaoExpedidor'].Text;
end;

procedure TXMLCt_Comprador.Set_OrgaoExpedidor(Value: WideString);
begin
  ChildNodes['orgaoExpedidor'].NodeValue := Value;
end;

function TXMLCt_Comprador.Get_UFEmissaoDocumento: WideString;
begin
  Result := ChildNodes['UFEmissaoDocumento'].Text;
end;

procedure TXMLCt_Comprador.Set_UFEmissaoDocumento(Value: WideString);
begin
  ChildNodes['UFEmissaoDocumento'].NodeValue := Value;
end;

{ TXMLCt_Prescritor }

function TXMLCt_Prescritor.Get_NomePrescritor: WideString;
begin
  Result := ChildNodes['nomePrescritor'].Text;
end;

procedure TXMLCt_Prescritor.Set_NomePrescritor(Value: WideString);
begin
  ChildNodes['nomePrescritor'].NodeValue := Value;
end;

function TXMLCt_Prescritor.Get_NumeroRegistroProfissional: WideString;
begin
  Result := ChildNodes['numeroRegistroProfissional'].Text;
end;

procedure TXMLCt_Prescritor.Set_NumeroRegistroProfissional(Value: WideString);
begin
  ChildNodes['numeroRegistroProfissional'].NodeValue := Value;
end;

function TXMLCt_Prescritor.Get_ConselhoProfissional: WideString;
begin
  Result := ChildNodes['conselhoProfissional'].Text;
end;

procedure TXMLCt_Prescritor.Set_ConselhoProfissional(Value: WideString);
begin
  ChildNodes['conselhoProfissional'].NodeValue := Value;
end;

function TXMLCt_Prescritor.Get_UFConselho: WideString;
begin
  Result := ChildNodes['UFConselho'].Text;
end;

procedure TXMLCt_Prescritor.Set_UFConselho(Value: WideString);
begin
  ChildNodes['UFConselho'].NodeValue := Value;
end;

{ TXMLCt_Retorno }

procedure TXMLCt_Retorno.AfterConstruction;
begin
  FDescricaoValidacao := CreateCollection(TXMLSt_DescricaoValidacaoList, IXMLNode, 'descricaoValidacao') as IXMLSt_DescricaoValidacaoList;
  inherited;
end;

function TXMLCt_Retorno.Get_Hash: WideString;
begin
  Result := ChildNodes['hash'].Text;
end;

procedure TXMLCt_Retorno.Set_Hash(Value: WideString);
begin
  ChildNodes['hash'].NodeValue := Value;
end;

function TXMLCt_Retorno.Get_DataInicioRetorno: WideString;
begin
  Result := ChildNodes['dataInicioRetorno'].Text;
end;

procedure TXMLCt_Retorno.Set_DataInicioRetorno(Value: WideString);
begin
  ChildNodes['dataInicioRetorno'].NodeValue := Value;
end;

function TXMLCt_Retorno.Get_DataFimRetorno: WideString;
begin
  Result := ChildNodes['dataFimRetorno'].Text;
end;

procedure TXMLCt_Retorno.Set_DataFimRetorno(Value: WideString);
begin
  ChildNodes['dataFimRetorno'].NodeValue := Value;
end;

function TXMLCt_Retorno.Get_DataTransmissao: WideString;
begin
  Result := ChildNodes['dataTransmissao'].Text;
end;

procedure TXMLCt_Retorno.Set_DataTransmissao(Value: WideString);
begin
  ChildNodes['dataTransmissao'].NodeValue := Value;
end;

function TXMLCt_Retorno.Get_DataValidacao: WideString;
begin
  Result := ChildNodes['dataValidacao'].Text;
end;

procedure TXMLCt_Retorno.Set_DataValidacao(Value: WideString);
begin
  ChildNodes['dataValidacao'].NodeValue := Value;
end;

function TXMLCt_Retorno.Get_DescricaoValidacao: IXMLSt_DescricaoValidacaoList;
begin
  Result := FDescricaoValidacao;
end;

function TXMLCt_Retorno.Get_Validado: WideString;
begin
  Result := ChildNodes['validado'].Text;
end;

procedure TXMLCt_Retorno.Set_Validado(Value: WideString);
begin
  ChildNodes['validado'].NodeValue := Value;
end;

{ TXMLSt_DescricaoValidacaoList }

function TXMLSt_DescricaoValidacaoList.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLSt_DescricaoValidacaoList.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;
function TXMLSt_DescricaoValidacaoList.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.