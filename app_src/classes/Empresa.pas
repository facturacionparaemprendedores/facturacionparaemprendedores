unit Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Qry;


type
  TEmpresa = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id: Integer;
    Rfc: string;
    Razonsocial: string;
    Calle: string;
    Numero_Exterior: string;
    Numero_Interior: string;
    Colonia: string;
    Municipio: string;
    Estado: string;
    Pais: string;
    Cp: string;
    Telefono: string;
    Celular: string;
    Email: string;

    Qry: TQry;

    procedure CreateNew(username: string; password: string);
    procedure Read;
    procedure Update();
    procedure Delete(username: string; password: string);

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation

procedure TEmpresa.CreateNew(username: string; password: string);
begin
  //
end;

procedure TEmpresa.Read;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, MUNICIPIO, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL ');
  Qry.Querry.SQL.Add('FROM EMPRESA');
  Qry.Querry.SQL.Add('WHERE ');
  Qry.Querry.SQL.Add('ID = :ID');
  Qry.Querry.ParamByName('ID').AsInteger := 1;
  Qry.Querry.Open;


  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Rfc := Qry.Querry.FieldByName('RFC').AsString;
  Razonsocial := Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
  Calle := Qry.Querry.FieldByName('CALLE').AsString;
  Numero_Exterior := Qry.Querry.FieldByName('NUMERO_EXTERIOR').AsString;
  Numero_Interior := Qry.Querry.FieldByName('NUMERO_INTERIOR').AsString;
  Colonia := Qry.Querry.FieldByName('COLONIA').AsString;
  Municipio := Qry.Querry.FieldByName('MUNICIPIO').AsString;
  Estado := Qry.Querry.FieldByName('ESTADO').AsString;
  Pais := Qry.Querry.FieldByName('PAIS').AsString;
  Cp := Qry.Querry.FieldByName('CP').AsString;
  Telefono := Qry.Querry.FieldByName('TELEFONO').AsString;
  Celular := Qry.Querry.FieldByName('CELULAR').AsString;
  Email := Qry.Querry.FieldByName('EMAIL').AsString;
end;

procedure TEmpresa.Update();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE EMPRESA ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add('RFC = :PRFC, RAZONSOCIAL = :PRAZONSOCIAL, CALLE = :PCALLE, NUMERO_EXTERIOR = :PNUMERO_EXTERIOR, NUMERO_INTERIOR = :PNUMERO_INTERIOR, ');
  Qry.Querry.SQL.Add('COLONIA = :PCOLONIA, MUNICIPIO = :PMUNICIPIO, ESTADO = :PESTADO, PAIS = :PPAIS, CP = :PCP,');
  Qry.Querry.SQL.Add('TELEFONO = :PTELEFONO, CELULAR = :PCELULAR, EMAIL = :PPEMAIL  ');
  Qry.Querry.SQL.Add('WHERE ID = :PID');


  Qry.Querry.ParamByName('PID').AsInteger := 1;
  Qry.Querry.ParamByName('PRFC').AsString := Rfc;
  Qry.Querry.ParamByName('PRAZONSOCIAL').AsString := Razonsocial;
  Qry.Querry.ParamByName('PCALLE').AsString := Calle;
  Qry.Querry.ParamByName('PNUMERO_EXTERIOR').AsString := Numero_Exterior;
  Qry.Querry.ParamByName('PNUMERO_INTERIOR').AsString := Numero_Interior;
  Qry.Querry.ParamByName('PCOLONIA').AsString := Colonia;
  Qry.Querry.ParamByName('PMUNICIPIO').AsString := Municipio;
  Qry.Querry.ParamByName('PESTADO').AsString := Estado;
  Qry.Querry.ParamByName('PPAIS').AsString := Pais;
  Qry.Querry.ParamByName('PCP').AsString := Cp;
  Qry.Querry.ParamByName('PTELEFONO').AsString := Telefono;
  Qry.Querry.ParamByName('PCELULAR').AsString := Celular;
  Qry.Querry.ParamByName('PPEMAIL').AsString := Email;

  Qry.Querry.ExecSQL;
end;

procedure TEmpresa.Delete(username: string; password: string);
begin
  //
end;


Constructor TEmpresa.Create;
begin
  Inherited Create;

  Qry := TQry.Create;

  Id := 1;
  Rfc := '';
  Razonsocial := '';
  Calle := '';
  Numero_Exterior := '';
  Numero_Interior := '';
  Colonia := '';
  Municipio := '';
  Estado := '';
  Pais := '';
  Cp := '';
  Telefono := '';
  Celular := '';
  Email := '';
end;

Destructor TEmpresa.Destroy;
begin
  Inherited Destroy;
 Qry.Free
end;

end.
