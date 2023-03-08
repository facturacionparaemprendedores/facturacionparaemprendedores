unit IngresaPagoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TIngresaPagoF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    PanelBusca: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    ButtonUsarPago: TButton;
    Label5: TLabel;
    EditMontoPago: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditPago: TEdit;
    ButtonBuscar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IngresaPagoF: TIngresaPagoF;

implementation

{$R *.dfm}

procedure TIngresaPagoF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
