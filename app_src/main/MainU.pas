unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  EmpresaEditarU,
  ClientsBuscaU, ClienteRegistraU, ClienteEditarU,
  ItemsBuscaU, ItemRegistraU, ItemEditaU,
  ImpuestoEditaU,ImpuestoRegistraU,
  PacEditaU, PacRegistraU,
  CertificadoEditaU, CertificadoRegistraU,
  EliminarPagoU, IngresaPagoU,
  SerieEditaU, SerieRegistraU,
  TimbreEditaU, TimbreRegistraU,
  PagoRegistraU,
  LugarExpedicionEditaU, LugarExpedicionRegistraU,
  MonedaEditaU, MonedaRegistraU,

   MetodoPagoEditaU, MetodoPAgoRegistraU,
   FormaPagoEditaU, FormaPAgoRegistraU,
  Global, Vcl.Grids;

type
  TMainF = class(TForm)
    PanelHoldWork: TPanel;
    PanelWorkLeft: TPanel;
    PanelWorkTop: TPanel;
    PanelLogin: TPanel;
    PanelUserPas: TPanel;
    LabelUser: TLabel;
    LabelPass: TLabel;
    EditUser: TEdit;
    EditPass: TEdit;
    Image1: TImage;
    ButtonLogin: TButton;
    PanelWorkTopButton: TPanel;
    LabelLeyenda: TLabel;
    Splitter1: TSplitter;
    PanelWorkDer: TPanel;
    PanelBilling: TPanel;
    PanelClients: TPanel;
    PanelArticulos: TPanel;
    PanelConfig: TPanel;
    PanelSalir: TPanel;
    PageControlWork: TPageControl;
    TabSheetBilling: TTabSheet;
    TabSheetItems: TTabSheet;
    TabSheetClients: TTabSheet;
    TabSheetConfig: TTabSheet;
    TabSheetPacs: TTabSheet;
    PanelAcerca: TPanel;
    TabSheetAbout: TTabSheet;
    TabSheetUpdate: TTabSheet;
    PanelUpdate: TPanel;
    PanelLog: TPanel;
    Memo1: TMemo;
    TabSheetEmpresa: TTabSheet;
    PanelEmpresa: TPanel;
    PanelCertificados: TPanel;
    TabSheetCertificados: TTabSheet;
    PanelImpuestos: TPanel;
    TabSheetImpuestos: TTabSheet;
    PanelFacturas: TPanel;
    TabSheetFacturas: TTabSheet;
    PanelPacs: TPanel;
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EditEmpRazonSocial: TEdit;
    EditEmpRFC: TEdit;
    EditEmpCalle: TEdit;
    EditEmpNumExt: TEdit;
    EditEmpNumInt: TEdit;
    EditEmpColonia: TEdit;
    EditEmpMunDel: TEdit;
    EditEmpEstado: TEdit;
    EditEmpPais: TEdit;
    EditEmpCP: TEdit;
    EditEmpTelefono: TEdit;
    EditEmpCelular: TEdit;
    EditEmpMail: TEdit;
    ButtonEditarEmpresa: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    EditReceptorRFC: TEdit;
    EditReceptorRazSoc: TEdit;
    ButtonClienteAgregar: TButton;
    ButtonProdServAgregar: TButton;
    ButtonFinalizarVenta: TButton;
    ButtonCancelarVenta: TButton;
    ButtonIngresarPagos: TButton;
    ButtonEliminarPago: TButton;
    ButtonClienteEliminar: TButton;
    ButtonProdServEliminar: TButton;
    Panel5: TPanel;
    LabelCambio: TLabel;
    LabelPagado: TLabel;
    LabelTotal: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label20: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ButtonBuscarPorRFC: TButton;
    ButtonBuscarPorRazSoc: TButton;
    ButtonVisualizar: TButton;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label25: TLabel;
    Panel16: TPanel;
    GridFacturas: TStringGrid;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    PanelCliente: TPanel;
    PanelClienteDatos: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    ButtonItemBuscarPorDesc: TButton;
    ButtonItemBuscarPorClave: TButton;
    GroupBox3: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    LabelProdClave: TLabel;
    LabelProdDesc: TLabel;
    PanelClietenSelect: TPanel;
    ButtonItemRegistra: TButton;
    ButtonItemEdita: TButton;
    Panel20: TPanel;
    GridItems: TStringGrid;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    EditClientRFC: TEdit;
    EditClientRazSoc: TEdit;
    ButtonBuscaClientePorRazSoc: TButton;
    ButtonBuscaClientePorRFC: TButton;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    LabelRFCCliente: TLabel;
    LabelRazonSocialCliente: TLabel;
    Panel26: TPanel;
    ButtonRegistrarNuevoCliente: TButton;
    ButtonEditarCliente: TButton;
    Panel27: TPanel;
    GridClientes: TStringGrid;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    ButtonCerrar: TButton;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    GroupBox5: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    LabelCer: TLabel;
    LabelKey: TLabel;
    ButtonCertificadoNuevo: TButton;
    ButtonEliminar: TButton;
    ButtonCertificadoEdita: TButton;
    Panel37: TPanel;
    GridCertificados: TStringGrid;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Label37: TLabel;
    EditImpuestoNombre: TEdit;
    ButtonImpuestoBuscaPorImpuesto: TButton;
    GroupBox6: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    LabelImpuestoImpuesto: TLabel;
    LabelImpuestoTasaOCuota: TLabel;
    Panel43: TPanel;
    ButtonImpuestoRegistra: TButton;
    ButtonImpuestoEdita: TButton;
    Panel44: TPanel;
    GridImpuestos: TStringGrid;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Label42: TLabel;
    GroupBox7: TGroupBox;
    Label43: TLabel;
    EditPacNombre: TEdit;
    ButtonPacBuscarPorPac: TButton;
    ButtonPacEliminar: TButton;
    ButtonPacEditar: TButton;
    ButtonPacNuevo: TButton;
    Panel50: TPanel;
    GridPacs: TStringGrid;
    GroupBox8: TGroupBox;
    Label44: TLabel;
    LabelPACNombre: TLabel;
    Label46: TLabel;
    LabelPACURLWebService: TLabel;
    Panel51: TPanel;
    GroupBox9: TGroupBox;
    Label48: TLabel;
    LabelWeb: TLabel;
    Label49: TLabel;
    LabelGit: TLabel;
    Memo2: TMemo;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    GroupBox10: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    ButtonActualizar: TButton;
    ProgressBar1: TProgressBar;
    Memo3: TMemo;
    Panel55: TPanel;
    ButtonItemElimina: TButton;
    PanelFormaPago: TPanel;
    PanelMetodoPago: TPanel;
    TabSheetMetodopago: TTabSheet;
    TabSheetFormaPago: TTabSheet;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Label53: TLabel;
    EditMetodoDesc: TEdit;
    ButtonBuscaMetodoPagoPorDesc: TButton;
    GroupBox11: TGroupBox;
    Label54: TLabel;
    LabelMetodoPagoDesc: TLabel;
    Panel60: TPanel;
    ButtonMetodoPagoNuevo: TButton;
    ButtonMetodoPagoEditar: TButton;
    Panel61: TPanel;
    GridMetodosPago: TStringGrid;
    Panel62: TPanel;
    ButtonMetodoPagoEliminar: TButton;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Label59: TLabel;
    EditFormaPagoDesc: TEdit;
    ButtonFormaPagoPorDesc: TButton;
    GroupBox12: TGroupBox;
    Label60: TLabel;
    LabelFormaPagoDesc: TLabel;
    Panel67: TPanel;
    ButtonFormaDePagoNuevo: TButton;
    ButtonFormaDePagoEditar: TButton;
    ButtonFormaDePagoEliminar: TButton;
    Panel68: TPanel;
    GridFormaPago: TStringGrid;
    Panel69: TPanel;
    ButtonEliminarCliente: TButton;
    ButtonMostrarTodosLosClientes: TButton;
    PanelSeries: TPanel;
    TabSheetSeries: TTabSheet;
    PanelTimbres: TPanel;
    TabSheetTimbres: TTabSheet;
    Panel77: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel80: TPanel;
    Label67: TLabel;
    EditSerie: TEdit;
    ButtonBuscarSerie: TButton;
    GroupBox14: TGroupBox;
    Label68: TLabel;
    LabelSerie: TLabel;
    Panel81: TPanel;
    ButtonSerieNueva: TButton;
    ButtonSerieEdita: TButton;
    ButtonSerieElimina: TButton;
    Panel82: TPanel;
    GridSeries: TStringGrid;
    Panel83: TPanel;
    Panel84: TPanel;
    Panel85: TPanel;
    Panel86: TPanel;
    Panel87: TPanel;
    Label73: TLabel;
    EditTimbresPorPAC: TEdit;
    ButtonTimbresPorPAC: TButton;
    GroupBox15: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    LabelTimbresPAC: TLabel;
    LabelTimbresComprados: TLabel;
    Panel88: TPanel;
    ButtonTimbreNuevo: TButton;
    ButtonTimbreEdita: TButton;
    ButtonTimbreElimina: TButton;
    Panel89: TPanel;
    GridTimbres: TStringGrid;
    Panel90: TPanel;
    PanelMoneda: TPanel;
    PanelLugarExpedicion: TPanel;
    TabSheetLugarExpedicion: TTabSheet;
    TabSheetMoneda: TTabSheet;
    Panel91: TPanel;
    Panel92: TPanel;
    Panel93: TPanel;
    Panel94: TPanel;
    Label79: TLabel;
    EditLugExp: TEdit;
    ButtonBusarLuarExp: TButton;
    GroupBox16: TGroupBox;
    Label80: TLabel;
    LabelLugarExpedicionDescripcion: TLabel;
    Panel95: TPanel;
    ButtonLugarExpedicionNuevo: TButton;
    ButtonLugarExpedicionEdita: TButton;
    ButtonLugarExpedicionElimina: TButton;
    Panel96: TPanel;
    GridLugarExped: TStringGrid;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel99: TPanel;
    Panel100: TPanel;
    Panel101: TPanel;
    Label85: TLabel;
    Edit1MonedaDesc: TEdit;
    Button15: TButton;
    Panel102: TPanel;
    ButtonMonedaNuevo: TButton;
    ButtonMonedaEdita: TButton;
    ButtonMonedaElimina: TButton;
    Panel103: TPanel;
    GridMoneda: TStringGrid;
    Panel104: TPanel;
    ButtonImpuestoElimina: TButton;
    Label36: TLabel;
    EditSerieFolio: TEdit;
    Label40: TLabel;
    LabelSerieFolio: TLabel;
    LabelLugarExpedicionUso: TLabel;
    Label45: TLabel;
    LabelLugarExpedicionTipoEspecial: TLabel;
    Label52: TLabel;
    Label55: TLabel;
    CheckBoxLugExpActivo: TCheckBox;
    GroupBox13: TGroupBox;
    Label41: TLabel;
    LabelMonedaDescripcion: TLabel;
    LabelMonedaUso: TLabel;
    Label57: TLabel;
    LabelMonedaTipoEspecial: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    CheckBoxMonedaActivo: TCheckBox;
    Label47: TLabel;
    LabelTimbresUsados: TLabel;
    Label58: TLabel;
    LabelTimbresRestantes: TLabel;
    Label56: TLabel;
    LabelTimbresAvisar: TLabel;
    Label63: TLabel;
    LabelProdPrecio: TLabel;
    LabelProdUnidad: TLabel;
    Unidad: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure PanelWorkTopButtonClick(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
    procedure PanelSalirClick(Sender: TObject);

    procedure ShowTab(ActiveTab: TTabSheet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PanelBillingClick(Sender: TObject);
    procedure PanelArticulosClick(Sender: TObject);
    procedure PanelClientsClick(Sender: TObject);
    procedure PanelConfigClick(Sender: TObject);
    procedure PanelAcercaClick(Sender: TObject);
    procedure PanelUpdateClick(Sender: TObject);
    procedure PanelEmpresaClick(Sender: TObject);
    procedure PanelCertificadosClick(Sender: TObject);
    procedure PanelImpuestosClick(Sender: TObject);
    procedure PanelFacturasClick(Sender: TObject);
    procedure PanelPacsClick(Sender: TObject);
    procedure ButtonEditarEmpresaClick(Sender: TObject);
    procedure EmpresaLoadData;
    procedure ButtonRegistrarNuevoClienteClick(Sender: TObject);
    procedure ButtonEditarClienteClick(Sender: TObject);
    procedure ButtonItemRegistraClick(Sender: TObject);
    procedure ButtonItemEditaClick(Sender: TObject);
    procedure ButtonClienteAgregarClick(Sender: TObject);
    procedure ButtonProdServAgregarClick(Sender: TObject);
    procedure ButtonIngresarPagosClick(Sender: TObject);
    procedure PanelMetodoPagoClick(Sender: TObject);
    procedure PanelFormaPagoClick(Sender: TObject);
    procedure ButtonBuscaClientePorRFCClick(Sender: TObject);
    procedure GetAllClients;
    procedure ButtonEliminarClienteClick(Sender: TObject);
    procedure GridClientesClick(Sender: TObject);
    procedure ButtonBuscaClientePorRazSocClick(Sender: TObject);
    procedure ButtonMostrarTodosLosClientesClick(Sender: TObject);
    procedure ButtonItemBuscarPorClaveClick(Sender: TObject);
    procedure ButtonItemBuscarPorDescClick(Sender: TObject);
    procedure ButtonItemEliminaClick(Sender: TObject);
    procedure ButtonPacBuscarPorPacClick(Sender: TObject);
    procedure GettAllPacs;
    procedure GetAllCerts;
    procedure GetAllImpuestos;
    procedure GetAllMetodosPagos;
    procedure GetAllFormasPagos;
    procedure GetAllSeries;
    procedure GetAllLugExp;
    procedure GetAllMonedas;
    procedure GetAllTimbres;
    procedure ButtonPacNuevoClick(Sender: TObject);
    procedure ButtonPacEditarClick(Sender: TObject);
    procedure GridPacsClick(Sender: TObject);
    procedure ButtonPacEliminarClick(Sender: TObject);
    procedure PanelSeriesClick(Sender: TObject);
    procedure PanelTimbresClick(Sender: TObject);
    procedure ButtonMetodoPagoNuevoClick(Sender: TObject);
    procedure PanelLugarExpedicionClick(Sender: TObject);
    procedure PanelMonedaClick(Sender: TObject);
    procedure ButtonMetodoPagoEditarClick(Sender: TObject);
    procedure ButtonFormaDePagoNuevoClick(Sender: TObject);
    procedure ButtonFormaDePagoEditarClick(Sender: TObject);
    procedure ButtonSerieNuevaClick(Sender: TObject);
    procedure ButtonSerieEditaClick(Sender: TObject);
    procedure ButtonTimbreNuevoClick(Sender: TObject);
    procedure ButtonTimbreEditaClick(Sender: TObject);
    procedure ButtonLugarExpedicionNuevoClick(Sender: TObject);
    procedure ButtonLugarExpedicionEditaClick(Sender: TObject);
    procedure ButtonMonedaNuevoClick(Sender: TObject);
    procedure ButtonMonedaEditaClick(Sender: TObject);
    procedure ButtonCertificadoEditaClick(Sender: TObject);
    procedure ButtonCertificadoNuevoClick(Sender: TObject);
    procedure GridCertificadosClick(Sender: TObject);
    procedure ButtonEliminarClick(Sender: TObject);
    procedure ButtonImpuestoBuscaPorImpuestoClick(Sender: TObject);
    procedure ButtonImpuestoRegistraClick(Sender: TObject);
    procedure ButtonImpuestoEditaClick(Sender: TObject);
    procedure ButtonImpuestoEliminaClick(Sender: TObject);
    procedure GridImpuestosClick(Sender: TObject);
    procedure ButtonMetodoPagoEliminarClick(Sender: TObject);
    procedure ButtonBuscaMetodoPagoPorDescClick(Sender: TObject);
    procedure GridMetodosPagoClick(Sender: TObject);
    procedure ButtonFormaDePagoEliminarClick(Sender: TObject);
    procedure GridFormaPagoClick(Sender: TObject);
    procedure ButtonFormaPagoPorDescClick(Sender: TObject);
    procedure ButtonSerieEliminaClick(Sender: TObject);
    procedure GridSeriesClick(Sender: TObject);
    procedure ButtonBuscarSerieClick(Sender: TObject);
    procedure ButtonLugarExpedicionEliminaClick(Sender: TObject);
    procedure ButtonBusarLuarExpClick(Sender: TObject);
    procedure GridLugarExpedClick(Sender: TObject);
    procedure ButtonMonedaEliminaClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure GridMonedaClick(Sender: TObject);
    procedure ButtonTimbresPorPACClick(Sender: TObject);
    procedure GridTimbresClick(Sender: TObject);
    procedure ButtonTimbreEliminaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;


implementation


{$R *.dfm}

uses CertAdmin;

procedure TMainF.GetAllClients;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.Client.GetClients;

  GridClientes.ColCount := 4;
                       //columna
  GridClientes.ColWidths[0] := 30;
  GridClientes.ColWidths[1] := 20;
  GridClientes.ColWidths[2] := 300;
  GridClientes.ColWidths[3] := 350;

                 //columna  , fila
  GridClientes.Cells[0,0] := 'Num';
  GridClientes.Cells[1,0] := 'ID';
  GridClientes.Cells[2,0] := 'R.F.C.';
  GridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridClientes.RowCount := iNumero + 1;
    GridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    GridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    GridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    GridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    Global.Client.Qry.Querry.Next;
  end;


end;

procedure TMainF.ButtonCertificadoEditaClick(Sender: TObject);
var
  CertificadoEditaF: TCertificadoEditaF;
begin
  if   Global.CertAdmin.Id <> 0 then
  begin
    CertificadoEditaF := TCertificadoEditaF.Create(Application);
    try
      CertificadoEditaF.load;
      CertificadoEditaF.ShowModal;
    finally
      CertificadoEditaF.Free;
    end;
    GetAllCerts;
  end
  else
  begin
    ShowMessage('Selecciona un Certificado a Editar');
  end;
end;

procedure TMainF.ButtonCertificadoNuevoClick(Sender: TObject);
var
  CertificadoRegistraF: TCertificadoRegistraF;
begin
  CertificadoRegistraF := TCertificadoRegistraF.Create(Application);
  try
    CertificadoRegistraF.ShowModal;
  finally
    CertificadoRegistraF.Free;
  end;
  GetAllCerts;
end;

procedure TMainF.ButtonImpuestoRegistraClick(Sender: TObject);
var
  ImpuestoRegistraF: TImpuestoRegistraF;
begin
  ImpuestoRegistraF := TImpuestoRegistraF.Create(Application);

  try
    ImpuestoRegistraF.ShowModal;
  finally
    ImpuestoRegistraF.Free;
  end;
  GetAllImpuestos;
end;

procedure TMainF.ButtonImpuestoEditaClick(Sender: TObject);
var
    ImpuestoEditaF: TImpuestoEditaF;
begin
  if   Global.ImpuestosAdmin.Id <> 0 then
  begin
    ImpuestoEditaF := TImpuestoEditaF.Create(Application);

    try
      ImpuestoEditaF.ShowModal;
    finally
      ImpuestoEditaF.Free;
    end;
      GetAllImpuestos;
    end
    else
    begin
      ShowMessage('Selecciona Impuesto a Editar');
    end;
///
end;

procedure TMainF.ButtonImpuestoEliminaClick(Sender: TObject);
begin
  if   Global.ImpuestosAdmin.Id <> 0 then
  begin
    Global.ImpuestosAdmin.Delete;

    GetAllImpuestos;
  end
  else
  begin
      ShowMessage('Selecciona Impuesto a Eliminar');
  end;
end;

procedure TMainF.Button15Click(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
   iNumero := 0;

  GridMoneda.ColCount := 6;
                       //columna
  GridMoneda.ColWidths[0] := 30;
  GridMoneda.ColWidths[1] := 20;
  GridMoneda.ColWidths[2] := 300;
  GridMoneda.ColWidths[3] := 300;
  GridMoneda.ColWidths[4] := 300;
  GridMoneda.ColWidths[5] := 100;

                 //columna  , fila
  GridMoneda.Cells[0,0] := 'Num';
  GridMoneda.Cells[1,0] := 'ID';
  GridMoneda.Cells[2,0] := 'Descripicion';
  GridMoneda.Cells[3,0] := 'Uso';
  GridMoneda.Cells[3,0] := 'Tipo Especial';
  GridMoneda.Cells[4,0] := 'Activo';

  Global.MonedaAdmin.GetByDescripcion(Edit1MonedaDesc.Text);

  for i := 0 to Global.MonedaAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridMoneda.RowCount := iNumero + 1;
    GridMoneda.Cells[0, iNumero] := IntToStr(iNumero);
    GridMoneda.Cells[1, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridMoneda.Cells[2, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridMoneda.Cells[3, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridMoneda.Cells[4, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    if ((Global.MonedaAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridMoneda.Cells[5, iNumero] :=    'SI';
    end
    else
    begin
      GridMoneda.Cells[5, iNumero] := '';
    end;


    Global.MonedaAdmin.Qry.Querry.Next;
  end;

end;

procedure TMainF.ButtonTimbresPorPACClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridTimbres.ColCount := 10;
                       //columna
  GridTimbres.ColWidths[0] := 30;
  GridTimbres.ColWidths[1] := 20;
  GridTimbres.ColWidths[2] := 100;
  GridTimbres.ColWidths[3] := 100;
  GridTimbres.ColWidths[4] := 100;
  GridTimbres.ColWidths[5] := 100;
  GridTimbres.ColWidths[6] := 100;
  GridTimbres.ColWidths[7] := 100;
  GridTimbres.ColWidths[8] := 100;

                 //columna  , fila
  GridTimbres.Cells[0,0] := 'Num';
  GridTimbres.Cells[1,0] := 'ID';
  GridTimbres.Cells[2,0] := 'ID_PAC';
  GridTimbres.Cells[3,0] := 'PAC';
  GridTimbres.Cells[4,0] := 'Comprados';
  GridTimbres.Cells[5,0] := 'Usados';
  GridTimbres.Cells[6,0] := 'Restantes';
  GridTimbres.Cells[7,0] := 'Avisar';
  GridTimbres.Cells[8,0] := 'Activo';

  Global.TimbresAdmin.GetByPAC(EditTimbresPorPAC.Text);

  for i := 0 to Global.TimbresAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridTimbres.RowCount := iNumero + 1;
    GridTimbres.Cells[0, iNumero] := IntToStr(iNumero);
    GridTimbres.Cells[1, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridTimbres.Cells[2, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('ID_PAC').AsString;
    GridTimbres.Cells[3, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('PAC').AsString;

    GridTimbres.Cells[4, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('COMPRADOS').AsInteger);
    GridTimbres.Cells[5, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('USADOS').AsInteger);
    GridTimbres.Cells[6, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('RESTANTES').AsInteger);

    GridTimbres.Cells[7, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('AVISAR').AsString;

    if ((Global.TimbresAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridTimbres.Cells[8, iNumero] :=    'SI';
    end
    else
    begin
      GridTimbres.Cells[8, iNumero] := '';
    end;


    Global.TimbresAdmin.Qry.Querry.Next;
  end;
end;

procedure TMainF.ButtonBusarLuarExpClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridLugarExped.ColCount := 6;
                       //columna
  GridLugarExped.ColWidths[0] := 30;
  GridLugarExped.ColWidths[1] := 20;
  GridLugarExped.ColWidths[2] := 300;
  GridLugarExped.ColWidths[3] := 300;
  GridLugarExped.ColWidths[4] := 300;
  GridLugarExped.ColWidths[5] := 100;

                 //columna  , fila
  GridLugarExped.Cells[0,0] := 'Num';
  GridLugarExped.Cells[1,0] := 'ID';
  GridLugarExped.Cells[2,0] := 'Descripicion';
  GridLugarExped.Cells[3,0] := 'Uso';
  GridLugarExped.Cells[3,0] := 'Tipo Especial';
  GridLugarExped.Cells[4,0] := 'Activo';

  Global.LugarExpAdmin.GetByDescripcion(EditLugExp.Text);

  for i := 0 to Global.LugarExpAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridLugarExped.RowCount := iNumero + 1;
    GridLugarExped.Cells[0, iNumero] := IntToStr(iNumero);
    GridLugarExped.Cells[1, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridLugarExped.Cells[2, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridLugarExped.Cells[3, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridLugarExped.Cells[4, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    if ((Global.LugarExpAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridLugarExped.Cells[5, iNumero] :=    'SI';
    end
    else
    begin
      GridLugarExped.Cells[5, iNumero] := '';
    end;


    Global.LugarExpAdmin.Qry.Querry.Next;
  end;


end;

procedure TMainF.ButtonBuscaClientePorRazSocClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.Client.GetClientByRazSoc(EditClientRazSoc.Text);

  GridClientes.ColCount := 4;
                       //columna
  GridClientes.ColWidths[0] := 30;
  GridClientes.ColWidths[1] := 20;
  GridClientes.ColWidths[2] := 300;
  GridClientes.ColWidths[3] := 350;

                 //columna  , fila
  GridClientes.Cells[0,0] := 'Num';
  GridClientes.Cells[1,0] := 'ID';
  GridClientes.Cells[2,0] := 'R.F.C.';
  GridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridClientes.RowCount := iNumero + 1;
    GridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    GridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    GridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    GridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    Global.Client.Qry.Querry.Next;
  end;

end;

procedure TMainF.ButtonBuscaClientePorRFCClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.Client.GetClientByRFC(EditClientRFC.Text);

  GridClientes.ColCount := 4;
                       //columna
  GridClientes.ColWidths[0] := 30;
  GridClientes.ColWidths[1] := 20;
  GridClientes.ColWidths[2] := 300;
  GridClientes.ColWidths[3] := 350;

                 //columna  , fila
  GridClientes.Cells[0,0] := 'Num';
  GridClientes.Cells[1,0] := 'ID';
  GridClientes.Cells[2,0] := 'R.F.C.';
  GridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridClientes.RowCount := iNumero + 1;
    GridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    GridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    GridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    GridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    Global.Client.Qry.Querry.Next;
  end;


end;


procedure TMainF.ButtonBuscaMetodoPagoPorDescClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridMetodosPago.ColCount := 7;
                       //columna
  GridMetodosPago.ColWidths[0] := 30;
  GridMetodosPago.ColWidths[1] := 30;
  GridMetodosPago.ColWidths[2] := 100;
  GridMetodosPago.ColWidths[3] := 100;
  GridMetodosPago.ColWidths[4] := 100;

                 //columna  , fila
  GridMetodosPago.Cells[0,0] := 'Num';
  GridMetodosPago.Cells[1,0] := 'ID';
  GridMetodosPago.Cells[2,0] := 'Descripcion';
  GridMetodosPago.Cells[3,0] := 'Uso';
  GridMetodosPago.Cells[4,0] := 'Tipo Especial';

  Global.MetodoPagoAdmin.GetByDesc(EditMetodoDesc.Text);

  for i := 0 to Global.MetodoPagoAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridMetodosPago.RowCount := iNumero + 1;
    GridMetodosPago.Cells[0, iNumero] := IntToStr(iNumero);
    GridMetodosPago.Cells[1, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridMetodosPago.Cells[2, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridMetodosPago.Cells[3, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridMetodosPago.Cells[4, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    Global.MetodoPagoAdmin.Qry.Querry.Next;
  end;

end;


procedure TMainF.ButtonBuscarSerieClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridSeries.ColCount := 6;
                       //columna
  GridSeries.ColWidths[0] := 30;
  GridSeries.ColWidths[1] := 20;
  GridSeries.ColWidths[2] := 300;
  GridSeries.ColWidths[3] := 300;
  GridSeries.ColWidths[3] := 300;

                 //columna  , fila
  GridSeries.Cells[0,0] := 'Num';
  GridSeries.Cells[1,0] := 'ID';
  GridSeries.Cells[2,0] := 'Serie';
  GridSeries.Cells[3,0] := 'Folio';
  GridSeries.Cells[4,0] := 'Activo';

  Global.SeriesAdmin.GetBySerie(EditSerie.Text);

  for i := 0 to Global.SeriesAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridSeries.RowCount := iNumero + 1;
    GridSeries.Cells[0, iNumero] := IntToStr(iNumero);
    GridSeries.Cells[1, iNumero] := Global.SeriesAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridSeries.Cells[2, iNumero] := Global.SeriesAdmin.Qry.Querry.FieldByName('SERIE').AsString;
    GridSeries.Cells[3, iNumero] := IntToStr(Global.SeriesAdmin.Qry.Querry.FieldByName('FOLIO').AsInteger);

    if ((Global.SeriesAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridSeries.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridSeries.Cells[4, iNumero] := '';
    end;


    Global.SeriesAdmin.Qry.Querry.Next;
  end;


end;

procedure TMainF.GettAllPacs;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.PacAdmin.GetPacs;

  GridPacs.ColCount := 5;
                       //columna
  GridPacs.ColWidths[0] := 30;
  GridPacs.ColWidths[1] := 20;
  GridPacs.ColWidths[2] := 300;
  GridPacs.ColWidths[3] := 350;
    GridPacs.ColWidths[4] := 50;

                 //columna  , fila
  GridPacs.Cells[0,0] := 'Num';
  GridPacs.Cells[1,0] := 'ID';
  GridPacs.Cells[2,0] := 'PAC';
  GridPacs.Cells[3,0] := 'URL WebService';
  GridPacs.Cells[4,0] := 'Activo';

  for i := 0 to Global.PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridPacs.RowCount := iNumero + 1;
    GridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    GridPacs.Cells[1, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridPacs.Cells[2, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    GridPacs.Cells[3, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;

    if ((Global.PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridPacs.Cells[4, iNumero] := '';
    end;


    Global.PacAdmin.Qry.Querry.Next;
  end;

end;


procedure TMainF.GetAllCerts;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.CertAdmin.GetCerts;

  GridCertificados.ColCount := 6;
                       //columna
  GridCertificados.ColWidths[0] := 30;
  GridCertificados.ColWidths[1] := 300;
  GridCertificados.ColWidths[2] := 300;
  GridCertificados.ColWidths[3] := 300;
  GridCertificados.ColWidths[4] := 50;
  GridCertificados.ColWidths[4] := 50;

                 //columna  , fila
  GridCertificados.Cells[0,0] := 'Num';
  GridCertificados.Cells[1,0] := 'ID';
  GridCertificados.Cells[2,0] := 'Certificado';
  GridCertificados.Cells[3,0] := 'key';
  GridCertificados.Cells[4,0] := 'Pass';
  GridCertificados.Cells[5,0] := 'Activo';

  for i := 0 to Global.CertAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridCertificados.RowCount := iNumero + 1;
    GridCertificados.Cells[0, iNumero] := IntToStr(iNumero);
    GridCertificados.Cells[1, iNumero] := Global.CertAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridCertificados.Cells[2, iNumero] := Global.CertAdmin.Qry.Querry.FieldByName('CERT_CER').AsString;
    GridCertificados.Cells[3, iNumero] := Global.CertAdmin.Qry.Querry.FieldByName('CERT_KEY').AsString;
    GridCertificados.Cells[4, iNumero] := Global.CertAdmin.Qry.Querry.FieldByName('CERT_PASS').AsString;

    if ((Global.CertAdmin.Qry.Querry.FieldByName('CERT_ACTIVO').AsBoolean) = True) then
    begin
      GridCertificados.Cells[5, iNumero] :=    'SI';
    end
    else
    begin
      GridCertificados.Cells[5, iNumero] := '';
    end;


    Global.CertAdmin.Qry.Querry.Next;
  end;

end;


procedure TMainF.GetAllImpuestos;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.ImpuestosAdmin.GetAll;

  GridImpuestos.ColCount := 7;
                       //columna
  GridImpuestos.ColWidths[0] := 30;
  GridImpuestos.ColWidths[1] := 30;
  GridImpuestos.ColWidths[2] := 100;
  GridImpuestos.ColWidths[3] := 100;
  GridImpuestos.ColWidths[4] := 100;
  GridImpuestos.ColWidths[5] := 100;
  GridImpuestos.ColWidths[6] := 100;

                 //columna  , fila
  GridImpuestos.Cells[0,0] := 'Num';
  GridImpuestos.Cells[1,0] := 'ID';
  GridImpuestos.Cells[2,0] := 'Base';
  GridImpuestos.Cells[3,0] := 'Impuesto';
  GridImpuestos.Cells[4,0] := 'Tipo o Factor';
  GridImpuestos.Cells[5,0] := 'Tasa o Cueota';
  GridImpuestos.Cells[6,0] := 'Importe';


  for i := 0 to Global.ImpuestosAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridImpuestos.RowCount := iNumero + 1;
    GridImpuestos.Cells[0, iNumero] := IntToStr(iNumero);
    GridImpuestos.Cells[1, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridImpuestos.Cells[2, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('BASE').AsString;
    GridImpuestos.Cells[3, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPUESTO').AsString;
    GridImpuestos.Cells[4, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('TIPOFACTOR').AsString;
    GridImpuestos.Cells[5, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('TASAOCUOTA').AsFloat);
    GridImpuestos.Cells[6, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPORTE').AsFloat);

    Global.ImpuestosAdmin.Qry.Querry.Next;
  end;

end;


procedure TMainF.GetAllMetodosPagos;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.MetodoPagoAdmin.GetAll;

  GridMetodosPago.ColCount := 7;
                       //columna
  GridMetodosPago.ColWidths[0] := 30;
  GridMetodosPago.ColWidths[1] := 30;
  GridMetodosPago.ColWidths[2] := 100;
  GridMetodosPago.ColWidths[3] := 100;
  GridMetodosPago.ColWidths[4] := 100;

                 //columna  , fila
  GridMetodosPago.Cells[0,0] := 'Num';
  GridMetodosPago.Cells[1,0] := 'ID';
  GridMetodosPago.Cells[2,0] := 'Descripcion';
  GridMetodosPago.Cells[3,0] := 'Uso';
  GridMetodosPago.Cells[4,0] := 'Tipo Especial';


  for i := 0 to Global.MetodoPagoAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridMetodosPago.RowCount := iNumero + 1;
    GridMetodosPago.Cells[0, iNumero] := IntToStr(iNumero);
    GridMetodosPago.Cells[1, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridMetodosPago.Cells[2, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridMetodosPago.Cells[3, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridMetodosPago.Cells[4, iNumero] := Global.MetodoPagoAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    Global.MetodoPagoAdmin.Qry.Querry.Next;
  end;

end;


procedure TMainF.GetAllFormasPagos;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.FormaPagoAdmin.GetAll;

  GridFormaPago.ColCount := 7;
                       //columna
  GridFormaPago.ColWidths[0] := 30;
  GridFormaPago.ColWidths[1] := 30;
  GridFormaPago.ColWidths[2] := 100;
  GridFormaPago.ColWidths[3] := 100;
  GridFormaPago.ColWidths[4] := 100;

                 //columna  , fila
  GridFormaPago.Cells[0,0] := 'Num';
  GridFormaPago.Cells[1,0] := 'ID';
  GridFormaPago.Cells[2,0] := 'Descripcion';
  GridFormaPago.Cells[3,0] := 'Uso';
  GridFormaPago.Cells[4,0] := 'Tipo Especial';


  for i := 0 to Global.FormaPagoAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridFormaPago.RowCount := iNumero + 1;
    GridFormaPago.Cells[0, iNumero] := IntToStr(iNumero);
    GridFormaPago.Cells[1, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridFormaPago.Cells[2, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridFormaPago.Cells[3, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridFormaPago.Cells[4, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    Global.FormaPagoAdmin.Qry.Querry.Next;
  end;

end;

procedure TMainF.GetAllSeries;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  Global.SeriesAdmin.GetAll;

  GridSeries.ColCount := 6;
                       //columna
  GridSeries.ColWidths[0] := 30;
  GridSeries.ColWidths[1] := 20;
  GridSeries.ColWidths[2] := 300;
  GridSeries.ColWidths[3] := 300;
  GridSeries.ColWidths[3] := 300;

                 //columna  , fila
  GridSeries.Cells[0,0] := 'Num';
  GridSeries.Cells[1,0] := 'ID';
  GridSeries.Cells[2,0] := 'Serie';
  GridSeries.Cells[3,0] := 'Folio';
  GridSeries.Cells[4,0] := 'Activo';

  for i := 0 to Global.SeriesAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridSeries.RowCount := iNumero + 1;
    GridSeries.Cells[0, iNumero] := IntToStr(iNumero);
    GridSeries.Cells[1, iNumero] := Global.SeriesAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridSeries.Cells[2, iNumero] := Global.SeriesAdmin.Qry.Querry.FieldByName('SERIE').AsString;
    GridSeries.Cells[3, iNumero] := IntToStr(Global.SeriesAdmin.Qry.Querry.FieldByName('FOLIO').AsInteger);

    if ((Global.SeriesAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridSeries.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridSeries.Cells[4, iNumero] := '';
    end;


    Global.SeriesAdmin.Qry.Querry.Next;
  end;

end;



procedure TMainF.GetAllLugExp;
var
  iNumero : Integer;
  i: Integer;
begin
   iNumero := 0;

  GridLugarExped.ColCount := 6;
                       //columna
  GridLugarExped.ColWidths[0] := 30;
  GridLugarExped.ColWidths[1] := 20;
  GridLugarExped.ColWidths[2] := 300;
  GridLugarExped.ColWidths[3] := 300;
  GridLugarExped.ColWidths[4] := 300;
  GridLugarExped.ColWidths[5] := 100;

                 //columna  , fila
  GridLugarExped.Cells[0,0] := 'Num';
  GridLugarExped.Cells[1,0] := 'ID';
  GridLugarExped.Cells[2,0] := 'Descripicion';
  GridLugarExped.Cells[3,0] := 'Uso';
  GridLugarExped.Cells[3,0] := 'Tipo Especial';
  GridLugarExped.Cells[4,0] := 'Activo';

  Global.LugarExpAdmin.GetByDescripcion(EditLugExp.Text);

  for i := 0 to Global.LugarExpAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridLugarExped.RowCount := iNumero + 1;
    GridLugarExped.Cells[0, iNumero] := IntToStr(iNumero);
    GridLugarExped.Cells[1, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridLugarExped.Cells[2, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridLugarExped.Cells[3, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridLugarExped.Cells[4, iNumero] := Global.LugarExpAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    if ((Global.LugarExpAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridLugarExped.Cells[5, iNumero] :=    'SI';
    end
    else
    begin
      GridLugarExped.Cells[5, iNumero] := '';
    end;


    Global.LugarExpAdmin.Qry.Querry.Next;
  end;


end;


procedure TMainF.GetAllMonedas;
var
  iNumero : Integer;
  i: Integer;
begin
   iNumero := 0;

  GridMoneda.ColCount := 6;
                       //columna
  GridMoneda.ColWidths[0] := 30;
  GridMoneda.ColWidths[1] := 20;
  GridMoneda.ColWidths[2] := 300;
  GridMoneda.ColWidths[3] := 300;
  GridMoneda.ColWidths[4] := 300;
  GridMoneda.ColWidths[5] := 100;

                 //columna  , fila
  GridMoneda.Cells[0,0] := 'Num';
  GridMoneda.Cells[1,0] := 'ID';
  GridMoneda.Cells[2,0] := 'Descripicion';
  GridMoneda.Cells[3,0] := 'Uso';
  GridMoneda.Cells[3,0] := 'Tipo Especial';
  GridMoneda.Cells[4,0] := 'Activo';

  Global.MonedaAdmin.GetAll;

  for i := 0 to Global.MonedaAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridMoneda.RowCount := iNumero + 1;
    GridMoneda.Cells[0, iNumero] := IntToStr(iNumero);
    GridMoneda.Cells[1, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridMoneda.Cells[2, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridMoneda.Cells[3, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridMoneda.Cells[4, iNumero] := Global.MonedaAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    if ((Global.MonedaAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridMoneda.Cells[5, iNumero] :=    'SI';
    end
    else
    begin
      GridMoneda.Cells[5, iNumero] := '';
    end;


    Global.MonedaAdmin.Qry.Querry.Next;
  end;
end;


procedure TMainF.GetAllTimbres;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridTimbres.ColCount := 10;
                       //columna
  GridTimbres.ColWidths[0] := 30;
  GridTimbres.ColWidths[1] := 20;
  GridTimbres.ColWidths[2] := 100;
  GridTimbres.ColWidths[3] := 100;
  GridTimbres.ColWidths[4] := 100;
  GridTimbres.ColWidths[5] := 100;
  GridTimbres.ColWidths[6] := 100;
  GridTimbres.ColWidths[7] := 100;
  GridTimbres.ColWidths[8] := 100;

                 //columna  , fila
  GridTimbres.Cells[0,0] := 'Num';
  GridTimbres.Cells[1,0] := 'ID';
  GridTimbres.Cells[2,0] := 'ID_PAC';
  GridTimbres.Cells[3,0] := 'PAC';
  GridTimbres.Cells[4,0] := 'Comprados';
  GridTimbres.Cells[5,0] := 'Usados';
  GridTimbres.Cells[6,0] := 'Restantes';
  GridTimbres.Cells[7,0] := 'Avisar';
  GridTimbres.Cells[8,0] := 'Activo';

  Global.TimbresAdmin.GetAll;

  for i := 0 to Global.TimbresAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridTimbres.RowCount := iNumero + 1;
    GridTimbres.Cells[0, iNumero] := IntToStr(iNumero);
    GridTimbres.Cells[1, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridTimbres.Cells[2, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('ID_PAC').AsString;
    GridTimbres.Cells[3, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('PAC').AsString;

    GridTimbres.Cells[4, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('COMPRADOS').AsInteger);
    GridTimbres.Cells[5, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('USADOS').AsInteger);
    GridTimbres.Cells[6, iNumero] := IntToStr(Global.TimbresAdmin.Qry.Querry.FieldByName('RESTANTES').AsInteger);


    GridTimbres.Cells[7, iNumero] := Global.TimbresAdmin.Qry.Querry.FieldByName('AVISAR').AsString;

    if ((Global.TimbresAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridTimbres.Cells[8, iNumero] :=    'SI';
    end
    else
    begin
      GridTimbres.Cells[8, iNumero] := '';
    end;


    Global.TimbresAdmin.Qry.Querry.Next;
  end;
end;

procedure TMainF.ButtonPacBuscarPorPacClick(Sender: TObject);

var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  Global.PacAdmin.GetPacByName(EditPacNombre.Text);

  GridPacs.ColCount := 5;
                       //columna
  GridPacs.ColWidths[0] := 30;
  GridPacs.ColWidths[1] := 20;
  GridPacs.ColWidths[2] := 300;
  GridPacs.ColWidths[3] := 350;

                 //columna  , fila
  GridPacs.Cells[0,0] := 'Num';
  GridPacs.Cells[1,0] := 'ID';
  GridPacs.Cells[2,0] := 'Nombre';
  GridPacs.Cells[3,0] := 'Url Webservice';

  for i := 0 to Global.PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridPacs.RowCount := iNumero + 1;
    GridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    GridPacs.Cells[1, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridPacs.Cells[2, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    GridPacs.Cells[3, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;


    if ((Global.PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      GridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      GridPacs.Cells[4, iNumero] := '';
    end;


    Global.PacAdmin.Qry.Querry.Next;
  end;

end;

procedure TMainF.ButtonPacEditarClick(Sender: TObject);
var
  PacEditaF: TPacEditaF;
begin
  if (Global.PacAdmin.Id <> 0 ) then
  begin
    PacEditaF := TPacEditaF.Create(Application);

    PacEditaF.FillPac;
    try
      PacEditaF.ShowModal;
    finally
      PacEditaF.Free;
    end;
      GettAllPacs;
  end
  else
  begin
      ShowMessage('Selecciona PAC a Editar');
  end;
end;

procedure TMainF.ButtonPacEliminarClick(Sender: TObject);
begin
  if (Global.PacAdmin.Id <> 0) then
  begin
    Global.PacAdmin.Delete;
    GettAllPacs;
  end
  else
  begin
    ShowMessage('Selecciona Pac a eliminar');
  end;
end;

procedure TMainF.ButtonPacNuevoClick(Sender: TObject);
var
  PacRegistraF: TPacRegistraF;
begin
  PacRegistraF := TPacRegistraF.Create(Application);
  try
    PacRegistraF.ShowModal;
  finally
    PacRegistraF.Free;
  end;
  GettAllPacs;
end;

procedure TMainF.ButtonClienteAgregarClick(Sender: TObject);
var
    ClientsBuscaF: TClientsBuscaF;
begin
  ClientsBuscaF := TClientsBuscaF.Create(Application);
  try
    ClientsBuscaF.ShowModal;
  finally
    ClientsBuscaF.Free;
  end;

end;

procedure TMainF.ButtonEditarClienteClick(Sender: TObject);
var
  ClienteEditarF: TClienteEditarF;
begin
  if   Global.Client.Id <> 0 then
  begin
    ClienteEditarF := TClienteEditarF.Create(Application);

    Global.Client.GetClientByID(Global.Client.Id);

    ClienteEditarF.EditClienteRazonSocial.Text := Global.Client.RazonSocial;
    ClienteEditarF.EditClienteRFC.Text := Global.Client.RFC;
    ClienteEditarF.EditClienteCalle.Text := Global.Client.Calle;
    ClienteEditarF.EditClienteNumExt.Text := Global.Client.NumExt;
    ClienteEditarF.EditClienteNumInt.Text := Global.Client.NumInt;
    ClienteEditarF.EditClienteColonia.Text := Global.Client.Colonia;
    ClienteEditarF.EditClienteMun.Text := Global.Client.Mun;
    ClienteEditarF.EditClienteEstado.Text := Global.Client.Estado;
    ClienteEditarF.EditClientePais.Text := Global.Client.Pais;
    ClienteEditarF.EditClienteCP.Text := Global.Client.CP;
    ClienteEditarF.EditClienteTelefono.Text := Global.Client.Telefono;
    ClienteEditarF.EditClienteCelular.Text := Global.Client.Celular;
    ClienteEditarF.EditClienteMail.Text := Global.Client.Mail;

      try
        ClienteEditarF.ShowModal;
      finally
        ClienteEditarF.Free;
      end;
        GetAllClients;

  end
  else
  begin
    ShowMessage('Selecciona un Cliente a Editar');
  end;

end;

procedure TMainF.ButtonEditarEmpresaClick(Sender: TObject);
var
  EmpresaEditarF: TEmpresaEditarF;
begin
  EmpresaEditarF := TEmpresaEditarF.Create(Application);

  try
    EmpresaEditarF.fill;
    EmpresaEditarF.ShowModal;
  finally
    EmpresaEditarF.Free;
  end;

  EmpresaLoadData;
end;

procedure TMainF.ButtonItemBuscarPorClaveClick(Sender: TObject);
begin
//
end;

procedure TMainF.ButtonItemBuscarPorDescClick(Sender: TObject);
begin
//
end;

procedure TMainF.ButtonItemEditaClick(Sender: TObject);
var
  ItemEditaF: TItemEditaF;
begin
  ItemEditaF := TItemEditaF.Create(Application);

  try
    ItemEditaF.ShowModal;
  finally
    ItemEditaF.Free;
  end;
end;

procedure TMainF.ButtonItemEliminaClick(Sender: TObject);
begin
//
end;

procedure TMainF.ButtonEliminarClick(Sender: TObject);
begin
  if   Global.CertAdmin.Id <> 0 then
  begin
    Global.CertAdmin.Delete;
    GetAllCerts;
  end
  else
  begin
    ShowMessage('Selecciona un Certificado a Eliminar');
  end;
end;

procedure TMainF.ButtonEliminarClienteClick(Sender: TObject);
begin
if   Global.Client.Id <> 0 then
begin
  Global.Client.Delete(Global.Client.Id);
  GetAllClients;
end
else
begin
  ShowMessage('Selecciona un Cliente a Eliminar');
end;

end;

procedure TMainF.ButtonFormaDePagoEditarClick(Sender: TObject);
var
  FormaPagoEditaF: TFormaPagoEditaF;
begin
  if   Global.FormaPagoAdmin.Id <> 0 then
  begin
  FormaPagoEditaF := TFormaPagoEditaF.Create(Application);

    try
      FormaPagoEditaF.Load;
      FormaPagoEditaF.ShowModal;
    finally
      FormaPagoEditaF.Free;
    end;

    GetAllFormasPagos;
  end
  else
  begin
    ShowMessage('Selecciona un Forma de Pago a Editar');
  end;

end;

procedure TMainF.ButtonFormaDePagoEliminarClick(Sender: TObject);
begin
  if   Global.FormaPagoAdmin.Id <> 0 then
  begin
    Global.FormaPagoAdmin.Delete;
    GetAllFormasPagos;
  end
  else
  begin
    ShowMessage('Selecciona un Forma de Pago a Eliminar');
  end;

end;

procedure TMainF.ButtonFormaDePagoNuevoClick(Sender: TObject);
var
  FormaPagoRegistraF: TFormaPagoRegistraF;
begin
  FormaPagoRegistraF := TFormaPagoRegistraF.Create(Application);

  try
    FormaPagoRegistraF.ShowModal;
  finally
    FormaPagoRegistraF.Free;
  end;
 GetAllFormasPagos;

end;

procedure TMainF.ButtonFormaPagoPorDescClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridFormaPago.ColCount := 7;
                       //columna
  GridFormaPago.ColWidths[0] := 30;
  GridFormaPago.ColWidths[1] := 30;
  GridFormaPago.ColWidths[2] := 100;
  GridFormaPago.ColWidths[3] := 100;
  GridFormaPago.ColWidths[4] := 100;

                 //columna  , fila
  GridFormaPago.Cells[0,0] := 'Num';
  GridFormaPago.Cells[1,0] := 'ID';
  GridFormaPago.Cells[2,0] := 'Descripcion';
  GridFormaPago.Cells[3,0] := 'Uso';
  GridFormaPago.Cells[4,0] := 'Tipo Especial';

  Global.FormaPagoAdmin.GetByDesc(EditFormaPagoDesc.Text);

  for i := 0 to Global.FormaPagoAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridFormaPago.RowCount := iNumero + 1;
    GridFormaPago.Cells[0, iNumero] := IntToStr(iNumero);
    GridFormaPago.Cells[1, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridFormaPago.Cells[2, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('DESCRIPCION').AsString;
    GridFormaPago.Cells[3, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('USO').AsString;
    GridFormaPago.Cells[4, iNumero] := Global.FormaPagoAdmin.Qry.Querry.FieldByName('TIPO_ESPECIAL').AsString;

    Global.FormaPagoAdmin.Qry.Querry.Next;
  end;

end;

procedure TMainF.ButtonImpuestoBuscaPorImpuestoClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  GridImpuestos.ColCount := 7;
                       //columna
  GridImpuestos.ColWidths[0] := 30;
  GridImpuestos.ColWidths[1] := 300;
  GridImpuestos.ColWidths[2] := 300;
  GridImpuestos.ColWidths[3] := 300;
  GridImpuestos.ColWidths[4] := 50;
  GridImpuestos.ColWidths[5] := 50;
  GridImpuestos.ColWidths[6] := 50;

                 //columna  , fila
  GridImpuestos.Cells[0,0] := 'Num';
  GridImpuestos.Cells[1,0] := 'ID';
  GridImpuestos.Cells[2,0] := 'Base';
  GridImpuestos.Cells[3,0] := 'Impuesto';
  GridImpuestos.Cells[4,0] := 'Tipo o Factor';
  GridImpuestos.Cells[5,0] := 'Tasa o Cueota';
  GridImpuestos.Cells[6,0] := 'Importe';

  Global.ImpuestosAdmin.GetByImpuesto(EditImpuestoNombre.Text);

  for i := 0 to Global.ImpuestosAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    GridImpuestos.RowCount := iNumero + 1;
    GridImpuestos.Cells[0, iNumero] := IntToStr(iNumero);
    GridImpuestos.Cells[1, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('ID').AsString;
    GridImpuestos.Cells[2, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('BASE').AsString;
    GridImpuestos.Cells[3, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPUESTO').AsString;
    GridImpuestos.Cells[4, iNumero] := Global.ImpuestosAdmin.Qry.Querry.FieldByName('TIPOFACTOR').AsString;
    GridImpuestos.Cells[5, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('TASAOCUOTA').AsFloat);
    GridImpuestos.Cells[6, iNumero] := FloatToStr(Global.ImpuestosAdmin.Qry.Querry.FieldByName('IMPORTE').AsFloat);

    Global.ImpuestosAdmin.Qry.Querry.Next;
  end;

end;

procedure TMainF.ButtonIngresarPagosClick(Sender: TObject);
var
  IngresaPagoF: TIngresaPagoF;
begin
  IngresaPagoF := TIngresaPagoF.Create(Application);

  try
    IngresaPagoF.ShowModal;
  finally
    IngresaPagoF.Free;
  end;
end;

procedure TMainF.ButtonLoginClick(Sender: TObject);
begin

  if  Global.User.Login(EditUser.Text, EditPass.Text) then
  begin
    LabelLeyenda.Caption  := 'Acceso garantizado';
    PanelLogin.Visible := False;
    PanelHoldWork.Visible := True;
  end
  else
  begin
    LabelLeyenda.Caption := 'Revise usario y contrasena';
  end;

end;

procedure TMainF.ButtonLugarExpedicionEditaClick(Sender: TObject);
var
  LugarExpedicionEditaF: TLugarExpedicionEditaF;
begin
  if   Global.LugarExpAdmin.Id <> 0 then
  begin
    LugarExpedicionEditaF := TLugarExpedicionEditaF.Create(Application);
    try
      LugarExpedicionEditaF.Load;
      LugarExpedicionEditaF.ShowModal;
    finally
      LugarExpedicionEditaF.Free;
    end;
    GetAllLugExp;
  end
  else
  begin
    ShowMessage('Selecciona Lugar a Editar');
  end;

end;

procedure TMainF.ButtonLugarExpedicionEliminaClick(Sender: TObject);
begin
  if   Global.LugarExpAdmin.Id <> 0 then
  begin
     Global.LugarExpAdmin.Delete;
     GetAllLugExp;
  end
  else
  begin
    ShowMessage('Selecciona Lugar a Eliminar');
    end;
end;

procedure TMainF.ButtonLugarExpedicionNuevoClick(Sender: TObject);
var
  LugarExpedicionRegistraF: TLugarExpedicionRegistraF;
begin
  LugarExpedicionRegistraF := TLugarExpedicionRegistraF.Create(Application);
  try
    LugarExpedicionRegistraF.ShowModal;
  finally
    LugarExpedicionRegistraF.Free;
  end;
      GetAllLugExp;
end;

procedure TMainF.ButtonMetodoPagoEditarClick(Sender: TObject);
var
  MetodoPagoEditaF: TMetodoPagoEditaF;
begin
  if   Global.MetodoPagoAdmin.Id <> 0 then
  begin
    MetodoPagoEditaF := TMetodoPagoEditaF.Create(Application);

    try
      MetodoPagoEditaF.Load;
      MetodoPagoEditaF.ShowModal;
    finally
      MetodoPagoEditaF.Free;
    end;
    GetAllMetodosPagos;
  end
  else
  begin
    ShowMessage('Selecciona un Metodo de Pago a Editar');
  end;


end;

procedure TMainF.ButtonMetodoPagoEliminarClick(Sender: TObject);
begin
  if   Global.MetodoPagoAdmin.Id <> 0 then
  begin
    Global.MetodoPagoAdmin.Delete;
    GetAllMetodosPagos;
  end
  else
  begin
    ShowMessage('Selecciona un Metodo de Pago a Eliminar');
  end;


end;

procedure TMainF.ButtonMetodoPagoNuevoClick(Sender: TObject);
var
  MetodoPagoRegistraF: TMetodoPagoRegistraF;
begin
  MetodoPagoRegistraF := TMetodoPagoRegistraF.Create(Application);

  try
    MetodoPagoRegistraF.ShowModal;
  finally
    MetodoPagoRegistraF.Free;
  end;
  GetAllMetodosPagos;
end;

procedure TMainF.ButtonMonedaEditaClick(Sender: TObject);
var
  MonedaEditaF: TMonedaEditaF;
begin
  if   Global.MonedaAdmin.Id <> 0 then
  begin
    MonedaEditaF := TMonedaEditaF.Create(Application);
    try
      MonedaEditaF.Load;
      MonedaEditaF.ShowModal;
    finally
      MonedaEditaF.Free;
    end;
      GetAllMonedas;
  end
  else
  begin
    ShowMessage('Selecciona un Moneda a Editar');
  end;


end;

procedure TMainF.ButtonMonedaEliminaClick(Sender: TObject);
begin
  if   Global.MonedaAdmin.Id <> 0 then
  begin
    Global.MonedaAdmin.Delete;
    GetAllMonedas;
  end
  else
  begin
    ShowMessage('Selecciona un Moneda a Eliminar');
  end;


end;

procedure TMainF.ButtonMonedaNuevoClick(Sender: TObject);
var
  MonedaRegistraF: TMonedaRegistraF;
begin
  MonedaRegistraF := TMonedaRegistraF.Create(Application);

  try
    MonedaRegistraF.ShowModal;
  finally
    MonedaRegistraF.Free;
  end;
  GetAllMonedas;
end;

procedure TMainF.ButtonMostrarTodosLosClientesClick(Sender: TObject);
begin
  GetAllClients;
end;

procedure TMainF.ButtonProdServAgregarClick(Sender: TObject);
var
  ItemsBuscaF: TItemsBuscaF;
begin
  ItemsBuscaF := TItemsBuscaF.Create(Application);

  try
    ItemsBuscaF.ShowModal;
  finally
    ItemsBuscaF.Free;
  end;

end;

procedure TMainF.ButtonItemRegistraClick(Sender: TObject);
var
  ItemRegistraF: TItemRegistraF;
begin
  ItemRegistraF := TItemRegistraF.Create(Application);

  try
    ItemRegistraF.ShowModal;
  finally
    ItemRegistraF.Free;
  end;
end;

procedure TMainF.ButtonRegistrarNuevoClienteClick(Sender: TObject);
var
  ClienteRegistraF: TClienteRegistraF;
begin
  ClienteRegistraF := TClienteRegistraF.Create(Application);

  try
    ClienteRegistraF.ShowModal;
  finally
    ClienteRegistraF.Free;
  end;
  GetAllClients;
end;

procedure TMainF.ButtonSerieEditaClick(Sender: TObject);
var
  SerieEditaF: TSerieEditaF;
begin
  if   Global.SeriesAdmin.Id <> 0 then
  begin
    SerieEditaF := TSerieEditaF.Create(Application);

    try
      SerieEditaF.Load;
      SerieEditaF.ShowModal;
    finally
      SerieEditaF.Free;
    end;
      GetAllSeries;
    end
    else
    begin
      ShowMessage('Selecciona Serie a Editar');
    end;
end;

procedure TMainF.ButtonSerieEliminaClick(Sender: TObject);
begin
  if   Global.SeriesAdmin.Id <> 0 then
  begin
     Global.SeriesAdmin.Delete;
     GetAllSeries;
  end
  else
  begin
    ShowMessage('Selecciona Serie a Eliminar');
    end;
end;

procedure TMainF.ButtonSerieNuevaClick(Sender: TObject);
var
  SerieRegistraF: TSerieRegistraF;
begin
  SerieRegistraF := TSerieRegistraF.Create(Application);

  try
    SerieRegistraF.ShowModal;
  finally
    SerieRegistraF.Free;
  end;
  GetAllSeries;
end;

procedure TMainF.ButtonTimbreEditaClick(Sender: TObject);
var
  TimbreEditaF: TTimbreEditaF;
begin
  if   Global.TimbresAdmin.Id <> 0 then
  begin
    TimbreEditaF := TTimbreEditaF.Create(Application);

    try
      TimbreEditaF.ShowModal;
    finally
      TimbreEditaF.Free;
    end;
    GetAllTimbres;
  end
  else
  begin
    ShowMessage('Selecciona Timibre a Editar');
  end;

end;

procedure TMainF.ButtonTimbreEliminaClick(Sender: TObject);
begin
  if   Global.TimbresAdmin.Id <> 0 then
  begin
    Global.TimbresAdmin.Delete;
    GetAllTimbres;
  end
  else
  begin
    ShowMessage('Selecciona Timibre a Eliminar');
  end;

end;

procedure TMainF.ButtonTimbreNuevoClick(Sender: TObject);
var
  TimbreRegistraF: TTimbreRegistraF;
begin
  TimbreRegistraF := TTimbreRegistraF.Create(Application);

  try
    TimbreRegistraF.ShowModal;
  finally
    TimbreRegistraF.Free;
  end;
  GetAllTimbres;
end;

procedure TMainF.ShowTab(ActiveTab: TTabSheet);
var
 i: integer;
begin
  for i := 0 to PageControlWork.PageCount -1 do
  begin
    PagecontrolWork.Pages[i].TabVisible := False;
  end;

    PageControlWork.ActivePage := ActiveTab;
end;

procedure TMainF.GridPacsClick(Sender: TObject);
begin
  Global.PacAdmin.Id := StrToInt(GridPacs.Cells[1, GridPacs.Row]);
  Global.PacAdmin.Nombre := GridPacs.Cells[2, GridPacs.Row];
  Global.PacAdmin.Url_Webservice := GridPacs.Cells[3, GridPacs.Row];

  LabelPACNombre.Caption := Global.PacAdmin.Nombre;
  LabelPACURLWebService.Caption := Global.PacAdmin.Url_Webservice;
end;

procedure TMainF.GridSeriesClick(Sender: TObject);
begin
  Global.SeriesAdmin.Id := StrToInt(GridSeries.Cells[1, GridSeries.Row]);
  Global.SeriesAdmin.Serie := GridSeries.Cells[2, GridSeries.Row];
  Global.SeriesAdmin.Folio := StrToInt(GridSeries.Cells[3, GridSeries.Row]);

  LabelSerie.Caption := Global.SeriesAdmin.Serie;
  LabelSerieFolio.Caption := IntToStr(Global.SeriesAdmin.Folio);

end;

procedure TMainF.GridTimbresClick(Sender: TObject);
begin
  Global.TimbresAdmin.Id := StrToInt(GridTimbres.Cells[1, GridTimbres.Row]);
  Global.TimbresAdmin.Id_Pac := StrToInt(GridTimbres.Cells[2, GridTimbres.Row]);
  Global.TimbresAdmin.Pac := GridTimbres.Cells[3, GridTimbres.Row];
  Global.TimbresAdmin.Comprados := StrToInt(GridTimbres.Cells[4, GridTimbres.Row]);
  Global.TimbresAdmin.Usados := StrToInt(GridTimbres.Cells[5, GridTimbres.Row]);
  Global.TimbresAdmin.Restantes := StrToInt(GridTimbres.Cells[6, GridTimbres.Row]);
  Global.TimbresAdmin.Avisar := StrToInt(GridTimbres.Cells[7, GridTimbres.Row]);


  LabelTimbresPAC.Caption := Global.TimbresAdmin.Pac;
  LabelTimbresComprados.Caption := IntToStr(Global.TimbresAdmin.Comprados);
  LabelTimbresUsados.Caption := IntToStr(Global.TimbresAdmin.Usados);
  LabelTimbresRestantes.Caption := IntToStr(Global.TimbresAdmin.Restantes);
  LabelTimbresAvisar.Caption := IntToStr(Global.TimbresAdmin.Avisar);
end;

procedure TMainF.GridCertificadosClick(Sender: TObject);
begin
  Global.CertAdmin.Id := StrToInt(GridCertificados.Cells[1, GridCertificados.Row]);
  Global.CertAdmin.Cert_Cer := GridCertificados.Cells[2, GridCertificados.Row];
  Global.CertAdmin.Cert_Key := GridCertificados.Cells[3, GridCertificados.Row];

  LabelCer.Caption := Global.CertAdmin.Cert_Cer;
  LabelKey.Caption := Global.CertAdmin.Cert_Key;
end;

procedure TMainF.GridClientesClick(Sender: TObject);
begin
  Global.Client.Id := StrToInt(GridClientes.Cells[1, GridClientes.Row]);
  Global.Client.RFC := GridClientes.Cells[2, GridClientes.Row];
  Global.Client.RazonSocial := GridClientes.Cells[3, GridClientes.Row];

  LabelRFCCliente.Caption := Global.Client.RFC;
  LabelRazonSocialCliente.Caption := Global.Client.RazonSocial;

end;

procedure TMainF.GridFormaPagoClick(Sender: TObject);
begin
  Global.FormaPagoAdmin.Id := StrToInt(GridFormaPago.Cells[1, GridFormaPago.Row]);
  Global.FormaPagoAdmin.Descripcion := GridFormaPago.Cells[2, GridFormaPago.Row];
  Global.FormaPagoAdmin.Uso := GridFormaPago.Cells[3, GridFormaPago.Row];

  LabelFormaPagoDesc.Caption := Global.FormaPagoAdmin.Descripcion;
end;

procedure TMainF.GridImpuestosClick(Sender: TObject);
begin
  Global.ImpuestosAdmin.Id := StrToInt(GridImpuestos.Cells[1, GridImpuestos.Row]);
  Global.ImpuestosAdmin.Impuesto := GridImpuestos.Cells[3, GridImpuestos.Row];
  Global.ImpuestosAdmin.TasaOCuota := StrToFloat(GridImpuestos.Cells[5, GridImpuestos.Row]);

  LabelImpuestoImpuesto.Caption := Global.ImpuestosAdmin.Impuesto;
  LabelImpuestoTasaOCuota.Caption := FloatToStr(Global.ImpuestosAdmin.TasaOCuota);

end;

procedure TMainF.GridLugarExpedClick(Sender: TObject);
begin
  Global.LugarExpAdmin.Id := StrToInt(GridLugarExped.Cells[1, GridLugarExped.Row]);
  Global.LugarExpAdmin.Descripcion := GridLugarExped.Cells[2, GridLugarExped.Row];
  Global.LugarExpAdmin.Uso := GridLugarExped.Cells[3, GridLugarExped.Row];
  Global.LugarExpAdmin.Tipo_Especial := GridLugarExped.Cells[3, GridLugarExped.Row];

    if (   GridLugarExped.Cells[3, GridLugarExped.Row] = 'SI' ) then
    begin
      Global.LugarExpAdmin.Activo := True;
    end
    else
    begin
      Global.LugarExpAdmin.Activo := False;
    end;

	  LabelLugarExpedicionDescripcion.Caption := Global.LugarExpAdmin.Descripcion;
	  LabelLugarExpedicionUso.Caption := Global.LugarExpAdmin.Uso;
	  LabelLugarExpedicionTipoEspecial.Caption := Global.LugarExpAdmin.Tipo_Especial;
	  CheckBoxLugExpActivo.Checked := Global.LugarExpAdmin.Activo;
end;


procedure TMainF.GridMetodosPagoClick(Sender: TObject);
begin
  Global.MetodoPagoAdmin.Id := StrToInt(GridMetodosPago.Cells[1, GridMetodosPago.Row]);
  Global.MetodoPagoAdmin.Descripcion := GridMetodosPago.Cells[2, GridMetodosPago.Row];
  Global.MetodoPagoAdmin.Uso := GridMetodosPago.Cells[3, GridMetodosPago.Row];

  LabelMetodoPagoDesc.Caption := Global.MetodoPagoAdmin.Descripcion;

end;

procedure TMainF.GridMonedaClick(Sender: TObject);
begin
  Global.MonedaAdmin.Id := StrToInt(GridMoneda.Cells[1, GridMoneda.Row]);
  Global.MonedaAdmin.Descripcion := GridMoneda.Cells[2, GridMoneda.Row];
  Global.MonedaAdmin.Uso := GridMoneda.Cells[3, GridMoneda.Row];
  Global.MonedaAdmin.Tipo_Especial := GridMoneda.Cells[3, GridMoneda.Row];

    if (   GridMoneda.Cells[3, GridMoneda.Row] = 'SI' ) then
    begin
      Global.MonedaAdmin.Activo := True;
    end
    else
    begin
      Global.MonedaAdmin.Activo := False;
    end;

	  LabelMonedaDescripcion.Caption := Global.MonedaAdmin.Descripcion;
	  LabelMonedaUso.Caption := Global.MonedaAdmin.Uso;
	  LabelMonedaTipoEspecial.Caption := Global.MonedaAdmin.Tipo_Especial;
	  CheckBoxMonedaActivo.Checked := Global.MonedaAdmin.Activo;
end;

procedure TMainF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Global.DeInitialize;
end;

procedure TMainF.FormCreate(Sender: TObject);
begin
  ShowTab(TabsheetBilling);

  MainF.Caption := 'Facturador 1.5';

  Global.Initialize;

  PanelHoldWork.Visible := False;
  PanelLogin.Visible := True;

  LabelLeyenda.Caption := '';

  MainF.Position := poScreenCenter;
  MainF.WindowState := wsMaximized;

  GetAllClients;
  GettAllPacs;
  GetAllCerts;
  GetAllImpuestos;
  GetAllMetodosPagos;
  GetAllFormasPagos;
  GetAllSeries;
  GetAllLugExp;
  GetAllMonedas;
  GetAllTimbres;

end;

procedure TMainF.PanelAcercaClick(Sender: TObject);
begin
  ShowTab(TabsheetAbout);
end;

procedure TMainF.PanelArticulosClick(Sender: TObject);
begin
  ShowTab(TabsheetItems);
end;

procedure TMainF.PanelBillingClick(Sender: TObject);
begin
  ShowTab(TabsheetBilling);
end;

procedure TMainF.PanelCertificadosClick(Sender: TObject);
begin
  ShowTab(TabSheetCertificados);
end;

procedure TMainF.PanelClientsClick(Sender: TObject);
begin
  ShowTab(TabsheetClients);
end;

procedure TMainF.PanelConfigClick(Sender: TObject);
begin
  ShowTab(TabsheetConfig);
end;


procedure TMainF.EmpresaLoadData;
begin

  Global.Emp.Read;

  EditEmpRFC.Text := Global.Emp.Rfc;
  EditEmpRazonSocial.Text := Global.Emp.Razonsocial;
  EditEmpCalle.Text := Global.Emp.Calle;
  EditEmpNumExt.Text := Global.Emp.Numero_Exterior;
  EditEmpNumInt.Text := Global.Emp.Numero_Interior;
  EditEmpColonia.Text := Global.Emp.Colonia;
  EditEmpMunDel.Text := Global.Emp.Municipio;
  EditEmpEstado.Text := Global.Emp.Estado;
  EditEmpPais.Text := Global.Emp.Pais;
  EditEmpCP.Text := Global.Emp.Cp;
  EditEmpTelefono.Text := Global.Emp.Telefono;
  EditEmpCelular.Text := Global.Emp.Celular;
  EditEmpMail.Text := Global.Emp.Email;
end;

procedure TMainF.PanelEmpresaClick(Sender: TObject);
begin
  ShowTab(TabSheetEmpresa);
  EmpresaLoaDdata;
end;

procedure TMainF.PanelFacturasClick(Sender: TObject);
begin
  ShowTab(TabSheetFacturas);
end;

procedure TMainF.PanelFormaPagoClick(Sender: TObject);
begin
  ShowTab(TabSheetFormaPago);
end;

procedure TMainF.PanelImpuestosClick(Sender: TObject);
begin
  ShowTab(TabSheetImpuestos);
end;

procedure TMainF.PanelLugarExpedicionClick(Sender: TObject);
begin
  ShowTab(TabSheetLugarExpedicion);
end;

procedure TMainF.PanelMetodoPagoClick(Sender: TObject);
begin
  ShowTab(TabSheetMetodopago);
end;

procedure TMainF.PanelMonedaClick(Sender: TObject);
begin
  ShowTab(TabSheetMoneda);
end;

procedure TMainF.PanelPacsClick(Sender: TObject);
begin
  ShowTab(TabSheetPacs);
end;

procedure TMainF.PanelSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TMainF.PanelSeriesClick(Sender: TObject);
begin
  ShowTab(TabSheetSeries);
end;

procedure TMainF.PanelTimbresClick(Sender: TObject);
begin
  ShowTab(TabSheetTimbres);
end;

procedure TMainF.PanelUpdateClick(Sender: TObject);
begin
  ShowTab(TabsheetUpdate);
end;

procedure TMainF.PanelWorkTopButtonClick(Sender: TObject);
begin
  if PanelWorkTopButton.Caption = '<'  then
  begin
    PanelWorkLeft.Width := 70;
    PanelWorkTopButton.Caption := '>'
  end
  else
  if PanelWorkTopButton.Caption = '>'
  then
  begin
    PanelWorkLeft.Width := 200 ;
    PanelWorkTopButton.Caption := '<'
  end;

end;

end.
