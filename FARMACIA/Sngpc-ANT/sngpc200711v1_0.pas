
{********************************************************************}
{                                                                    }
{                          XML Data Binding                          }
{                                                                    }
{         Generated on: 31/03/2010 16:29:14                          }
{       Generated from: C:\Projetos\Novo\sngpc\sngpc200711v1_0.xsd   }
{   Settings stored in: C:\Projetos\Novo\sngpc\sngpc200711v1_0.xdb   }
{                                                                    }
{********************************************************************}

unit sngpc200711v1_0;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLMensagemSNGPC = interface;
  IXMLCabecalho = interface;
  IXMLCorpo = interface;
  IXMLMedicamentos = interface;
  IXMLCt_EntradaMedicamento = interface;
  IXMLCt_EntradaMedicamentoList = interface;
  IXMLCt_NotaFiscal = interface;
  IXMLCt_Medicamento = interface;
  IXMLCt_MedicamentoList = interface;
  IXMLCt_SaidaMedicamentoVendaAoConsumidor = interface;
  IXMLCt_SaidaMedicamentoVendaAoConsumidorList = interface;
  IXMLCt_Prescritor = interface;
  IXMLCt_Comprador = interface;
  IXMLCt_SaidaMedicamentoTransferencia = interface;
  IXMLCt_SaidaMedicamentoTransferenciaList = interface;
  IXMLCt_SaidaMedicamentoPerda = interface;
  IXMLCt_SaidaMedicamentoPerdaList = interface;
  IXMLInsumos = interface;
  IXMLCt_EntradaInsumo = interface;
  IXMLCt_EntradaInsumoList = interface;
  IXMLCt_InsumoEntrada = interface;
  IXMLCt_InsumoEntradaList = interface;
  IXMLCt_Insumo = interface;
  IXMLCt_SaidaInsumoVenda = interface;
  IXMLCt_SaidaInsumoVendaList = interface;
  IXMLCt_InsumoVendaAoConsumidor = interface;
  IXMLCt_InsumoVendaAoConsumidorList = interface;
  IXMLCt_SaidaInsumoTransferencia = interface;
  IXMLCt_SaidaInsumoTransferenciaList = interface;
  IXMLCt_InsumoTransferencia = interface;
  IXMLCt_InsumoTransferenciaList = interface;
  IXMLCt_SaidaInsumoPerda = interface;
  IXMLCt_SaidaInsumoPerdaList = interface;
  IXMLCt_InsumoPerda = interface;

{ IXMLMensagemSNGPC }

  IXMLMensagemSNGPC = interface(IXMLNode)
    ['{906E8BCF-3730-4FA2-871E-4EF6A8319ABB}']
    { Property Accessors }
    function Get_Cabecalho: IXMLCabecalho;
    function Get_Corpo: IXMLCorpo;
    { Methods & Properties }
    property Cabecalho: IXMLCabecalho read Get_Cabecalho;
    property Corpo: IXMLCorpo read Get_Corpo;
  end;

{ IXMLCabecalho }

  IXMLCabecalho = interface(IXMLNode)
    ['{431E6513-A177-46C8-B92E-8C5C1539B075}']
    { Property Accessors }
    function Get_CnpjEmissor: WideString;
    function Get_CpfTransmissor: WideString;
    function Get_DataInicio: WideString;
    function Get_DataFim: WideString;
    procedure Set_CnpjEmissor(Value: WideString);
    procedure Set_CpfTransmissor(Value: WideString);
    procedure Set_DataInicio(Value: WideString);
    procedure Set_DataFim(Value: WideString);
    { Methods & Properties }
    property CnpjEmissor: WideString read Get_CnpjEmissor write Set_CnpjEmissor;
    property CpfTransmissor: WideString read Get_CpfTransmissor write Set_CpfTransmissor;
    property DataInicio: WideString read Get_DataInicio write Set_DataInicio;
    property DataFim: WideString read Get_DataFim write Set_DataFim;
  end;

{ IXMLCorpo }

  IXMLCorpo = interface(IXMLNode)
    ['{A80EF6E2-8A41-42B7-93AC-B98F8FDD8C24}']
    { Property Accessors }
    function Get_Medicamentos: IXMLMedicamentos;
    function Get_Insumos: IXMLInsumos;
    { Methods & Properties }
    property Medicamentos: IXMLMedicamentos read Get_Medicamentos;
    property Insumos: IXMLInsumos read Get_Insumos;
  end;

{ IXMLMedicamentos }

  IXMLMedicamentos = interface(IXMLNode)
    ['{5ECEE422-1D30-4B59-B100-0D6C43B6EA45}']
    { Property Accessors }
    function Get_EntradaMedicamentos: IXMLCt_EntradaMedicamentoList;
    function Get_SaidaMedicamentoVendaAoConsumidor: IXMLCt_SaidaMedicamentoVendaAoConsumidorList;
    function Get_SaidaMedicamentoTransferencia: IXMLCt_SaidaMedicamentoTransferenciaList;
    function Get_SaidaMedicamentoPerda: IXMLCt_SaidaMedicamentoPerdaList;
    { Methods & Properties }
    property EntradaMedicamentos: IXMLCt_EntradaMedicamentoList read Get_EntradaMedicamentos;
    property SaidaMedicamentoVendaAoConsumidor: IXMLCt_SaidaMedicamentoVendaAoConsumidorList read Get_SaidaMedicamentoVendaAoConsumidor;
    property SaidaMedicamentoTransferencia: IXMLCt_SaidaMedicamentoTransferenciaList read Get_SaidaMedicamentoTransferencia;
    property SaidaMedicamentoPerda: IXMLCt_SaidaMedicamentoPerdaList read Get_SaidaMedicamentoPerda;
  end;

{ IXMLCt_EntradaMedicamento }

  IXMLCt_EntradaMedicamento = interface(IXMLNode)
    ['{DA084305-0868-43DF-BC18-83202298AD92}']
    { Property Accessors }
    function Get_NotaFiscalEntradaMedicamento: IXMLCt_NotaFiscal;
    function Get_MedicamentoEntrada: IXMLCt_MedicamentoList;
    function Get_DataRecebimentoMedicamento: WideString;
    procedure Set_DataRecebimentoMedicamento(Value: WideString);
    { Methods & Properties }
    property NotaFiscalEntradaMedicamento: IXMLCt_NotaFiscal read Get_NotaFiscalEntradaMedicamento;
    property MedicamentoEntrada: IXMLCt_MedicamentoList read Get_MedicamentoEntrada;
    property DataRecebimentoMedicamento: WideString read Get_DataRecebimentoMedicamento write Set_DataRecebimentoMedicamento;
  end;

{ IXMLCt_EntradaMedicamentoList }

  IXMLCt_EntradaMedicamentoList = interface(IXMLNodeCollection)
    ['{1E71D7C0-C4C1-4920-82A5-CB45AA304013}']
    { Methods & Properties }
    function Add: IXMLCt_EntradaMedicamento;
    function Insert(const Index: Integer): IXMLCt_EntradaMedicamento;
    function Get_Item(Index: Integer): IXMLCt_EntradaMedicamento;
    property Items[Index: Integer]: IXMLCt_EntradaMedicamento read Get_Item; default;
  end;

{ IXMLCt_NotaFiscal }

  IXMLCt_NotaFiscal = interface(IXMLNode)
    ['{65E76FD3-9046-4C0D-BEF5-75B9547BD649}']
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
    ['{D1F83E15-F7A4-4746-A5BA-9E2DAB8AA889}']
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

{ IXMLCt_MedicamentoList }

  IXMLCt_MedicamentoList = interface(IXMLNodeCollection)
    ['{A7250F86-1B0F-43A2-9AB9-563ADAA32CF6}']
    { Methods & Properties }
    function Add: IXMLCt_Medicamento;
    function Insert(const Index: Integer): IXMLCt_Medicamento;
    function Get_Item(Index: Integer): IXMLCt_Medicamento;
    property Items[Index: Integer]: IXMLCt_Medicamento read Get_Item; default;
  end;

