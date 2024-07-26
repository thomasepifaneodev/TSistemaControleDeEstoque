object uFrmCadastroDados: TuFrmCadastroDados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 700
  ClientWidth = 1000
  Color = clBtnFace
  Constraints.MaxHeight = 738
  Constraints.MaxWidth = 1012
  Constraints.MinHeight = 738
  Constraints.MinWidth = 1000
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object dxLayoutControlDados: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 634
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeelDados
    ExplicitWidth = 996
    ExplicitHeight = 633
    object dxLayoutControlDadosGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object dxPanelBottom: TdxPanel
    Left = 0
    Top = 634
    Width = 1000
    Height = 66
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 633
    ExplicitWidth = 996
    object cxButton1_Salvar: TcxButton
      AlignWithMargins = True
      Left = 3
      Top = 10
      Width = 120
      Height = 44
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'S&alvar'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2_Editar: TcxButton
      AlignWithMargins = True
      Left = 129
      Top = 10
      Width = 120
      Height = 44
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&Editar'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton3_Imprimir: TcxButton
      AlignWithMargins = True
      Left = 255
      Top = 10
      Width = 120
      Height = 44
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&Imprimir'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton4_Sair: TcxButton
      AlignWithMargins = True
      Left = 875
      Top = 10
      Width = 120
      Height = 44
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = '&Sair'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 3
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton4_SairClick
      ExplicitLeft = 871
    end
  end
  object dxSkinControllerDados: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    SkinName = 'McSkin'
    Left = 776
    Top = 232
  end
  object dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList
    Left = 936
    Top = 232
    object dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 936
    Top = 304
  end
end
