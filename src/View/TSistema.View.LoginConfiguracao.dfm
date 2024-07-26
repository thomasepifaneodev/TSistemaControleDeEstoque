object uFrmConfig: TuFrmConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#227'o Base de Dados'
  ClientHeight = 480
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = dxFluentDesignFormShow
  TextHeight = 15
  object dxLayoutControlConfig: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 390
    Height = 480
    Align = alClient
    TabOrder = 5
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelConfig
    ExplicitWidth = 386
    ExplicitHeight = 479
    object dxLayoutControlConfigGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object cxMaskEditIp: TcxMaskEdit
    Left = 85
    Top = 100
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Emoji'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 0
    TextHint = 'IP'
    OnKeyPress = cxMaskEditIpKeyPress
    Height = 35
    Width = 220
  end
  object cxMaskEditPorta: TcxMaskEdit
    Left = 85
    Top = 175
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Emoji'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 1
    TextHint = 'Porta'
    OnKeyPress = cxMaskEditPortaKeyPress
    Height = 35
    Width = 220
  end
  object cxMaskEditBase: TcxMaskEdit
    Left = 85
    Top = 252
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Emoji'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 2
    TextHint = 'Base de Dados'
    OnKeyPress = cxMaskEditBaseKeyPress
    Height = 35
    Width = 220
  end
  object cxButtonSalvar: TcxButton
    Left = 67
    Top = 376
    Width = 125
    Height = 37
    Caption = 'Salvar'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButtonSalvarClick
  end
  object cxButtonSair: TcxButton
    Left = 198
    Top = 376
    Width = 125
    Height = 37
    Caption = 'Sair'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    SkinName = 'McSkin'
    Left = 320
    Top = 424
  end
  object dxLayoutLookAndFeelListConfig: TdxLayoutLookAndFeelList
    Left = 320
    Top = 368
    object dxLayoutSkinLookAndFeelConfig: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
