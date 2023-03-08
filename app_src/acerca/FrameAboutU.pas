unit FrameAboutU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Winapi.ShellAPI;

type
  TFrameAbout = class(TFrame)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    LabelWeb: TLabel;
    Label3: TLabel;
    LabelGit: TLabel;
    Memo1: TMemo;
    procedure LabelWebClick(Sender: TObject);
    procedure LabelGitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure ShellOpen(const Url: string; const Params: string = '');
begin
  ShellExecute(0, 'Open', PChar(Url), PChar(Params), nil, SW_SHOWNORMAL);
end;


procedure TFrameAbout.LabelGitClick(Sender: TObject);
begin
  ShellOpen(LabelGit.Caption);
end;

procedure TFrameAbout.LabelWebClick(Sender: TObject);
begin
  ShellOpen(LabelWeb.Caption);
end;

end.
