object ImpuestoEditaF: TImpuestoEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impuesto Edita'
  ClientHeight = 412
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
    Height = 412
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 935
    ExplicitHeight = 278
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 510
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 935
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 510
      Height = 280
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 935
      ExplicitHeight = 146
      object GroupBoxImpuestos: TGroupBox
        Left = 15
        Top = 30
        Width = 473
        Height = 224
        Caption = 'Impuesto'
        TabOrder = 0
        object Label4: TLabel
          Left = 24
          Top = 35
          Width = 27
          Height = 15
          Caption = 'Base:'
        end
        object Label3: TLabel
          Left = 24
          Top = 64
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object Label1: TLabel
          Left = 24
          Top = 98
          Width = 73
          Height = 15
          Caption = 'Tipo o Factor:'
        end
        object Label2: TLabel
          Left = 24
          Top = 136
          Width = 71
          Height = 15
          Caption = 'Tasa o Cuota:'
        end
        object Label5: TLabel
          Left = 24
          Top = 176
          Width = 45
          Height = 15
          Caption = 'Importe:'
        end
        object ButtonGuardar: TButton
          Left = 325
          Top = 26
          Width = 132
          Height = 25
          Caption = 'Guardar'
          TabOrder = 5
          OnClick = ButtonGuardarClick
        end
        object EditImpuestoImpuesto: TEdit
          Left = 120
          Top = 61
          Width = 161
          Height = 23
          TabOrder = 1
        end
        object EditImpuestoBase: TEdit
          Left = 120
          Top = 27
          Width = 161
          Height = 23
          TabOrder = 0
        end
        object EditImpuestoTipoOFactor: TEdit
          Left = 120
          Top = 95
          Width = 161
          Height = 23
          TabOrder = 2
        end
        object EditImpuestoTasaOCuota: TEdit
          Left = 120
          Top = 133
          Width = 161
          Height = 23
          TabOrder = 3
        end
        object EditImpuestoImporte: TEdit
          Left = 120
          Top = 173
          Width = 161
          Height = 23
          TabOrder = 4
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 337
      Width = 510
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 203
      ExplicitWidth = 935
      object ButtonCancelar: TButton
        Left = 405
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
