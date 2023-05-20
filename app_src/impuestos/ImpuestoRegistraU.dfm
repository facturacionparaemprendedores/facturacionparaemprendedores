object ImpuestoRegistraF: TImpuestoRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impuesto Registra'
  ClientHeight = 322
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
    Height = 322
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
      ExplicitTop = -6
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 510
      Height = 190
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 500
      ExplicitHeight = 262
      object GroupBoxImpuestos: TGroupBox
        Left = 15
        Top = 30
        Width = 473
        Height = 147
        Caption = 'Impuesto'
        TabOrder = 0
        object Label3: TLabel
          Left = 24
          Top = 29
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object Label1: TLabel
          Left = 24
          Top = 63
          Width = 73
          Height = 15
          Caption = 'Tipo o Factor:'
        end
        object Label2: TLabel
          Left = 24
          Top = 101
          Width = 71
          Height = 15
          Caption = 'Tasa o Cuota:'
        end
        object BuscarRegistra: TButton
          Left = 325
          Top = 26
          Width = 132
          Height = 25
          Caption = 'Registra'
          TabOrder = 3
          OnClick = BuscarRegistraClick
        end
        object EditImpuestoImpuesto: TEdit
          Left = 120
          Top = 26
          Width = 161
          Height = 23
          TabOrder = 0
        end
        object EditImpuestoTipoOFactor: TEdit
          Left = 120
          Top = 60
          Width = 161
          Height = 23
          TabOrder = 1
        end
        object EditImpuestoTasaOCuota: TEdit
          Left = 120
          Top = 98
          Width = 161
          Height = 23
          TabOrder = 2
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 247
      Width = 510
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 319
      ExplicitWidth = 500
      object ButtonCancelar: TButton
        Left = 405
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
