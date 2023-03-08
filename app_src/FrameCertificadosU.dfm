object FrameCertificados: TFrameCertificados
  Left = 0
  Top = 0
  Width = 1241
  Height = 863
  TabOrder = 0
  PixelsPerInch = 96
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 863
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -466
    ExplicitTop = -427
    ExplicitWidth = 1106
    ExplicitHeight = 907
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1241
      Height = 97
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1106
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 97
      Width = 1241
      Height = 691
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1106
      ExplicitHeight = 735
      object GroupBox1: TGroupBox
        Left = 40
        Top = 6
        Width = 897
        Height = 361
        Caption = 'Certificados SAT'
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 48
          Width = 117
          Height = 25
          Caption = 'Certificado .cer'
        end
        object Label2: TLabel
          Left = 40
          Top = 144
          Width = 121
          Height = 25
          Caption = 'Certificado .key'
        end
        object EditCertCer: TEdit
          Left = 40
          Top = 85
          Width = 537
          Height = 33
          TabOrder = 0
          Text = 'EditCertCer'
        end
        object EditCertKey: TEdit
          Left = 40
          Top = 175
          Width = 545
          Height = 33
          TabOrder = 2
          Text = 'EditCertKey'
        end
        object ButtonGuardarCert: TButton
          Left = 608
          Top = 248
          Width = 180
          Height = 25
          Caption = 'Guardar'
          TabOrder = 4
          OnClick = ButtonGuardarCertClick
        end
        object ButtonSelectCertCer: TButton
          Left = 608
          Top = 89
          Width = 180
          Height = 25
          Caption = 'Selecciona Cer'
          TabOrder = 1
          OnClick = ButtonSelectCertCerClick
        end
        object ButtonSelectCertKey: TButton
          Left = 608
          Top = 175
          Width = 180
          Height = 25
          Caption = 'Selecciona Key'
          TabOrder = 3
          OnClick = ButtonSelectCertKeyClick
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 788
      Width = 1241
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 832
      ExplicitWidth = 1106
      object ButtonCerrar: TButton
        Left = 1207
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
      end
    end
  end
  object OpenDialogCer: TOpenDialog
    Filter = 'Archivos Cer|*.cer|Todos los Archivos|*.*'
    Left = 888
    Top = 169
  end
  object OpenDialogKey: TOpenDialog
    Filter = 'Archivos Key|*.key|Todos los Archivos|*.*'
    Left = 904
    Top = 281
  end
end
