unit ImpuestoEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TImpuestoEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    GroupBoxImpuestos: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ButtonGuardar: TButton;
    EditImpuestoImpuesto: TEdit;
    EditImpuestoTipoOFactor: TEdit;
    EditImpuestoTasaOCuota: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardarClick(Sender: TObject);
    procedure Load();
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

procedure TImpuestoEditaF.ButtonGuardarClick(Sender: TObject);
begin
  Global.ImpuestosAdmin.Update(
  EditImpuestoImpuesto.Text,
  EditImpuestoTipoOFactor.Text,
  StrToFloat(EditImpuestoTasaOCuota.Text));

  Close;
end;

procedure TImpuestoEditaF.Load();
begin
  Global.ImpuestosAdmin.GetByID(Global.ImpuestosAdmin.Id);

  EditImpuestoImpuesto.Text := Global.ImpuestosAdmin.Impuesto;
  EditImpuestoTipoOFactor.Text := Global.ImpuestosAdmin.TipoFactor;
  EditImpuestoTasaOCuota.Text := FloatToStr(Global.ImpuestosAdmin.TasaOCuota);

end;

end.
