unit Item;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config;


type
  TItem = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

Constructor TItem.Create;
begin
  Inherited Create;
end;

Destructor TItem.Destroy;
begin
  Inherited Destroy;
end;

end.
