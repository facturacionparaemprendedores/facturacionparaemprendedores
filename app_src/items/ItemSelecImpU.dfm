object ItemSelecImpF: TItemSelecImpF
  Left = 0
  Top = 0
  Caption = 'Selecciona Impuesto'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 504
    ExplicitHeight = 403
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 628
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 510
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 628
      Height = 310
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 510
      ExplicitHeight = 280
      object GroupBox6: TGroupBox
        Left = 14
        Top = 22
        Width = 595
        Height = 139
        Caption = 'Impuesto'
        TabOrder = 0
        object Label38: TLabel
          Left = 16
          Top = 66
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object Label39: TLabel
          Left = 16
          Top = 90
          Width = 73
          Height = 15
          Caption = 'Tasa o Cuota :'
        end
        object LabelImpuestoImpuesto: TLabel
          Left = 152
          Top = 66
          Width = 25
          Height = 15
          Caption = '-----'
        end
        object LabelImpuestoTasaOCuota: TLabel
          Left = 152
          Top = 90
          Width = 40
          Height = 15
          Caption = '--------'
        end
        object Label37: TLabel
          Left = 14
          Top = 37
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object EditImpuestoNombre: TEdit
          Left = 82
          Top = 39
          Width = 223
          Height = 21
          TabOrder = 0
        end
        object ButtonImpuestoBusca: TButton
          Left = 311
          Top = 37
          Width = 95
          Height = 27
          Caption = 'Buscar'
          TabOrder = 1
        end
        object ButtonImpuestoUsar: TButton
          Left = 311
          Top = 85
          Width = 95
          Height = 27
          Caption = 'Usar'
          TabOrder = 2
        end
      end
      object GridImpuestos: TStringGrid
        Left = 14
        Top = 184
        Width = 595
        Height = 120
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
        TabOrder = 1
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 367
      Width = 628
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 337
      ExplicitWidth = 510
      object ButtonCancelar: TButton
        Left = 534
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
