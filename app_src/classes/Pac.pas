unit Pac;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config;


type
  TPac = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

Constructor TPac.Create;
begin
  Inherited Create;
end;

Destructor TPac.Destroy;
begin
  Inherited Destroy;
end;

end.
