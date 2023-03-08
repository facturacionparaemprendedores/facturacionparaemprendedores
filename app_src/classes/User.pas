unit User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Qry;


type
  TUser = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    FId : string;
    FUsername : string;
    FPassword : string;

    Qry: TQry;
    function Login(username: string; password: string): Boolean;
    procedure Createe(username: string; password: string);
    procedure Read(username: string; password: string);
    procedure Update(username: string; password: string);
    procedure Delete(username: string; password: string);

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

function TUser.Login(username: string; password: string): Boolean;
begin
      Qry.Querry.SQL.Clear;
      Qry.Querry.SQL.Add('SELECT  ID, NAME, PASS, ID_EMP FROM USERSAPP');
      Qry.Querry.SQL.Add('WHERE ');
      Qry.Querry.SQL.Add('NAME = :NAME AND PASS= :PASS ');
      Qry.Querry.ParamByName('NAME').AsString := username;
      Qry.Querry.ParamByName('PASS').AsString := password;
      Qry.Querry.Open;


    FUsername := Qry.Querry.FieldByName('NAME').AsString;
    FPassword := Qry.Querry.FieldByName('PASS').AsString;

    Result := False;

    if (FUsername = username) and (FPassword=password) then
    begin
      Result := True;
    end;
end;

procedure TUser.Createe(username: string; password: string);
begin
  //
end;

procedure TUser.Read(username: string; password: string);
begin
  //
end;

procedure TUser.Update(username: string; password: string);
begin
  //
end;

procedure TUser.Delete(username: string; password: string);
begin
  //
end;



Constructor TUser.Create;
begin
  Inherited Create;
        Qry:= TQry.Create;
end;

Destructor TUser.Destroy;
begin
  Inherited Destroy;
   Qry.Free
end;

end.

