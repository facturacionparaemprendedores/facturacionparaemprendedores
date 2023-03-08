unit FrameUpdateU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrameUpdate = class(TFrame)
    PanelHoldAll: TPanel;
    PanelTop: TPanel;
    PanelMiddle: TPanel;
    PanelBottom: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ButtonActualizar: TButton;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Label2: TLabel;
    procedure ButtonActualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameUpdate.ButtonActualizarClick(Sender: TObject);
begin
  ShowMessage('Por implementar');
end;

end.
