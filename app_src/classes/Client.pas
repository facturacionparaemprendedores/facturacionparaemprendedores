unit Client;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TClient = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    RazonSocial: string;
    RFC: string;
    Calle: string;
    NumExt: string;
    NumInt: string;
    Colonia: string;
    Mun: string;
    Estado: string;
    Pais: string;
    CP: string;
    Telefono: string;
    Celular: string;
    Mail: string;
    Qry: TQry;

    procedure CreateNew(RazonSocial: string; RFC: string; Calle: string; NumExt: string;
                        NumInt: string; Colonia: string; Mun: string; Estado: string;
                        Pais: string; CP: string; Telefono: string; Celular: string; Mail: string);
    procedure Update(Id :Integer; RazonSocial: string; RFC: string; Calle: string; NumExt: string;
                        NumInt: string; Colonia: string; Mun: string; Estado: string;
                        Pais: string; CP: string; Telefono: string; Celular: string; Mail: string);
    procedure Delete(id: Integer);

    procedure GetClients();
    procedure GetClientByID(Id:Integer);
    procedure GetClientByRazSoc(RazonSocial: string);
    procedure GetClientByRFC(RFC: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TClient.CreateNew(RazonSocial: string; RFC: string; Calle: string; NumExt: string;
                        NumInt: string; Colonia: string; Mun: string; Estado: string;
                        Pais: string; CP: string; Telefono: string; Celular: string; Mail: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO CLIENTS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL, ID_EMP ');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :RFC, :RAZONSOCIAL, :CALLE, :NUMERO_EXTERIOR, :NUMERO_INTERIOR,:COLONIA, ');
  Qry.Querry.SQL.Add(' :MUNICIPIO_DELEGACION, :ESTADO, :PAIS, :CP, :TELEFONO, :CELULAR, :EMAIL, :ID_EMP ');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('RFC').AsString := RFC;
  Qry.Querry.ParamByName('RAZONSOCIAL').AsString := RazonSocial;
  Qry.Querry.ParamByName('CALLE').AsString := Calle;
  Qry.Querry.ParamByName('NUMERO_EXTERIOR').AsString := NumExt;
  Qry.Querry.ParamByName('NUMERO_INTERIOR').AsString := NumInt;
  Qry.Querry.ParamByName('COLONIA').AsString := Colonia;
  Qry.Querry.ParamByName('MUNICIPIO_DELEGACION').AsString := Mun;
  Qry.Querry.ParamByName('ESTADO').AsString := Estado;
  Qry.Querry.ParamByName('PAIS').AsString := Pais;
  Qry.Querry.ParamByName('CP').AsString := CP;
  Qry.Querry.ParamByName('TELEFONO').AsString := Telefono;
  Qry.Querry.ParamByName('CELULAR').AsString := Celular;
  Qry.Querry.ParamByName('EMAIL').AsString := Mail;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;



procedure TClient.Update(Id :Integer; RazonSocial: string; RFC: string; Calle: string; NumExt: string;
                        NumInt: string; Colonia: string; Mun: string; Estado: string;
                        Pais: string; CP: string; Telefono: string; Celular: string; Mail: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE CLIENTS ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' RFC  = :RFC, RAZONSOCIAL = :RAZONSOCIAL, CALLE = :CALLE, NUMERO_EXTERIOR = :NUMERO_EXTERIOR, NUMERO_INTERIOR = :NUMERO_INTERIOR, COLONIA = :COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION = :MUNICIPIO_DELEGACION, ESTADO = :ESTADO, PAIS = :PAIS, CP = :CP, TELEFONO = :TELEFONO, CELULAR = :CELULAR, EMAIL = :EMAIL, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');


  Qry.Querry.ParamByName('RFC').AsString := RFC;
  Qry.Querry.ParamByName('RAZONSOCIAL').AsString := RazonSocial;
  Qry.Querry.ParamByName('CALLE').AsString := Calle;
  Qry.Querry.ParamByName('NUMERO_EXTERIOR').AsString := NumExt;
  Qry.Querry.ParamByName('NUMERO_INTERIOR').AsString := NumInt;
  Qry.Querry.ParamByName('COLONIA').AsString := Colonia;
  Qry.Querry.ParamByName('MUNICIPIO_DELEGACION').AsString := Mun;
  Qry.Querry.ParamByName('ESTADO').AsString := Estado;
  Qry.Querry.ParamByName('PAIS').AsString := Pais;
  Qry.Querry.ParamByName('CP').AsString := CP;
  Qry.Querry.ParamByName('TELEFONO').AsString := Telefono;
  Qry.Querry.ParamByName('CELULAR').AsString := Celular;
  Qry.Querry.ParamByName('EMAIL').AsString := Mail;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

    Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TClient.Delete(id: Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM CLIENTS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;


procedure TClient.GetClients();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM CLIENTS ');
  Qry.Querry.Open();

end;

procedure TClient.GetClientByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM CLIENTS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();


    Id := Qry.Querry.FieldByName('ID').AsInteger;
    RazonSocial := Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    RFC := Qry.Querry.FieldByName('RFC').AsString;
    Calle := Qry.Querry.FieldByName('CALLE').AsString;
    NumExt := Qry.Querry.FieldByName('NUMERO_EXTERIOR').AsString;
    NumInt := Qry.Querry.FieldByName('NUMERO_INTERIOR').AsString;
    Colonia := Qry.Querry.FieldByName('COLONIA').AsString;
    Mun := Qry.Querry.FieldByName('MUNICIPIO_DELEGACION').AsString;
    Estado := Qry.Querry.FieldByName('ESTADO').AsString;
    Pais := Qry.Querry.FieldByName('PAIS').AsString;
    CP := Qry.Querry.FieldByName('CP').AsString;
    Telefono := Qry.Querry.FieldByName('TELEFONO').AsString;
    Celular := Qry.Querry.FieldByName('CELULAR').AsString;
    Mail := Qry.Querry.FieldByName('EMAIL').AsString;

end;

procedure TClient.GetClientByRazSoc(RazonSocial: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM CLIENTS ');
  Qry.Querry.SQL.Add(' WHERE RAZONSOCIAL LIKE :RAZONSOCIAL' );

  Qry.Querry.ParamByName('RAZONSOCIAL').AsString :=  '%' + RazonSocial +'%';

  Qry.Querry.Open();


    Id := Qry.Querry.FieldByName('ID').AsInteger;
    RazonSocial := Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    RFC := Qry.Querry.FieldByName('RFC').AsString;
    Calle := Qry.Querry.FieldByName('CALLE').AsString;
    NumExt := Qry.Querry.FieldByName('NUMERO_EXTERIOR').AsString;
    NumInt := Qry.Querry.FieldByName('NUMERO_INTERIOR').AsString;
    Colonia := Qry.Querry.FieldByName('COLONIA').AsString;
    Mun := Qry.Querry.FieldByName('MUNICIPIO_DELEGACION').AsString;
    Estado := Qry.Querry.FieldByName('ESTADO').AsString;
    Pais := Qry.Querry.FieldByName('PAIS').AsString;
    CP := Qry.Querry.FieldByName('CP').AsString;
    Telefono := Qry.Querry.FieldByName('TELEFONO').AsString;
    Celular := Qry.Querry.FieldByName('CELULAR').AsString;
    Mail := Qry.Querry.FieldByName('EMAIL').AsString;
end;

procedure TClient.GetClientByRFC(RFC: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, RFC, RAZONSOCIAL, CALLE, NUMERO_EXTERIOR, NUMERO_INTERIOR, COLONIA, ');
  Qry.Querry.SQL.Add(' MUNICIPIO_DELEGACION, ESTADO, PAIS, CP, TELEFONO, CELULAR, EMAIL, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM CLIENTS ');
  Qry.Querry.SQL.Add(' WHERE RFC LIKE :RFC ' );

  Qry.Querry.ParamByName('RFC').AsString := '%' + RFC +'%';;

  Qry.Querry.Open();


    Id := Qry.Querry.FieldByName('ID').AsInteger;
    RazonSocial := Qry.Querry.FieldByName('RAZONSOCIAL').AsString;
    RFC := Qry.Querry.FieldByName('RFC').AsString;
    Calle := Qry.Querry.FieldByName('CALLE').AsString;
    NumExt := Qry.Querry.FieldByName('NUMERO_EXTERIOR').AsString;
    NumInt := Qry.Querry.FieldByName('NUMERO_INTERIOR').AsString;
    Colonia := Qry.Querry.FieldByName('COLONIA').AsString;
    Mun := Qry.Querry.FieldByName('MUNICIPIO_DELEGACION').AsString;
    Estado := Qry.Querry.FieldByName('ESTADO').AsString;
    Pais := Qry.Querry.FieldByName('PAIS').AsString;
    CP := Qry.Querry.FieldByName('CP').AsString;
    Telefono := Qry.Querry.FieldByName('TELEFONO').AsString;
    Celular := Qry.Querry.FieldByName('CELULAR').AsString;
    Mail := Qry.Querry.FieldByName('EMAIL').AsString;
end;

Constructor TClient.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TClient.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.

