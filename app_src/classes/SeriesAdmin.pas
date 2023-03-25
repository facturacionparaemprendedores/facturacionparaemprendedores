unit SeriesAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TSeriesAdmin = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id : Integer;
    Serie: string;
    Folio : Integer;
    Activo: Boolean;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(Serie: string; Folio: Integer; Activo: Boolean);
    procedure Update(Serie: string; Folio: Integer; Activo: Boolean);
    procedure Delete;
    procedure GetAll();
    procedure GetByID(Id:Integer);
    procedure GetBySerie(Serie: string);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TSeriesAdmin.New(Serie: string; Folio: Integer; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO SERIES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' SERIE, FOLIO, ACTIVO, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :SERIE, :FOLIO, :ACTIVO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('SERIE').AsString := Serie;
  Qry.Querry.ParamByName('FOLIO').AsInteger := Folio;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;


procedure TSeriesAdmin.Update(Serie: string; Folio: Integer; Activo: Boolean);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE SERIES ');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add('SERIE = :SERIE, FOLIO = :FOLIO, ACTIVO = :ACTIVO, ID_EMP = :ID_EMP');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('SERIE').AsString := Serie;
  Qry.Querry.ParamByName('FOLIO').AsInteger := Folio;
  Qry.Querry.ParamByName('ACTIVO').AsBoolean := Activo;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TSeriesAdmin.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM SERIES ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.ExecSQL;
end;

procedure TSeriesAdmin.GetAll;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, SERIE, FOLIO, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add('FROM SERIES ');
  Qry.Querry.Open();

end;

procedure TSeriesAdmin.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, SERIE, FOLIO, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM SERIES ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Serie := Qry.Querry.FieldByName('SERIE').AsString;
  Folio := Qry.Querry.FieldByName('FOLIO').AsInteger;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TSeriesAdmin.GetBySerie(Serie: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, SERIE, FOLIO, ACTIVO, ID_EMP ');
  Qry.Querry.SQL.Add(' FROM SERIES ');
  Qry.Querry.SQL.Add(' WHERE SERIE LIKE :SERIE' );

  Qry.Querry.ParamByName('SERIE').AsString :=  '%' + Serie +'%';

  Qry.Querry.Open();

  Id := Qry.Querry.FieldByName('ID').AsInteger;
  Serie := Qry.Querry.FieldByName('SERIE').AsString;
  Folio := Qry.Querry.FieldByName('FOLIO').AsInteger;
  Activo := Qry.Querry.FieldByName('ACTIVO').AsBoolean;
  Id_Emp := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;


Constructor TSeriesAdmin.Create;
begin
  Inherited Create;
  Qry := TQry.Create;
  Id := 0;
end;

Destructor TSeriesAdmin.Destroy;
begin
  Inherited Destroy;
  Qry.Free
end;

end.