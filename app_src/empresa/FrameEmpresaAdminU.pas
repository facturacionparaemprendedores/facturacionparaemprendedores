unit FrameEmpresaAdminU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  EmpresaEditarU;

type
  TFrameEmpresaAdmin = class(TFrame)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
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
    EditRazonSocial: TEdit;
    EditRFC: TEdit;
    EditCalle: TEdit;
    EditNumExt: TEdit;
    EditNumInt: TEdit;
    EditColonia: TEdit;
    EditMunDel: TEdit;
    EditEstado: TEdit;
    EditPais: TEdit;
    EditCP: TEdit;
    EditTelefono: TEdit;
    EditCelular: TEdit;
    Edit1Mail: TEdit;
    ButtonEditarEmpresa: TButton;
    procedure ButtonEditarEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameEmpresaAdmin.ButtonEditarEmpresaClick(Sender: TObject);
var
  EmpresaEditarF: TEmpresaEditarF;
begin
  EmpresaEditarF := TEmpresaEditarF.Create(Application);
  try
    EmpresaEditarF.ShowModal;
  finally
    EmpresaEditarF.Free;
  end;
end;

end.
