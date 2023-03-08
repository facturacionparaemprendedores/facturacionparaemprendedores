unit FrameImpuestosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  ImpuestoEditaU
  ,  ImpuestoRegistraU
  ;

type
  TFrameImpuestosF = class(TFrame)
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

procedure TFrameImpuestosF.ButtonEditarClick(Sender: TObject);
var
  ImpuestoEdita: TImpuestoEditaF;
begin
  ImpuestoEdita := TImpuestoEditaF.Create(Application);
  try
    ImpuestoEdita.ShowModal;
  finally
    ImpuestoEdita.Free;
  end;
end;

procedure TFrameImpuestosF.ButtonRegistraClick(Sender: TObject);
var
  ImpuestoRegistraF: TImpuestoRegistraF;
begin
  ImpuestoRegistraF := TImpuestoRegistraF.Create(Application);
  try
    ImpuestoRegistraF.ShowModal;
  finally
    ImpuestoRegistraF.Free;
  end;
end;

end.
