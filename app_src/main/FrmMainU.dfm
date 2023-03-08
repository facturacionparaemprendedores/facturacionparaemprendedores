object FrmMainF: TFrmMainF
  Left = 0
  Top = 0
  Caption = 'FrmMainF'
  ClientHeight = 564
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  DesignSize = (
    864
    564)
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 864
    Height = 564
    Align = alClient
    ExplicitLeft = 712
    ExplicitTop = 176
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object PanelHoldWork: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 564
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 121
      Top = 42
      Height = 521
      ExplicitLeft = 184
      ExplicitTop = 264
      ExplicitHeight = 100
    end
    object PanelWorkLeft: TPanel
      Left = 1
      Top = 42
      Width = 120
      Height = 521
      Align = alLeft
      TabOrder = 0
      object PanelWorkTopButton: TPanel
        Left = 1
        Top = 1
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = '<'
        TabOrder = 0
        OnClick = PanelWorkTopButtonClick
      end
      object PanelBilling: TPanel
        Left = 1
        Top = 42
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Facturar'
        TabOrder = 1
        OnClick = PanelBillingClick
      end
      object PanelClients: TPanel
        Left = 1
        Top = 206
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Clientes'
        TabOrder = 2
        OnClick = PanelClientsClick
        ExplicitTop = 165
      end
      object PanelArticulos: TPanel
        Left = 1
        Top = 165
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Articulos'
        TabOrder = 3
        OnClick = PanelArticulosClick
        ExplicitTop = 124
      end
      object PanelConfig: TPanel
        Left = 1
        Top = 247
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Configuracion'
        TabOrder = 4
        Visible = False
        OnClick = PanelConfigClick
        ExplicitTop = 206
      end
      object PanelSalir: TPanel
        Left = 1
        Top = 452
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Salir'
        TabOrder = 5
        OnClick = PanelSalirClick
        ExplicitTop = 370
      end
      object PanelAcerca: TPanel
        Left = 1
        Top = 370
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Acerca'
        TabOrder = 6
        OnClick = PanelAcercaClick
        ExplicitTop = 288
      end
      object PanelUpdate: TPanel
        Left = 1
        Top = 411
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Actualizar'
        TabOrder = 7
        OnClick = PanelUpdateClick
        ExplicitTop = 329
      end
      object PanelEmpresa: TPanel
        Left = 1
        Top = 124
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Empresa'
        TabOrder = 8
        OnClick = PanelEmpresaClick
        ExplicitTop = 83
      end
      object PanelCertificados: TPanel
        Left = 1
        Top = 288
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Certificados'
        TabOrder = 9
        OnClick = PanelCertificadosClick
        ExplicitTop = 247
      end
      object PanelImpuestos: TPanel
        Left = 1
        Top = 329
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Impuestos'
        TabOrder = 10
        OnClick = PanelImpuestosClick
        ExplicitLeft = 4
        ExplicitTop = 261
      end
      object PanelFacturas: TPanel
        Left = 1
        Top = 83
        Width = 118
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Facturas'
        TabOrder = 11
        ExplicitLeft = 4
        ExplicitTop = 77
      end
    end
    object PanelWorkTop: TPanel
      Left = 1
      Top = 1
      Width = 862
      Height = 41
      Align = alTop
      TabOrder = 1
    end
    object PanelWorkDer: TPanel
      Left = 124
      Top = 42
      Width = 739
      Height = 521
      Align = alClient
      TabOrder = 2
      object PageControlWork: TPageControl
        Left = 1
        Top = 1
        Width = 737
        Height = 375
        ActivePage = TabSheetImpuestos
        Align = alClient
        TabOrder = 0
        object TabSheetBilling: TTabSheet
          Caption = 'TabSheetBilling'
        end
        object TabSheetItems: TTabSheet
          Caption = 'TabSheetItems'
          ImageIndex = 1
        end
        object TabSheetClients: TTabSheet
          Caption = 'TabSheetClients'
          ImageIndex = 2
        end
        object TabSheetConfig: TTabSheet
          Caption = 'TabSheetConfig'
          ImageIndex = 4
        end
        object TabSheetPacs: TTabSheet
          Caption = 'TabSheetPacs'
          ImageIndex = 5
        end
        object TabSheetAbout: TTabSheet
          Caption = 'TabSheetAbout'
          ImageIndex = 5
        end
        object TabSheetUpdate: TTabSheet
          Caption = 'TabSheetUpdate'
          ImageIndex = 6
        end
        object TabSheetEmpresa: TTabSheet
          Caption = 'TabSheetEmpresa'
          ImageIndex = 7
        end
        object TabSheetCertificados: TTabSheet
          Caption = 'TabSheetCertificados'
          ImageIndex = 8
        end
        object TabSheetImpuestos: TTabSheet
          Caption = 'TabSheetImpuestos'
          ImageIndex = 9
        end
      end
      object PanelLog: TPanel
        Left = 1
        Top = 376
        Width = 737
        Height = 144
        Align = alBottom
        Caption = 'PanelLog'
        TabOrder = 1
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 735
          Height = 142
          Align = alClient
          Lines.Strings = (
            'Memo1')
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object PanelLogin: TPanel
    Left = 200
    Top = 143
    Width = 410
    Height = 201
    Anchors = []
    BevelOuter = bvNone
    TabOrder = 1
    object PanelUserPas: TPanel
      Left = 48
      Top = 56
      Width = 321
      Height = 137
      BevelOuter = bvNone
      TabOrder = 0
      object LabelUser: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Usuario:'
      end
      object LabelPass: TLabel
        Left = 16
        Top = 51
        Width = 60
        Height = 13
        Caption = 'Contrase'#241'a:'
      end
      object LabelLeyenda: TLabel
        Left = 16
        Top = 104
        Width = 41
        Height = 13
        Caption = 'Leyenda'
      end
      object EditUser: TEdit
        Left = 100
        Top = 16
        Width = 149
        Height = 21
        TabOrder = 0
        Text = 'admin'
      end
      object EditPass: TEdit
        Left = 100
        Top = 43
        Width = 149
        Height = 21
        TabOrder = 1
        Text = 'admin'
      end
      object ButtonLogin: TButton
        Left = 174
        Top = 78
        Width = 75
        Height = 25
        Caption = 'Ingresar'
        TabOrder = 2
        OnClick = ButtonLoginClick
      end
    end
  end
end
