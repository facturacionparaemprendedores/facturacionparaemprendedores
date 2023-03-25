object LugarExpedicionRegistraF: TLugarExpedicionRegistraF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lugar Expedicion Registra'
  ClientHeight = 368
  ClientWidth = 488
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
    Width = 488
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 568
    ExplicitHeight = 352
    object PanelBottom: TPanel
      Left = 0
      Top = 329
      Width = 488
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 281
      object ButtonCancelar: TButton
        Left = 352
        Top = 0
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
      Width = 488
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 568
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 488
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 568
        DesignSize = (
          488
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 440
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 520
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
      Width = 488
      Height = 227
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 568
      ExplicitHeight = 203
      object GroupBox1: TGroupBox
        Left = 8
        Top = 9
        Width = 457
        Height = 176
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 65
          Height = 15
          Caption = 'Descripcion:'
        end
        object Label2: TLabel
          Left = 32
          Top = 58
          Width = 23
          Height = 15
          Caption = 'Uso:'
        end
        object Label3: TLabel
          Left = 32
          Top = 90
          Width = 69
          Height = 15
          Caption = 'Tipo Especial'
        end
        object EditDesc: TEdit
          Left = 136
          Top = 21
          Width = 177
          Height = 23
          OEMConvert = True
          TabOrder = 0
        end
        object ButtonRegistra: TButton
          Left = 344
          Top = 44
          Width = 100
          Height = 25
          Caption = 'Registra'
          TabOrder = 4
          OnClick = ButtonRegistraClick
        end
        object CheckBoxLugExpActivo: TCheckBox
          Left = 136
          Top = 128
          Width = 97
          Height = 17
          Caption = 'Activo'
          TabOrder = 3
        end
        object EditUso: TEdit
          Left = 136
          Top = 55
          Width = 177
          Height = 23
          TabOrder = 1
        end
        object EditTipoEsp: TEdit
          Left = 136
          Top = 87
          Width = 177
          Height = 23
          TabOrder = 2
        end
      end
    end
  end
end
