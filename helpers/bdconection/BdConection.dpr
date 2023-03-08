program BdConection;

uses
  Vcl.Forms,
  BdCnectionU in 'BdCnectionU.pas' {BdConectionF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBdConectionF, BdConectionF);
  Application.Run;
end.
