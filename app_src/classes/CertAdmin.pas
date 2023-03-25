unit CertAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TCertAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Cert_Cer: string;
    Cert_Key: string;
    Cert_Pass: string;
    Cert_Activo: Boolean;
    Id_Emp: Integer;

    Qry: TQry;

    procedure CreateNew(Cert: string; Key: string; Pass: string; Activo: Boolean);
    procedure Update(Cert: string; Key: string; Pass: string; Activo: Boolean);
    procedure Delete();

    procedure GetCerts();
    procedure GetCertByID(Id:Integer);
    procedure GetCertByName(Nombre: string);

    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TCertAdmin.CreateNew(Cert: string; Key: string; Pass: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO CERTIFICADOS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' CERT_CER, CERT_KEY, CERT_PASS, CERT_ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :CERT_CER, :CERT_KEY, :CERT_PASS, :CERT_ACTIVO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('CERT_CER').AsString := Cert;
  Qry.Querry.ParamByName('CERT_KEY').AsString := Key;
  Qry.Querry.ParamByName('CERT_PASS').AsString := Pass;
  Qry.Querry.ParamByName('CERT_ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TCertAdmin.Update(Cert: string; Key: string; Pass: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE CERTIFICADOS ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' CERT_CER = :CERT_CER, CERT_KEY = :CERT_KEY, CERT_PASS = :CERT_PASS, CERT_ACTIVO = :CERT_ACTIVO, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('CERT_CER').AsString := Cert;
  Qry.Querry.ParamByName('CERT_KEY').AsString := Key;
  Qry.Querry.ParamByName('CERT_PASS').AsString := Pass;
  Qry.Querry.ParamByName('CERT_ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TCertAdmin.Delete();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM CERTIFICADOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;


procedure TCertAdmin.GetCerts();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, CERT_CER, CERT_KEY, CERT_PASS, CERT_ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM CERTIFICADOS ');
  Qry.Querry.Open();

end;

procedure TCertAdmin.GetCertByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, CERT_CER, CERT_KEY, CERT_PASS, CERT_ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(' FROM CERTIFICADOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

    Id := Qry.Querry.FieldByName('ID').AsInteger;
    Cert_Cer := Qry.Querry.FieldByName('CERT_CER').AsString;
    Cert_Key := Qry.Querry.FieldByName('CERT_KEY').AsString;
    Cert_Pass := Qry.Querry.FieldByName('CERT_PASS').AsString;
    Cert_Activo := Qry.Querry.FieldByName('CERT_ACTIVO').AsBoolean;
    Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TCertAdmin.GetCertByName(Nombre: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, CERT_CER, CERT_KEY, CERT_PASS, CERT_ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(' FROM CERTIFICADOS ');
  Qry.Querry.SQL.Add(' WHERE NOMBRE LIKE :NOMBRE' );

  Qry.Querry.ParamByName('NOMBRE').AsString :=  '%' + Nombre +'%';

  Qry.Querry.Open();

    Id := Qry.Querry.FieldByName('ID').AsInteger;
    Cert_Cer := Qry.Querry.FieldByName('CERT_CER').AsString;
    Cert_Key := Qry.Querry.FieldByName('CERT_KEY').AsString;
    Cert_Pass := Qry.Querry.FieldByName('CERT_PASS').AsString;
    Cert_Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
    Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;


end;

Constructor TCertAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TCertAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.