{ IXMLCt_SaidaMedicamentoVendaAoConsumidor }

  IXMLCt_SaidaMedicamentoVendaAoConsumidor = interface(IXMLNode)
    ['{1748181B-2248-4017-AC15-00EFC1FBBC2C}']
    { Property Accessors }
    function Get_TipoReceituarioMedicamento: WideString;
    function Get_NumeroNotificacaoMedicamento: WideString;
    function Get_DataPrescricaoMedicamento: WideString;
    function Get_PrescritorMedicamento: IXMLCt_Prescritor;
    function Get_UsoMedicamento: WideString;
    function Get_CompradorMedicamento: IXMLCt_Comprador;
    function Get_MedicamentoVenda: IXMLCt_MedicamentoList;
    function Get_DataVendaMedicamento: WideString;
    procedure Set_TipoReceituarioMedicamento(Value: WideString);
    procedure Set_NumeroNotificacaoMedicamento(Value: WideString);
    procedure Set_DataPrescricaoMedicamento(Value: WideString);
    procedure Set_UsoMedicamento(Value: WideString);
    procedure Set_DataVendaMedicamento(Value: WideString);
    { Methods & Properties }
    property TipoReceituarioMedicamento: WideString read Get_TipoReceituarioMedicamento write Set_TipoReceituarioMedicamento;
    property NumeroNotificacaoMedicamento: WideString read Get_NumeroNotificacaoMedicamento write Set_NumeroNotificacaoMedicamento;
    property DataPrescricaoMedicamento: WideString read Get_DataPrescricaoMedicamento write Set_DataPrescricaoMedicamento;
    property PrescritorMedicamento: IXMLCt_Prescritor read Get_PrescritorMedicamento;
    property UsoMedicamento: WideString read Get_UsoMedicamento write Set_UsoMedicamento;
    property CompradorMedicamento: IXMLCt_Comprador read Get_CompradorMedicamento;
    property MedicamentoVenda: IXMLCt_MedicamentoList read Get_MedicamentoVenda;
    property DataVendaMedicamento: WideString read Get_DataVendaMedicamento write Set_DataVendaMedicamento;
  end;

