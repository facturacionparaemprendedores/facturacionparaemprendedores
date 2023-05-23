object ItemSelecInfoAduaneraF: TItemSelecInfoAduaneraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Concepto Seleccionar Informacion Aduanera Numero de Pedimento'
  ClientHeight = 789
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel70: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 789
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 916
    ExplicitHeight = 667
    object Panel71: TPanel
      Left = 0
      Top = 0
      Width = 754
      Height = 281
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 916
      object Panel72: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 281
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 916
        object Panel73: TPanel
          Left = 1
          Top = 1
          Width = 752
          Height = 279
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 914
          object GroupBox17: TGroupBox
            Left = 18
            Top = 50
            Width = 663
            Height = 119
            Caption = 'Informacion Aduanera'
            TabOrder = 0
            object Label65: TLabel
              Left = 19
              Top = 78
              Width = 124
              Height = 15
              Caption = 'Numero de Pedimento:'
            end
            object LabelNumeroPedimento: TLabel
              Left = 171
              Top = 78
              Width = 45
              Height = 15
              Caption = '---------'
            end
            object Label64: TLabel
              Left = 22
              Top = 30
              Width = 121
              Height = 15
              Caption = 'Numero de Pedimento'
            end
            object EditInfoAduaneraNumPedimento: TEdit
              Left = 158
              Top = 27
              Width = 211
              Height = 23
              TabOrder = 0
            end
            object ButtonBuscar: TButton
              Left = 386
              Top = 26
              Width = 103
              Height = 25
              Caption = 'Buscar'
              TabOrder = 1
              OnClick = ButtonBuscarClick
            end
            object ButtonUsar: TButton
              Left = 504
              Top = 26
              Width = 129
              Height = 25
              Caption = 'Usar'
              TabOrder = 2
              OnClick = ButtonUsarClick
            end
          end
        end
      end
    end
    object Panel75: TPanel
      Left = 0
      Top = 281
      Width = 754
      Height = 453
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 916
      ExplicitHeight = 311
      object GridInfoAduanera: TStringGrid
        Left = 19
        Top = 0
        Width = 712
        Height = 417
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
        TabOrder = 0
        OnClick = GridInfoAduaneraClick
      end
    end
    object Panel76: TPanel
      Left = 0
      Top = 734
      Width = 754
      Height = 55
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 630
      object ButtonCancelar: TButton
        Left = 656
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
  end
end
