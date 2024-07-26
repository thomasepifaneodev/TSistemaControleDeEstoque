inherited uFrmCadastroDadosEmpresa: TuFrmCadastroDadosEmpresa
  Caption = 'Cadastro da Empresa'
  ClientHeight = 700
  ClientWidth = 1000
  OnClose = dxFluentDesignFormClose
  OnCloseQuery = dxFluentDesignFormCloseQuery
  OnShow = dxFluentDesignFormShow
  TextHeight = 15
  inherited dxLayoutControlDados: TdxLayoutControl
    Top = 73
    Width = 1000
    Height = 561
    ExplicitTop = 73
    ExplicitWidth = 996
    ExplicitHeight = 560
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    Width = 1000
    ExplicitTop = 633
    ExplicitWidth = 996
    inherited cxButton1_Salvar: TcxButton
      Enabled = False
      OnClick = cxButton1_SalvarClick
    end
    inherited cxButton2_Editar: TcxButton
      OnClick = cxButton2_EditarClick
    end
    inherited cxButton3_Imprimir: TcxButton
      OnClick = cxButton3_ImprimirClick
    end
    inherited cxButton4_Sair: TcxButton
      ExplicitLeft = 871
    end
  end
  object dxPanelCenter: TdxPanel [2]
    Left = 0
    Top = 73
    Width = 1000
    Height = 561
    Align = alClient
    Anchors = []
    Frame.Borders = [bTop]
    TabOrder = 2
    ExplicitTop = 79
    object lblRazao: TLabel
      Left = 110
      Top = 40
      Width = 110
      Height = 28
      Caption = 'Raz'#227'o Social'
      FocusControl = cxDBTextEditRazaoSocial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbFantasia: TLabel
      Left = 110
      Top = 129
      Width = 70
      Height = 28
      Caption = 'Fantasia'
      FocusControl = cxDBTextEditFantasia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEndereco: TLabel
      Left = 110
      Top = 306
      Width = 81
      Height = 28
      Caption = 'Endere'#231'o'
      FocusControl = cxDBTextEditEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbNumero: TLabel
      Left = 682
      Top = 306
      Width = 72
      Height = 28
      Caption = 'N'#250'mero'
      FocusControl = cxDBSpinEditNumero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbBairro: TLabel
      Left = 671
      Top = 214
      Width = 52
      Height = 28
      Caption = 'Bairro'
      FocusControl = cxDBTextEditBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbCidade: TLabel
      Left = 110
      Top = 214
      Width = 61
      Height = 28
      Caption = 'Cidade'
      FocusControl = cxDBTextEditCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbUf: TLabel
      Left = 838
      Top = 306
      Width = 24
      Height = 28
      Caption = 'UF'
      FocusControl = cxDBTextEditUF
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbTelefone: TLabel
      Left = 560
      Top = 395
      Width = 72
      Height = 28
      Caption = 'Telefone'
      FocusControl = cxDBTextEditTelefone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbCpfCnpj: TLabel
      Left = 671
      Top = 129
      Width = 198
      Height = 35
      AutoSize = False
      Caption = 'CPF/CNPJ'
      FocusControl = cxDBTextEditCNPJ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEmail: TLabel
      Left = 110
      Top = 395
      Width = 55
      Height = 28
      Caption = 'E-mail'
      FocusControl = cxDBTextEditEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbDataCadastro: TLabel
      Left = 744
      Top = 395
      Width = 144
      Height = 35
      AutoSize = False
      Caption = 'Data Cadastro'
      FocusControl = cxDBDateEditCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbLogo: TLabel
      Left = 671
      Top = 40
      Width = 45
      Height = 28
      Caption = 'Logo'
      FocusControl = cxDBTextEditBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEditRazaoSocial: TcxDBTextEdit
      Left = 110
      Top = 66
      AutoSize = False
      DataBinding.DataField = 'raza_social'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 35
      Width = 522
    end
    object cxDBTextEditFantasia: TcxDBTextEdit
      Left = 110
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'n_fantasia'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 35
      Width = 555
    end
    object cxDBTextEditEndereco: TcxDBTextEdit
      Left = 110
      Top = 332
      AutoSize = False
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 35
      Width = 566
    end
    object cxDBSpinEditNumero: TcxDBSpinEdit
      Left = 682
      Top = 332
      AutoSize = False
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 35
      Width = 150
    end
    object cxDBTextEditBairro: TcxDBTextEdit
      Left = 671
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 35
      Width = 219
    end
    object cxDBTextEditCidade: TcxDBTextEdit
      Left = 110
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 35
      Width = 555
    end
    object cxDBTextEditUF: TcxDBTextEdit
      Left = 838
      Top = 332
      AutoSize = False
      DataBinding.DataField = 'uf'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 35
      Width = 50
    end
    object cxDBTextEditTelefone: TcxDBTextEdit
      Left = 560
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 35
      Width = 178
    end
    object cxDBTextEditCNPJ: TcxDBTextEdit
      Left = 671
      Top = 155
      AutoSize = False
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 35
      Width = 217
    end
    object cxDBTextEditEmail: TcxDBTextEdit
      Left = 110
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'email'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 35
      Width = 444
    end
    object cxDBDateEditCadastro: TcxDBDateEdit
      Left = 744
      Top = 421
      AutoSize = False
      DataBinding.DataField = 'cadastro'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceEmpresa
      Enabled = False
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.ReadOnly = True
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 35
      Width = 144
    end
    object dbLogo: TDBImage
      Left = 671
      Top = 66
      Width = 217
      Height = 63
      DataField = 'logo'
      DataSource = dmDadosConsultas.fdDataSourceEmpresa
      Stretch = True
      TabOrder = 11
      OnClick = dbLogoClick
    end
  end
  object dxPanelTop: TdxPanel [3]
    Left = 0
    Top = 0
    Width = 1000
    Height = 73
    Align = alTop
    BiDiMode = bdRightToLeft
    Frame.Color = clHighlight
    Frame.Borders = [bTop]
    Frame.Thickness = 5
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitWidth = 996
    object cxLabelTop: TcxLabel
      AlignWithMargins = True
      Left = 716
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cadastro da Empresa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 712
    end
  end
  inherited dxSkinControllerDados: TdxSkinController
    Left = 952
    Top = 456
  end
  inherited dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object OpenDialogImg: TOpenDialog
    Filter = '*.png;*.jpg;*.jpeg)|*.png;*.jpg;*.jpeg'
    Left = 944
    Top = 393
  end
end
