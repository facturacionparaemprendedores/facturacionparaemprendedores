unit TimbreRegistraU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TimbreSeleccionaPac,
  Global;

type
  TTimbreRegistraF = class(TForm)
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
    EditPAC: TEdit;
    EditTimbresComprados: TEdit;
    ButtonSelectPAC: TButton;
    ButtonRegistra: TButton;
    CheckBoxActivo: TCheckBox;
    Label3: TLabel;
    EditTimbresAvisa: TEdit;

    procedure ButtonCancelarClick(Sender: TObject);
    procedure ButtonSelectPACClick(Sender: TObject);
    procedure ButtonRegistraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimbreRegistraF: TTimbreRegistraF;

implementation

{$R *.dfm}



procedure TTimbreRegistraF.ButtonCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TTimbreRegistraF.ButtonRegistraClick(Sender: TObject);
begin
  Global.TimbresAdmin.New(Global.TimbresAdmin.Id_Pac, Global.TimbresAdmin.Pac, StrToInt(EditTimbresComprados.Text), StrToInt(EditTimbresAvisa.Text), CheckBoxActivo.Checked);
  Close;
end;

procedure TTimbreRegistraF.ButtonSelectPACClick(Sender: TObject);
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
