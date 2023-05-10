unit ItemSelecImpU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TItemSelecImpF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    GroupBox6: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    LabelImpuestoImpuesto: TLabel;
    LabelImpuestoTasaOCuota: TLabel;
    EditImpuestoNombre: TEdit;
    Label37: TLabel;
    ButtonImpuestoBusca: TButton;
    GridImpuestos: TStringGrid;
    ButtonImpuestoUsar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemSelecImpF: TItemSelecImpF;

implementation

{$R *.dfm}

procedure TItemSelecImpF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
