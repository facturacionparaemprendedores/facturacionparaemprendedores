unit FormaPagoEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TFormaPagoEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBoxImpuestos: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ButtonGuarda: TButton;
    EditFormaPagoUso: TEdit;
    EditFormaPagoDesc: TEdit;
    EditFormaTipoEspecial: TEdit;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardaClick(Sender: TObject);
    procedure Load;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormaPagoEditaF: TFormaPagoEditaF;

implementation

{$R *.dfm}

procedure TFormaPagoEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormaPagoEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.FormaPagoAdmin.Update(EditFormaPagoDesc.Text, EditFormaPagoUso.Text, EditFormaTipoEspecial.Text);
  Close;
end;



procedure TFormaPagoEditaF.Load;
begin
  Global.FormaPagoAdmin.GetByID(Global.FormaPagoAdmin.Id);

  EditFormaPagoDesc.Text := Global.FormaPagoAdmin.Descripcion;
  EditFormaPagoUso.Text := Global.FormaPagoAdmin.Uso;
  EditFormaTipoEspecial.Text := Global.FormaPagoAdmin.TipoEspecial;

end;


end.
