unit PacAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TPacAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Nombre: string;
    Url_Webservice: string;
    Activo: Boolean;

    Qry: TQry;

    procedure CreateNew(Nombre: string; Url_Webservice: string; Activo: Boolean);

    procedure Update(Nombre: string; Url_Webservice: string; Activo: Boolean);
    procedure Delete();

    procedure GetPacs();
    procedure GetPacByID(Id:Integer);
    procedure GetPacByName(Nombre: string);

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TPacAdmin.CreateNew(Nombre: string; Url_Webservice: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO PACS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' NOMBRE, URL_WEBSERVICE, ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :NOMBRE, :URL_WEBSERVICE, :ACTIVO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('NOMBRE').AsString := Nombre;
  Qry.Querry.ParamByName('URL_WEBSERVICE').AsString := Url_Webservice;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TPacAdmin.Update(Nombre: string; Url_Webservice: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE PACS ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' NOMBRE  = :NOMBRE, URL_WEBSERVICE = :URL_WEBSERVICE, ACTIVO = :ACTIVO');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');


  Qry.Querry.ParamByName('NOMBRE').AsString := Nombre;
  Qry.Querry.ParamByName('URL_WEBSERVICE').AsString := Url_Webservice;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;

  Qry.Querry.ParamByName('ID').AsInteger := ID;

  Qry.Querry.ExecSQL;
end;

procedure TPacAdmin.Delete();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM PACS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;


procedure TPacAdmin.GetPacs();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, NOMBRE, URL_WEBSERVICE, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM PACS ');
  Qry.Querry.Open();

end;

procedure TPacAdmin.GetPacByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, NOMBRE, URL_WEBSERVICE, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM PACS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

    Id := Qry.Querry.FieldByName('ID').AsInteger;
    Nombre := Qry.Querry.FieldByName('NOMBRE').AsString;
    Url_Webservice := Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;
    Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;

end;

procedure TPacAdmin.GetPacByName(Nombre: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, NOMBRE, URL_WEBSERVICE, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM PACS ');
  Qry.Querry.SQL.Add(' WHERE NOMBRE LIKE :NOMBRE' );

  Qry.Querry.ParamByName('NOMBRE').AsString :=  '%' + Nombre +'%';

  Qry.Querry.Open();


    Id := Qry.Querry.FieldByName('ID').AsInteger;
    Nombre := Qry.Querry.FieldByName('NOMBRE').AsString;
    Url_Webservice := Qry.Querry.FieldByName('URL_WEBSERVICE').AsString;
    Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;


end;

Constructor TPacAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TPacAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.

