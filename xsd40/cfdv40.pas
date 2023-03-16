
{************************************************************************************************************************}
{                                                                                                                        }
{                                                    XML Data Binding                                                    }
{                                                                                                                        }
{         Generated on: 10/03/2023 06:12:28 p. m.                                                                        }
{       Generated from: C:\dev\facturacionparaemprendedores\mx\appdelphi\facturacionparaemprendedores\xsd40\cfdv40.xsd   }
{   Settings stored in: C:\dev\facturacionparaemprendedores\mx\appdelphi\facturacionparaemprendedores\xsd40\cfdv40.xdb   }
{                                                                                                                        }
{************************************************************************************************************************}

unit cfdv40;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLComprobante = interface;
  IXMLComprobante_InformacionGlobal = interface;
  IXMLComprobante_CfdiRelacionados = interface;
  IXMLComprobante_CfdiRelacionadosList = interface;
  IXMLComprobante_CfdiRelacionados_CfdiRelacionado = interface;
  IXMLComprobante_Emisor = interface;
  IXMLComprobante_Receptor = interface;
  IXMLComprobante_Conceptos = interface;
  IXMLComprobante_Conceptos_Concepto = interface;
  IXMLComprobante_Conceptos_Concepto_Impuestos = interface;
  IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados = interface;
  IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado = interface;
  IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones = interface;
  IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion = interface;
  IXMLComprobante_Conceptos_Concepto_ACuentaTerceros = interface;
  IXMLComprobante_Conceptos_Concepto_InformacionAduanera = interface;
  IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList = interface;
  IXMLComprobante_Conceptos_Concepto_CuentaPredial = interface;
  IXMLComprobante_Conceptos_Concepto_CuentaPredialList = interface;
  IXMLComprobante_Conceptos_Concepto_ComplementoConcepto = interface;
  IXMLComprobante_Conceptos_Concepto_Parte = interface;
  IXMLComprobante_Conceptos_Concepto_ParteList = interface;
  IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera = interface;
  IXMLComprobante_Impuestos = interface;
  IXMLComprobante_Impuestos_Retenciones = interface;
  IXMLComprobante_Impuestos_Retenciones_Retencion = interface;
  IXMLComprobante_Impuestos_Traslados = interface;
  IXMLComprobante_Impuestos_Traslados_Traslado = interface;
  IXMLComprobante_Complemento = interface;
  IXMLComprobante_Addenda = interface;

