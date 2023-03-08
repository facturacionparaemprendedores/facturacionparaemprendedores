unit ItemsBuscaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  ItemEditaU, ItemRegistraU;

type
  TItemsBuscaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelCliente: TPanel;
    PanelClienteDatos: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    ButtonBuscarPorRazSoc: TButton;
    BuscarPorRFC: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    LabelProdClave: TLabel;
    LabelProdDesc: TLabel;
    PanelClietenSelect: TPanel;
    ButtonSelectCliente: TButton;
    ButtonRegistrarNuevoCliente: TButton;
    ButtonEditarSeleccionado: TButton;
    PanelMiddle: TPanel;
    StringGrid1: TStringGrid;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
    procedure ButtonRegistrarNuevoClienteClick(Sender: TObject);
    procedure ButtonEditarSeleccionadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemsBuscaF: TItemsBuscaF;

implementation

{$R *.dfm}

procedure TItemsBuscaF.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TItemsBuscaF.ButtonEditarSeleccionadoClick(Sender: TObject);
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

procedure TItemsBuscaF.ButtonRegistrarNuevoClienteClick(Sender: TObject);
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

end.
