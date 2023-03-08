object BdConectionF: TBdConectionF
  Left = 0
  Top = 0
  Caption = 'BdConectionF'
  ClientHeight = 510
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 232
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 720
    Top = 216
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object BtnConectar: TButton
    Left = 304
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 0
    OnClick = BtnConectarClick
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 267
    Width = 345
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 544
    Top = 267
    Width = 345
    Height = 120
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 696
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Left = 424
    Top = 184
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 560
    Top = 248
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES;')
    Left = 480
    Top = 128
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 264
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 600
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 376
    Top = 440
  end
  object DataSource2: TDataSource
    Left = 760
    Top = 464
  end
end
