object DMF: TDMF
  Height = 302
  Width = 584
  PixelsPerInch = 144
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\devx1\AppData\Roaming\facturacionparaemprended' +
        'ores\DB\FACTEMPRENDE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'PageSize=16384'
      'DriverID=FB')
    Left = 136
    Top = 88
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 120
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 192
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 368
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 184
  end
end
