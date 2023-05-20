unit InformacionAduanera;



interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Config, Qry;


type
  TinformacionAduanera = class(TObject)
  private
    { Private declarations }
  public
    { Public declarations }
    Id: Integer;
    NumeroPedimento: string;
    Id_Emp: Integer;

    Qry: TQry;

    procedure New(NumeroPedimento: string);
    procedure GetByNumeroPedimento(NumPedimento: string);

    procedure Update(NumeroPedimento: string);
    procedure Delete;
    procedure Get;
    procedure GetByID(Id:Integer);
    Constructor Create; virtual;
    Destructor Destroy; override;
  published

  end;

implementation


procedure TinformacionAduanera.New(NumeroPedimento: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('INSERT INTO INFORMACION_ADUANERA');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' NUMEROPEDIMENTO, ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.SQL.Add(' VALUES ');
  Qry.Querry.SQL.Add('(');
  Qry.Querry.SQL.Add(' :NUMEROPEDIMENTO, :ID_EMP');
  Qry.Querry.SQL.Add(')');
  Qry.Querry.ParamByName('NUMEROPEDIMENTO').AsString := NumeroPedimento;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;

  Qry.Querry.ExecSQL;

end;

procedure TinformacionAduanera.GetByNumeroPedimento(NumPedimento: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, NUMEROPEDIMENTO, ID_EMP  ');
  Qry.Querry.SQL.Add(' FROM INFORMACION_ADUANERA ');
  Qry.Querry.SQL.Add(' WHERE NUMEROPEDIMENTO LIKE :NUMEROPEDIMENTO' );

  Qry.Querry.ParamByName('NUMEROPEDIMENTO').AsString :=  '%' + NumPedimento +'%';

  Qry.Querry.Open();

  Id               := Qry.Querry.FieldByName('ID').AsInteger;
  NumeroPedimento  := Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString;
  Id_Emp           := Qry.Querry.FieldByName('ID_EMP').AsInteger;

end;

procedure TinformacionAduanera.Update(NumeroPedimento: string);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('UPDATE INFORMACION_ADUANERA');
  Qry.Querry.SQL.Add('SET ');
  Qry.Querry.SQL.Add(' NUMEROPEDIMENTO = :NUMEROPEDIMENTO,');
  Qry.Querry.SQL.Add(' ID_EMP = :ID_EMP ');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;
  Qry.Querry.ParamByName('NUMEROPEDIMENTO').AsString := NumeroPedimento;
  Qry.Querry.ParamByName('ID_EMP').AsInteger := 1;
  Qry.Querry.ExecSQL;
end;





procedure TinformacionAduanera.Delete;
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('DELETE FROM INFORMACION_ADUANERA');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');
  Qry.Querry.ParamByName('ID').AsInteger := Id;
  Qry.Querry.ExecSQL;
end;

procedure TinformacionAduanera.Get();
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, ');
  Qry.Querry.SQL.Add(' NUMEROPEDIMENTO, ');
  Qry.Querry.SQL.Add(' ID_EMP ');
  Qry.Querry.SQL.Add(' FROM INFORMACION_ADUANERA');
  Qry.Querry.Open();
end;

procedure TinformacionAduanera.GetByID(Id:Integer);
begin
  Qry.Querry.Close;
  Qry.Querry.SQL.Clear;
  Qry.Querry.SQL.Add('SELECT ID, ');
  Qry.Querry.SQL.Add(' NUMEROPEDIMENTO, ID_EMP');
  Qry.Querry.SQL.Add(' FROM INFORMACION_ADUANERA');
  Qry.Querry.SQL.Add(' WHERE ID = :ID');

  Qry.Querry.ParamByName('ID').AsInteger := Id;

  Qry.Querry.Open();


  Id                := Qry.Querry.FieldByName('ID').AsInteger;
  NumeroPedimento   := Qry.Querry.FieldByName('NUMEROPEDIMENTO').AsString;
  Id_Emp            := Qry.Querry.FieldByName('ID_EMP').AsInteger;
end;



Constructor TinformacionAduanera.Create;
begin
  Inherited Create;

  Qry := TQry.Create;

end;

Destructor TinformacionAduanera.Destroy;
begin
  Inherited Destroy;
   Qry.Free
end;

end.
