object SerieRegistraF: TSerieRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Serie Registra'
  ClientHeight = 352
  ClientWidth = 568
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
    Width = 568
    Height = 352
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 558
    ExplicitHeight = 334
    object PanelBottom: TPanel
      Left = 0
      Top = 305
      Width = 568
      Height = 47
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 287
      ExplicitWidth = 558
      object ButtonCancelar: TButton
        Left = 424
        Top = 5
        Width = 84
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = ButtonCancelarClick
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 0
      Width = 568
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 558
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 568
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 558
        DesignSize = (
          568
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 520
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 510
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
      Width = 568
      Height = 203
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 558
      ExplicitHeight = 185
      object GroupBox1: TGroupBox
        Left = 8
        Top = 9
        Width = 545
        Height = 178
        TabOrder = 0
        object Label1: TLabel
          Left = 40
          Top = 55
          Width = 28
          Height = 15
          Caption = 'Serie:'
        end
        object Label2: TLabel
          Left = 40
          Top = 93
          Width = 29
          Height = 15
          Caption = 'Folio:'
        end
        object ButtonRegistraSerie: TButton
          Left = 320
          Top = 44
          Width = 180
          Height = 25
          Caption = 'Guardar'
          TabOrder = 0
          OnClick = ButtonRegistraSerieClick
        end
        object EditSerie: TEdit
          Left = 96
          Top = 45
          Width = 177
          Height = 23
          TabOrder = 1
        end
        object EditSerieFolio: TEdit
          Left = 96
          Top = 85
          Width = 177
          Height = 23
          TabOrder = 2
        end
        object CheckBoxSerieActiva: TCheckBox
          Left = 40
          Top = 136
          Width = 97
          Height = 17
          Caption = 'Serie Activa'
          TabOrder = 3
        end
      end
    end
  end
end
