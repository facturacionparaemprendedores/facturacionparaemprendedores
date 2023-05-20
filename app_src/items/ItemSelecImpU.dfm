object ItemSelecImpF: TItemSelecImpF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selecciona Impuesto'
  ClientHeight = 581
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object PanelHoldAll: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 581
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 668
    ExplicitHeight = 563
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 678
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 668
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 57
      Width = 678
      Height = 449
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 668
      ExplicitHeight = 431
      object GroupBox6: TGroupBox
        Left = 14
        Top = 6
        Width = 651
        Height = 123
        Caption = 'Impuesto'
        TabOrder = 0
        object Label38: TLabel
          Left = 15
          Top = 60
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object Label39: TLabel
          Left = 15
          Top = 90
          Width = 74
          Height = 15
          Caption = 'Tasa o Cuota :'
        end
        object LabelImpuestoImpuesto: TLabel
          Left = 110
          Top = 60
          Width = 25
          Height = 15
          Caption = '-----'
        end
        object LabelImpuestoTasaOCuota: TLabel
          Left = 110
          Top = 90
          Width = 40
          Height = 15
          Caption = '--------'
        end
        object Label37: TLabel
          Left = 15
          Top = 31
          Width = 53
          Height = 15
          Caption = 'Impuesto:'
        end
        object EditImpuestoNombre: TEdit
          Left = 110
          Top = 28
          Width = 223
          Height = 23
          TabOrder = 0
        end
        object ButtonImpuestoBusca: TButton
          Left = 359
          Top = 26
          Width = 95
          Height = 27
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = ButtonImpuestoBuscaClick
        end
        object ButtonImpuestoUsar: TButton
          Left = 500
          Top = 26
          Width = 95
          Height = 27
          Caption = 'Usar'
          TabOrder = 2
          OnClick = ButtonImpuestoUsarClick
        end
      end
      object GridImpuestos: TStringGrid
        Left = 14
        Top = 152
        Width = 651
        Height = 309
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
        TabOrder = 1
        OnClick = GridImpuestosClick
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 506
      Width = 678
      Height = 75
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 488
      ExplicitWidth = 668
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
