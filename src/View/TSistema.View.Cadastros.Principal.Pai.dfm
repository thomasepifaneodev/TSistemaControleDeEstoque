object uFrmCadastroPrincipalPai: TuFrmCadastroPrincipalPai
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
  FormStyle = fsMDIForm
  Position = poScreenCenter
  TextHeight = 15
  object dxLayoutControl: TdxLayoutControl
    Left = 0
    Top = 137
    Width = 1000
    Height = 497
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel
    ExplicitWidth = 996
    ExplicitHeight = 496
    object dxLayoutControlGroup_Root: TdxLayoutGroup
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
    Frame.Borders = [bTop]
    TabOrder = 1
    ExplicitTop = 633
    ExplicitWidth = 996
    object cxButton1_Novo: TcxButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 120
      Height = 45
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&Novo'
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
    object cxButton2_Exibir: TcxButton
      AlignWithMargins = True
      Left = 150
      Top = 10
      Width = 120
      Height = 45
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&Exibir'
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
    object cxButton3_Excluir: TcxButton
      AlignWithMargins = True
      Left = 290
      Top = 10
      Width = 120
      Height = 45
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'E&xcluir'
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
      Left = 870
      Top = 10
      Width = 120
      Height = 45
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
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
      ExplicitLeft = 866
    end
  end
  object dxPanelTop: TdxPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 137
    Align = alTop
    Frame.Color = clHighlight
    Frame.Borders = [bTop]
    Frame.Thickness = 5
    TabOrder = 2
    ExplicitWidth = 996
    object cxLabelTop: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 20
      Margins.Left = 10
      Margins.Top = 20
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Caption = 'Informa'#231#227'o do Formul'#225'rio'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitWidth = 976
    end
    object cxTextEditSource: TcxTextEdit
      AlignWithMargins = True
      Left = 10
      Top = 91
      Margins.Left = 10
      Margins.Top = 20
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      AutoSize = False
      ParentFont = False
      Properties.AutoSelect = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      TextHint = 'Pesquisar'
      Height = 31
      Width = 650
    end
  end
  object dxPanelCenter: TdxPanel
    Left = 0
    Top = 137
    Width = 1000
    Height = 497
    Align = alClient
    Frame.Borders = [bTop]
    TabOrder = 3
    ExplicitWidth = 996
    ExplicitHeight = 496
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    ScrollbarMode = sbmHybrid
    SkinName = 'McSkin'
    Left = 794
    Top = 622
  end
  object dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 666
    Top = 622
    object dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel
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
    Left = 552
    Top = 622
  end
end
