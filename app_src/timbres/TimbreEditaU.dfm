object TimbreEditaF: TTimbreEditaF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Timbre Edita'
  ClientHeight = 427
  ClientWidth = 732
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
    Width = 732
    Height = 427
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 722
    ExplicitHeight = 409
    object PanelBottom: TPanel
      Left = 0
      Top = 374
      Width = 732
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 356
      ExplicitWidth = 722
      object ButtonCancelar: TButton
        Left = 614
        Top = 14
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
      Width = 732
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 722
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 100
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 722
        DesignSize = (
          732
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 684
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 674
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
      Width = 732
      Height = 272
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 722
      ExplicitHeight = 254
      object GroupBox1: TGroupBox
        Left = 24
        Top = 14
        Width = 690
        Height = 251
        Caption = 'Registrar Timbres por PAC'
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 40
          Width = 22
          Height = 15
          Caption = 'PAC'
        end
        object Label2: TLabel
          Left = 24
          Top = 80
          Width = 111
          Height = 15
          Caption = 'Timbres Comprados:'
        end
        object Label3: TLabel
          Left = 24
          Top = 128
          Width = 229
          Height = 15
          Caption = 'Avisar cuando queden menos Timbres que:'
        end
        object EditPAC: TEdit
          Left = 289
          Top = 37
          Width = 214
          Height = 23
          TabOrder = 0
        end
        object EditTimbresComprados: TEdit
          Left = 289
          Top = 77
          Width = 161
          Height = 23
          TabOrder = 1
        end
        object ButtonSelectPAC: TButton
          Left = 520
          Top = 36
          Width = 145
          Height = 25
          Caption = 'Selecciona PAC'
          TabOrder = 4
          OnClick = ButtonSelectPACClick
        end
        object ButtonGuarda: TButton
          Left = 536
          Top = 125
          Width = 129
          Height = 25
          Caption = 'Guarda'
          TabOrder = 5
          OnClick = ButtonGuardaClick
        end
        object CheckBoxActivo: TCheckBox
          Left = 289
          Top = 176
          Width = 97
          Height = 17
          Caption = 'Activo'
          TabOrder = 3
        end
        object EditTimbresAvisa: TEdit
          Left = 289
          Top = 125
          Width = 161
          Height = 23
          TabOrder = 2
        end
      end
    end
  end
end
