unit Global;

interface

uses

App, Config, DBC, User, Client,Item,
Empresa, PacAdmin;

  procedure Initialize;// este es para inicializar la unidad es decir se llama siempre que se carge launidad
  procedure DeInitialize;

var

  Initialized : Boolean = False;

  App : Tapp;

    User : TUser;
    Client : TClient;
    Item :TItem;
    //DB: TDBC;

    Emp : TEmpresa;
    PacAdmin : TPacAdmin;

implementation


procedure Initialize;
begin
  Initialized := False;
  App := Tapp.Create;




  User := TUser.Create;
  Client := TClient.Create;
  Item := TItem.Create;

  Emp := TEmpresa.Create;
  PacAdmin := TPacAdmin.Create;

  Initialized := True;
end;



procedure DeInitialize;
begin
  App.Free;


  User.Free;
  Client.Free;
  Item.Free;
  Emp.Free;
  PacAdmin.Free;

end;



end.
