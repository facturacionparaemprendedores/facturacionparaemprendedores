unit App;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, DBC, User,
  Client, CFDIV4, Pac, Item, Nota;


type
  TApp = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Connected : Boolean;

    Constructor Create; virtual;
    Destructor Destroy; override;
  published
    DB: TDBC;
    Cfg: TConfig;
  end;

implementation

Constructor TApp.Create;
begin
  Inherited Create;
  Cfg:= TConfig.Create;
  DB := TDBC.Create;
  DB.Connect(Cfg.FDB, Cfg.FDBHost, Cfg.FDBPort, Cfg.FDBUserName, Cfg.FDBPassword);
  Connected := DB.FDBConnection.Connected;

end;

Destructor TApp.Destroy;
begin
  Inherited Destroy;
  DB.Free;
  Cfg.Free;
end;

end.

