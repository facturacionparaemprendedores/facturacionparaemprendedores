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
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    ButtonGuardar: TButton;
    EditImpuestoImpuesto: TEdit;
    EditImpuestoBase: TEdit;
    EditImpuestoTipoOFactor: TEdit;
    EditImpuestoTasaOCuota: TEdit;
    EditImpuestoImporte: TEdit;
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
  Global.ImpuestosAdmin.Update(EditImpuestoBase.Text, EditImpuestoImpuesto.Text,
    EditImpuestoTipoOFactor.Text, StrToFloat(EditImpuestoTasaOCuota.Text),
    StrToFloat(EditImpuestoImporte.Text));

  Close;
end;

procedure TImpuestoEditaF.Load();
begin
  Global.ImpuestosAdmin.GetByID(Global.ImpuestosAdmin.Id);

  EditImpuestoBase.Text := Global.ImpuestosAdmin.Base;
  EditImpuestoImpuesto.Text := Global.ImpuestosAdmin.Impuesto;
  EditImpuestoTipoOFactor.Text := Global.ImpuestosAdmin.TipoFactor;
  EditImpuestoTasaOCuota.Text := FloatToStr(Global.ImpuestosAdmin.TasaOCuota);
  EditImpuestoImporte.Text := FloatToStr(Global.ImpuestosAdmin.Importe);
end;

end.
