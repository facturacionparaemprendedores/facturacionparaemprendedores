object ItemRegistraF: TItemRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Item Registra'
  ClientHeight = 229
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 229
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 307
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 957
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 49
      Width = 957
      Height = 105
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 183
      object PanelItemDatos: TPanel
        Left = 0
        Top = 0
        Width = 957
        Height = 105
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 183
        object Label2: TLabel
          Left = 48
          Top = 85
          Width = 65
          Height = 15
          Caption = 'Descripcion:'
        end
        object Label1: TLabel
          Left = 48
          Top = 38
          Width = 32
          Height = 15
          Caption = 'Clave:'
        end
        object EditRFC: TEdit
          Left = 184
          Top = 35
          Width = 465
          Height = 23
          TabOrder = 0
        end
        object EditRazonSocial: TEdit
          Left = 184
          Top = 82
          Width = 465
          Height = 23
          TabOrder = 1
        end
        object BuscarGuardar: TButton
          Left = 681
          Top = 25
          Width = 241
          Height = 42
          Caption = 'Guardar'
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 154
      Width = 957
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 232
      object ButtonCerrar: TButton
        Left = 847
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Cerrar'
        TabOrder = 0
        OnClick = ButtonCerrarClick
      end
    end
  end
end
