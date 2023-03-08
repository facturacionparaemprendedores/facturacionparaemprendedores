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

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


Constructor TApp.Create;
begin
  Inherited Create;



end;

Destructor TApp.Destroy;
begin
  Inherited Destroy;



end;

end.

