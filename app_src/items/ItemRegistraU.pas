unit ItemRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TItemRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelItemDatos: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    EditRFC: TEdit;
    EditRazonSocial: TEdit;
    BuscarGuardar: TButton;
    PanelBottom: TPanel;
    ButtonCerrar: TButton;
    procedure ButtonCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemRegistraF: TItemRegistraF;

implementation

{$R *.dfm}

procedure TItemRegistraF.ButtonCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
