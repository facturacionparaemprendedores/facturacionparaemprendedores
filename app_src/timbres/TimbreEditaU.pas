unit TimbreEditaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TimbreSeleccionaPac,
  Global;

type
  TTimbreEditaF = class(TForm)
    PanelHoldAll: TPanel;
    PanelBottom: TPanel;
    ButtonCancelar: TButton;
    PanelTop: TPanel;
    PanelMessages: TPanel;
    PanelMessage: TPanel;
    LabelMesage: TLabel;
    PanelMiddle: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditPAC: TEdit;
    EditTimbresComprados: TEdit;
    ButtonSelectPAC: TButton;
    ButtonGuarda: TButton;
    CheckBoxActivo: TCheckBox;
    EditTimbresAvisa: TEdit;
    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonGuardaClick(Sender: TObject);
    procedure ButtonSelectPACClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimbreEditaF: TTimbreEditaF;

implementation

{$R *.dfm}

procedure TTimbreEditaF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TTimbreEditaF.ButtonGuardaClick(Sender: TObject);
begin
  Global.TimbresAdmin.Update(Global.TimbresAdmin.Id_Pac, Global.TimbresAdmin.Pac, StrToInt(EditTimbresComprados.Text), StrToInt(EditTimbresAvisa.Text), CheckBoxActivo.Checked);
  Close;
end;

procedure TTimbreEditaF.ButtonSelectPACClick(Sender: TObject);
var
  TimbreSeleccionaPacF: TTimbreSeleccionaPacF;
begin
  TimbreSeleccionaPacF := TTimbreSeleccionaPacF.Create(Application);
  TimbreSeleccionaPacF.LoadPacs;
  TimbreSeleccionaPacF.Clean;
  try
    TimbreSeleccionaPacF.ShowModal;
  finally
    TimbreSeleccionaPacF.Free;
  end;

  EditPAC.Text := Global.TimbresAdmin.Pac;
end;

end.
