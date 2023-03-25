unit FormaPagoRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TFormaPagoRegistraF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBoxImpuestos: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ButtonRegistra: TButton;
    EditFormaPagoUso: TEdit;
    EditFormaPagoDesc: TEdit;
    EditFormaPagoTipoEspecial: TEdit;
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
  FormaPagoRegistraF: TFormaPagoRegistraF;

implementation

{$R *.dfm}

procedure TFormaPagoRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormaPagoRegistraF.ButtonRegistraClick(Sender: TObject);
begin
  Global.FormaPagoAdmin.New(EditFormaPagoDesc.Text, EditFormaPagoUso.Text, EditFormaPagoTipoEspecial.Text);

  Close;
end;

end.
