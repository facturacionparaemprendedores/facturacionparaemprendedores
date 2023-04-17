object TimbreSeleccionaPacF: TTimbreSeleccionaPacF
  Left = 0
  Top = 0
  Caption = 'Selecciona Pac'
  ClientHeight = 811
  ClientWidth = 816
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
    Width = 816
    Height = 811
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 806
    ExplicitHeight = 793
    object PanelBottom: TPanel
      Left = 0
      Top = 758
      Width = 816
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 740
      ExplicitWidth = 806
      object ButtonCancelar: TButton
        Left = 710
        Top = -2
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 816
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 806
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 100
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 806
        DesignSize = (
          816
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 768
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 758
          object LabelMesage: TLabel
            Left = 16
            Top = 16
            Width = 111
            Height = 25
            Caption = 'LabelMesage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -18
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object PanelMiddle: TPanel
      Left = 0
      Top = 102
      Width = 816
      Height = 656
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 806
      ExplicitHeight = 638
      DesignSize = (
        816
        656)
      object GroupBox7: TGroupBox
        Left = 22
        Top = 21
        Width = 770
        Height = 92
        TabOrder = 0
        object Label43: TLabel
          Left = 19
          Top = 20
          Width = 25
          Height = 15
          Caption = 'PAC:'
        end
        object EditPacNombre: TEdit
          Left = 99
          Top = 17
          Width = 398
          Height = 23
          TabOrder = 0
        end
        object ButtonPacBuscarPorPac: TButton
          Left = 528
          Top = 20
          Width = 89
          Height = 35
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = ButtonPacBuscarPorPacClick
        end
      end
      object GroupBox8: TGroupBox
        Left = 22
        Top = 136
        Width = 770
        Height = 121
        Caption = 'PAC Seleccionado'
        TabOrder = 1
        object Label44: TLabel
          Left = 19
          Top = 41
          Width = 25
          Height = 15
          Caption = 'PAC:'
        end
        object LabelPACNombre: TLabel
          Left = 116
          Top = 41
          Width = 60
          Height = 15
          Caption = '------------'
        end
        object Label46: TLabel
          Left = 19
          Top = 81
          Width = 88
          Height = 15
          Caption = 'WebService URL:'
        end
        object LabelPACURLWebService: TLabel
          Left = 116
          Top = 81
          Width = 55
          Height = 15
          Caption = '-----------'
        end
        object ButtonPacUsar: TButton
          Left = 528
          Top = 44
          Width = 89
          Height = 35
          Caption = 'Usar'
          TabOrder = 0
          OnClick = ButtonPacUsarClick
        end
      end
      object GridPacs: TStringGrid
        Left = 22
        Top = 280
        Width = 770
        Height = 353
        Anchors = [akLeft, akTop, akRight, akBottom]
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
        TabOrder = 2
        OnClick = GridPacsClick
        ExplicitWidth = 760
        ExplicitHeight = 335
      end
    end
  end
end
