object ItemEditaF: TItemEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Item Edita'
  ClientHeight = 240
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 240
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 964
    ExplicitHeight = 231
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 822
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 964
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 49
      Width = 822
      Height = 116
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 964
      ExplicitHeight = 107
      object PanelItemDatos: TPanel
        Left = 0
        Top = 0
        Width = 822
        Height = 116
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 964
        ExplicitHeight = 107
        object Label2: TLabel
          Left = 16
          Top = 50
          Width = 65
          Height = 15
          Caption = 'Descripcion:'
        end
        object Label1: TLabel
          Left = 16
          Top = 25
          Width = 32
          Height = 15
          Caption = 'Clave:'
        end
        object EditRFC: TEdit
          Left = 96
          Top = 22
          Width = 209
          Height = 23
          TabOrder = 0
        end
        object EditRazonSocial: TEdit
          Left = 96
          Top = 51
          Width = 209
          Height = 23
          TabOrder = 1
        end
        object BuscarGuardar: TButton
          Left = 425
          Top = 18
          Width = 152
          Height = 32
          Caption = 'Guardar'
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 165
      Width = 822
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 156
      ExplicitWidth = 964
      object ButtonCerrar: TButton
        Left = 303
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