{ IXMLComprobante }

  IXMLComprobante = interface(IXMLNode)
    ['{C5426ACA-EDEC-4FC0-BAF4-FBE95368DD73}']
    { Property Accessors }
    function Get_Version: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_Folio: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Sello: UnicodeString;
    function Get_FormaPago: UnicodeString;
    function Get_NoCertificado: UnicodeString;
    function Get_Certificado: UnicodeString;
    function Get_CondicionesDePago: UnicodeString;
    function Get_SubTotal: Double;
    function Get_Descuento: Double;
    function Get_Moneda: UnicodeString;
    function Get_TipoCambio: Double;
    function Get_Total: Double;
    function Get_TipoDeComprobante: UnicodeString;
    function Get_Exportacion: UnicodeString;
    function Get_MetodoPago: UnicodeString;
    function Get_LugarExpedicion: UnicodeString;
    function Get_Confirmacion: UnicodeString;
    function Get_InformacionGlobal: IXMLComprobante_InformacionGlobal;
    function Get_CfdiRelacionados: IXMLComprobante_CfdiRelacionadosList;
    function Get_Emisor: IXMLComprobante_Emisor;
    function Get_Receptor: IXMLComprobante_Receptor;
    function Get_Conceptos: IXMLComprobante_Conceptos;
    function Get_Impuestos: IXMLComprobante_Impuestos;
    function Get_Complemento: IXMLComprobante_Complemento;
    function Get_Addenda: IXMLComprobante_Addenda;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_Folio(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Sello(Value: UnicodeString);
    procedure Set_FormaPago(Value: UnicodeString);
    procedure Set_NoCertificado(Value: UnicodeString);
    procedure Set_Certificado(Value: UnicodeString);
    procedure Set_CondicionesDePago(Value: UnicodeString);
    procedure Set_SubTotal(Value: Double);
    procedure Set_Descuento(Value: Double);
    procedure Set_Moneda(Value: UnicodeString);
    procedure Set_TipoCambio(Value: Double);
    procedure Set_Total(Value: Double);
    procedure Set_TipoDeComprobante(Value: UnicodeString);
    procedure Set_Exportacion(Value: UnicodeString);
    procedure Set_MetodoPago(Value: UnicodeString);
    procedure Set_LugarExpedicion(Value: UnicodeString);
    procedure Set_Confirmacion(Value: UnicodeString);
    { Methods & Properties }
    property Version: UnicodeString read Get_Version write Set_Version;
    property Serie: UnicodeString read Get_Serie write Set_Serie;
    property Folio: UnicodeString read Get_Folio write Set_Folio;
    property Fecha: UnicodeString read Get_Fecha write Set_Fecha;
    property Sello: UnicodeString read Get_Sello write Set_Sello;
    property FormaPago: UnicodeString read Get_FormaPago write Set_FormaPago;
    property NoCertificado: UnicodeString read Get_NoCertificado write Set_NoCertificado;
    property Certificado: UnicodeString read Get_Certificado write Set_Certificado;
    property CondicionesDePago: UnicodeString read Get_CondicionesDePago write Set_CondicionesDePago;
    property SubTotal: Double read Get_SubTotal write Set_SubTotal;
    property Descuento: Double read Get_Descuento write Set_Descuento;
    property Moneda: UnicodeString read Get_Moneda write Set_Moneda;
    property TipoCambio: Double read Get_TipoCambio write Set_TipoCambio;
    property Total: Double read Get_Total write Set_Total;
    property TipoDeComprobante: UnicodeString read Get_TipoDeComprobante write Set_TipoDeComprobante;
    property Exportacion: UnicodeString read Get_Exportacion write Set_Exportacion;
    property MetodoPago: UnicodeString read Get_MetodoPago write Set_MetodoPago;
    property LugarExpedicion: UnicodeString read Get_LugarExpedicion write Set_LugarExpedicion;
    property Confirmacion: UnicodeString read Get_Confirmacion write Set_Confirmacion;
    property InformacionGlobal: IXMLComprobante_InformacionGlobal read Get_InformacionGlobal;
    property CfdiRelacionados: IXMLComprobante_CfdiRelacionadosList read Get_CfdiRelacionados;
    property Emisor: IXMLComprobante_Emisor read Get_Emisor;
    property Receptor: IXMLComprobante_Receptor read Get_Receptor;
    property Conceptos: IXMLComprobante_Conceptos read Get_Conceptos;
    property Impuestos: IXMLComprobante_Impuestos read Get_Impuestos;
    property Complemento: IXMLComprobante_Complemento read Get_Complemento;
    property Addenda: IXMLComprobante_Addenda read Get_Addenda;
  end;

{ IXMLComprobante_InformacionGlobal }

  IXMLComprobante_InformacionGlobal = interface(IXMLNode)
    ['{F712E3F0-9FB0-4BD4-9794-23D28ED83018}']
    { Property Accessors }
    function Get_Periodicidad: UnicodeString;
    function Get_Meses: UnicodeString;
    function Get_Año: SmallInt;
    procedure Set_Periodicidad(Value: UnicodeString);
    procedure Set_Meses(Value: UnicodeString);
    procedure Set_Año(Value: SmallInt);
    { Methods & Properties }
    property Periodicidad: UnicodeString read Get_Periodicidad write Set_Periodicidad;
    property Meses: UnicodeString read Get_Meses write Set_Meses;
    property Año: SmallInt read Get_Año write Set_Año;
  end;

{ IXMLComprobante_CfdiRelacionados }

  IXMLComprobante_CfdiRelacionados = interface(IXMLNodeCollection)
    ['{D114B000-717F-4CDA-9A14-527E651AEAA4}']
    { Property Accessors }
    function Get_TipoRelacion: UnicodeString;
    function Get_CfdiRelacionado(Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
    procedure Set_TipoRelacion(Value: UnicodeString);
    { Methods & Properties }
    function Add: IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
    function Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
    property TipoRelacion: UnicodeString read Get_TipoRelacion write Set_TipoRelacion;
    property CfdiRelacionado[Index: Integer]: IXMLComprobante_CfdiRelacionados_CfdiRelacionado read Get_CfdiRelacionado; default;
  end;

{ IXMLComprobante_CfdiRelacionadosList }

  IXMLComprobante_CfdiRelacionadosList = interface(IXMLNodeCollection)
    ['{9E8C10AF-0109-4FAF-81A2-12259CDE4E22}']
    { Methods & Properties }
    function Add: IXMLComprobante_CfdiRelacionados;
    function Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados;

    function Get_Item(Index: Integer): IXMLComprobante_CfdiRelacionados;
    property Items[Index: Integer]: IXMLComprobante_CfdiRelacionados read Get_Item; default;
  end;

{ IXMLComprobante_CfdiRelacionados_CfdiRelacionado }

  IXMLComprobante_CfdiRelacionados_CfdiRelacionado = interface(IXMLNode)
    ['{4F3A068B-386F-4983-BE6E-A58C774CC13B}']
    { Property Accessors }
    function Get_UUID: UnicodeString;
    procedure Set_UUID(Value: UnicodeString);
    { Methods & Properties }
    property UUID: UnicodeString read Get_UUID write Set_UUID;
  end;

{ IXMLComprobante_Emisor }

  IXMLComprobante_Emisor = interface(IXMLNode)
    ['{FF6466E8-01A0-4BA2-9DB9-97221421B826}']
    { Property Accessors }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_RegimenFiscal: UnicodeString;
    function Get_FacAtrAdquirente: UnicodeString;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    procedure Set_RegimenFiscal(Value: UnicodeString);
    procedure Set_FacAtrAdquirente(Value: UnicodeString);
    { Methods & Properties }
    property Rfc: UnicodeString read Get_Rfc write Set_Rfc;
    property Nombre: UnicodeString read Get_Nombre write Set_Nombre;
    property RegimenFiscal: UnicodeString read Get_RegimenFiscal write Set_RegimenFiscal;
    property FacAtrAdquirente: UnicodeString read Get_FacAtrAdquirente write Set_FacAtrAdquirente;
  end;

{ IXMLComprobante_Receptor }

  IXMLComprobante_Receptor = interface(IXMLNode)
    ['{16BDC152-5FA6-4856-BA6F-AFAB9AA3ACC3}']
    { Property Accessors }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_DomicilioFiscalReceptor: UnicodeString;
    function Get_ResidenciaFiscal: UnicodeString;
    function Get_NumRegIdTrib: UnicodeString;
    function Get_RegimenFiscalReceptor: UnicodeString;
    function Get_UsoCFDI: UnicodeString;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    procedure Set_DomicilioFiscalReceptor(Value: UnicodeString);
    procedure Set_ResidenciaFiscal(Value: UnicodeString);
    procedure Set_NumRegIdTrib(Value: UnicodeString);
    procedure Set_RegimenFiscalReceptor(Value: UnicodeString);
    procedure Set_UsoCFDI(Value: UnicodeString);
    { Methods & Properties }
    property Rfc: UnicodeString read Get_Rfc write Set_Rfc;
    property Nombre: UnicodeString read Get_Nombre write Set_Nombre;
    property DomicilioFiscalReceptor: UnicodeString read Get_DomicilioFiscalReceptor write Set_DomicilioFiscalReceptor;
    property ResidenciaFiscal: UnicodeString read Get_ResidenciaFiscal write Set_ResidenciaFiscal;
    property NumRegIdTrib: UnicodeString read Get_NumRegIdTrib write Set_NumRegIdTrib;
    property RegimenFiscalReceptor: UnicodeString read Get_RegimenFiscalReceptor write Set_RegimenFiscalReceptor;
    property UsoCFDI: UnicodeString read Get_UsoCFDI write Set_UsoCFDI;
  end;

{ IXMLComprobante_Conceptos }

  IXMLComprobante_Conceptos = interface(IXMLNodeCollection)
    ['{1BD92C10-870E-4054-A3A9-04F5561146DE}']
    { Property Accessors }
    function Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
    property Concepto[Index: Integer]: IXMLComprobante_Conceptos_Concepto read Get_Concepto; default;
  end;

{ IXMLComprobante_Conceptos_Concepto }

  IXMLComprobante_Conceptos_Concepto = interface(IXMLNode)
    ['{9648BAB9-A1C7-443B-A4E2-4B852C54971C}']
    { Property Accessors }
    function Get_ClaveProdServ: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Cantidad: Double;
    function Get_ClaveUnidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: Double;
    function Get_Importe: Double;
    function Get_Descuento: Double;
    function Get_ObjetoImp: UnicodeString;
    function Get_Impuestos: IXMLComprobante_Conceptos_Concepto_Impuestos;
    function Get_ACuentaTerceros: IXMLComprobante_Conceptos_Concepto_ACuentaTerceros;
    function Get_InformacionAduanera: IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList;
    function Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredialList;
    function Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
    function Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
    procedure Set_ClaveProdServ(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Cantidad(Value: Double);
    procedure Set_ClaveUnidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_Importe(Value: Double);
    procedure Set_Descuento(Value: Double);
    procedure Set_ObjetoImp(Value: UnicodeString);
    { Methods & Properties }
    property ClaveProdServ: UnicodeString read Get_ClaveProdServ write Set_ClaveProdServ;
    property NoIdentificacion: UnicodeString read Get_NoIdentificacion write Set_NoIdentificacion;
    property Cantidad: Double read Get_Cantidad write Set_Cantidad;
    property ClaveUnidad: UnicodeString read Get_ClaveUnidad write Set_ClaveUnidad;
    property Unidad: UnicodeString read Get_Unidad write Set_Unidad;
    property Descripcion: UnicodeString read Get_Descripcion write Set_Descripcion;
    property ValorUnitario: Double read Get_ValorUnitario write Set_ValorUnitario;
    property Importe: Double read Get_Importe write Set_Importe;
    property Descuento: Double read Get_Descuento write Set_Descuento;
    property ObjetoImp: UnicodeString read Get_ObjetoImp write Set_ObjetoImp;
    property Impuestos: IXMLComprobante_Conceptos_Concepto_Impuestos read Get_Impuestos;
    property ACuentaTerceros: IXMLComprobante_Conceptos_Concepto_ACuentaTerceros read Get_ACuentaTerceros;
    property InformacionAduanera: IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList read Get_InformacionAduanera;
    property CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredialList read Get_CuentaPredial;
    property ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto read Get_ComplementoConcepto;
    property Parte: IXMLComprobante_Conceptos_Concepto_ParteList read Get_Parte;
  end;

{ IXMLComprobante_Conceptos_Concepto_Impuestos }

  IXMLComprobante_Conceptos_Concepto_Impuestos = interface(IXMLNode)
    ['{D5E0D2FF-5F13-483E-98C7-F5F00025741D}']
    { Property Accessors }
    function Get_Traslados: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados;
    function Get_Retenciones: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones;
    { Methods & Properties }
    property Traslados: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados read Get_Traslados;
    property Retenciones: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones read Get_Retenciones;
  end;

{ IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados }

  IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados = interface(IXMLNodeCollection)
    ['{64C25211-5A2B-4DB4-B2DD-7A269D81CB8E}']
    { Property Accessors }
    function Get_Traslado(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
    property Traslado[Index: Integer]: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado read Get_Traslado; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado }

  IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado = interface(IXMLNode)
    ['{A4BAB9B9-6238-4035-879E-ECE4B868F6D6}']
    { Property Accessors }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
    { Methods & Properties }
    property Base: Double read Get_Base write Set_Base;
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property TipoFactor: UnicodeString read Get_TipoFactor write Set_TipoFactor;
    property TasaOCuota: Double read Get_TasaOCuota write Set_TasaOCuota;
    property Importe: Double read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones }

  IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones = interface(IXMLNodeCollection)
    ['{2657C08C-89C7-4495-B3A2-9D9EDB035A4F}']
    { Property Accessors }
    function Get_Retencion(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
    property Retencion[Index: Integer]: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion read Get_Retencion; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion }

  IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion = interface(IXMLNode)
    ['{38B3525F-C28C-4923-8156-DB6C326D1392}']
    { Property Accessors }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
    { Methods & Properties }
    property Base: Double read Get_Base write Set_Base;
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property TipoFactor: UnicodeString read Get_TipoFactor write Set_TipoFactor;
    property TasaOCuota: Double read Get_TasaOCuota write Set_TasaOCuota;
    property Importe: Double read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Conceptos_Concepto_ACuentaTerceros }

  IXMLComprobante_Conceptos_Concepto_ACuentaTerceros = interface(IXMLNode)
    ['{7A5DD393-4876-451C-A7B6-CEE6CC340A28}']
    { Property Accessors }
    function Get_RfcACuentaTerceros: UnicodeString;
    function Get_NombreACuentaTerceros: UnicodeString;
    function Get_RegimenFiscalACuentaTerceros: UnicodeString;
    function Get_DomicilioFiscalACuentaTerceros: UnicodeString;
    procedure Set_RfcACuentaTerceros(Value: UnicodeString);
    procedure Set_NombreACuentaTerceros(Value: UnicodeString);
    procedure Set_RegimenFiscalACuentaTerceros(Value: UnicodeString);
    procedure Set_DomicilioFiscalACuentaTerceros(Value: UnicodeString);
    { Methods & Properties }
    property RfcACuentaTerceros: UnicodeString read Get_RfcACuentaTerceros write Set_RfcACuentaTerceros;
    property NombreACuentaTerceros: UnicodeString read Get_NombreACuentaTerceros write Set_NombreACuentaTerceros;
    property RegimenFiscalACuentaTerceros: UnicodeString read Get_RegimenFiscalACuentaTerceros write Set_RegimenFiscalACuentaTerceros;
    property DomicilioFiscalACuentaTerceros: UnicodeString read Get_DomicilioFiscalACuentaTerceros write Set_DomicilioFiscalACuentaTerceros;
  end;

{ IXMLComprobante_Conceptos_Concepto_InformacionAduanera }

  IXMLComprobante_Conceptos_Concepto_InformacionAduanera = interface(IXMLNode)
    ['{7ADAE061-FD19-47B4-ABF7-2AB2C0008E10}']
    { Property Accessors }
    function Get_NumeroPedimento: UnicodeString;
    procedure Set_NumeroPedimento(Value: UnicodeString);
    { Methods & Properties }
    property NumeroPedimento: UnicodeString read Get_NumeroPedimento write Set_NumeroPedimento;
  end;

{ IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList }

  IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList = interface(IXMLNodeCollection)
    ['{FFEA915B-6B94-4D15-8BAE-C6B12F054018}']
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
    property Items[Index: Integer]: IXMLComprobante_Conceptos_Concepto_InformacionAduanera read Get_Item; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_CuentaPredial }

  IXMLComprobante_Conceptos_Concepto_CuentaPredial = interface(IXMLNode)
    ['{0C042C43-0375-4C78-80FE-ED54E656F21D}']
    { Property Accessors }
    function Get_Numero: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
    { Methods & Properties }
    property Numero: UnicodeString read Get_Numero write Set_Numero;
  end;

