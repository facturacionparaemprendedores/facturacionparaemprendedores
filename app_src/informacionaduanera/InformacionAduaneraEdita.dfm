object InformacionAduaneraEditaF: TInformacionAduaneraEditaF
  Left = 0
  Top = 0
  Caption = 'Informacion Aduanera Edita Numero de Pedimento'
  ClientHeight = 234
  ClientWidth = 528
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
    Width = 528
    Height = 234
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 503
    ExplicitHeight = 345
    object PanelBottom: TPanel
      Left = 0
      Top = 213
      Width = 538
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 306
      ExplicitWidth = 503
      object ButtonCancelar: TButton
        Left = 397
        Top = 6
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
      Width = 538
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 503
      object PanelMessages: TPanel
        Left = 0
        Top = 0
        Width = 538
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 503
        DesignSize = (
          528
          100)
        object PanelMessage: TPanel
          Left = 24
          Top = 21
          Width = 480
          Height = 58
          Anchors = [akLeft, akRight]
          BevelOuter = bvNone
          Color = 12615680
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 455
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
      Width = 528
      Height = 93
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 503
      ExplicitHeight = 204
      object GroupBox1: TGroupBox
        Left = 24
        Top = 4
        Width = 481
        Height = 69
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 24
          Width = 124
          Height = 15
          Caption = 'Numero de Pedimento:'
        end
        object ButtonGuarda: TButton
          Left = 366
          Top = 20
          Width = 84
          Height = 25
          Caption = 'Guarda'
          TabOrder = 1
          OnClick = ButtonGuardaClick
        end
        object EditNumeroPedimento: TEdit
          Left = 161
          Top = 21
          Width = 177
          Height = 23
          OEMConvert = True
          TabOrder = 0
        end
      end
    end
  end
end
