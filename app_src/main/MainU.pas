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
    StringGrid1: TStringGrid;
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
    StringGrid2: TStringGrid;
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
    StringGridClientes: TStringGrid;
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
    ButtonMostrarCertificados: TButton;
    GroupBox5: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    LabelCer: TLabel;
    LabelKey: TLabel;
    ButtonRegistrar: TButton;
    ButtonEliminar: TButton;
    Button4: TButton;
    Panel37: TPanel;
    StringGrid4: TStringGrid;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button5: TButton;
    Button6: TButton;
    GroupBox6: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Panel43: TPanel;
    Button7: TButton;
    Button8: TButton;
    Panel44: TPanel;
    StringGrid5: TStringGrid;
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
    StGridPacs: TStringGrid;
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
    Label52: TLabel;
    Label53: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    ButtonBuscaPorMetodo: TButton;
    ButtonBuscaPorClave: TButton;
    GroupBox11: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Panel60: TPanel;
    ButtonMetodoPagoNuevo: TButton;
    ButtonMetodoPagoEditar: TButton;
    Panel61: TPanel;
    StringGrid7: TStringGrid;
    Panel62: TPanel;
    ButtonMetodoPagoEliminar: TButton;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Button11: TButton;
    Button12: TButton;
    GroupBox12: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Panel67: TPanel;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Panel68: TPanel;
    StringGrid8: TStringGrid;
    Panel69: TPanel;
    ButtonEliminarCliente: TButton;
    ButtonMostrarTodosLosClientes: TButton;
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
    procedure StringGridClientesClick(Sender: TObject);
    procedure ButtonBuscaClientePorRazSocClick(Sender: TObject);
    procedure ButtonMostrarTodosLosClientesClick(Sender: TObject);
    procedure ButtonItemBuscarPorClaveClick(Sender: TObject);
    procedure ButtonItemBuscarPorDescClick(Sender: TObject);
    procedure ButtonItemEliminaClick(Sender: TObject);
    procedure ButtonPacBuscarPorPacClick(Sender: TObject);
    procedure GettAllPacs();
    procedure ButtonPacNuevoClick(Sender: TObject);
    procedure ButtonPacEditarClick(Sender: TObject);
    procedure StGridPacsClick(Sender: TObject);
    procedure ButtonPacEliminarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;


implementation


{$R *.dfm}

procedure TMainF.GetAllClients;
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.Client.GetClients;

  StringGridClientes.ColCount := 4;
                       //columna
  StringGridClientes.ColWidths[0] := 30;
  StringGridClientes.ColWidths[1] := 20;
  StringGridClientes.ColWidths[2] := 300;
  StringGridClientes.ColWidths[3] := 350;

                 //columna  , fila
  StringGridClientes.Cells[0,0] := 'Num';
  StringGridClientes.Cells[1,0] := 'ID';
  StringGridClientes.Cells[2,0] := 'R.F.C.';
  StringGridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    StringGridClientes.RowCount := iNumero + 1;
    StringGridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    StringGridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    StringGridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    StringGridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    Global.Client.Qry.Querry.Next;
  end;


end;

procedure TMainF.ButtonBuscaClientePorRazSocClick(Sender: TObject);
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.Client.GetClientByRazSoc(EditClientRazSoc.Text);

  StringGridClientes.ColCount := 4;
                       //columna
  StringGridClientes.ColWidths[0] := 30;
  StringGridClientes.ColWidths[1] := 20;
  StringGridClientes.ColWidths[2] := 300;
  StringGridClientes.ColWidths[3] := 350;

                 //columna  , fila
  StringGridClientes.Cells[0,0] := 'Num';
  StringGridClientes.Cells[1,0] := 'ID';
  StringGridClientes.Cells[2,0] := 'R.F.C.';
  StringGridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    StringGridClientes.RowCount := iNumero + 1;
    StringGridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    StringGridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    StringGridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    StringGridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
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

  StringGridClientes.ColCount := 4;
                       //columna
  StringGridClientes.ColWidths[0] := 30;
  StringGridClientes.ColWidths[1] := 20;
  StringGridClientes.ColWidths[2] := 300;
  StringGridClientes.ColWidths[3] := 350;

                 //columna  , fila
  StringGridClientes.Cells[0,0] := 'Num';
  StringGridClientes.Cells[1,0] := 'ID';
  StringGridClientes.Cells[2,0] := 'R.F.C.';
  StringGridClientes.Cells[3,0] := 'Razon Social';

  for i := 0 to Global.Client.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    StringGridClientes.RowCount := iNumero + 1;
    StringGridClientes.Cells[0, iNumero] := IntToStr(iNumero);
    StringGridClientes.Cells[1, iNumero] := Global.Client.Qry.Querry.FieldByName('ID').AsString;
    StringGridClientes.Cells[2, iNumero] := Global.Client.Qry.Querry.FieldByName('RFC').AsString;
    StringGridClientes.Cells[3, iNumero] := Global.Client.Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    Global.Client.Qry.Querry.Next;
  end;


