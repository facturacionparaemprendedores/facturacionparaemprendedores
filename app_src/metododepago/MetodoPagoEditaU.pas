unit MetodoPagoEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Global, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMetodoPagoEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    GroupBoxImpuestos: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ButtonGuarda: TButton;
    EditMetodoPagoUso: TEdit;
    EditMetodoPagoDesc: TEdit;
    EditMetodoPagoTipoEspecial: TEdit;
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
  MetodoPagoEditaF: TMetodoPagoEditaF;

implementation

{$R *.dfm}

procedure TMetodoPagoEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TMetodoPagoEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.MetodoPagoAdmin.Update(EditMetodoPagoDesc.Text, EditMetodoPagoUso.Text, EditMetodoPagoTipoEspecial.Text);
  Close;
end;

procedure TMetodoPagoEditaF.Load;
begin
  Global.MetodoPagoAdmin.GetByID(Global.MetodoPagoAdmin.Id);

  EditMetodoPagoDesc.Text := Global.MetodoPagoAdmin.Descripcion;
  EditMetodoPagoUso.Text := Global.MetodoPagoAdmin.Uso;
  EditMetodoPagoTipoEspecial.Text := Global.MetodoPagoAdmin.TipoEspecial;

end;



end.