{ IXMLCt_SaidaMedicamentoVendaAoConsumidorList }

  IXMLCt_SaidaMedicamentoVendaAoConsumidorList = interface(IXMLNodeCollection)
    ['{0C48117E-2622-4464-A539-DC6061ADCA45}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaMedicamentoVendaAoConsumidor;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
    property Items[Index: Integer]: IXMLCt_SaidaMedicamentoVendaAoConsumidor read Get_Item; default;
  end;

{ IXMLCt_Prescritor }

  IXMLCt_Prescritor = interface(IXMLNode)
    ['{0B119A06-9D37-498C-A915-92255D6DA9B8}']
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

{ IXMLCt_Comprador }

  IXMLCt_Comprador = interface(IXMLNode)
    ['{8D927D46-B5BE-4CFB-84C2-C7D7B81A75ED}']
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

{ IXMLCt_SaidaMedicamentoTransferencia }

  IXMLCt_SaidaMedicamentoTransferencia = interface(IXMLNode)
    ['{C1641C36-FFCD-4B65-ADFF-CF4FD124B272}']
    { Property Accessors }
    function Get_NotaFiscalTransferenciaMedicamento: IXMLCt_NotaFiscal;
    function Get_MedicamentoTransferencia: IXMLCt_MedicamentoList;
    function Get_DataTransferenciaMedicamento: WideString;
    procedure Set_DataTransferenciaMedicamento(Value: WideString);
    { Methods & Properties }
    property NotaFiscalTransferenciaMedicamento: IXMLCt_NotaFiscal read Get_NotaFiscalTransferenciaMedicamento;
    property MedicamentoTransferencia: IXMLCt_MedicamentoList read Get_MedicamentoTransferencia;
    property DataTransferenciaMedicamento: WideString read Get_DataTransferenciaMedicamento write Set_DataTransferenciaMedicamento;
  end;

{ IXMLCt_SaidaMedicamentoTransferenciaList }

  IXMLCt_SaidaMedicamentoTransferenciaList = interface(IXMLNodeCollection)
    ['{FD7766C2-3F65-4BB3-B5D1-36D8E7984BAB}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaMedicamentoTransferencia;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
    property Items[Index: Integer]: IXMLCt_SaidaMedicamentoTransferencia read Get_Item; default;
  end;

{ IXMLCt_SaidaMedicamentoPerda }

  IXMLCt_SaidaMedicamentoPerda = interface(IXMLNode)
    ['{56FF4BD7-B98B-4949-849E-BF5FA077BEF1}']
    { Property Accessors }
    function Get_MotivoPerdaMedicamento: WideString;
    function Get_MedicamentoPerda: IXMLCt_Medicamento;
    function Get_DataPerdaMedicamento: WideString;
    procedure Set_MotivoPerdaMedicamento(Value: WideString);
    procedure Set_DataPerdaMedicamento(Value: WideString);
    { Methods & Properties }
    property MotivoPerdaMedicamento: WideString read Get_MotivoPerdaMedicamento write Set_MotivoPerdaMedicamento;
    property MedicamentoPerda: IXMLCt_Medicamento read Get_MedicamentoPerda;
    property DataPerdaMedicamento: WideString read Get_DataPerdaMedicamento write Set_DataPerdaMedicamento;
  end;

{ IXMLCt_SaidaMedicamentoPerdaList }

  IXMLCt_SaidaMedicamentoPerdaList = interface(IXMLNodeCollection)
    ['{EFE55CF8-49BC-4B68-81F2-66C5905322B6}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaMedicamentoPerda;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoPerda;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoPerda;
    property Items[Index: Integer]: IXMLCt_SaidaMedicamentoPerda read Get_Item; default;
  end;

{ IXMLInsumos }

  IXMLInsumos = interface(IXMLNode)
    ['{60F20273-A0EC-45BB-9FE7-3344CEE84C48}']
    { Property Accessors }
    function Get_EntradaInsumos: IXMLCt_EntradaInsumoList;
    function Get_SaidaInsumoVendaAoConsumidor: IXMLCt_SaidaInsumoVendaList;
    function Get_SaidaInsumoTransferencia: IXMLCt_SaidaInsumoTransferenciaList;
    function Get_SaidaInsumoPerda: IXMLCt_SaidaInsumoPerdaList;
    { Methods & Properties }
    property EntradaInsumos: IXMLCt_EntradaInsumoList read Get_EntradaInsumos;
    property SaidaInsumoVendaAoConsumidor: IXMLCt_SaidaInsumoVendaList read Get_SaidaInsumoVendaAoConsumidor;
    property SaidaInsumoTransferencia: IXMLCt_SaidaInsumoTransferenciaList read Get_SaidaInsumoTransferencia;
    property SaidaInsumoPerda: IXMLCt_SaidaInsumoPerdaList read Get_SaidaInsumoPerda;
  end;

{ IXMLCt_EntradaInsumo }

  IXMLCt_EntradaInsumo = interface(IXMLNode)
    ['{4A94D2C2-994B-4E05-B409-F0CC47D024AF}']
    { Property Accessors }
    function Get_NotaFiscalEntradaInsumo: IXMLCt_NotaFiscal;
    function Get_SubstanciaInsumoEntrada: IXMLCt_InsumoEntradaList;
    function Get_DataRecebimentoInsumo: WideString;
    procedure Set_DataRecebimentoInsumo(Value: WideString);
    { Methods & Properties }
    property NotaFiscalEntradaInsumo: IXMLCt_NotaFiscal read Get_NotaFiscalEntradaInsumo;
    property SubstanciaInsumoEntrada: IXMLCt_InsumoEntradaList read Get_SubstanciaInsumoEntrada;
    property DataRecebimentoInsumo: WideString read Get_DataRecebimentoInsumo write Set_DataRecebimentoInsumo;
  end;

{ IXMLCt_EntradaInsumoList }

  IXMLCt_EntradaInsumoList = interface(IXMLNodeCollection)
    ['{10634C54-A1BD-4A9F-9EFB-26FE017FD91F}']
    { Methods & Properties }
    function Add: IXMLCt_EntradaInsumo;
    function Insert(const Index: Integer): IXMLCt_EntradaInsumo;
    function Get_Item(Index: Integer): IXMLCt_EntradaInsumo;
    property Items[Index: Integer]: IXMLCt_EntradaInsumo read Get_Item; default;
  end;

{ IXMLCt_InsumoEntrada }

  IXMLCt_InsumoEntrada = interface(IXMLNode)
    ['{A4403421-9390-4F3A-BD51-14F88BA7D8BD}']
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

{ IXMLCt_InsumoEntradaList }

  IXMLCt_InsumoEntradaList = interface(IXMLNodeCollection)
    ['{1BF0B5E4-69AD-4AA6-842F-4B832B57BC7B}']
    { Methods & Properties }
    function Add: IXMLCt_InsumoEntrada;
    function Insert(const Index: Integer): IXMLCt_InsumoEntrada;
    function Get_Item(Index: Integer): IXMLCt_InsumoEntrada;
    property Items[Index: Integer]: IXMLCt_InsumoEntrada read Get_Item; default;
  end;

{ IXMLCt_Insumo }

  IXMLCt_Insumo = interface(IXMLNode)
    ['{F2B1C2B3-3DE3-453B-8BA3-471FC7E0B097}']
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

{ IXMLCt_SaidaInsumoVenda }

  IXMLCt_SaidaInsumoVenda = interface(IXMLNode)
    ['{28C39B47-0D92-4D19-8AB0-754FC358B52B}']
    { Property Accessors }
    function Get_TipoReceituarioInsumo: WideString;
    function Get_NumeroNotificacaoInsumo: WideString;
    function Get_DataPrescricaoInsumo: WideString;
    function Get_PrescritorInsumo: IXMLCt_Prescritor;
    function Get_UsoInsumo: WideString;
    function Get_CompradorInsumo: IXMLCt_Comprador;
    function Get_SubstanciaInsumoVendaAoConsumidor: IXMLCt_InsumoVendaAoConsumidorList;
    function Get_DataVendaInsumo: WideString;
    procedure Set_TipoReceituarioInsumo(Value: WideString);
    procedure Set_NumeroNotificacaoInsumo(Value: WideString);
    procedure Set_DataPrescricaoInsumo(Value: WideString);
    procedure Set_UsoInsumo(Value: WideString);
    procedure Set_DataVendaInsumo(Value: WideString);
    { Methods & Properties }
    property TipoReceituarioInsumo: WideString read Get_TipoReceituarioInsumo write Set_TipoReceituarioInsumo;
    property NumeroNotificacaoInsumo: WideString read Get_NumeroNotificacaoInsumo write Set_NumeroNotificacaoInsumo;
    property DataPrescricaoInsumo: WideString read Get_DataPrescricaoInsumo write Set_DataPrescricaoInsumo;
    property PrescritorInsumo: IXMLCt_Prescritor read Get_PrescritorInsumo;
    property UsoInsumo: WideString read Get_UsoInsumo write Set_UsoInsumo;
    property CompradorInsumo: IXMLCt_Comprador read Get_CompradorInsumo;
    property SubstanciaInsumoVendaAoConsumidor: IXMLCt_InsumoVendaAoConsumidorList read Get_SubstanciaInsumoVendaAoConsumidor;
    property DataVendaInsumo: WideString read Get_DataVendaInsumo write Set_DataVendaInsumo;
  end;

{ IXMLCt_SaidaInsumoVendaList }

  IXMLCt_SaidaInsumoVendaList = interface(IXMLNodeCollection)
    ['{BE6FFB0E-6CBC-40B4-8AAD-663C1FA73B37}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaInsumoVenda;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoVenda;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoVenda;
    property Items[Index: Integer]: IXMLCt_SaidaInsumoVenda read Get_Item; default;
  end;

{ IXMLCt_InsumoVendaAoConsumidor }

  IXMLCt_InsumoVendaAoConsumidor = interface(IXMLNode)
    ['{79D11B40-7E19-4BDF-826F-D0E0BDAF2A1D}']
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

{ IXMLCt_InsumoVendaAoConsumidorList }

  IXMLCt_InsumoVendaAoConsumidorList = interface(IXMLNodeCollection)
    ['{52A8C253-8682-49BB-A3EB-8CDEFF913445}']
    { Methods & Properties }
    function Add: IXMLCt_InsumoVendaAoConsumidor;
    function Insert(const Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
    function Get_Item(Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
    property Items[Index: Integer]: IXMLCt_InsumoVendaAoConsumidor read Get_Item; default;
  end;

{ IXMLCt_SaidaInsumoTransferencia }

  IXMLCt_SaidaInsumoTransferencia = interface(IXMLNode)
    ['{0B3DA241-DB64-45EF-8645-522C979F6FD2}']
    { Property Accessors }
    function Get_NotaFiscalTransferenciaInsumo: IXMLCt_NotaFiscal;
    function Get_SubstanciaInsumoTransferencia: IXMLCt_InsumoTransferenciaList;
    function Get_DataTransferenciaInsumo: WideString;
    procedure Set_DataTransferenciaInsumo(Value: WideString);
    { Methods & Properties }
    property NotaFiscalTransferenciaInsumo: IXMLCt_NotaFiscal read Get_NotaFiscalTransferenciaInsumo;
    property SubstanciaInsumoTransferencia: IXMLCt_InsumoTransferenciaList read Get_SubstanciaInsumoTransferencia;
    property DataTransferenciaInsumo: WideString read Get_DataTransferenciaInsumo write Set_DataTransferenciaInsumo;
  end;

{ IXMLCt_SaidaInsumoTransferenciaList }

  IXMLCt_SaidaInsumoTransferenciaList = interface(IXMLNodeCollection)
    ['{0C5079A5-EF35-4D0A-B1C7-8602EC9F2735}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaInsumoTransferencia;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoTransferencia;
    property Items[Index: Integer]: IXMLCt_SaidaInsumoTransferencia read Get_Item; default;
  end;

{ IXMLCt_InsumoTransferencia }

  IXMLCt_InsumoTransferencia = interface(IXMLNode)
    ['{796F79B8-9DE1-4C16-B3D9-9B51E41D71FB}']
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

{ IXMLCt_InsumoTransferenciaList }

  IXMLCt_InsumoTransferenciaList = interface(IXMLNodeCollection)
    ['{E8683E2B-8325-48C0-9399-9E272489E99C}']
    { Methods & Properties }
    function Add: IXMLCt_InsumoTransferencia;
    function Insert(const Index: Integer): IXMLCt_InsumoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_InsumoTransferencia;
    property Items[Index: Integer]: IXMLCt_InsumoTransferencia read Get_Item; default;
  end;

{ IXMLCt_SaidaInsumoPerda }

  IXMLCt_SaidaInsumoPerda = interface(IXMLNode)
    ['{5A7FDC0F-D15F-4DD1-A060-6B8CBD7B26CE}']
    { Property Accessors }
    function Get_MotivoPerdaInsumo: WideString;
    function Get_SubstanciaInsumoPerda: IXMLCt_InsumoPerda;
    function Get_DataPerdaInsumo: WideString;
    function Get_CnpjFornecedorInsumo: WideString;
    procedure Set_MotivoPerdaInsumo(Value: WideString);
    procedure Set_DataPerdaInsumo(Value: WideString);
    procedure Set_CnpjFornecedorInsumo(Value: WideString);
    { Methods & Properties }
    property MotivoPerdaInsumo: WideString read Get_MotivoPerdaInsumo write Set_MotivoPerdaInsumo;
    property SubstanciaInsumoPerda: IXMLCt_InsumoPerda read Get_SubstanciaInsumoPerda;
    property DataPerdaInsumo: WideString read Get_DataPerdaInsumo write Set_DataPerdaInsumo;
    property CnpjFornecedorInsumo: WideString read Get_CnpjFornecedorInsumo write Set_CnpjFornecedorInsumo;
  end;

{ IXMLCt_SaidaInsumoPerdaList }

  IXMLCt_SaidaInsumoPerdaList = interface(IXMLNodeCollection)
    ['{88855133-F13F-4D7F-8C8D-1B96D21DA862}']
    { Methods & Properties }
    function Add: IXMLCt_SaidaInsumoPerda;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoPerda;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoPerda;
    property Items[Index: Integer]: IXMLCt_SaidaInsumoPerda read Get_Item; default;
  end;

{ IXMLCt_InsumoPerda }

  IXMLCt_InsumoPerda = interface(IXMLNode)
    ['{05E4EB6D-9108-4A17-BAFF-8EC6F0E7F7CC}']
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

{ Forward Decls }

  TXMLMensagemSNGPC = class;
  TXMLCabecalho = class;
  TXMLCorpo = class;
  TXMLMedicamentos = class;
  TXMLCt_EntradaMedicamento = class;
  TXMLCt_EntradaMedicamentoList = class;
  TXMLCt_NotaFiscal = class;
  TXMLCt_Medicamento = class;
  TXMLCt_MedicamentoList = class;
  TXMLCt_SaidaMedicamentoVendaAoConsumidor = class;
  TXMLCt_SaidaMedicamentoVendaAoConsumidorList = class;
  TXMLCt_Prescritor = class;
  TXMLCt_Comprador = class;
  TXMLCt_SaidaMedicamentoTransferencia = class;
  TXMLCt_SaidaMedicamentoTransferenciaList = class;
  TXMLCt_SaidaMedicamentoPerda = class;
  TXMLCt_SaidaMedicamentoPerdaList = class;
  TXMLInsumos = class;
  TXMLCt_EntradaInsumo = class;
  TXMLCt_EntradaInsumoList = class;
  TXMLCt_InsumoEntrada = class;
  TXMLCt_InsumoEntradaList = class;
  TXMLCt_Insumo = class;
  TXMLCt_SaidaInsumoVenda = class;
  TXMLCt_SaidaInsumoVendaList = class;
  TXMLCt_InsumoVendaAoConsumidor = class;
  TXMLCt_InsumoVendaAoConsumidorList = class;
  TXMLCt_SaidaInsumoTransferencia = class;
  TXMLCt_SaidaInsumoTransferenciaList = class;
  TXMLCt_InsumoTransferencia = class;
  TXMLCt_InsumoTransferenciaList = class;
  TXMLCt_SaidaInsumoPerda = class;
  TXMLCt_SaidaInsumoPerdaList = class;
  TXMLCt_InsumoPerda = class;

{ TXMLMensagemSNGPC }

  TXMLMensagemSNGPC = class(TXMLNode, IXMLMensagemSNGPC)
  protected
    { IXMLMensagemSNGPC }
    function Get_Cabecalho: IXMLCabecalho;
    function Get_Corpo: IXMLCorpo;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabecalho }

  TXMLCabecalho = class(TXMLNode, IXMLCabecalho)
  protected
    { IXMLCabecalho }
    function Get_CnpjEmissor: WideString;
    function Get_CpfTransmissor: WideString;
    function Get_DataInicio: WideString;
    function Get_DataFim: WideString;
    procedure Set_CnpjEmissor(Value: WideString);
    procedure Set_CpfTransmissor(Value: WideString);
    procedure Set_DataInicio(Value: WideString);
    procedure Set_DataFim(Value: WideString);
  end;

{ TXMLCorpo }

  TXMLCorpo = class(TXMLNode, IXMLCorpo)
  protected
    { IXMLCorpo }
    function Get_Medicamentos: IXMLMedicamentos;
    function Get_Insumos: IXMLInsumos;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMedicamentos }

  TXMLMedicamentos = class(TXMLNode, IXMLMedicamentos)
  private
    FEntradaMedicamentos: IXMLCt_EntradaMedicamentoList;
    FSaidaMedicamentoVendaAoConsumidor: IXMLCt_SaidaMedicamentoVendaAoConsumidorList;
    FSaidaMedicamentoTransferencia: IXMLCt_SaidaMedicamentoTransferenciaList;
    FSaidaMedicamentoPerda: IXMLCt_SaidaMedicamentoPerdaList;
  protected
    { IXMLMedicamentos }
    function Get_EntradaMedicamentos: IXMLCt_EntradaMedicamentoList;
    function Get_SaidaMedicamentoVendaAoConsumidor: IXMLCt_SaidaMedicamentoVendaAoConsumidorList;
    function Get_SaidaMedicamentoTransferencia: IXMLCt_SaidaMedicamentoTransferenciaList;
    function Get_SaidaMedicamentoPerda: IXMLCt_SaidaMedicamentoPerdaList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_EntradaMedicamento }

  TXMLCt_EntradaMedicamento = class(TXMLNode, IXMLCt_EntradaMedicamento)
  private
    FMedicamentoEntrada: IXMLCt_MedicamentoList;
  protected
    { IXMLCt_EntradaMedicamento }
    function Get_NotaFiscalEntradaMedicamento: IXMLCt_NotaFiscal;
    function Get_MedicamentoEntrada: IXMLCt_MedicamentoList;
    function Get_DataRecebimentoMedicamento: WideString;
    procedure Set_DataRecebimentoMedicamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_EntradaMedicamentoList }

  TXMLCt_EntradaMedicamentoList = class(TXMLNodeCollection, IXMLCt_EntradaMedicamentoList)
  protected
    { IXMLCt_EntradaMedicamentoList }
    function Add: IXMLCt_EntradaMedicamento;
    function Insert(const Index: Integer): IXMLCt_EntradaMedicamento;
    function Get_Item(Index: Integer): IXMLCt_EntradaMedicamento;
  end;

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

{ TXMLCt_MedicamentoList }

  TXMLCt_MedicamentoList = class(TXMLNodeCollection, IXMLCt_MedicamentoList)
  protected
    { IXMLCt_MedicamentoList }
    function Add: IXMLCt_Medicamento;
    function Insert(const Index: Integer): IXMLCt_Medicamento;
    function Get_Item(Index: Integer): IXMLCt_Medicamento;
  end;

{ TXMLCt_SaidaMedicamentoVendaAoConsumidor }

  TXMLCt_SaidaMedicamentoVendaAoConsumidor = class(TXMLNode, IXMLCt_SaidaMedicamentoVendaAoConsumidor)
  private
    FMedicamentoVenda: IXMLCt_MedicamentoList;
  protected
    { IXMLCt_SaidaMedicamentoVendaAoConsumidor }
    function Get_TipoReceituarioMedicamento: WideString;
    function Get_NumeroNotificacaoMedicamento: WideString;
    function Get_DataPrescricaoMedicamento: WideString;
    function Get_PrescritorMedicamento: IXMLCt_Prescritor;
    function Get_UsoMedicamento: WideString;
    function Get_CompradorMedicamento: IXMLCt_Comprador;
    function Get_MedicamentoVenda: IXMLCt_MedicamentoList;
    function Get_DataVendaMedicamento: WideString;
    procedure Set_TipoReceituarioMedicamento(Value: WideString);
    procedure Set_NumeroNotificacaoMedicamento(Value: WideString);
    procedure Set_DataPrescricaoMedicamento(Value: WideString);
    procedure Set_UsoMedicamento(Value: WideString);
    procedure Set_DataVendaMedicamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaMedicamentoVendaAoConsumidorList }

  TXMLCt_SaidaMedicamentoVendaAoConsumidorList = class(TXMLNodeCollection, IXMLCt_SaidaMedicamentoVendaAoConsumidorList)
  protected
    { IXMLCt_SaidaMedicamentoVendaAoConsumidorList }
    function Add: IXMLCt_SaidaMedicamentoVendaAoConsumidor;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
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

{ TXMLCt_SaidaMedicamentoTransferencia }

  TXMLCt_SaidaMedicamentoTransferencia = class(TXMLNode, IXMLCt_SaidaMedicamentoTransferencia)
  private
    FMedicamentoTransferencia: IXMLCt_MedicamentoList;
  protected
    { IXMLCt_SaidaMedicamentoTransferencia }
    function Get_NotaFiscalTransferenciaMedicamento: IXMLCt_NotaFiscal;
    function Get_MedicamentoTransferencia: IXMLCt_MedicamentoList;
    function Get_DataTransferenciaMedicamento: WideString;
    procedure Set_DataTransferenciaMedicamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaMedicamentoTransferenciaList }

  TXMLCt_SaidaMedicamentoTransferenciaList = class(TXMLNodeCollection, IXMLCt_SaidaMedicamentoTransferenciaList)
  protected
    { IXMLCt_SaidaMedicamentoTransferenciaList }
    function Add: IXMLCt_SaidaMedicamentoTransferencia;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
  end;

{ TXMLCt_SaidaMedicamentoPerda }

  TXMLCt_SaidaMedicamentoPerda = class(TXMLNode, IXMLCt_SaidaMedicamentoPerda)
  protected
    { IXMLCt_SaidaMedicamentoPerda }
    function Get_MotivoPerdaMedicamento: WideString;
    function Get_MedicamentoPerda: IXMLCt_Medicamento;
    function Get_DataPerdaMedicamento: WideString;
    procedure Set_MotivoPerdaMedicamento(Value: WideString);
    procedure Set_DataPerdaMedicamento(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaMedicamentoPerdaList }

  TXMLCt_SaidaMedicamentoPerdaList = class(TXMLNodeCollection, IXMLCt_SaidaMedicamentoPerdaList)
  protected
    { IXMLCt_SaidaMedicamentoPerdaList }
    function Add: IXMLCt_SaidaMedicamentoPerda;
    function Insert(const Index: Integer): IXMLCt_SaidaMedicamentoPerda;
    function Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoPerda;
  end;

{ TXMLInsumos }

  TXMLInsumos = class(TXMLNode, IXMLInsumos)
  private
    FEntradaInsumos: IXMLCt_EntradaInsumoList;
    FSaidaInsumoVendaAoConsumidor: IXMLCt_SaidaInsumoVendaList;
    FSaidaInsumoTransferencia: IXMLCt_SaidaInsumoTransferenciaList;
    FSaidaInsumoPerda: IXMLCt_SaidaInsumoPerdaList;
  protected
    { IXMLInsumos }
    function Get_EntradaInsumos: IXMLCt_EntradaInsumoList;
    function Get_SaidaInsumoVendaAoConsumidor: IXMLCt_SaidaInsumoVendaList;
    function Get_SaidaInsumoTransferencia: IXMLCt_SaidaInsumoTransferenciaList;
    function Get_SaidaInsumoPerda: IXMLCt_SaidaInsumoPerdaList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_EntradaInsumo }

  TXMLCt_EntradaInsumo = class(TXMLNode, IXMLCt_EntradaInsumo)
  private
    FSubstanciaInsumoEntrada: IXMLCt_InsumoEntradaList;
  protected
    { IXMLCt_EntradaInsumo }
    function Get_NotaFiscalEntradaInsumo: IXMLCt_NotaFiscal;
    function Get_SubstanciaInsumoEntrada: IXMLCt_InsumoEntradaList;
    function Get_DataRecebimentoInsumo: WideString;
    procedure Set_DataRecebimentoInsumo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_EntradaInsumoList }

  TXMLCt_EntradaInsumoList = class(TXMLNodeCollection, IXMLCt_EntradaInsumoList)
  protected
    { IXMLCt_EntradaInsumoList }
    function Add: IXMLCt_EntradaInsumo;
    function Insert(const Index: Integer): IXMLCt_EntradaInsumo;
    function Get_Item(Index: Integer): IXMLCt_EntradaInsumo;
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