end;


procedure TMainF.GettAllPacs();
var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;
  Global.PacAdmin.GetPacs;

  StGridPacs.ColCount := 5;
                       //columna
  StGridPacs.ColWidths[0] := 30;
  StGridPacs.ColWidths[1] := 20;
  StGridPacs.ColWidths[2] := 300;
  StGridPacs.ColWidths[3] := 350;
    StGridPacs.ColWidths[4] := 50;

                 //columna  , fila
  StGridPacs.Cells[0,0] := 'Num';
  StGridPacs.Cells[1,0] := 'ID';
  StGridPacs.Cells[2,0] := 'PAC';
  StGridPacs.Cells[3,0] := 'URL WebService';
  StGridPacs.Cells[4,0] := 'Activo';

  for i := 0 to Global.PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    StGridPacs.RowCount := iNumero + 1;
    StGridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    StGridPacs.Cells[1, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    StGridPacs.Cells[2, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    StGridPacs.Cells[3, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;

    if ((Global.PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      StGridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      StGridPacs.Cells[4, iNumero] := '';
    end;


    Global.PacAdmin.Qry.Querry.Next;
  end;


end;

procedure TMainF.ButtonPacBuscarPorPacClick(Sender: TObject);

var
  iNumero : Integer;
  i: Integer;
begin
  iNumero := 0;

  Global.PacAdmin.GetPacByName(EditPacNombre.Text);

  StGridPacs.ColCount := 5;
                       //columna
  StGridPacs.ColWidths[0] := 30;
  StGridPacs.ColWidths[1] := 20;
  StGridPacs.ColWidths[2] := 300;
  StGridPacs.ColWidths[3] := 350;

                 //columna  , fila
  StGridPacs.Cells[0,0] := 'Num';
  StGridPacs.Cells[1,0] := 'ID';
  StGridPacs.Cells[2,0] := 'Nombre';
  StGridPacs.Cells[3,0] := 'Url Webservice';

  for i := 0 to Global.PacAdmin.Qry.Querry.RecordCount -1 do
  begin
    Inc(iNumero);
    StGridPacs.RowCount := iNumero + 1;
    StGridPacs.Cells[0, iNumero] := IntToStr(iNumero);
    StGridPacs.Cells[1, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('ID').AsString;
    StGridPacs.Cells[2, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('NOMBRE').AsString;
    StGridPacs.Cells[3, iNumero] := Global.PacAdmin.Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;


    if ((Global.PacAdmin.Qry.Querry.FieldByName('ACTIVO').AsBoolean) = True) then
    begin
      StGridPacs.Cells[4, iNumero] :=    'SI';
    end
    else
    begin
      StGridPacs.Cells[4, iNumero] := '';
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

procedure TMainF.StGridPacsClick(Sender: TObject);
begin
  Global.PacAdmin.Id := StrToInt(StGridPacs.Cells[1, StGridPacs.Row]);
  Global.PacAdmin.Nombre := StGridPacs.Cells[2, StGridPacs.Row];
  Global.PacAdmin.Url_Webservice := StGridPacs.Cells[3, StGridPacs.Row];

  LabelPACNombre.Caption := Global.PacAdmin.Nombre;
  LabelPACURLWebService.Caption := Global.PacAdmin.Url_Webservice;
end;

procedure TMainF.StringGridClientesClick(Sender: TObject);
begin
  Global.Client.Id := StrToInt(StringGridClientes.Cells[1, StringGridClientes.Row]);
  Global.Client.RFC := StringGridClientes.Cells[2, StringGridClientes.Row];
  Global.Client.RazonSocial := StringGridClientes.Cells[3, StringGridClientes.Row];

  LabelRFCCliente.Caption := Global.Client.RFC;
  LabelRazonSocialCliente.Caption := Global.Client.RazonSocial;

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

procedure TMainF.PanelMetodoPagoClick(Sender: TObject);
begin
  ShowTab(TabSheetMetodopago);
end;

procedure TMainF.PanelPacsClick(Sender: TObject);
begin
  ShowTab(TabSheetPacs);
end;

procedure TMainF.PanelSalirClick(Sender: TObject);
begin
  Close;
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
