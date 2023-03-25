unit ImpuestoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TImpuestoRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    GroupBoxImpuestos: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    BuscarRegistra: TButton;
    EditImpuestoImpuesto: TEdit;
    EditImpuestoBase: TEdit;
    ButtonCancelar: TButton;
    Label1: TLabel;
    EditImpuestoTipoOFactor: TEdit;
    Label2: TLabel;
    EditImpuestoTasaOCuota: TEdit;
    Label5: TLabel;
    EditImpuestoImporte: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure BuscarRegistraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpuestoRegistraF: TImpuestoRegistraF;

implementation

{$R *.dfm}

procedure TImpuestoRegistraF.BuscarRegistraClick(Sender: TObject);
begin
  Global.ImpuestosAdmin.New(EditImpuestoBase.Text, EditImpuestoImpuesto.Text,
    EditImpuestoTipoOFactor.Text, StrToFloat(EditImpuestoTasaOCuota.Text),
    StrToFloat(EditImpuestoImporte.Text));

  Close;
end;

procedure TImpuestoRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