{ IXMLComprobante_Conceptos_Concepto_CuentaPredialList }

  IXMLComprobante_Conceptos_Concepto_CuentaPredialList = interface(IXMLNodeCollection)
    ['{152E7E17-C066-4B20-9C54-BF12D297705B}']
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;
    property Items[Index: Integer]: IXMLComprobante_Conceptos_Concepto_CuentaPredial read Get_Item; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

  IXMLComprobante_Conceptos_Concepto_ComplementoConcepto = interface(IXMLNode)
    ['{F422CA9E-42AB-4007-93FC-F84C5C1A3138}']
  end;

{ IXMLComprobante_Conceptos_Concepto_Parte }

  IXMLComprobante_Conceptos_Concepto_Parte = interface(IXMLNodeCollection)
    ['{F6F81749-F934-47D9-AE84-F31E8A86114E}']
    { Property Accessors }
    function Get_ClaveProdServ: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Cantidad: Double;
    function Get_Unidad: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: Double;
    function Get_Importe: Double;
    function Get_InformacionAduanera(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
    procedure Set_ClaveProdServ(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Cantidad(Value: Double);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_Importe(Value: Double);
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
    property ClaveProdServ: UnicodeString read Get_ClaveProdServ write Set_ClaveProdServ;
    property NoIdentificacion: UnicodeString read Get_NoIdentificacion write Set_NoIdentificacion;
    property Cantidad: Double read Get_Cantidad write Set_Cantidad;
    property Unidad: UnicodeString read Get_Unidad write Set_Unidad;
    property Descripcion: UnicodeString read Get_Descripcion write Set_Descripcion;
    property ValorUnitario: Double read Get_ValorUnitario write Set_ValorUnitario;
    property Importe: Double read Get_Importe write Set_Importe;
    property InformacionAduanera[Index: Integer]: IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera read Get_InformacionAduanera; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_ParteList }

  IXMLComprobante_Conceptos_Concepto_ParteList = interface(IXMLNodeCollection)
    ['{4C19591C-E406-4A52-838F-42E24513BA3F}']
    { Methods & Properties }
    function Add: IXMLComprobante_Conceptos_Concepto_Parte;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
    property Items[Index: Integer]: IXMLComprobante_Conceptos_Concepto_Parte read Get_Item; default;
  end;

{ IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera }

  IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera = interface(IXMLNode)
    ['{C86DF80B-C95D-44AA-A1CD-B312D945B5BB}']
    { Property Accessors }
    function Get_NumeroPedimento: UnicodeString;
    procedure Set_NumeroPedimento(Value: UnicodeString);
    { Methods & Properties }
    property NumeroPedimento: UnicodeString read Get_NumeroPedimento write Set_NumeroPedimento;
  end;

{ IXMLComprobante_Impuestos }

  IXMLComprobante_Impuestos = interface(IXMLNode)
    ['{F05BE3F7-9522-47FC-9540-5341059EB5EE}']
    { Property Accessors }
    function Get_TotalImpuestosRetenidos: Double;
    function Get_TotalImpuestosTrasladados: Double;
    function Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
    function Get_Traslados: IXMLComprobante_Impuestos_Traslados;
    procedure Set_TotalImpuestosRetenidos(Value: Double);
    procedure Set_TotalImpuestosTrasladados(Value: Double);
    { Methods & Properties }
    property TotalImpuestosRetenidos: Double read Get_TotalImpuestosRetenidos write Set_TotalImpuestosRetenidos;
    property TotalImpuestosTrasladados: Double read Get_TotalImpuestosTrasladados write Set_TotalImpuestosTrasladados;
    property Retenciones: IXMLComprobante_Impuestos_Retenciones read Get_Retenciones;
    property Traslados: IXMLComprobante_Impuestos_Traslados read Get_Traslados;
  end;

{ IXMLComprobante_Impuestos_Retenciones }

  IXMLComprobante_Impuestos_Retenciones = interface(IXMLNodeCollection)
    ['{535DED2E-32DF-4FE4-BE94-E16D07CA922C}']
    { Property Accessors }
    function Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    { Methods & Properties }
    function Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    property Retencion[Index: Integer]: IXMLComprobante_Impuestos_Retenciones_Retencion read Get_Retencion; default;
  end;

{ IXMLComprobante_Impuestos_Retenciones_Retencion }

  IXMLComprobante_Impuestos_Retenciones_Retencion = interface(IXMLNode)
    ['{77C81A4B-1D55-4B30-96ED-8E5E1BBE63A4}']
    { Property Accessors }
    function Get_Impuesto: UnicodeString;
    function Get_Importe: Double;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Importe(Value: Double);
    { Methods & Properties }
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property Importe: Double read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Impuestos_Traslados }

  IXMLComprobante_Impuestos_Traslados = interface(IXMLNodeCollection)
    ['{8342BB15-475F-42BF-B2D6-AA87B06E2195}']
    { Property Accessors }
    function Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    { Methods & Properties }
    function Add: IXMLComprobante_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    property Traslado[Index: Integer]: IXMLComprobante_Impuestos_Traslados_Traslado read Get_Traslado; default;
  end;

{ IXMLComprobante_Impuestos_Traslados_Traslado }

  IXMLComprobante_Impuestos_Traslados_Traslado = interface(IXMLNode)
    ['{F95FCDD3-2710-427D-8AF3-00DBEB38D2C6}']
    { Property Accessors }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
    { Methods & Properties }
    property Base: Double read Get_Base write Set_Base;
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property TipoFactor: UnicodeString read Get_TipoFactor write Set_TipoFactor;
    property TasaOCuota: Double read Get_TasaOCuota write Set_TasaOCuota;
    property Importe: Double read Get_Importe write Set_Importe;
  end;

{ IXMLComprobante_Complemento }

  IXMLComprobante_Complemento = interface(IXMLNode)
    ['{0AC1E037-98D7-48AC-998E-D21F9ED03C68}']
  end;

{ IXMLComprobante_Addenda }

  IXMLComprobante_Addenda = interface(IXMLNode)
    ['{3B0581C6-599E-4EBA-9AB9-0A61E730762A}']
  end;

{ Forward Decls }

  TXMLComprobante = class;
  TXMLComprobante_InformacionGlobal = class;
  TXMLComprobante_CfdiRelacionados = class;
  TXMLComprobante_CfdiRelacionadosList = class;
  TXMLComprobante_CfdiRelacionados_CfdiRelacionado = class;
  TXMLComprobante_Emisor = class;
  TXMLComprobante_Receptor = class;
  TXMLComprobante_Conceptos = class;
  TXMLComprobante_Conceptos_Concepto = class;
  TXMLComprobante_Conceptos_Concepto_Impuestos = class;
  TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados = class;
  TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado = class;
  TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones = class;
  TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion = class;
  TXMLComprobante_Conceptos_Concepto_ACuentaTerceros = class;
  TXMLComprobante_Conceptos_Concepto_InformacionAduanera = class;
  TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList = class;
  TXMLComprobante_Conceptos_Concepto_CuentaPredial = class;
  TXMLComprobante_Conceptos_Concepto_CuentaPredialList = class;
  TXMLComprobante_Conceptos_Concepto_ComplementoConcepto = class;
  TXMLComprobante_Conceptos_Concepto_Parte = class;
  TXMLComprobante_Conceptos_Concepto_ParteList = class;
  TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera = class;
  TXMLComprobante_Impuestos = class;
  TXMLComprobante_Impuestos_Retenciones = class;
  TXMLComprobante_Impuestos_Retenciones_Retencion = class;
  TXMLComprobante_Impuestos_Traslados = class;
  TXMLComprobante_Impuestos_Traslados_Traslado = class;
  TXMLComprobante_Complemento = class;
  TXMLComprobante_Addenda = class;

