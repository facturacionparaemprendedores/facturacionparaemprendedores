object FrameAbout: TFrameAbout
  Left = 0
  Top = 0
  Width = 1125
  Height = 823
  TabOrder = 0
  PixelsPerInch = 96
  object GroupBox1: TGroupBox
    Left = 24
    Top = 32
    Width = 905
    Height = 449
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 341
      Height = 25
      Caption = 'Facturacion para Emprendedores Sitio Web'
    end
    object LabelWeb: TLabel
      Left = 32
      Top = 55
      Width = 416
      Height = 25
      Caption = 'http://www.facturacionparaemprendedores.com.mx/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LabelWebClick
    end
    object Label3: TLabel
      Left = 32
      Top = 86
      Width = 321
      Height = 25
      Caption = 'Facturacion para Emprendedores GitHub'
    end
    object LabelGit: TLabel
      Left = 32
      Top = 117
      Width = 660
      Height = 25
      Cursor = crHandPoint
      Caption = 
        'https://github.com/facturacionparaemprendedores/facturacionparae' +
        'mprendedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LabelGitClick
    end
    object Memo1: TMemo
      Left = 32
      Top = 192
      Width = 698
      Height = 169
      Lines.Strings = (
        
          'Facturacion para emprendedores, es una aplicacion opensource par' +
          'a facturar'
        
          'de acuerdo a la legislacion mexicana, tiene soporte para factura' +
          's CFDI 4.0'
        ''
        ''
        'Desarrollado en Delphi 11 Alexandria.')
      TabOrder = 0
    end
  end
end
