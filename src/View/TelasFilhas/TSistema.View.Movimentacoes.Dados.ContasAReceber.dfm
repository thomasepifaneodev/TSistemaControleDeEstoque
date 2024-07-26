inherited uFrmMovimentacoesDadosContasAReceber: TuFrmMovimentacoesDadosContasAReceber
  Caption = 'Contas a Receber'
  ClientHeight = 700
  OnClose = dxFluentDesignFormClose
  OnCloseQuery = dxFluentDesignFormCloseQuery
  OnCreate = dxFluentDesignFormCreate
  OnShow = dxFluentDesignFormShow
  ExplicitWidth = 1008
  TextHeight = 15
  inherited dxLayoutControlDados: TdxLayoutControl
    Top = 73
    Height = 561
    ExplicitTop = 73
    ExplicitWidth = 992
    ExplicitHeight = 560
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    ExplicitWidth = 992
    inherited cxButton1_Salvar: TcxButton
      OnClick = cxButton1_SalvarClick
    end
    inherited cxButton2_Editar: TcxButton
      OnClick = cxButton2_EditarClick
    end
    inherited cxButton4_Sair: TcxButton
      Left = 871
      ExplicitLeft = 867
    end
  end
  object dxPanelCenter: TdxPanel [2]
    Left = 0
    Top = 73
    Width = 996
    Height = 561
    Align = alClient
    Anchors = []
    Frame.Borders = [bTop]
    TabOrder = 2
    ExplicitWidth = 992
    ExplicitHeight = 560
    object LabelIdCliente: TLabel
      Left = 91
      Top = 97
      Width = 83
      Height = 21
      Caption = 'C'#243'd. Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelValorParcela: TLabel
      Left = 709
      Top = 324
      Width = 89
      Height = 21
      Caption = 'Valor Parcela'
      FocusControl = cxDBCurrencyEditValorParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelDataVencimento: TLabel
      Left = 91
      Top = 212
      Width = 118
      Height = 21
      Caption = 'Data Vencimento'
      FocusControl = cxDBDateEditDataVencimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelDataPagamento: TLabel
      Left = 297
      Top = 212
      Width = 114
      Height = 21
      Caption = 'Data Pagamento'
      FocusControl = cxDBDateEditDataPagamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelAtraso: TLabel
      Left = 91
      Top = 324
      Width = 45
      Height = 21
      Caption = 'Atraso'
      FocusControl = cxDBSpinEditAtraso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelJuros: TLabel
      Left = 297
      Top = 324
      Width = 37
      Height = 21
      Caption = 'Juros'
      FocusControl = cxDBCurrencyEditJuros
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelVl_Juros: TLabel
      Left = 503
      Top = 324
      Width = 77
      Height = 21
      Caption = 'Valor Juros'
      FocusControl = cxDBCurrencyEditVl_Juros
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelTotal_Pagar: TLabel
      Left = 503
      Top = 212
      Width = 75
      Height = 21
      Caption = 'Total Pagar'
      FocusControl = cxDBCurrencyEditTotalConta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelStatus: TLabel
      Left = 709
      Top = 212
      Width = 42
      Height = 21
      Caption = 'Status'
      FocusControl = cxDBTextEditStatus
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelNomeCliente: TLabel
      Left = 218
      Top = 97
      Width = 95
      Height = 21
      Caption = 'Nome Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cxDBCurrencyEditValorParcela: TcxDBCurrencyEdit
      Left = 709
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'valor_parcela'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 35
      Width = 200
    end
    object cxDBDateEditDataVencimento: TcxDBDateEdit
      Left = 91
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'dt_vencimento'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 35
      Width = 200
    end
    object cxDBDateEditDataPagamento: TcxDBDateEdit
      Left = 297
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'dt_pagamento'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 35
      Width = 200
    end
    object cxDBSpinEditAtraso: TcxDBSpinEdit
      Left = 91
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'atraso'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 35
      Width = 200
    end
    object cxDBCurrencyEditJuros: TcxDBCurrencyEdit
      Left = 297
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'juros'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 35
      Width = 200
    end
    object cxDBCurrencyEditVl_Juros: TcxDBCurrencyEdit
      Left = 503
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'vl_juros'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 35
      Width = 200
    end
    object cxDBCurrencyEditTotalConta: TcxDBCurrencyEdit
      Left = 503
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'total_pagar'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 35
      Width = 200
    end
    object cxDBTextEditStatus: TcxDBTextEdit
      Left = 709
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'status'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 35
      Width = 200
    end
    object cxDBTextEditCodigoCliente: TcxDBTextEdit
      Left = 91
      Top = 117
      AutoSize = False
      DataBinding.DataField = 'id_cliente'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 35
      Width = 121
    end
    object cxDBTextEditNomeCliente: TcxDBTextEdit
      Left = 218
      Top = 117
      AutoSize = False
      DataBinding.DataField = 'nomeCliente'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceContasAReceber
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 35
      Width = 691
    end
  end
  object dxPanelTop: TdxPanel [3]
    Left = 0
    Top = 0
    Width = 996
    Height = 73
    Align = alTop
    BiDiMode = bdRightToLeft
    Frame.Color = clHighlight
    Frame.Borders = [bTop]
    Frame.Thickness = 5
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitWidth = 992
    object cxLabelTop: TcxLabel
      AlignWithMargins = True
      Left = 601
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cadastro de Contas a Receber'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 612
    end
    object lblCodigo: TcxLabel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      AutoSize = False
      Caption = 'lblCodigoConta'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 48
      Width = 220
    end
  end
  inherited dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
