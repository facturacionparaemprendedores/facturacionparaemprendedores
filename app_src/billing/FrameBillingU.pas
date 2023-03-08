unit FrameBillingU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ClientsBuscaU, ItemsBuscaU, IngresaPagoU;

type
  TFrameBilling = class(TFrame)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EditReceptorRFC: TEdit;
    EditReceptorRazSoc: TEdit;
    Panel3: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    ButtonClienteAgregar: TButton;
    ButtonProdServAgregar: TButton;
    LabelCambio: TLabel;
    LabelPagado: TLabel;
    LabelTotal: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    ButtonFinalizarVenta: TButton;
    ButtonCancelarVenta: TButton;
    ButtonIngresarPagos: TButton;
    ButtonEliminarPago: TButton;
    ButtonClienteEliminar: TButton;
    ButtonProdServEliminar: TButton;
    procedure ButtonSelectClienteClick(Sender: TObject);
    procedure DoMessage(sh: Boolean; Menssage:String );
    procedure ButtonProdServAgregarClick(Sender: TObject);
    procedure ButtonIngresarPagosClick(Sender: TObject);
    procedure ButtonProdServEliminarClick(Sender: TObject);
    procedure ButtonClienteEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameBilling.DoMessage(sh: Boolean; Menssage:String );
begin
   LabelMesage.Caption := Menssage;
   if sh =True  then
   begin
     PanelMessages.Height := 100;
   end
   else
   begin
     PanelMessages.Height := 1;
   end;
//
end;

procedure TFrameBilling.ButtonProdServAgregarClick(Sender: TObject);
var
  ItemsBuscaF: TItemsBuscaF;
begin
  ItemsBuscaF := TItemsBuscaF.Create(Application);
  ItemsBuscaF.LabelProdClave.Caption := '';
  ItemsBuscaF.LabelProdDesc.Caption := '';
  try
    ItemsBuscaF.ShowModal;
  finally
    ItemsBuscaF.Free;
  end;


end;

procedure TFrameBilling.ButtonProdServEliminarClick(Sender: TObject);
begin
///
end;

procedure TFrameBilling.ButtonClienteEliminarClick(Sender: TObject);
begin
//
end;

procedure TFrameBilling.ButtonIngresarPagosClick(Sender: TObject);
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

procedure TFrameBilling.ButtonSelectClienteClick(Sender: TObject);
var
  ClientsBuscaF: TClientsBuscaF;
begin
  ClientsBuscaF := TClientsBuscaF.Create(Application);
  ClientsBuscaF.LabelRFCCliente.Caption := '';
  ClientsBuscaF.LabelRazonSocialCliente.Caption := '';
  try
    ClientsBuscaF.ShowModal;
  finally
    ClientsBuscaF.Free;
  end;


end;




end.
