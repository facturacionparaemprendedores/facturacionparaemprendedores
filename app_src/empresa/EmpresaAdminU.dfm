object EmpresaAdminF: TEmpresaAdminF
  Left = 0
  Top = 0
  Caption = 'Datos de la Empresa'
  ClientHeight = 745
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 745
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 1007
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 33
      Width = 1007
      Height = 637
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 24
        Top = 33
        Width = 913
        Height = 598
        Caption = 'Cliente Seleccionado'
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 42
          Width = 33
          Height = 15
          Caption = 'R.F.C.:'
        end
        object Label3: TLabel
          Left = 24
          Top = 74
          Width = 69
          Height = 15
          Caption = 'Razon Social:'
        end
        object LabelRFCCliente: TLabel
          Left = 160
          Top = 42
          Width = 86
          Height = 15
          Caption = 'LabelRFCCliente'
        end
        object LabelRazonSocialCliente: TLabel
          Left = 160
          Top = 74
          Width = 34
          Height = 15
          Caption = 'Label5'
        end
        object ButtonEditarEmpresa: TButton
          Left = 752
          Top = 38
          Width = 115
          Height = 25
          Caption = 'Editar Empresa'
          TabOrder = 0
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 670
      Width = 1007
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object ButtonCerrar: TButton
        Left = 1144
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
      end
    end
  end
end