{ TXMLComprobante }

  TXMLComprobante = class(TXMLNode, IXMLComprobante)
  private
    FCfdiRelacionados: IXMLComprobante_CfdiRelacionadosList;
  protected
    { IXMLComprobante }
    function Get_Version: UnicodeString;
    function Get_Serie: UnicodeString;
    function Get_Folio: UnicodeString;
    function Get_Fecha: UnicodeString;
    function Get_Sello: UnicodeString;
    function Get_FormaPago: UnicodeString;
    function Get_NoCertificado: UnicodeString;
    function Get_Certificado: UnicodeString;
    function Get_CondicionesDePago: UnicodeString;
    function Get_SubTotal: Double;
    function Get_Descuento: Double;
    function Get_Moneda: UnicodeString;
    function Get_TipoCambio: Double;
    function Get_Total: Double;
    function Get_TipoDeComprobante: UnicodeString;
    function Get_Exportacion: UnicodeString;
    function Get_MetodoPago: UnicodeString;
    function Get_LugarExpedicion: UnicodeString;
    function Get_Confirmacion: UnicodeString;
    function Get_InformacionGlobal: IXMLComprobante_InformacionGlobal;
    function Get_CfdiRelacionados: IXMLComprobante_CfdiRelacionadosList;
    function Get_Emisor: IXMLComprobante_Emisor;
    function Get_Receptor: IXMLComprobante_Receptor;
    function Get_Conceptos: IXMLComprobante_Conceptos;
    function Get_Impuestos: IXMLComprobante_Impuestos;
    function Get_Complemento: IXMLComprobante_Complemento;
    function Get_Addenda: IXMLComprobante_Addenda;
    procedure Set_Version(Value: UnicodeString);
    procedure Set_Serie(Value: UnicodeString);
    procedure Set_Folio(Value: UnicodeString);
    procedure Set_Fecha(Value: UnicodeString);
    procedure Set_Sello(Value: UnicodeString);
    procedure Set_FormaPago(Value: UnicodeString);
    procedure Set_NoCertificado(Value: UnicodeString);
    procedure Set_Certificado(Value: UnicodeString);
    procedure Set_CondicionesDePago(Value: UnicodeString);
    procedure Set_SubTotal(Value: Double);
    procedure Set_Descuento(Value: Double);
    procedure Set_Moneda(Value: UnicodeString);
    procedure Set_TipoCambio(Value: Double);
    procedure Set_Total(Value: Double);
    procedure Set_TipoDeComprobante(Value: UnicodeString);
    procedure Set_Exportacion(Value: UnicodeString);
    procedure Set_MetodoPago(Value: UnicodeString);
    procedure Set_LugarExpedicion(Value: UnicodeString);
    procedure Set_Confirmacion(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_InformacionGlobal }

  TXMLComprobante_InformacionGlobal = class(TXMLNode, IXMLComprobante_InformacionGlobal)
  protected
    { IXMLComprobante_InformacionGlobal }
    function Get_Periodicidad: UnicodeString;
    function Get_Meses: UnicodeString;
    function Get_Año: SmallInt;
    procedure Set_Periodicidad(Value: UnicodeString);
    procedure Set_Meses(Value: UnicodeString);
    procedure Set_Año(Value: SmallInt);
  end;

{ TXMLComprobante_CfdiRelacionados }

  TXMLComprobante_CfdiRelacionados = class(TXMLNodeCollection, IXMLComprobante_CfdiRelacionados)
  protected
    { IXMLComprobante_CfdiRelacionados }
    function Get_TipoRelacion: UnicodeString;
    function Get_CfdiRelacionado(Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
    procedure Set_TipoRelacion(Value: UnicodeString);
    function Add: IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
    function Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_CfdiRelacionadosList }

  TXMLComprobante_CfdiRelacionadosList = class(TXMLNodeCollection, IXMLComprobante_CfdiRelacionadosList)
  protected
    { IXMLComprobante_CfdiRelacionadosList }
    function Add: IXMLComprobante_CfdiRelacionados;
    function Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados;

    function Get_Item(Index: Integer): IXMLComprobante_CfdiRelacionados;
  end;

{ TXMLComprobante_CfdiRelacionados_CfdiRelacionado }

  TXMLComprobante_CfdiRelacionados_CfdiRelacionado = class(TXMLNode, IXMLComprobante_CfdiRelacionados_CfdiRelacionado)
  protected
    { IXMLComprobante_CfdiRelacionados_CfdiRelacionado }
    function Get_UUID: UnicodeString;
    procedure Set_UUID(Value: UnicodeString);
  end;

{ TXMLComprobante_Emisor }

  TXMLComprobante_Emisor = class(TXMLNode, IXMLComprobante_Emisor)
  protected
    { IXMLComprobante_Emisor }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_RegimenFiscal: UnicodeString;
    function Get_FacAtrAdquirente: UnicodeString;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    procedure Set_RegimenFiscal(Value: UnicodeString);
    procedure Set_FacAtrAdquirente(Value: UnicodeString);
  end;

{ TXMLComprobante_Receptor }

  TXMLComprobante_Receptor = class(TXMLNode, IXMLComprobante_Receptor)
  protected
    { IXMLComprobante_Receptor }
    function Get_Rfc: UnicodeString;
    function Get_Nombre: UnicodeString;
    function Get_DomicilioFiscalReceptor: UnicodeString;
    function Get_ResidenciaFiscal: UnicodeString;
    function Get_NumRegIdTrib: UnicodeString;
    function Get_RegimenFiscalReceptor: UnicodeString;
    function Get_UsoCFDI: UnicodeString;
    procedure Set_Rfc(Value: UnicodeString);
    procedure Set_Nombre(Value: UnicodeString);
    procedure Set_DomicilioFiscalReceptor(Value: UnicodeString);
    procedure Set_ResidenciaFiscal(Value: UnicodeString);
    procedure Set_NumRegIdTrib(Value: UnicodeString);
    procedure Set_RegimenFiscalReceptor(Value: UnicodeString);
    procedure Set_UsoCFDI(Value: UnicodeString);
  end;

{ TXMLComprobante_Conceptos }

  TXMLComprobante_Conceptos = class(TXMLNodeCollection, IXMLComprobante_Conceptos)
  protected
    { IXMLComprobante_Conceptos }
    function Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
    function Add: IXMLComprobante_Conceptos_Concepto;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto }

  TXMLComprobante_Conceptos_Concepto = class(TXMLNode, IXMLComprobante_Conceptos_Concepto)
  private
    FInformacionAduanera: IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList;
    FCuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredialList;
    FParte: IXMLComprobante_Conceptos_Concepto_ParteList;
  protected
    { IXMLComprobante_Conceptos_Concepto }
    function Get_ClaveProdServ: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Cantidad: Double;
    function Get_ClaveUnidad: UnicodeString;
    function Get_Unidad: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: Double;
    function Get_Importe: Double;
    function Get_Descuento: Double;
    function Get_ObjetoImp: UnicodeString;
    function Get_Impuestos: IXMLComprobante_Conceptos_Concepto_Impuestos;
    function Get_ACuentaTerceros: IXMLComprobante_Conceptos_Concepto_ACuentaTerceros;
    function Get_InformacionAduanera: IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList;
    function Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredialList;
    function Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
    function Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
    procedure Set_ClaveProdServ(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Cantidad(Value: Double);
    procedure Set_ClaveUnidad(Value: UnicodeString);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_Importe(Value: Double);
    procedure Set_Descuento(Value: Double);
    procedure Set_ObjetoImp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos }

  TXMLComprobante_Conceptos_Concepto_Impuestos = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_Impuestos)
  protected
    { IXMLComprobante_Conceptos_Concepto_Impuestos }
    function Get_Traslados: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados;
    function Get_Retenciones: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados }

  TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados)
  protected
    { IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados }
    function Get_Traslado(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
    function Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado }

  TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado)
  protected
    { IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
  end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones }

  TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones)
  protected
    { IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones }
    function Get_Retencion(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
    function Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion }

  TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion)
  protected
    { IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
  end;

{ TXMLComprobante_Conceptos_Concepto_ACuentaTerceros }

  TXMLComprobante_Conceptos_Concepto_ACuentaTerceros = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_ACuentaTerceros)
  protected
    { IXMLComprobante_Conceptos_Concepto_ACuentaTerceros }
    function Get_RfcACuentaTerceros: UnicodeString;
    function Get_NombreACuentaTerceros: UnicodeString;
    function Get_RegimenFiscalACuentaTerceros: UnicodeString;
    function Get_DomicilioFiscalACuentaTerceros: UnicodeString;
    procedure Set_RfcACuentaTerceros(Value: UnicodeString);
    procedure Set_NombreACuentaTerceros(Value: UnicodeString);
    procedure Set_RegimenFiscalACuentaTerceros(Value: UnicodeString);
    procedure Set_DomicilioFiscalACuentaTerceros(Value: UnicodeString);
  end;

{ TXMLComprobante_Conceptos_Concepto_InformacionAduanera }

  TXMLComprobante_Conceptos_Concepto_InformacionAduanera = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_InformacionAduanera)
  protected
    { IXMLComprobante_Conceptos_Concepto_InformacionAduanera }
    function Get_NumeroPedimento: UnicodeString;
    procedure Set_NumeroPedimento(Value: UnicodeString);
  end;

{ TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList }

  TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList)
  protected
    { IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList }
    function Add: IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
  end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredial }

  TXMLComprobante_Conceptos_Concepto_CuentaPredial = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_CuentaPredial)
  protected
    { IXMLComprobante_Conceptos_Concepto_CuentaPredial }
    function Get_Numero: UnicodeString;
    procedure Set_Numero(Value: UnicodeString);
  end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredialList }

  TXMLComprobante_Conceptos_Concepto_CuentaPredialList = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_CuentaPredialList)
  protected
    { IXMLComprobante_Conceptos_Concepto_CuentaPredialList }
    function Add: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;
  end;

{ TXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

  TXMLComprobante_Conceptos_Concepto_ComplementoConcepto = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_ComplementoConcepto)
  protected
    { IXMLComprobante_Conceptos_Concepto_ComplementoConcepto }
  end;

{ TXMLComprobante_Conceptos_Concepto_Parte }

  TXMLComprobante_Conceptos_Concepto_Parte = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_Parte)
  protected
    { IXMLComprobante_Conceptos_Concepto_Parte }
    function Get_ClaveProdServ: UnicodeString;
    function Get_NoIdentificacion: UnicodeString;
    function Get_Cantidad: Double;
    function Get_Unidad: UnicodeString;
    function Get_Descripcion: UnicodeString;
    function Get_ValorUnitario: Double;
    function Get_Importe: Double;
    function Get_InformacionAduanera(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
    procedure Set_ClaveProdServ(Value: UnicodeString);
    procedure Set_NoIdentificacion(Value: UnicodeString);
    procedure Set_Cantidad(Value: Double);
    procedure Set_Unidad(Value: UnicodeString);
    procedure Set_Descripcion(Value: UnicodeString);
    procedure Set_ValorUnitario(Value: Double);
    procedure Set_Importe(Value: Double);
    function Add: IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Conceptos_Concepto_ParteList }

  TXMLComprobante_Conceptos_Concepto_ParteList = class(TXMLNodeCollection, IXMLComprobante_Conceptos_Concepto_ParteList)
  protected
    { IXMLComprobante_Conceptos_Concepto_ParteList }
    function Add: IXMLComprobante_Conceptos_Concepto_Parte;
    function Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;

    function Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
  end;

{ TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera }

  TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera = class(TXMLNode, IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera)
  protected
    { IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera }
    function Get_NumeroPedimento: UnicodeString;
    procedure Set_NumeroPedimento(Value: UnicodeString);
  end;

{ TXMLComprobante_Impuestos }

  TXMLComprobante_Impuestos = class(TXMLNode, IXMLComprobante_Impuestos)
  protected
    { IXMLComprobante_Impuestos }
    function Get_TotalImpuestosRetenidos: Double;
    function Get_TotalImpuestosTrasladados: Double;
    function Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
    function Get_Traslados: IXMLComprobante_Impuestos_Traslados;
    procedure Set_TotalImpuestosRetenidos(Value: Double);
    procedure Set_TotalImpuestosTrasladados(Value: Double);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Retenciones }

  TXMLComprobante_Impuestos_Retenciones = class(TXMLNodeCollection, IXMLComprobante_Impuestos_Retenciones)
  protected
    { IXMLComprobante_Impuestos_Retenciones }
    function Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Retenciones_Retencion }

  TXMLComprobante_Impuestos_Retenciones_Retencion = class(TXMLNode, IXMLComprobante_Impuestos_Retenciones_Retencion)
  protected
    { IXMLComprobante_Impuestos_Retenciones_Retencion }
    function Get_Impuesto: UnicodeString;
    function Get_Importe: Double;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_Importe(Value: Double);
  end;

{ TXMLComprobante_Impuestos_Traslados }

  TXMLComprobante_Impuestos_Traslados = class(TXMLNodeCollection, IXMLComprobante_Impuestos_Traslados)
  protected
    { IXMLComprobante_Impuestos_Traslados }
    function Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
    function Add: IXMLComprobante_Impuestos_Traslados_Traslado;
    function Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLComprobante_Impuestos_Traslados_Traslado }

  TXMLComprobante_Impuestos_Traslados_Traslado = class(TXMLNode, IXMLComprobante_Impuestos_Traslados_Traslado)
  protected
    { IXMLComprobante_Impuestos_Traslados_Traslado }
    function Get_Base: Double;
    function Get_Impuesto: UnicodeString;
    function Get_TipoFactor: UnicodeString;
    function Get_TasaOCuota: Double;
    function Get_Importe: Double;
    procedure Set_Base(Value: Double);
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_TipoFactor(Value: UnicodeString);
    procedure Set_TasaOCuota(Value: Double);
    procedure Set_Importe(Value: Double);
  end;

{ TXMLComprobante_Complemento }

  TXMLComprobante_Complemento = class(TXMLNode, IXMLComprobante_Complemento)
  protected
    { IXMLComprobante_Complemento }
  end;

{ TXMLComprobante_Addenda }

  TXMLComprobante_Addenda = class(TXMLNode, IXMLComprobante_Addenda)
  protected
    { IXMLComprobante_Addenda }
  end;

{ Global Functions }

function GetComprobante(Doc: IXMLDocument): IXMLComprobante;
function LoadComprobante(const FileName: string): IXMLComprobante;
function NewComprobante: IXMLComprobante;

const
  TargetNamespace = 'http://www.sat.gob.mx/cfd/4';

implementation

uses System.Variants, Xml.xmlutil;

{ Global Functions }

function GetComprobante(Doc: IXMLDocument): IXMLComprobante;
begin
  Result := Doc.GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

function LoadComprobante(const FileName: string): IXMLComprobante;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

function NewComprobante: IXMLComprobante;
begin
  Result := NewXMLDocument.GetDocBinding('Comprobante', TXMLComprobante, TargetNamespace) as IXMLComprobante;
end;

{ TXMLComprobante }

procedure TXMLComprobante.AfterConstruction;
begin
  RegisterChildNode('InformacionGlobal', TXMLComprobante_InformacionGlobal);
  RegisterChildNode('CfdiRelacionados', TXMLComprobante_CfdiRelacionados);
  RegisterChildNode('Emisor', TXMLComprobante_Emisor);
  RegisterChildNode('Receptor', TXMLComprobante_Receptor);
  RegisterChildNode('Conceptos', TXMLComprobante_Conceptos);
  RegisterChildNode('Impuestos', TXMLComprobante_Impuestos);
  RegisterChildNode('Complemento', TXMLComprobante_Complemento);
  RegisterChildNode('Addenda', TXMLComprobante_Addenda);
  FCfdiRelacionados := CreateCollection(TXMLComprobante_CfdiRelacionadosList, IXMLComprobante_CfdiRelacionados, 'CfdiRelacionados') as IXMLComprobante_CfdiRelacionadosList;
  inherited;
end;

function TXMLComprobante.Get_Version: UnicodeString;
begin
  Result := AttributeNodes['Version'].Text;
end;

procedure TXMLComprobante.Set_Version(Value: UnicodeString);
begin
  SetAttribute('Version', Value);
end;

function TXMLComprobante.Get_Serie: UnicodeString;
begin
  Result := AttributeNodes['Serie'].Text;
end;

procedure TXMLComprobante.Set_Serie(Value: UnicodeString);
begin
  SetAttribute('Serie', Value);
end;

function TXMLComprobante.Get_Folio: UnicodeString;
begin
  Result := AttributeNodes['Folio'].Text;
end;

procedure TXMLComprobante.Set_Folio(Value: UnicodeString);
begin
  SetAttribute('Folio', Value);
end;

function TXMLComprobante.Get_Fecha: UnicodeString;
begin
  Result := AttributeNodes['Fecha'].Text;
end;

procedure TXMLComprobante.Set_Fecha(Value: UnicodeString);
begin
  SetAttribute('Fecha', Value);
end;

function TXMLComprobante.Get_Sello: UnicodeString;
begin
  Result := AttributeNodes['Sello'].Text;
end;

procedure TXMLComprobante.Set_Sello(Value: UnicodeString);
begin
  SetAttribute('Sello', Value);
end;

function TXMLComprobante.Get_FormaPago: UnicodeString;
begin
  Result := AttributeNodes['FormaPago'].Text;
end;

procedure TXMLComprobante.Set_FormaPago(Value: UnicodeString);
begin
  SetAttribute('FormaPago', Value);
end;

function TXMLComprobante.Get_NoCertificado: UnicodeString;
begin
  Result := AttributeNodes['NoCertificado'].Text;
end;

procedure TXMLComprobante.Set_NoCertificado(Value: UnicodeString);
begin
  SetAttribute('NoCertificado', Value);
end;

function TXMLComprobante.Get_Certificado: UnicodeString;
begin
  Result := AttributeNodes['Certificado'].Text;
end;

procedure TXMLComprobante.Set_Certificado(Value: UnicodeString);
begin
  SetAttribute('Certificado', Value);
end;

function TXMLComprobante.Get_CondicionesDePago: UnicodeString;
begin
  Result := AttributeNodes['CondicionesDePago'].Text;
end;

procedure TXMLComprobante.Set_CondicionesDePago(Value: UnicodeString);
begin
  SetAttribute('CondicionesDePago', Value);
end;

function TXMLComprobante.Get_SubTotal: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['SubTotal'].Text);
end;

