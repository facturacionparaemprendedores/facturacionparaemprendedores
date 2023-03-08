unit ItemEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TItemEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    PanelItemDatos: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    BuscarGuardar: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemEditaF: TItemEditaF;

implementation

{$R *.dfm}

procedure TItemEditaF.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
