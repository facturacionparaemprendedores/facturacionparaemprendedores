object ImpuestoEditaF: TImpuestoEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impuesto Edita'
  ClientHeight = 308
  ClientWidth = 510
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
    Width = 510
    Height = 308
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 500
    ExplicitHeight = 394
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 510
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 500
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 510
      Height = 199
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 500
      ExplicitHeight = 262
      object GroupBoxImpuestos: TGroupBox
        Left = 15
        Top = 30
        Width = 473
        Height = 155
        Caption = 'Impuesto'
        TabOrder = 0
        object Label3: TLabel
          Left = 24
          Top = 31
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object Label1: TLabel
          Left = 24
          Top = 65
          Width = 73
          Height = 15
          Caption = 'Tipo o Factor:'
        end
        object Label2: TLabel
          Left = 24
          Top = 103
          Width = 71
          Height = 15
          Caption = 'Tasa o Cuota:'
        end
        object ButtonGuardar: TButton
          Left = 317
          Top = 34
          Width = 132
          Height = 25
          Caption = 'Guardar'
          TabOrder = 3
          OnClick = ButtonGuardarClick
        end
        object EditImpuestoImpuesto: TEdit
          Left = 120
          Top = 28
          Width = 161
          Height = 23
          TabOrder = 0
        end
        object EditImpuestoTipoOFactor: TEdit
          Left = 120
          Top = 62
          Width = 161
          Height = 23
          TabOrder = 1
        end
        object EditImpuestoTasaOCuota: TEdit
          Left = 120
          Top = 100
          Width = 161
          Height = 23
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 256
      Width = 510
      Height = 52
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 360
      object ButtonCancelar: TButton
        Left = 413
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
