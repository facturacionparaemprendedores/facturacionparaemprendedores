unit ImpuestosAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TImpuestosAdmin = class(TObject)
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
    procedure Update(Base: string; Impuesto: string; TipoFactor: string; TasaOCuota: Double; Importe: Double);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetByImpuesto(Impuesto: string);
    procedure GetbyClave(Clave: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TImpuestosAdmin.New(Base: string; Impuesto: string; TipoFactor: string; TasaOCuota: Double; Importe: Double);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO IMPUESTOS ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :BASE, :IMPUESTO, :TIPOFACTOR, :TASAOCUOTA, :IMPORTE, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('BASE').AsString := Base;
  Qry.Querry.ParamByName('IMPUESTO').AsString := Impuesto;
  Qry.Querry.ParamByName('TIPOFACTOR').AsString := TipoFactor;
  Qry.Querry.ParamByName('TASAOCUOTA').AsFloat := TasaOCuota;
  Qry.Querry.ParamByName('IMPORTE').AsFloat := Importe;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TImpuestosAdmin.Update(Base: string; Impuesto: string; TipoFactor: string; TasaOCuota: Double; Importe: Double);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE IMPUESTOS ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add('BASE = :BASE, IMPUESTO = :IMPUESTO, TIPOFACTOR = :TIPOFACTOR, TASAOCUOTA = :TASAOCUOTA, IMPORTE = :IMPORTE, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('BASE').AsString := Base;
  Qry.Querry.ParamByName('IMPUESTO').AsString := Impuesto;
  Qry.Querry.ParamByName('TIPOFACTOR').AsString := TipoFactor;
  Qry.Querry.ParamByName('TASAOCUOTA').AsFloat := TasaOCuota;
  Qry.Querry.ParamByName('IMPORTE').AsFloat := Importe;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TImpuestosAdmin.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TImpuestosAdmin.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.Open();

end;

procedure TImpuestosAdmin.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Base := Qry.Querry.FieldByName('BASE').AsString;
  Impuesto := Qry.Querry.FieldByName('IMPUESTO').AsString;
  TipoFactor := Qry.Querry.FieldByName('TIPOFACTOR').AsString;
  TasaOCuota := Qry.Querry.FieldByName('TASAOCUOTA').AsFloat;
  Importe:= Qry.Querry.FieldByName('IMPORTE').AsFloat;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TImpuestosAdmin.GetByImpuesto(Impuesto: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE IMPUESTO LIKE :IMPUESTO' );

  Qry.Querry.ParamByName('IMPUESTO').AsString :=  '%' + Impuesto +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Base := Qry.Querry.FieldByName('BASE').AsString;
  Impuesto := Qry.Querry.FieldByName('IMPUESTO').AsString;
  TipoFactor := Qry.Querry.FieldByName('TIPOFACTOR').AsString;
  TasaOCuota := Qry.Querry.FieldByName('TASAOCUOTA').AsFloat;
  Importe:= Qry.Querry.FieldByName('IMPORTE').AsFloat;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TImpuestosAdmin.GetbyClave(Clave: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, BASE, IMPUESTO, TIPOFACTOR, TASAOCUOTA, IMPORTE, ID_EMP');
  Qry.Querry.SQL.Add(' FROM IMPUESTOS ');
  Qry.Querry.SQL.Add(' WHERE NOMBRE LIKE :NOMBRE' );

  Qry.Querry.ParamByName('NOMBRE').AsString :=  '%' + Clave +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Base := Qry.Querry.FieldByName('BASE').AsString;
  Impuesto := Qry.Querry.FieldByName('IMPUESTO').AsString;
  TipoFactor := Qry.Querry.FieldByName('TIPOFACTOR').AsString;
  TasaOCuota := Qry.Querry.FieldByName('TASAOCUOTA').AsFloat;
  Importe:= Qry.Querry.FieldByName('IMPORTE').AsFloat;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

Constructor TImpuestosAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TImpuestosAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.