{ TXMLCt_InsumoEntradaList }

  TXMLCt_InsumoEntradaList = class(TXMLNodeCollection, IXMLCt_InsumoEntradaList)
  protected
    { IXMLCt_InsumoEntradaList }
    function Add: IXMLCt_InsumoEntrada;
    function Insert(const Index: Integer): IXMLCt_InsumoEntrada;
    function Get_Item(Index: Integer): IXMLCt_InsumoEntrada;
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

{ TXMLCt_SaidaInsumoVenda }

  TXMLCt_SaidaInsumoVenda = class(TXMLNode, IXMLCt_SaidaInsumoVenda)
  private
    FSubstanciaInsumoVendaAoConsumidor: IXMLCt_InsumoVendaAoConsumidorList;
  protected
    { IXMLCt_SaidaInsumoVenda }
    function Get_TipoReceituarioInsumo: WideString;
    function Get_NumeroNotificacaoInsumo: WideString;
    function Get_DataPrescricaoInsumo: WideString;
    function Get_PrescritorInsumo: IXMLCt_Prescritor;
    function Get_UsoInsumo: WideString;
    function Get_CompradorInsumo: IXMLCt_Comprador;
    function Get_SubstanciaInsumoVendaAoConsumidor: IXMLCt_InsumoVendaAoConsumidorList;
    function Get_DataVendaInsumo: WideString;
    procedure Set_TipoReceituarioInsumo(Value: WideString);
    procedure Set_NumeroNotificacaoInsumo(Value: WideString);
    procedure Set_DataPrescricaoInsumo(Value: WideString);
    procedure Set_UsoInsumo(Value: WideString);
    procedure Set_DataVendaInsumo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaInsumoVendaList }

  TXMLCt_SaidaInsumoVendaList = class(TXMLNodeCollection, IXMLCt_SaidaInsumoVendaList)
  protected
    { IXMLCt_SaidaInsumoVendaList }
    function Add: IXMLCt_SaidaInsumoVenda;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoVenda;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoVenda;
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

