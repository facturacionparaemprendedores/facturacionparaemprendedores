unit EmpresaEditarU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Global;

type
  TEmpresaEditarF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    ButtonCancelar: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EditEmpRazonSocial: TEdit;
    EditEmpRFC: TEdit;
    EditEmpCalle: TEdit;
    EditEmpNumExt: TEdit;
    EditEmpNumInt: TEdit;
    EditEmpColonia: TEdit;
    EditEmpMunDel: TEdit;
    EditEmpEstado: TEdit;
    EditEmpPais: TEdit;
    EditEmpCP: TEdit;
    EditEmpTelefono: TEdit;
    EditEmpCelular: TEdit;
    EditEmpMail: TEdit;
    ButtonGuardarEmp: TButton;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure fill;
    procedure ButtonGuardarEmpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpresaEditarF: TEmpresaEditarF;

implementation

{$R *.dfm}

procedure TEmpresaEditarF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TEmpresaEditarF.ButtonGuardarEmpClick(Sender: TObject);
begin
  Global.Emp.Rfc := EditEmpRFC.Text;
  Global.Emp.Razonsocial := EditEmpRazonSocial.Text;
  Global.Emp.Calle := EditEmpCalle.Text;
  Global.Emp.Numero_Exterior := EditEmpNumExt.Text;
  Global.Emp.Numero_Interior := EditEmpNumInt.Text;
  Global.Emp.Colonia := EditEmpColonia.Text;
  Global.Emp.Municipio := EditEmpMunDel.Text;
  Global.Emp.Estado := EditEmpEstado.Text;
  Global.Emp.Pais := EditEmpPais.Text;
  Global.Emp.Cp := EditEmpCP.Text;
  Global.Emp.Telefono := EditEmpTelefono.Text;
  Global.Emp.Celular := EditEmpCelular.Text;
  Global.Emp.Email := EditEmpMail.Text;

  Global.Emp.Update();

  Close;
end;

procedure TEmpresaEditarF.fill;
begin

  Global.Emp.Read;

  EditEmpRFC.Text := Global.Emp.Rfc;
  EditEmpRazonSocial.Text := Global.Emp.Razonsocial;
  EditEmpCalle.Text := Global.Emp.Calle;
  EditEmpNumExt.Text := Global.Emp.Numero_Exterior;
  EditEmpNumInt.Text := Global.Emp.Numero_Interior;
  EditEmpColonia.Text := Global.Emp.Colonia;
  EditEmpMunDel.Text := Global.Emp.Municipio;
  EditEmpEstado.Text := Global.Emp.Estado;
  EditEmpPais.Text := Global.Emp.Pais;
  EditEmpCP.Text := Global.Emp.Cp;
  EditEmpTelefono.Text := Global.Emp.Telefono;
  EditEmpCelular.Text := Global.Emp.Celular;
  EditEmpMail.Text := Global.Emp.Email;

end;

end.