procedure TXMLComprobante.Set_SubTotal(Value: Double);
begin
  SetAttribute('SubTotal', Value);
end;

function TXMLComprobante.Get_Descuento: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Descuento'].Text);
end;

procedure TXMLComprobante.Set_Descuento(Value: Double);
begin
  SetAttribute('Descuento', Value);
end;

function TXMLComprobante.Get_Moneda: UnicodeString;
begin
  Result := AttributeNodes['Moneda'].Text;
end;

procedure TXMLComprobante.Set_Moneda(Value: UnicodeString);
begin
  SetAttribute('Moneda', Value);
end;

function TXMLComprobante.Get_TipoCambio: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TipoCambio'].Text);
end;

procedure TXMLComprobante.Set_TipoCambio(Value: Double);
begin
  SetAttribute('TipoCambio', Value);
end;

function TXMLComprobante.Get_Total: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Total'].Text);
end;

procedure TXMLComprobante.Set_Total(Value: Double);
begin
  SetAttribute('Total', Value);
end;

function TXMLComprobante.Get_TipoDeComprobante: UnicodeString;
begin
  Result := AttributeNodes['TipoDeComprobante'].Text;
end;

procedure TXMLComprobante.Set_TipoDeComprobante(Value: UnicodeString);
begin
  SetAttribute('TipoDeComprobante', Value);
end;

function TXMLComprobante.Get_Exportacion: UnicodeString;
begin
  Result := AttributeNodes['Exportacion'].Text;
end;

procedure TXMLComprobante.Set_Exportacion(Value: UnicodeString);
begin
  SetAttribute('Exportacion', Value);
end;

function TXMLComprobante.Get_MetodoPago: UnicodeString;
begin
  Result := AttributeNodes['MetodoPago'].Text;
end;

procedure TXMLComprobante.Set_MetodoPago(Value: UnicodeString);
begin
  SetAttribute('MetodoPago', Value);
end;

function TXMLComprobante.Get_LugarExpedicion: UnicodeString;
begin
  Result := AttributeNodes['LugarExpedicion'].Text;
end;

procedure TXMLComprobante.Set_LugarExpedicion(Value: UnicodeString);
begin
  SetAttribute('LugarExpedicion', Value);
end;

function TXMLComprobante.Get_Confirmacion: UnicodeString;
begin
  Result := AttributeNodes['Confirmacion'].Text;
end;

procedure TXMLComprobante.Set_Confirmacion(Value: UnicodeString);
begin
  SetAttribute('Confirmacion', Value);
end;

function TXMLComprobante.Get_InformacionGlobal: IXMLComprobante_InformacionGlobal;
begin
  Result := ChildNodes['InformacionGlobal'] as IXMLComprobante_InformacionGlobal;
end;

function TXMLComprobante.Get_CfdiRelacionados: IXMLComprobante_CfdiRelacionadosList;
begin
  Result := FCfdiRelacionados;
end;

function TXMLComprobante.Get_Emisor: IXMLComprobante_Emisor;
begin
  Result := ChildNodes['Emisor'] as IXMLComprobante_Emisor;
end;

function TXMLComprobante.Get_Receptor: IXMLComprobante_Receptor;
begin
  Result := ChildNodes['Receptor'] as IXMLComprobante_Receptor;
end;

function TXMLComprobante.Get_Conceptos: IXMLComprobante_Conceptos;
begin
  Result := ChildNodes['Conceptos'] as IXMLComprobante_Conceptos;
end;

function TXMLComprobante.Get_Impuestos: IXMLComprobante_Impuestos;
begin
  Result := ChildNodes['Impuestos'] as IXMLComprobante_Impuestos;
end;

function TXMLComprobante.Get_Complemento: IXMLComprobante_Complemento;
begin
  Result := ChildNodes['Complemento'] as IXMLComprobante_Complemento;
end;

function TXMLComprobante.Get_Addenda: IXMLComprobante_Addenda;
begin
  Result := ChildNodes['Addenda'] as IXMLComprobante_Addenda;
end;

{ TXMLComprobante_InformacionGlobal }

function TXMLComprobante_InformacionGlobal.Get_Periodicidad: UnicodeString;
begin
  Result := AttributeNodes['Periodicidad'].Text;
end;

procedure TXMLComprobante_InformacionGlobal.Set_Periodicidad(Value: UnicodeString);
begin
  SetAttribute('Periodicidad', Value);
end;

function TXMLComprobante_InformacionGlobal.Get_Meses: UnicodeString;
begin
  Result := AttributeNodes['Meses'].Text;
end;

procedure TXMLComprobante_InformacionGlobal.Set_Meses(Value: UnicodeString);
begin
  SetAttribute('Meses', Value);
end;

function TXMLComprobante_InformacionGlobal.Get_Año: SmallInt;
begin
  Result := AttributeNodes['Año'].NodeValue;
end;

procedure TXMLComprobante_InformacionGlobal.Set_Año(Value: SmallInt);
begin
  SetAttribute('Año', Value);
end;

{ TXMLComprobante_CfdiRelacionados }

procedure TXMLComprobante_CfdiRelacionados.AfterConstruction;
begin
  RegisterChildNode('CfdiRelacionado', TXMLComprobante_CfdiRelacionados_CfdiRelacionado);
  ItemTag := 'CfdiRelacionado';
  ItemInterface := IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
  inherited;
end;

function TXMLComprobante_CfdiRelacionados.Get_TipoRelacion: UnicodeString;
begin
  Result := AttributeNodes['TipoRelacion'].Text;
end;

procedure TXMLComprobante_CfdiRelacionados.Set_TipoRelacion(Value: UnicodeString);
begin
  SetAttribute('TipoRelacion', Value);
end;

