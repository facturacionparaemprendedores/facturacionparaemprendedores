unit MetodoPagoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TMetodoPagoRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBoxImpuestos: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ButtonRegistra: TButton;
    EditMetodoPagoUso: TEdit;
    EditMetodoPagoDesc: TEdit;
    EditMetodoPagoTipoEspecial: TEdit;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonRegistraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MetodoPagoRegistraF: TMetodoPagoRegistraF;

implementation

{$R *.dfm}

procedure TMetodoPagoRegistraF.ButtonRegistraClick(Sender: TObject);
begin
  Global.MetodoPagoAdmin.New(EditMetodoPagoDesc.Text, EditMetodoPagoUso.Text, EditMetodoPagoTipoEspecial.Text);

  Close;
end;

procedure TMetodoPagoRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

end.



