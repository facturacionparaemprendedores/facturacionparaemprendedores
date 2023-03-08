unit Config;

interface

uses
  Forms, Windows, ActiveX, shlobj, ShellAPI, SysUtils, Registry, IniFiles,
  Dialogs;

Const
  AppName = 'facturacionparaemprendedores';

  FDBNAME = 'FACTEMPRENDE.FDB';

Type
  TConfig = Class(TObject)
  Private
    function GetAppVersion: string;

    function GetAppPath: string;

    function GetDirUserDocs: string;
    function GetDirUserDocsApp: string;
    function GetDirUserDocsAppCFDI: string;

    function GetDirUserLocalAppData: string;
    function GetDirUserLocalAppDataApp: string;
    function GetDirUserLocalAppDataRoaming: string;
    function GetDirUserLocalAppDataRoamingApp: string;
    function GetDirUserLocalAppDataRoamingAppDB: string;
    function GetDirUserLocalAppDataRoamingAppCertSAT: string;
    function GetDirUserLocalAppDataRoamingAppCertPAC: string;



  Public
    FDB :string;
    FDBHost: string;
    FDBPort: string;
    FDBUserName: string;
    FDBPassword: string;

    Constructor Create; virtual;
    Destructor Destroy; override;

    procedure CreateDirs;

    procedure ReadDBConfig;

  Public

  Published
    property AppPath: string read GetAppPath;

    property DirUserDocs: string read GetDirUserDocs;
    property DirUserDocsApp: string read GetDirUserDocsApp;
    property DirUserDocsAppCFDI: string read GetDirUserDocsAppCFDI;

    property DirUserLocalAppData: string read GetDirUserLocalAppData;
    property DirUserLocalAppDataApp: string read GetDirUserLocalAppDataApp;
    property DirUserLocalAppDataRoaming    : string read GetDirUserLocalAppDataRoaming;
    property DirUserLocalAppDataRoamingApp : string read GetDirUserLocalAppDataRoamingApp;
    property DirUserLocalAppDataRoamingAppDB : string read GetDirUserLocalAppDataRoamingAppDB;
    property DirUserLocalAppDataRoamingAppCertSAT: string read GetDirUserLocalAppDataRoamingAppCertSAT;
    property DirUserLocalAppDataRoamingAppCertPAC: string read GetDirUserLocalAppDataRoamingAppCertPAC;

end;

implementation

function GetSystemPath(Folder: integer): string;
var
  PIDL: PItemIDList;
  Path: PChar;
  AMalloc: IMalloc;
begin
  Path := StrAlloc(MAX_PATH);
  SHGetSpecialFolderLocation(Application.Handle, Folder, PIDL);
  if SHGetPathFromIDList(PIDL, Path) then
    Result := Path;
  SHGetMalloc(AMalloc);
  AMalloc.Free(PIDL);
  StrDispose(Path);
end;

Constructor TConfig.Create;
begin
  Inherited Create;
  CreateDirs;
  ReadDBConfig;
end;

destructor TConfig.Destroy;
begin
  Inherited Destroy;
end;


function TConfig.GetAppPath;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function TConfig.GetDirUserDocs: string;
begin
  Result := GetSystemPath(CSIDL_PERSONAL); // documentos
end;

function TConfig.GetDirUserLocalAppData: string;
begin
  Result := GetSystemPath(CSIDL_LOCAL_APPDATA);
end;

function TConfig.GetDirUserLocalAppDataApp: string;
begin
  Result := IncludeTrailingPathDelimiter(GetDirUserLocalAppData) + AppName;
end;

function TConfig.GetDirUserLocalAppDataRoaming: string;
var
  PIDL: PItemIDList;
  Path: PChar;
  PathRoamming: string;
begin
  Result := '';
  SHGetSpecialFolderLocation(0, CSIDL_APPDATA, PIDL);
  Path := StrAlloc(MAX_PATH);
  if SHGetPathFromIDList(PIDL, Path) then
    PathRoamming := Path
  Else
    StrDispose(Path);

  Result := PathRoamming;

end;

function TConfig.GetDirUserLocalAppDataRoamingApp: string;
begin
  Result := IncludeTrailingPathDelimiter(GetDirUserLocalAppDataRoaming)    + AppName;
end;


function TConfig.GetDirUserLocalAppDataRoamingAppDB: string;
begin
  Result := IncludeTrailingPathDelimiter(GetDirUserLocalAppDataRoamingApp)    + 'DB';
end;


function TConfig.GetDirUserLocalAppDataRoamingAppCertSAT: string;
begin
  Result := IncludeTrailingPathDelimiter(GetDirUserLocalAppDataRoamingApp)    + 'CERTSAT';
end;



function TConfig.GetDirUserLocalAppDataRoamingAppCertPAC: string;
begin
  Result := IncludeTrailingPathDelimiter(GetDirUserLocalAppDataRoamingApp)    + 'CERTPAC';
end;



function TConfig.GetDirUserDocsApp: string;
begin
  Result :=IncludeTrailingPathDelimiter( GetDirUserDocs) + AppName;
end;

function TConfig.GetDirUserDocsAppCFDI:string;
begin
  Result :=IncludeTrailingPathDelimiter( GetDirUserDocsApp) + 'CFDI';
end;

function TConfig.GetAppVersion: string;
begin
  result := IntToStr(GetFileVersion(Application.ExeName));
end;

procedure TConfig.ReadDBConfig;
begin
  FDB := IncludeTrailingPathDelimiter(GetDirUserLocalAppDataRoamingAppDB) + FDBNAME ;
  FDBHost       := 'localhost';
  FDBPort       := '3050';
  FDBUserName   := 'sysdba';
  FDBPassword   := 'a2210';

end;


procedure TConfig.CreateDirs;
begin
  try
    if not directoryexists(GetDirUserDocsApp) then
      CreateDir(GetDirUserDocsApp);
  except
  end;

  try
    if not directoryexists(GetDirUserDocsAppCFDI) then
      CreateDir(GetDirUserDocsAppCFDI);
  except
  end;


  try
    if not directoryexists(GetDirUserLocalAppDataRoamingApp) then
      CreateDir(GetDirUserLocalAppDataRoamingApp);
  except
  end;

  try
    if not directoryexists(GetDirUserLocalAppDataRoamingAppDB) then
      CreateDir(GetDirUserLocalAppDataRoamingAppDB);
  except
  end;

  try
    if not directoryexists(GetDirUserLocalAppDataRoamingAppCertSAT) then
      CreateDir(GetDirUserLocalAppDataRoamingAppCertSAT);
  except
  end;

  try
    if not directoryexists(GetDirUserLocalAppDataRoamingAppCertPAC) then
      CreateDir(GetDirUserLocalAppDataRoamingAppCertPAC);
  except
  end;

end;

end.