function TXMLComprobante_CfdiRelacionados.Get_CfdiRelacionado(Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
begin
  Result := List[Index] as IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
end;

function TXMLComprobante_CfdiRelacionados.Add: IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
begin
  Result := AddItem(-1) as IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
end;

function TXMLComprobante_CfdiRelacionados.Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
begin
  Result := AddItem(Index) as IXMLComprobante_CfdiRelacionados_CfdiRelacionado;
end;

{ TXMLComprobante_CfdiRelacionadosList }

function TXMLComprobante_CfdiRelacionadosList.Add: IXMLComprobante_CfdiRelacionados;
begin
  Result := AddItem(-1) as IXMLComprobante_CfdiRelacionados;
end;

function TXMLComprobante_CfdiRelacionadosList.Insert(const Index: Integer): IXMLComprobante_CfdiRelacionados;
begin
  Result := AddItem(Index) as IXMLComprobante_CfdiRelacionados;
end;

function TXMLComprobante_CfdiRelacionadosList.Get_Item(Index: Integer): IXMLComprobante_CfdiRelacionados;
begin
  Result := List[Index] as IXMLComprobante_CfdiRelacionados;
end;

{ TXMLComprobante_CfdiRelacionados_CfdiRelacionado }

function TXMLComprobante_CfdiRelacionados_CfdiRelacionado.Get_UUID: UnicodeString;
begin
  Result := AttributeNodes['UUID'].Text;
end;

procedure TXMLComprobante_CfdiRelacionados_CfdiRelacionado.Set_UUID(Value: UnicodeString);
begin
  SetAttribute('UUID', Value);
end;

{ TXMLComprobante_Emisor }

function TXMLComprobante_Emisor.Get_Rfc: UnicodeString;
begin
  Result := AttributeNodes['Rfc'].Text;
end;

procedure TXMLComprobante_Emisor.Set_Rfc(Value: UnicodeString);
begin
  SetAttribute('Rfc', Value);
end;

function TXMLComprobante_Emisor.Get_Nombre: UnicodeString;
begin
  Result := AttributeNodes['Nombre'].Text;
end;

procedure TXMLComprobante_Emisor.Set_Nombre(Value: UnicodeString);
begin
  SetAttribute('Nombre', Value);
end;

function TXMLComprobante_Emisor.Get_RegimenFiscal: UnicodeString;
begin
  Result := AttributeNodes['RegimenFiscal'].Text;
end;

procedure TXMLComprobante_Emisor.Set_RegimenFiscal(Value: UnicodeString);
begin
  SetAttribute('RegimenFiscal', Value);
end;

function TXMLComprobante_Emisor.Get_FacAtrAdquirente: UnicodeString;
begin
  Result := AttributeNodes['FacAtrAdquirente'].Text;
end;

procedure TXMLComprobante_Emisor.Set_FacAtrAdquirente(Value: UnicodeString);
begin
  SetAttribute('FacAtrAdquirente', Value);
end;

{ TXMLComprobante_Receptor }

function TXMLComprobante_Receptor.Get_Rfc: UnicodeString;
begin
  Result := AttributeNodes['Rfc'].Text;
end;

procedure TXMLComprobante_Receptor.Set_Rfc(Value: UnicodeString);
begin
  SetAttribute('Rfc', Value);
end;

function TXMLComprobante_Receptor.Get_Nombre: UnicodeString;
begin
  Result := AttributeNodes['Nombre'].Text;
end;

procedure TXMLComprobante_Receptor.Set_Nombre(Value: UnicodeString);
begin
  SetAttribute('Nombre', Value);
end;

function TXMLComprobante_Receptor.Get_DomicilioFiscalReceptor: UnicodeString;
begin
  Result := AttributeNodes['DomicilioFiscalReceptor'].Text;
end;

procedure TXMLComprobante_Receptor.Set_DomicilioFiscalReceptor(Value: UnicodeString);
begin
  SetAttribute('DomicilioFiscalReceptor', Value);
end;

function TXMLComprobante_Receptor.Get_ResidenciaFiscal: UnicodeString;
begin
  Result := AttributeNodes['ResidenciaFiscal'].Text;
end;

procedure TXMLComprobante_Receptor.Set_ResidenciaFiscal(Value: UnicodeString);
begin
  SetAttribute('ResidenciaFiscal', Value);
end;

function TXMLComprobante_Receptor.Get_NumRegIdTrib: UnicodeString;
begin
  Result := AttributeNodes['NumRegIdTrib'].Text;
end;

procedure TXMLComprobante_Receptor.Set_NumRegIdTrib(Value: UnicodeString);
begin
  SetAttribute('NumRegIdTrib', Value);
end;

function TXMLComprobante_Receptor.Get_RegimenFiscalReceptor: UnicodeString;
begin
  Result := AttributeNodes['RegimenFiscalReceptor'].Text;
end;

procedure TXMLComprobante_Receptor.Set_RegimenFiscalReceptor(Value: UnicodeString);
begin
  SetAttribute('RegimenFiscalReceptor', Value);
end;

function TXMLComprobante_Receptor.Get_UsoCFDI: UnicodeString;
begin
  Result := AttributeNodes['UsoCFDI'].Text;
end;

procedure TXMLComprobante_Receptor.Set_UsoCFDI(Value: UnicodeString);
begin
  SetAttribute('UsoCFDI', Value);
end;

{ TXMLComprobante_Conceptos }

procedure TXMLComprobante_Conceptos.AfterConstruction;
begin
  RegisterChildNode('Concepto', TXMLComprobante_Conceptos_Concepto);
  ItemTag := 'Concepto';
  ItemInterface := IXMLComprobante_Conceptos_Concepto;
  inherited;
end;

function TXMLComprobante_Conceptos.Get_Concepto(Index: Integer): IXMLComprobante_Conceptos_Concepto;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto;
end;

function TXMLComprobante_Conceptos.Add: IXMLComprobante_Conceptos_Concepto;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto;
end;

function TXMLComprobante_Conceptos.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto;
end;

{ TXMLComprobante_Conceptos_Concepto }

procedure TXMLComprobante_Conceptos_Concepto.AfterConstruction;
begin
  RegisterChildNode('Impuestos', TXMLComprobante_Conceptos_Concepto_Impuestos);
  RegisterChildNode('ACuentaTerceros', TXMLComprobante_Conceptos_Concepto_ACuentaTerceros);
  RegisterChildNode('InformacionAduanera', TXMLComprobante_Conceptos_Concepto_InformacionAduanera);
  RegisterChildNode('CuentaPredial', TXMLComprobante_Conceptos_Concepto_CuentaPredial);
  RegisterChildNode('ComplementoConcepto', TXMLComprobante_Conceptos_Concepto_ComplementoConcepto);
  RegisterChildNode('Parte', TXMLComprobante_Conceptos_Concepto_Parte);
  FInformacionAduanera := CreateCollection(TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList, IXMLComprobante_Conceptos_Concepto_InformacionAduanera, 'InformacionAduanera') as IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList;
  FCuentaPredial := CreateCollection(TXMLComprobante_Conceptos_Concepto_CuentaPredialList, IXMLComprobante_Conceptos_Concepto_CuentaPredial, 'CuentaPredial') as IXMLComprobante_Conceptos_Concepto_CuentaPredialList;
  FParte := CreateCollection(TXMLComprobante_Conceptos_Concepto_ParteList, IXMLComprobante_Conceptos_Concepto_Parte, 'Parte') as IXMLComprobante_Conceptos_Concepto_ParteList;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto.Get_ClaveProdServ: UnicodeString;
begin
  Result := AttributeNodes['ClaveProdServ'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_ClaveProdServ(Value: UnicodeString);
begin
  SetAttribute('ClaveProdServ', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_NoIdentificacion: UnicodeString;
begin
  Result := AttributeNodes['NoIdentificacion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_NoIdentificacion(Value: UnicodeString);
begin
  SetAttribute('NoIdentificacion', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Cantidad: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Cantidad'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Cantidad(Value: Double);
begin
  SetAttribute('Cantidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_ClaveUnidad: UnicodeString;
begin
  Result := AttributeNodes['ClaveUnidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_ClaveUnidad(Value: UnicodeString);
begin
  SetAttribute('ClaveUnidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Unidad: UnicodeString;
begin
  Result := AttributeNodes['Unidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Unidad(Value: UnicodeString);
begin
  SetAttribute('Unidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Descripcion: UnicodeString;
begin
  Result := AttributeNodes['Descripcion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Descripcion(Value: UnicodeString);
begin
  SetAttribute('Descripcion', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_ValorUnitario: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['ValorUnitario'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_ValorUnitario(Value: Double);
begin
  SetAttribute('ValorUnitario', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Descuento: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Descuento'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_Descuento(Value: Double);
begin
  SetAttribute('Descuento', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_ObjetoImp: UnicodeString;
begin
  Result := AttributeNodes['ObjetoImp'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto.Set_ObjetoImp(Value: UnicodeString);
begin
  SetAttribute('ObjetoImp', Value);
end;

function TXMLComprobante_Conceptos_Concepto.Get_Impuestos: IXMLComprobante_Conceptos_Concepto_Impuestos;
begin
  Result := ChildNodes['Impuestos'] as IXMLComprobante_Conceptos_Concepto_Impuestos;
end;

function TXMLComprobante_Conceptos_Concepto.Get_ACuentaTerceros: IXMLComprobante_Conceptos_Concepto_ACuentaTerceros;
begin
  Result := ChildNodes['ACuentaTerceros'] as IXMLComprobante_Conceptos_Concepto_ACuentaTerceros;
end;

function TXMLComprobante_Conceptos_Concepto.Get_InformacionAduanera: IXMLComprobante_Conceptos_Concepto_InformacionAduaneraList;
begin
  Result := FInformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto.Get_CuentaPredial: IXMLComprobante_Conceptos_Concepto_CuentaPredialList;
begin
  Result := FCuentaPredial;
end;

function TXMLComprobante_Conceptos_Concepto.Get_ComplementoConcepto: IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
begin
  Result := ChildNodes['ComplementoConcepto'] as IXMLComprobante_Conceptos_Concepto_ComplementoConcepto;
end;

function TXMLComprobante_Conceptos_Concepto.Get_Parte: IXMLComprobante_Conceptos_Concepto_ParteList;
begin
  Result := FParte;
end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos }

procedure TXMLComprobante_Conceptos_Concepto_Impuestos.AfterConstruction;
begin
  RegisterChildNode('Traslados', TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados);
  RegisterChildNode('Retenciones', TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones);
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos.Get_Traslados: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados;
begin
  Result := ChildNodes['Traslados'] as IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos.Get_Retenciones: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones;
begin
  Result := ChildNodes['Retenciones'] as IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones;
end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados }

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados.AfterConstruction;
begin
  RegisterChildNode('Traslado', TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado);
  ItemTag := 'Traslado';
  ItemInterface := IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados.Get_Traslado(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados.Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado;
end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado }

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Get_Base: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Base'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Set_Base(Value: Double);
begin
  SetAttribute('Base', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['Impuesto'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('Impuesto', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Get_TipoFactor: UnicodeString;
begin
  Result := AttributeNodes['TipoFactor'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Set_TipoFactor(Value: UnicodeString);
begin
  SetAttribute('TipoFactor', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Get_TasaOCuota: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TasaOCuota'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Set_TasaOCuota(Value: Double);
begin
  SetAttribute('TasaOCuota', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Traslados_Traslado.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones }

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones.AfterConstruction;
begin
  RegisterChildNode('Retencion', TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion);
  ItemTag := 'Retencion';
  ItemInterface := IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones.Get_Retencion(Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones.Add: IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion;
end;

{ TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion }

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Get_Base: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Base'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Set_Base(Value: Double);
begin
  SetAttribute('Base', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['Impuesto'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('Impuesto', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Get_TipoFactor: UnicodeString;
begin
  Result := AttributeNodes['TipoFactor'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Set_TipoFactor(Value: UnicodeString);
begin
  SetAttribute('TipoFactor', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Get_TasaOCuota: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TasaOCuota'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Set_TasaOCuota(Value: Double);
begin
  SetAttribute('TasaOCuota', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Impuestos_Retenciones_Retencion.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_ACuentaTerceros }

function TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Get_RfcACuentaTerceros: UnicodeString;
begin
  Result := AttributeNodes['RfcACuentaTerceros'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Set_RfcACuentaTerceros(Value: UnicodeString);
begin
  SetAttribute('RfcACuentaTerceros', Value);
end;

function TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Get_NombreACuentaTerceros: UnicodeString;
begin
  Result := AttributeNodes['NombreACuentaTerceros'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Set_NombreACuentaTerceros(Value: UnicodeString);
begin
  SetAttribute('NombreACuentaTerceros', Value);
end;

function TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Get_RegimenFiscalACuentaTerceros: UnicodeString;
begin
  Result := AttributeNodes['RegimenFiscalACuentaTerceros'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Set_RegimenFiscalACuentaTerceros(Value: UnicodeString);
begin
  SetAttribute('RegimenFiscalACuentaTerceros', Value);
end;

function TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Get_DomicilioFiscalACuentaTerceros: UnicodeString;
begin
  Result := AttributeNodes['DomicilioFiscalACuentaTerceros'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_ACuentaTerceros.Set_DomicilioFiscalACuentaTerceros(Value: UnicodeString);
begin
  SetAttribute('DomicilioFiscalACuentaTerceros', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_InformacionAduanera }

function TXMLComprobante_Conceptos_Concepto_InformacionAduanera.Get_NumeroPedimento: UnicodeString;
begin
  Result := AttributeNodes['NumeroPedimento'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_InformacionAduanera.Set_NumeroPedimento(Value: UnicodeString);
begin
  SetAttribute('NumeroPedimento', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList }

function TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList.Add: IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_InformacionAduaneraList.Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_InformacionAduanera;
end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredial }

function TXMLComprobante_Conceptos_Concepto_CuentaPredial.Get_Numero: UnicodeString;
begin
  Result := AttributeNodes['Numero'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_CuentaPredial.Set_Numero(Value: UnicodeString);
begin
  SetAttribute('Numero', Value);
end;

{ TXMLComprobante_Conceptos_Concepto_CuentaPredialList }

function TXMLComprobante_Conceptos_Concepto_CuentaPredialList.Add: IXMLComprobante_Conceptos_Concepto_CuentaPredial;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_CuentaPredial;
end;

function TXMLComprobante_Conceptos_Concepto_CuentaPredialList.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_CuentaPredial;
end;

function TXMLComprobante_Conceptos_Concepto_CuentaPredialList.Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_CuentaPredial;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_CuentaPredial;
end;

{ TXMLComprobante_Conceptos_Concepto_ComplementoConcepto }

{ TXMLComprobante_Conceptos_Concepto_Parte }

procedure TXMLComprobante_Conceptos_Concepto_Parte.AfterConstruction;
begin
  RegisterChildNode('InformacionAduanera', TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera);
  ItemTag := 'InformacionAduanera';
  ItemInterface := IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
  inherited;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_ClaveProdServ: UnicodeString;
begin
  Result := AttributeNodes['ClaveProdServ'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_ClaveProdServ(Value: UnicodeString);
begin
  SetAttribute('ClaveProdServ', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_NoIdentificacion: UnicodeString;
begin
  Result := AttributeNodes['NoIdentificacion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_NoIdentificacion(Value: UnicodeString);
begin
  SetAttribute('NoIdentificacion', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Cantidad: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Cantidad'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Cantidad(Value: Double);
begin
  SetAttribute('Cantidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Unidad: UnicodeString;
begin
  Result := AttributeNodes['Unidad'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Unidad(Value: UnicodeString);
begin
  SetAttribute('Unidad', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Descripcion: UnicodeString;
begin
  Result := AttributeNodes['Descripcion'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Descripcion(Value: UnicodeString);
begin
  SetAttribute('Descripcion', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_ValorUnitario: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['ValorUnitario'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_ValorUnitario(Value: Double);
begin
  SetAttribute('ValorUnitario', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Get_InformacionAduanera(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Add: IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
end;

function TXMLComprobante_Conceptos_Concepto_Parte.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera;
end;

{ TXMLComprobante_Conceptos_Concepto_ParteList }

function TXMLComprobante_Conceptos_Concepto_ParteList.Add: IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := AddItem(-1) as IXMLComprobante_Conceptos_Concepto_Parte;
end;

function TXMLComprobante_Conceptos_Concepto_ParteList.Insert(const Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := AddItem(Index) as IXMLComprobante_Conceptos_Concepto_Parte;
end;

function TXMLComprobante_Conceptos_Concepto_ParteList.Get_Item(Index: Integer): IXMLComprobante_Conceptos_Concepto_Parte;
begin
  Result := List[Index] as IXMLComprobante_Conceptos_Concepto_Parte;
end;

{ TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera }

function TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera.Get_NumeroPedimento: UnicodeString;
begin
  Result := AttributeNodes['NumeroPedimento'].Text;
end;

procedure TXMLComprobante_Conceptos_Concepto_Parte_InformacionAduanera.Set_NumeroPedimento(Value: UnicodeString);
begin
  SetAttribute('NumeroPedimento', Value);
end;

{ TXMLComprobante_Impuestos }

procedure TXMLComprobante_Impuestos.AfterConstruction;
begin
  RegisterChildNode('Retenciones', TXMLComprobante_Impuestos_Retenciones);
  RegisterChildNode('Traslados', TXMLComprobante_Impuestos_Traslados);
  inherited;
end;

function TXMLComprobante_Impuestos.Get_TotalImpuestosRetenidos: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TotalImpuestosRetenidos'].Text);
end;

procedure TXMLComprobante_Impuestos.Set_TotalImpuestosRetenidos(Value: Double);
begin
  SetAttribute('TotalImpuestosRetenidos', Value);
end;

function TXMLComprobante_Impuestos.Get_TotalImpuestosTrasladados: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TotalImpuestosTrasladados'].Text);
end;

procedure TXMLComprobante_Impuestos.Set_TotalImpuestosTrasladados(Value: Double);
begin
  SetAttribute('TotalImpuestosTrasladados', Value);
end;

function TXMLComprobante_Impuestos.Get_Retenciones: IXMLComprobante_Impuestos_Retenciones;
begin
  Result := ChildNodes['Retenciones'] as IXMLComprobante_Impuestos_Retenciones;
end;

function TXMLComprobante_Impuestos.Get_Traslados: IXMLComprobante_Impuestos_Traslados;
begin
  Result := ChildNodes['Traslados'] as IXMLComprobante_Impuestos_Traslados;
end;

{ TXMLComprobante_Impuestos_Retenciones }

procedure TXMLComprobante_Impuestos_Retenciones.AfterConstruction;
begin
  RegisterChildNode('Retencion', TXMLComprobante_Impuestos_Retenciones_Retencion);
  ItemTag := 'Retencion';
  ItemInterface := IXMLComprobante_Impuestos_Retenciones_Retencion;
  inherited;
end;

function TXMLComprobante_Impuestos_Retenciones.Get_Retencion(Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := List[Index] as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Impuestos_Retenciones.Add: IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(-1) as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

function TXMLComprobante_Impuestos_Retenciones.Insert(const Index: Integer): IXMLComprobante_Impuestos_Retenciones_Retencion;
begin
  Result := AddItem(Index) as IXMLComprobante_Impuestos_Retenciones_Retencion;
end;

{ TXMLComprobante_Impuestos_Retenciones_Retencion }

function TXMLComprobante_Impuestos_Retenciones_Retencion.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['Impuesto'].Text;
end;

procedure TXMLComprobante_Impuestos_Retenciones_Retencion.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('Impuesto', Value);
end;

function TXMLComprobante_Impuestos_Retenciones_Retencion.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Impuestos_Retenciones_Retencion.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

{ TXMLComprobante_Impuestos_Traslados }

procedure TXMLComprobante_Impuestos_Traslados.AfterConstruction;
begin
  RegisterChildNode('Traslado', TXMLComprobante_Impuestos_Traslados_Traslado);
  ItemTag := 'Traslado';
  ItemInterface := IXMLComprobante_Impuestos_Traslados_Traslado;
  inherited;
end;

function TXMLComprobante_Impuestos_Traslados.Get_Traslado(Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := List[Index] as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Impuestos_Traslados.Add: IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(-1) as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

function TXMLComprobante_Impuestos_Traslados.Insert(const Index: Integer): IXMLComprobante_Impuestos_Traslados_Traslado;
begin
  Result := AddItem(Index) as IXMLComprobante_Impuestos_Traslados_Traslado;
end;

{ TXMLComprobante_Impuestos_Traslados_Traslado }

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Base: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Base'].Text);
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Base(Value: Double);
begin
  SetAttribute('Base', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Impuesto: UnicodeString;
begin
  Result := AttributeNodes['Impuesto'].Text;
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Impuesto(Value: UnicodeString);
begin
  SetAttribute('Impuesto', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_TipoFactor: UnicodeString;
begin
  Result := AttributeNodes['TipoFactor'].Text;
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_TipoFactor(Value: UnicodeString);
begin
  SetAttribute('TipoFactor', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_TasaOCuota: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['TasaOCuota'].Text);
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_TasaOCuota(Value: Double);
begin
  SetAttribute('TasaOCuota', Value);
end;

function TXMLComprobante_Impuestos_Traslados_Traslado.Get_Importe: Double;
begin
  Result := XmlStrToFloatExt(AttributeNodes['Importe'].Text);
end;

procedure TXMLComprobante_Impuestos_Traslados_Traslado.Set_Importe(Value: Double);
begin
  SetAttribute('Importe', Value);
end;

{ TXMLComprobante_Complemento }

{ TXMLComprobante_Addenda }

end.