unit ImpuestoEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TImpuestoEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    BuscarRegistra: TButton;
    EditRazonSocial: TEdit;
    EditRFC: TEdit;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpuestoEditaF: TImpuestoEditaF;

implementation

{$R *.dfm}

procedure TImpuestoEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
