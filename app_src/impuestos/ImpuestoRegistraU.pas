unit ImpuestoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TImpuestoRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    BuscarRegistra: TButton;
    EditRazonSocial: TEdit;
    EditRFC: TEdit;
    ButtonCancelar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpuestoRegistraF: TImpuestoRegistraF;

implementation

{$R *.dfm}

procedure TImpuestoRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
