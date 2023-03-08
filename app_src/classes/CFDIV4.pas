unit CFDIV4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Comprobante;


type
  TCFDIV4 = class(TComprobante)
  private
    { Private declarations }
  public
    { Public declarations }
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

Constructor TCFDIV4.Create;
begin
  Inherited Create;
end;

Destructor TCFDIV4.Destroy;
begin
  Inherited Destroy;
end;

end.