{ TXMLCt_InsumoVendaAoConsumidorList }

  TXMLCt_InsumoVendaAoConsumidorList = class(TXMLNodeCollection, IXMLCt_InsumoVendaAoConsumidorList)
  protected
    { IXMLCt_InsumoVendaAoConsumidorList }
    function Add: IXMLCt_InsumoVendaAoConsumidor;
    function Insert(const Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
    function Get_Item(Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
  end;

{ TXMLCt_SaidaInsumoTransferencia }

  TXMLCt_SaidaInsumoTransferencia = class(TXMLNode, IXMLCt_SaidaInsumoTransferencia)
  private
    FSubstanciaInsumoTransferencia: IXMLCt_InsumoTransferenciaList;
  protected
    { IXMLCt_SaidaInsumoTransferencia }
    function Get_NotaFiscalTransferenciaInsumo: IXMLCt_NotaFiscal;
    function Get_SubstanciaInsumoTransferencia: IXMLCt_InsumoTransferenciaList;
    function Get_DataTransferenciaInsumo: WideString;
    procedure Set_DataTransferenciaInsumo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaInsumoTransferenciaList }

  TXMLCt_SaidaInsumoTransferenciaList = class(TXMLNodeCollection, IXMLCt_SaidaInsumoTransferenciaList)
  protected
    { IXMLCt_SaidaInsumoTransferenciaList }
    function Add: IXMLCt_SaidaInsumoTransferencia;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoTransferencia;
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

{ TXMLCt_InsumoTransferenciaList }

  TXMLCt_InsumoTransferenciaList = class(TXMLNodeCollection, IXMLCt_InsumoTransferenciaList)
  protected
    { IXMLCt_InsumoTransferenciaList }
    function Add: IXMLCt_InsumoTransferencia;
    function Insert(const Index: Integer): IXMLCt_InsumoTransferencia;
    function Get_Item(Index: Integer): IXMLCt_InsumoTransferencia;
  end;

{ TXMLCt_SaidaInsumoPerda }

  TXMLCt_SaidaInsumoPerda = class(TXMLNode, IXMLCt_SaidaInsumoPerda)
  protected
    { IXMLCt_SaidaInsumoPerda }
    function Get_MotivoPerdaInsumo: WideString;
    function Get_SubstanciaInsumoPerda: IXMLCt_InsumoPerda;
    function Get_DataPerdaInsumo: WideString;
    function Get_CnpjFornecedorInsumo: WideString;
    procedure Set_MotivoPerdaInsumo(Value: WideString);
    procedure Set_DataPerdaInsumo(Value: WideString);
    procedure Set_CnpjFornecedorInsumo(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCt_SaidaInsumoPerdaList }

  TXMLCt_SaidaInsumoPerdaList = class(TXMLNodeCollection, IXMLCt_SaidaInsumoPerdaList)
  protected
    { IXMLCt_SaidaInsumoPerdaList }
    function Add: IXMLCt_SaidaInsumoPerda;
    function Insert(const Index: Integer): IXMLCt_SaidaInsumoPerda;
    function Get_Item(Index: Integer): IXMLCt_SaidaInsumoPerda;
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

{ Global Functions }

function GetmensagemSNGPC(Doc: IXMLDocument): IXMLMensagemSNGPC;
function LoadmensagemSNGPC(const FileName: WideString): IXMLMensagemSNGPC;
function NewmensagemSNGPC: IXMLMensagemSNGPC;

const
  TargetNamespace = 'urn:sngpc-schema';

implementation

{ Global Functions }

function GetmensagemSNGPC(Doc: IXMLDocument): IXMLMensagemSNGPC;
begin
  Result := Doc.GetDocBinding('mensagemSNGPC', TXMLMensagemSNGPC, TargetNamespace) as IXMLMensagemSNGPC;
end;

function LoadmensagemSNGPC(const FileName: WideString): IXMLMensagemSNGPC;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('mensagemSNGPC', TXMLMensagemSNGPC, TargetNamespace) as IXMLMensagemSNGPC;
end;

function NewmensagemSNGPC: IXMLMensagemSNGPC;
begin
  Result := NewXMLDocument.GetDocBinding('mensagemSNGPC', TXMLMensagemSNGPC, TargetNamespace) as IXMLMensagemSNGPC;
end;

{ TXMLMensagemSNGPC }

procedure TXMLMensagemSNGPC.AfterConstruction;
begin
  RegisterChildNode('cabecalho', TXMLCabecalho);
  RegisterChildNode('corpo', TXMLCorpo);
  inherited;
end;

function TXMLMensagemSNGPC.Get_Cabecalho: IXMLCabecalho;
begin
  Result := ChildNodes['cabecalho'] as IXMLCabecalho;
end;

function TXMLMensagemSNGPC.Get_Corpo: IXMLCorpo;
begin
  Result := ChildNodes['corpo'] as IXMLCorpo;
end;

{ TXMLCabecalho }

function TXMLCabecalho.Get_CnpjEmissor: WideString;
begin
  Result := ChildNodes['cnpjEmissor'].Text;
end;

procedure TXMLCabecalho.Set_CnpjEmissor(Value: WideString);
begin
  ChildNodes['cnpjEmissor'].NodeValue := Value;
end;

function TXMLCabecalho.Get_CpfTransmissor: WideString;
begin
  Result := ChildNodes['cpfTransmissor'].Text;
end;

procedure TXMLCabecalho.Set_CpfTransmissor(Value: WideString);
begin
  ChildNodes['cpfTransmissor'].NodeValue := Value;
end;

function TXMLCabecalho.Get_DataInicio: WideString;
begin
  Result := ChildNodes['dataInicio'].Text;
end;

procedure TXMLCabecalho.Set_DataInicio(Value: WideString);
begin
  ChildNodes['dataInicio'].NodeValue := Value;
end;

function TXMLCabecalho.Get_DataFim: WideString;
begin
  Result := ChildNodes['dataFim'].Text;
end;

procedure TXMLCabecalho.Set_DataFim(Value: WideString);
begin
  ChildNodes['dataFim'].NodeValue := Value;
end;

{ TXMLCorpo }

procedure TXMLCorpo.AfterConstruction;
begin
  RegisterChildNode('medicamentos', TXMLMedicamentos);
  RegisterChildNode('insumos', TXMLInsumos);
  inherited;
end;

function TXMLCorpo.Get_Medicamentos: IXMLMedicamentos;
begin
  Result := ChildNodes['medicamentos'] as IXMLMedicamentos;
end;

function TXMLCorpo.Get_Insumos: IXMLInsumos;
begin
  Result := ChildNodes['insumos'] as IXMLInsumos;
end;

{ TXMLMedicamentos }

procedure TXMLMedicamentos.AfterConstruction;
begin
  RegisterChildNode('entradaMedicamentos', TXMLCt_EntradaMedicamento);
  RegisterChildNode('saidaMedicamentoVendaAoConsumidor', TXMLCt_SaidaMedicamentoVendaAoConsumidor);
  RegisterChildNode('saidaMedicamentoTransferencia', TXMLCt_SaidaMedicamentoTransferencia);
  RegisterChildNode('saidaMedicamentoPerda', TXMLCt_SaidaMedicamentoPerda);
  FEntradaMedicamentos := CreateCollection(TXMLCt_EntradaMedicamentoList, IXMLCt_EntradaMedicamento, 'entradaMedicamentos') as IXMLCt_EntradaMedicamentoList;
  FSaidaMedicamentoVendaAoConsumidor := CreateCollection(TXMLCt_SaidaMedicamentoVendaAoConsumidorList, IXMLCt_SaidaMedicamentoVendaAoConsumidor, 'saidaMedicamentoVendaAoConsumidor') as IXMLCt_SaidaMedicamentoVendaAoConsumidorList;
  FSaidaMedicamentoTransferencia := CreateCollection(TXMLCt_SaidaMedicamentoTransferenciaList, IXMLCt_SaidaMedicamentoTransferencia, 'saidaMedicamentoTransferencia') as IXMLCt_SaidaMedicamentoTransferenciaList;
  FSaidaMedicamentoPerda := CreateCollection(TXMLCt_SaidaMedicamentoPerdaList, IXMLCt_SaidaMedicamentoPerda, 'saidaMedicamentoPerda') as IXMLCt_SaidaMedicamentoPerdaList;
  inherited;
end;

function TXMLMedicamentos.Get_EntradaMedicamentos: IXMLCt_EntradaMedicamentoList;
begin
  Result := FEntradaMedicamentos;
end;

function TXMLMedicamentos.Get_SaidaMedicamentoVendaAoConsumidor: IXMLCt_SaidaMedicamentoVendaAoConsumidorList;
begin
  Result := FSaidaMedicamentoVendaAoConsumidor;
end;

function TXMLMedicamentos.Get_SaidaMedicamentoTransferencia: IXMLCt_SaidaMedicamentoTransferenciaList;
begin
  Result := FSaidaMedicamentoTransferencia;
end;

function TXMLMedicamentos.Get_SaidaMedicamentoPerda: IXMLCt_SaidaMedicamentoPerdaList;
begin
  Result := FSaidaMedicamentoPerda;
end;

{ TXMLCt_EntradaMedicamento }

procedure TXMLCt_EntradaMedicamento.AfterConstruction;
begin
  RegisterChildNode('notaFiscalEntradaMedicamento', TXMLCt_NotaFiscal);
  RegisterChildNode('medicamentoEntrada', TXMLCt_Medicamento);
  FMedicamentoEntrada := CreateCollection(TXMLCt_MedicamentoList, IXMLCt_Medicamento, 'medicamentoEntrada') as IXMLCt_MedicamentoList;
  inherited;
end;

function TXMLCt_EntradaMedicamento.Get_NotaFiscalEntradaMedicamento: IXMLCt_NotaFiscal;
begin
  Result := ChildNodes['notaFiscalEntradaMedicamento'] as IXMLCt_NotaFiscal;
end;

function TXMLCt_EntradaMedicamento.Get_MedicamentoEntrada: IXMLCt_MedicamentoList;
begin
  Result := FMedicamentoEntrada;
end;

function TXMLCt_EntradaMedicamento.Get_DataRecebimentoMedicamento: WideString;
begin
  Result := ChildNodes['dataRecebimentoMedicamento'].Text;
end;

procedure TXMLCt_EntradaMedicamento.Set_DataRecebimentoMedicamento(Value: WideString);
begin
  ChildNodes['dataRecebimentoMedicamento'].NodeValue := Value;
end;

{ TXMLCt_EntradaMedicamentoList }

function TXMLCt_EntradaMedicamentoList.Add: IXMLCt_EntradaMedicamento;
begin
  Result := AddItem(-1) as IXMLCt_EntradaMedicamento;
end;

function TXMLCt_EntradaMedicamentoList.Insert(const Index: Integer): IXMLCt_EntradaMedicamento;
begin
  Result := AddItem(Index) as IXMLCt_EntradaMedicamento;
end;
function TXMLCt_EntradaMedicamentoList.Get_Item(Index: Integer): IXMLCt_EntradaMedicamento;
begin
  Result := List[Index] as IXMLCt_EntradaMedicamento;
end;

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

{ TXMLCt_MedicamentoList }

function TXMLCt_MedicamentoList.Add: IXMLCt_Medicamento;
begin
  Result := AddItem(-1) as IXMLCt_Medicamento;
end;

function TXMLCt_MedicamentoList.Insert(const Index: Integer): IXMLCt_Medicamento;
begin
  Result := AddItem(Index) as IXMLCt_Medicamento;
end;
function TXMLCt_MedicamentoList.Get_Item(Index: Integer): IXMLCt_Medicamento;
begin
  Result := List[Index] as IXMLCt_Medicamento;
end;

{ TXMLCt_SaidaMedicamentoVendaAoConsumidor }

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.AfterConstruction;
begin
  RegisterChildNode('prescritorMedicamento', TXMLCt_Prescritor);
  RegisterChildNode('compradorMedicamento', TXMLCt_Comprador);
  RegisterChildNode('medicamentoVenda', TXMLCt_Medicamento);
  FMedicamentoVenda := CreateCollection(TXMLCt_MedicamentoList, IXMLCt_Medicamento, 'medicamentoVenda') as IXMLCt_MedicamentoList;
  inherited;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_TipoReceituarioMedicamento: WideString;
begin
  Result := ChildNodes['tipoReceituarioMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.Set_TipoReceituarioMedicamento(Value: WideString);
begin
  ChildNodes['tipoReceituarioMedicamento'].NodeValue := Value;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_NumeroNotificacaoMedicamento: WideString;
begin
  Result := ChildNodes['numeroNotificacaoMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.Set_NumeroNotificacaoMedicamento(Value: WideString);
begin
  ChildNodes['numeroNotificacaoMedicamento'].NodeValue := Value;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_DataPrescricaoMedicamento: WideString;
begin
  Result := ChildNodes['dataPrescricaoMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.Set_DataPrescricaoMedicamento(Value: WideString);
begin
  ChildNodes['dataPrescricaoMedicamento'].NodeValue := Value;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_PrescritorMedicamento: IXMLCt_Prescritor;
begin
  Result := ChildNodes['prescritorMedicamento'] as IXMLCt_Prescritor;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_UsoMedicamento: WideString;
begin
  Result := ChildNodes['usoMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.Set_UsoMedicamento(Value: WideString);
begin
  ChildNodes['usoMedicamento'].NodeValue := Value;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_CompradorMedicamento: IXMLCt_Comprador;
begin
  Result := ChildNodes['compradorMedicamento'] as IXMLCt_Comprador;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_MedicamentoVenda: IXMLCt_MedicamentoList;
begin
  Result := FMedicamentoVenda;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidor.Get_DataVendaMedicamento: WideString;
begin
  Result := ChildNodes['dataVendaMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoVendaAoConsumidor.Set_DataVendaMedicamento(Value: WideString);
begin
  ChildNodes['dataVendaMedicamento'].NodeValue := Value;
end;

{ TXMLCt_SaidaMedicamentoVendaAoConsumidorList }

function TXMLCt_SaidaMedicamentoVendaAoConsumidorList.Add: IXMLCt_SaidaMedicamentoVendaAoConsumidor;
begin
  Result := AddItem(-1) as IXMLCt_SaidaMedicamentoVendaAoConsumidor;
end;

function TXMLCt_SaidaMedicamentoVendaAoConsumidorList.Insert(const Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
begin
  Result := AddItem(Index) as IXMLCt_SaidaMedicamentoVendaAoConsumidor;
end;
function TXMLCt_SaidaMedicamentoVendaAoConsumidorList.Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoVendaAoConsumidor;
begin
  Result := List[Index] as IXMLCt_SaidaMedicamentoVendaAoConsumidor;
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

{ TXMLCt_SaidaMedicamentoTransferencia }

procedure TXMLCt_SaidaMedicamentoTransferencia.AfterConstruction;
begin
  RegisterChildNode('notaFiscalTransferenciaMedicamento', TXMLCt_NotaFiscal);
  RegisterChildNode('medicamentoTransferencia', TXMLCt_Medicamento);
  FMedicamentoTransferencia := CreateCollection(TXMLCt_MedicamentoList, IXMLCt_Medicamento, 'medicamentoTransferencia') as IXMLCt_MedicamentoList;
  inherited;
end;

function TXMLCt_SaidaMedicamentoTransferencia.Get_NotaFiscalTransferenciaMedicamento: IXMLCt_NotaFiscal;
begin
  Result := ChildNodes['notaFiscalTransferenciaMedicamento'] as IXMLCt_NotaFiscal;
end;

function TXMLCt_SaidaMedicamentoTransferencia.Get_MedicamentoTransferencia: IXMLCt_MedicamentoList;
begin
  Result := FMedicamentoTransferencia;
end;

function TXMLCt_SaidaMedicamentoTransferencia.Get_DataTransferenciaMedicamento: WideString;
begin
  Result := ChildNodes['dataTransferenciaMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoTransferencia.Set_DataTransferenciaMedicamento(Value: WideString);
begin
  ChildNodes['dataTransferenciaMedicamento'].NodeValue := Value;
end;

{ TXMLCt_SaidaMedicamentoTransferenciaList }

function TXMLCt_SaidaMedicamentoTransferenciaList.Add: IXMLCt_SaidaMedicamentoTransferencia;
begin
  Result := AddItem(-1) as IXMLCt_SaidaMedicamentoTransferencia;
end;

function TXMLCt_SaidaMedicamentoTransferenciaList.Insert(const Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
begin
  Result := AddItem(Index) as IXMLCt_SaidaMedicamentoTransferencia;
end;
function TXMLCt_SaidaMedicamentoTransferenciaList.Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoTransferencia;
begin
  Result := List[Index] as IXMLCt_SaidaMedicamentoTransferencia;
end;

{ TXMLCt_SaidaMedicamentoPerda }

procedure TXMLCt_SaidaMedicamentoPerda.AfterConstruction;
begin
  RegisterChildNode('medicamentoPerda', TXMLCt_Medicamento);
  inherited;
end;

function TXMLCt_SaidaMedicamentoPerda.Get_MotivoPerdaMedicamento: WideString;
begin
  Result := ChildNodes['motivoPerdaMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoPerda.Set_MotivoPerdaMedicamento(Value: WideString);
begin
  ChildNodes['motivoPerdaMedicamento'].NodeValue := Value;
end;

function TXMLCt_SaidaMedicamentoPerda.Get_MedicamentoPerda: IXMLCt_Medicamento;
begin
  Result := ChildNodes['medicamentoPerda'] as IXMLCt_Medicamento;
end;

function TXMLCt_SaidaMedicamentoPerda.Get_DataPerdaMedicamento: WideString;
begin
  Result := ChildNodes['dataPerdaMedicamento'].Text;
end;

procedure TXMLCt_SaidaMedicamentoPerda.Set_DataPerdaMedicamento(Value: WideString);
begin
  ChildNodes['dataPerdaMedicamento'].NodeValue := Value;
end;

{ TXMLCt_SaidaMedicamentoPerdaList }

function TXMLCt_SaidaMedicamentoPerdaList.Add: IXMLCt_SaidaMedicamentoPerda;
begin
  Result := AddItem(-1) as IXMLCt_SaidaMedicamentoPerda;
end;

function TXMLCt_SaidaMedicamentoPerdaList.Insert(const Index: Integer): IXMLCt_SaidaMedicamentoPerda;
begin
  Result := AddItem(Index) as IXMLCt_SaidaMedicamentoPerda;
end;
function TXMLCt_SaidaMedicamentoPerdaList.Get_Item(Index: Integer): IXMLCt_SaidaMedicamentoPerda;
begin
  Result := List[Index] as IXMLCt_SaidaMedicamentoPerda;
end;

{ TXMLInsumos }

procedure TXMLInsumos.AfterConstruction;
begin
  RegisterChildNode('entradaInsumos', TXMLCt_EntradaInsumo);
  RegisterChildNode('saidaInsumoVendaAoConsumidor', TXMLCt_SaidaInsumoVenda);
  RegisterChildNode('saidaInsumoTransferencia', TXMLCt_SaidaInsumoTransferencia);
  RegisterChildNode('saidaInsumoPerda', TXMLCt_SaidaInsumoPerda);
  FEntradaInsumos := CreateCollection(TXMLCt_EntradaInsumoList, IXMLCt_EntradaInsumo, 'entradaInsumos') as IXMLCt_EntradaInsumoList;
  FSaidaInsumoVendaAoConsumidor := CreateCollection(TXMLCt_SaidaInsumoVendaList, IXMLCt_SaidaInsumoVenda, 'saidaInsumoVendaAoConsumidor') as IXMLCt_SaidaInsumoVendaList;
  FSaidaInsumoTransferencia := CreateCollection(TXMLCt_SaidaInsumoTransferenciaList, IXMLCt_SaidaInsumoTransferencia, 'saidaInsumoTransferencia') as IXMLCt_SaidaInsumoTransferenciaList;
  FSaidaInsumoPerda := CreateCollection(TXMLCt_SaidaInsumoPerdaList, IXMLCt_SaidaInsumoPerda, 'saidaInsumoPerda') as IXMLCt_SaidaInsumoPerdaList;
  inherited;
end;

function TXMLInsumos.Get_EntradaInsumos: IXMLCt_EntradaInsumoList;
begin
  Result := FEntradaInsumos;
end;

function TXMLInsumos.Get_SaidaInsumoVendaAoConsumidor: IXMLCt_SaidaInsumoVendaList;
begin
  Result := FSaidaInsumoVendaAoConsumidor;
end;

function TXMLInsumos.Get_SaidaInsumoTransferencia: IXMLCt_SaidaInsumoTransferenciaList;
begin
  Result := FSaidaInsumoTransferencia;
end;

function TXMLInsumos.Get_SaidaInsumoPerda: IXMLCt_SaidaInsumoPerdaList;
begin
  Result := FSaidaInsumoPerda;
end;

{ TXMLCt_EntradaInsumo }

procedure TXMLCt_EntradaInsumo.AfterConstruction;
begin
  RegisterChildNode('notaFiscalEntradaInsumo', TXMLCt_NotaFiscal);
  RegisterChildNode('substanciaInsumoEntrada', TXMLCt_InsumoEntrada);
  FSubstanciaInsumoEntrada := CreateCollection(TXMLCt_InsumoEntradaList, IXMLCt_InsumoEntrada, 'substanciaInsumoEntrada') as IXMLCt_InsumoEntradaList;
  inherited;
end;

function TXMLCt_EntradaInsumo.Get_NotaFiscalEntradaInsumo: IXMLCt_NotaFiscal;
begin
  Result := ChildNodes['notaFiscalEntradaInsumo'] as IXMLCt_NotaFiscal;
end;

function TXMLCt_EntradaInsumo.Get_SubstanciaInsumoEntrada: IXMLCt_InsumoEntradaList;
begin
  Result := FSubstanciaInsumoEntrada;
end;

function TXMLCt_EntradaInsumo.Get_DataRecebimentoInsumo: WideString;
begin
  Result := ChildNodes['dataRecebimentoInsumo'].Text;
end;

procedure TXMLCt_EntradaInsumo.Set_DataRecebimentoInsumo(Value: WideString);
begin
  ChildNodes['dataRecebimentoInsumo'].NodeValue := Value;
end;

{ TXMLCt_EntradaInsumoList }

function TXMLCt_EntradaInsumoList.Add: IXMLCt_EntradaInsumo;
begin
  Result := AddItem(-1) as IXMLCt_EntradaInsumo;
end;

function TXMLCt_EntradaInsumoList.Insert(const Index: Integer): IXMLCt_EntradaInsumo;
begin
  Result := AddItem(Index) as IXMLCt_EntradaInsumo;
end;
function TXMLCt_EntradaInsumoList.Get_Item(Index: Integer): IXMLCt_EntradaInsumo;
begin
  Result := List[Index] as IXMLCt_EntradaInsumo;
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

{ TXMLCt_InsumoEntradaList }

function TXMLCt_InsumoEntradaList.Add: IXMLCt_InsumoEntrada;
begin
  Result := AddItem(-1) as IXMLCt_InsumoEntrada;
end;

function TXMLCt_InsumoEntradaList.Insert(const Index: Integer): IXMLCt_InsumoEntrada;
begin
  Result := AddItem(Index) as IXMLCt_InsumoEntrada;
end;
function TXMLCt_InsumoEntradaList.Get_Item(Index: Integer): IXMLCt_InsumoEntrada;
begin
  Result := List[Index] as IXMLCt_InsumoEntrada;
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

{ TXMLCt_SaidaInsumoVenda }

procedure TXMLCt_SaidaInsumoVenda.AfterConstruction;
begin
  RegisterChildNode('prescritorInsumo', TXMLCt_Prescritor);
  RegisterChildNode('compradorInsumo', TXMLCt_Comprador);
  RegisterChildNode('substanciaInsumoVendaAoConsumidor', TXMLCt_InsumoVendaAoConsumidor);
  FSubstanciaInsumoVendaAoConsumidor := CreateCollection(TXMLCt_InsumoVendaAoConsumidorList, IXMLCt_InsumoVendaAoConsumidor, 'substanciaInsumoVendaAoConsumidor') as IXMLCt_InsumoVendaAoConsumidorList;
  inherited;
end;

function TXMLCt_SaidaInsumoVenda.Get_TipoReceituarioInsumo: WideString;
begin
  Result := ChildNodes['tipoReceituarioInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoVenda.Set_TipoReceituarioInsumo(Value: WideString);
begin
  ChildNodes['tipoReceituarioInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoVenda.Get_NumeroNotificacaoInsumo: WideString;
begin
  Result := ChildNodes['numeroNotificacaoInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoVenda.Set_NumeroNotificacaoInsumo(Value: WideString);
begin
  ChildNodes['numeroNotificacaoInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoVenda.Get_DataPrescricaoInsumo: WideString;
begin
  Result := ChildNodes['dataPrescricaoInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoVenda.Set_DataPrescricaoInsumo(Value: WideString);
begin
  ChildNodes['dataPrescricaoInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoVenda.Get_PrescritorInsumo: IXMLCt_Prescritor;
begin
  Result := ChildNodes['prescritorInsumo'] as IXMLCt_Prescritor;
end;

function TXMLCt_SaidaInsumoVenda.Get_UsoInsumo: WideString;
begin
  Result := ChildNodes['usoInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoVenda.Set_UsoInsumo(Value: WideString);
begin
  ChildNodes['usoInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoVenda.Get_CompradorInsumo: IXMLCt_Comprador;
begin
  Result := ChildNodes['compradorInsumo'] as IXMLCt_Comprador;
end;

function TXMLCt_SaidaInsumoVenda.Get_SubstanciaInsumoVendaAoConsumidor: IXMLCt_InsumoVendaAoConsumidorList;
begin
  Result := FSubstanciaInsumoVendaAoConsumidor;
end;

function TXMLCt_SaidaInsumoVenda.Get_DataVendaInsumo: WideString;
begin
  Result := ChildNodes['dataVendaInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoVenda.Set_DataVendaInsumo(Value: WideString);
begin
  ChildNodes['dataVendaInsumo'].NodeValue := Value;
end;

{ TXMLCt_SaidaInsumoVendaList }

function TXMLCt_SaidaInsumoVendaList.Add: IXMLCt_SaidaInsumoVenda;
begin
  Result := AddItem(-1) as IXMLCt_SaidaInsumoVenda;
end;

function TXMLCt_SaidaInsumoVendaList.Insert(const Index: Integer): IXMLCt_SaidaInsumoVenda;
begin
  Result := AddItem(Index) as IXMLCt_SaidaInsumoVenda;
end;
function TXMLCt_SaidaInsumoVendaList.Get_Item(Index: Integer): IXMLCt_SaidaInsumoVenda;
begin
  Result := List[Index] as IXMLCt_SaidaInsumoVenda;
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

{ TXMLCt_InsumoVendaAoConsumidorList }

function TXMLCt_InsumoVendaAoConsumidorList.Add: IXMLCt_InsumoVendaAoConsumidor;
begin
  Result := AddItem(-1) as IXMLCt_InsumoVendaAoConsumidor;
end;

function TXMLCt_InsumoVendaAoConsumidorList.Insert(const Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
begin
  Result := AddItem(Index) as IXMLCt_InsumoVendaAoConsumidor;
end;
function TXMLCt_InsumoVendaAoConsumidorList.Get_Item(Index: Integer): IXMLCt_InsumoVendaAoConsumidor;
begin
  Result := List[Index] as IXMLCt_InsumoVendaAoConsumidor;
end;

{ TXMLCt_SaidaInsumoTransferencia }

procedure TXMLCt_SaidaInsumoTransferencia.AfterConstruction;
begin
  RegisterChildNode('notaFiscalTransferenciaInsumo', TXMLCt_NotaFiscal);
  RegisterChildNode('substanciaInsumoTransferencia', TXMLCt_InsumoTransferencia);
  FSubstanciaInsumoTransferencia := CreateCollection(TXMLCt_InsumoTransferenciaList, IXMLCt_InsumoTransferencia, 'substanciaInsumoTransferencia') as IXMLCt_InsumoTransferenciaList;
  inherited;
end;

function TXMLCt_SaidaInsumoTransferencia.Get_NotaFiscalTransferenciaInsumo: IXMLCt_NotaFiscal;
begin
  Result := ChildNodes['notaFiscalTransferenciaInsumo'] as IXMLCt_NotaFiscal;
end;

function TXMLCt_SaidaInsumoTransferencia.Get_SubstanciaInsumoTransferencia: IXMLCt_InsumoTransferenciaList;
begin
  Result := FSubstanciaInsumoTransferencia;
end;

function TXMLCt_SaidaInsumoTransferencia.Get_DataTransferenciaInsumo: WideString;
begin
  Result := ChildNodes['dataTransferenciaInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoTransferencia.Set_DataTransferenciaInsumo(Value: WideString);
begin
  ChildNodes['dataTransferenciaInsumo'].NodeValue := Value;
end;

{ TXMLCt_SaidaInsumoTransferenciaList }

function TXMLCt_SaidaInsumoTransferenciaList.Add: IXMLCt_SaidaInsumoTransferencia;
begin
  Result := AddItem(-1) as IXMLCt_SaidaInsumoTransferencia;
end;

function TXMLCt_SaidaInsumoTransferenciaList.Insert(const Index: Integer): IXMLCt_SaidaInsumoTransferencia;
begin
  Result := AddItem(Index) as IXMLCt_SaidaInsumoTransferencia;
end;
function TXMLCt_SaidaInsumoTransferenciaList.Get_Item(Index: Integer): IXMLCt_SaidaInsumoTransferencia;
begin
  Result := List[Index] as IXMLCt_SaidaInsumoTransferencia;
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

{ TXMLCt_InsumoTransferenciaList }

function TXMLCt_InsumoTransferenciaList.Add: IXMLCt_InsumoTransferencia;
begin
  Result := AddItem(-1) as IXMLCt_InsumoTransferencia;
end;

function TXMLCt_InsumoTransferenciaList.Insert(const Index: Integer): IXMLCt_InsumoTransferencia;
begin
  Result := AddItem(Index) as IXMLCt_InsumoTransferencia;
end;
function TXMLCt_InsumoTransferenciaList.Get_Item(Index: Integer): IXMLCt_InsumoTransferencia;
begin
  Result := List[Index] as IXMLCt_InsumoTransferencia;
end;

{ TXMLCt_SaidaInsumoPerda }

procedure TXMLCt_SaidaInsumoPerda.AfterConstruction;
begin
  RegisterChildNode('substanciaInsumoPerda', TXMLCt_InsumoPerda);
  inherited;
end;

function TXMLCt_SaidaInsumoPerda.Get_MotivoPerdaInsumo: WideString;
begin
  Result := ChildNodes['motivoPerdaInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoPerda.Set_MotivoPerdaInsumo(Value: WideString);
begin
  ChildNodes['motivoPerdaInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoPerda.Get_SubstanciaInsumoPerda: IXMLCt_InsumoPerda;
begin
  Result := ChildNodes['substanciaInsumoPerda'] as IXMLCt_InsumoPerda;
end;

function TXMLCt_SaidaInsumoPerda.Get_DataPerdaInsumo: WideString;
begin
  Result := ChildNodes['dataPerdaInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoPerda.Set_DataPerdaInsumo(Value: WideString);
begin
  ChildNodes['dataPerdaInsumo'].NodeValue := Value;
end;

function TXMLCt_SaidaInsumoPerda.Get_CnpjFornecedorInsumo: WideString;
begin
  Result := ChildNodes['cnpjFornecedorInsumo'].Text;
end;

procedure TXMLCt_SaidaInsumoPerda.Set_CnpjFornecedorInsumo(Value: WideString);
begin
  ChildNodes['cnpjFornecedorInsumo'].NodeValue := Value;
end;

{ TXMLCt_SaidaInsumoPerdaList }

function TXMLCt_SaidaInsumoPerdaList.Add: IXMLCt_SaidaInsumoPerda;
begin
  Result := AddItem(-1) as IXMLCt_SaidaInsumoPerda;
end;

function TXMLCt_SaidaInsumoPerdaList.Insert(const Index: Integer): IXMLCt_SaidaInsumoPerda;
begin
  Result := AddItem(Index) as IXMLCt_SaidaInsumoPerda;
end;
function TXMLCt_SaidaInsumoPerdaList.Get_Item(Index: Integer): IXMLCt_SaidaInsumoPerda;
begin
  Result := List[Index] as IXMLCt_SaidaInsumoPerda;
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

end. 