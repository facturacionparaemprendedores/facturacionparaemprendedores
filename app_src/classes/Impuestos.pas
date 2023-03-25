unit Impuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TImpuestos = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Base: string;
    Impuesto: string;
    TipoFactor: string;
    TasaOCuota: Double;
    Importe: Double;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(Base: string; Impuesto: string; TipoFactor: string; TasaOCuota: Double; Importe: Double);
    procedure Update(Cert: string; Key: string; Pass: string; Activo: Boolean);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetbyName(Nombre: string);
    procedure GetbyClave(Clave: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TImpuestos.New(Base: string; Impuesto: string; TipoFactor: string; TasaOCuota: Double; Importe: Double);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO IMPUESTOS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :BASE, IMPUESTO, :TIPOFACTOR, :TASAOCUOTA, :IMPORTE, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('BASE').AsString := Base;
  Qry.Querry.ParamByName('IMPUESTO').AsString := Impuesto;
  Qry.Querry.ParamByName('TIPOFACTOR').AsString := TipoFactor;
  Qry.Querry.ParamByName('TASAOCUOTA').AsFloat := TasaOCuota;
  Qry.Querry.ParamByName('IMPORTE').AsFloat := Importe;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TImpuestos.Update(Cert: string; Key: string; Pass: string; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE IMPUESTOS ');
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

procedure TImpuestos.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TImpuestos.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.Open();

end;

procedure TImpuestos.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
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

procedure TImpuestos.GetByName(Nombre: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
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

procedure TImpuestos.GetbyClave(Clave: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE NOMBRE LIKE :NOMBRE' );

  Qry.Querry.ParamByName('NOMBRE').AsString :=  '%' + Clave +'%';

  Qry.Querry.Open();

    Id := Qry.Querry.FieldByName('ID').AsInteger;
    Cert_Cer := Qry.Querry.FieldByName('CERT_CER').AsString;
    Cert_Key := Qry.Querry.FieldByName('CERT_KEY').AsString;
    Cert_Pass := Qry.Querry.FieldByName('CERT_PASS').AsString;
    Cert_Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
    Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;
end;

Constructor TImpuestos.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TImpuestos.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.