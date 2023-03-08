unit FrameItemsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, ItemEditaU, ItemRegistraU;

type
  TFrameItems = class(TFrame)
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
    ButtonRegistra: TButton;
    ButtonEditar: TButton;
    PanelMiddle: TPanel;
    StringGrid1: TStringGrid;
    PanelBottom: TPanel;
    procedure ButtonRegistraClick(Sender: TObject);
    procedure ButtonEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameItems.ButtonEditarClick(Sender: TObject);
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

procedure TFrameItems.ButtonRegistraClick(Sender: TObject);
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
