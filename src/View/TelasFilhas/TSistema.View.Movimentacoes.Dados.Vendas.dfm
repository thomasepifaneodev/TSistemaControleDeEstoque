inherited uFrmMovimentacoesDadosVenda: TuFrmMovimentacoesDadosVenda
  Caption = 'Vendas'
  ClientHeight = 700
  ClientWidth = 1000
  OnClose = dxFluentDesignFormClose
  OnCloseQuery = dxFluentDesignFormCloseQuery
  OnCreate = dxFluentDesignFormCreate
  OnShow = dxFluentDesignFormShow
  TextHeight = 15
  inherited dxLayoutControlDados: TdxLayoutControl
    Top = 250
    Width = 1000
    Height = 635
    ExplicitTop = 250
    ExplicitHeight = 635
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    Width = 1000
    inherited cxButton1_Salvar: TcxButton
      OnClick = cxButton1_SalvarClick
    end
    inherited cxButton2_Editar: TcxButton
      OnClick = cxButton2_EditarClick
    end
    inherited cxButton3_Imprimir: TcxButton
      OnClick = cxButton3_ImprimirClick
    end
  end
  object dxPanelBottom2: TdxPanel [2]
    Left = 0
    Top = 73
    Width = 1000
    Height = 177
    Align = alTop
    Frame.Borders = [bTop]
    TabOrder = 2
    ExplicitWidth = 996
    object lblIdCliente: TLabel
      Left = 11
      Top = 4
      Width = 75
      Height = 17
      Caption = 'C'#243'd. Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblIdPagamento: TLabel
      Left = 139
      Top = 70
      Width = 102
      Height = 17
      Caption = 'C'#243'd. Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorVenda: TLabel
      Left = 789
      Top = 70
      Width = 32
      Height = 17
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDateVenda: TLabel
      Left = 11
      Top = 70
      Width = 71
      Height = 17
      Caption = 'Data Venda'
      FocusControl = cxDBDateEditDataVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeCliente: TLabel
      Left = 139
      Top = 4
      Width = 84
      Height = 17
      Caption = 'Nome Cliente'
      FocusControl = DBLookupComboBoxCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescricaoPag: TLabel
      Left = 266
      Top = 70
      Width = 133
      Height = 17
      Caption = 'Descri'#231#227'o Pagamento'
      FocusControl = DBLookupComboBoxFormaPagto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBDateEditDataVenda: TcxDBDateEdit
      Left = 11
      Top = 87
      TabStop = False
      DataBinding.DataField = 'cadastro'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = cxDBDateEditDataVendaKeyPress
      Width = 121
    end
    object DBLookupComboBoxCliente: TDBLookupComboBox
      Left = 139
      Top = 27
      Width = 850
      Height = 28
      DataField = 'nomecliente'
      DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
    object DBLookupComboBoxFormaPagto: TDBLookupComboBox
      Left = 266
      Top = 87
      Width = 520
      Height = 28
      DataField = 'nomepagamento'
      DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cxDBCurrencyEditValorVenda: TcxDBCurrencyEdit
      Left = 789
      Top = 87
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 28
      Width = 200
    end
    object cxDBSpinEditIdCliente: TcxDBButtonEdit
      Left = 11
      Top = 27
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'id_cliente'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      OnExit = cxDBSpinEditIdClienteExit
      OnKeyPress = cxDBSpinEditIdClienteKeyPress
      Height = 28
      Width = 122
    end
    object cxDBSpinEditCodPagto: TcxDBButtonEdit
      Left = 138
      Top = 87
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'id_forma_pgto'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      OnExit = cxDBSpinEditCodPagtoExit
      OnKeyPress = cxDBSpinEditCodPagtoKeyPress
      Height = 28
      Width = 122
    end
  end
  object dxPanelCenter: TdxPanel [3]
    Left = 0
    Top = 195
    Width = 1000
    Height = 439
    Align = alBottom
    Frame.Borders = [bTop]
    TabOrder = 3
    ExplicitTop = 194
    ExplicitWidth = 996
    object Label1Codigo: TLabel
      Left = 3
      Top = 4
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
    end
    object Label2Descricao: TLabel
      Left = 94
      Top = 3
      Width = 78
      Height = 15
      Caption = 'Descri'#231#227'o Item'
    end
    object Label3Quantidade: TLabel
      Left = 606
      Top = 4
      Width = 62
      Height = 15
      Caption = 'Quantidade'
    end
    object Label5Desconto: TLabel
      Left = 796
      Top = 4
      Width = 50
      Height = 15
      Caption = 'Desconto'
    end
    object Label4Custo: TLabel
      Left = 694
      Top = 4
      Width = 31
      Height = 15
      Caption = 'Custo'
    end
    object Label6Subtotal: TLabel
      Left = 896
      Top = 4
      Width = 52
      Height = 15
      Caption = 'Total Item'
    end
    object dbEditDescricao: TDBEdit
      Left = 94
      Top = 19
      Width = 512
      Height = 23
      TabStop = False
      DataField = 'descricaoitem'
      DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object dbEditQtde: TDBEdit
      Left = 606
      Top = 19
      Width = 90
      Height = 23
      TabStop = False
      DataField = 'qtde'
      DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = dbEditQtdeExit
      OnKeyPress = dbEditQtdeKeyPress
    end
    object dbEditCusto: TDBEdit
      Left = 696
      Top = 19
      Width = 100
      Height = 23
      TabStop = False
      DataField = 'vl_custo'
      DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = dbEditCustoExit
      OnKeyPress = dbEditCustoKeyPress
    end
    object dbEditDesconto: TDBEdit
      Left = 796
      Top = 19
      Width = 100
      Height = 23
      TabStop = False
      DataField = 'desconto'
      DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = dbEditDescontoKeyPress
    end
    object dbEditSubTotal: TDBEdit
      Left = 896
      Top = 19
      Width = 100
      Height = 23
      TabStop = False
      DataField = 'subtotal'
      DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBGridItens: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 45
      Width = 994
      Height = 390
      Margins.Top = 45
      Align = alClient
      TabOrder = 0
      TabStop = False
      ExplicitWidth = 990
      object DBGridItens1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnSelectionChanged = DBGridItens1SelectionChanged
        DataController.DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsSelection.HideSelection = True
        OptionsView.NoDataToDisplayInfoText = '<Sem produtos informados>'
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object DBGridItens1id_produto: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'id_produto'
          Width = 90
        end
        object DBGridItens1descricaoprod: TcxGridDBColumn
          Caption = 'Descri'#231#227'o Produto'
          DataBinding.FieldName = 'descricaoitem'
          Options.Editing = False
          Width = 512
        end
        object DBGridItens1qtde: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'qtde'
          Width = 90
        end
        object DBGridItens1vl_custo: TcxGridDBColumn
          Caption = 'Custo'
          DataBinding.FieldName = 'vl_custo'
          Width = 100
        end
        object DBGridItens1vl_desconto: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'desconto'
          Width = 100
        end
        object DBGridItens1vl_subtotal: TcxGridDBColumn
          Caption = 'SubTotal'
          DataBinding.FieldName = 'subtotal'
          Width = 100
        end
      end
      object DBGridItensLevel1: TcxGridLevel
        GridView = DBGridItens1
      end
    end
    object dbEditCodProd: TcxDBButtonEdit
      Left = 3
      Top = 19
      TabStop = False
      DataBinding.DataField = 'id_produto'
      DataBinding.DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = dbEditCodProdPropertiesButtonClick
      TabOrder = 6
      OnExit = dbEditCodProdExit
      OnKeyPress = dbEditCodProdKeyPress
      Width = 91
    end
  end
  object dxPanelTop: TdxPanel [4]
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
    TabOrder = 4
    ExplicitWidth = 996
    object cxLabelTop: TcxLabel
      AlignWithMargins = True
      Left = 734
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cadastro de Vendas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 730
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
      Caption = 'lblCodigoVenda'
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
  object frxReportVendas: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.616247997700000000
    ReportOptions.LastChange = 45498.613336145800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClosePreview = frxReportVendasClosePreview
    Left = 284
    Top = 546
    Datasets = <
      item
        DataSet = frxDBDatasetVendas
        DataSetName = 'frxDBDatasetVendas'
      end
      item
        DataSet = frxDBDatasetVendasDetalhes
        DataSetName = 'frxDBDatasetVendasDetalhes'
      end
      item
        DataSet = frxDBDatasetEmpresa
        DataSetName = 'frxDBDatasetVendasDetalhesEmpresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 167.897651670000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 86.000000000000000000
          Width = 718.110717773437500000
          Height = 80.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPROVANTE DE VENDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 262.055358886718800000
          Top = 124.000000000000000000
          Width = 194.000000000000000000
          Height = 24.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]  [Time]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 5.000000000000000000
          Width = 718.110717770000000000
          Height = 80.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baCenter
          AllowVectorExport = True
          Left = 202.555358886718800000
          Top = 16.102350000000000000
          Width = 313.000000000000000000
          Height = 67.897651670000000000
          Center = True
          DataField = 'logo'
          DataSet = frxDBDatasetEmpresa
          DataSetName = 'frxDBDatasetVendasDetalhesEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 217.070804040000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetVendas
        DataSetName = 'frxDBDatasetVendas'
        RowCount = 0
        object Gradient1: TfrxGradientView
          Align = baWidth
          AllowVectorExport = True
          Top = 46.377860000000000000
          Width = 718.110717773437500000
          Height = 18.897644040000000000
          BeginColor = clSkyBlue
          Style = gsHorizontal
          Frame.Typ = []
          Color = 12101011
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 12.377860000000000000
          Width = 230.488220210000000000
          Height = 25.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Venda: [frxDBDatasetVendas."id_venda"]')
          ParentFont = False
        end
        object Gradient2: TfrxGradientView
          Align = baWidth
          AllowVectorExport = True
          Top = 193.952690000000000000
          Width = 718.110717773437500000
          Height = 18.897644040000000000
          BeginColor = clSkyBlue
          Style = gsHorizontal
          Frame.Typ = []
          Color = 12101011
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 75.377860000000000000
          Width = 718.110717773437500000
          Height = 113.141732280000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: [frxDBDatasetVendas."nomecliente"]'
            ''
            'Forma Pagamento: [frxDBDatasetVendas."nomepagamento"]'
            ''
            'Valor: ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 18.897878571718750000
          Top = 46.377860000000000000
          Width = 680.314960630000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'INFORMA'#199#213'ES DO CLIENTE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 18.897878571718750000
          Top = 193.952690000000000000
          Width = 680.314960630000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ITENS')
          ParentFont = False
        end
        object frxDBDatasetCabecalhovalor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 58.000000000000000000
          Top = 158.377860000000000000
          Width = 249.370130000000000000
          Height = 21.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'valor'
          DataSet = frxDBDatasetVendas
          DataSetName = 'frxDBDatasetVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetVendas."valor"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 28.897650000000000000
        Top = 529.134200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetVendasDetalhes
        DataSetName = 'frxDBDatasetVendasDetalhes'
        RowCount = 0
        object frxDBDatasetItensid_produto: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 7.000000000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSetName = 'frxDBDatasetItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVendasDetalhes."id_produto"]')
          ParentFont = False
        end
        object frxDBDatasetItensdescricaoitem: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 56.692913390000000000
          Top = 7.000000000000000000
          Width = 387.402056353437500000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSetName = 'frxDBDatasetItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVendasDetalhes."descricaoitem"]')
          ParentFont = False
        end
        object frxDBDatasetItensqtde: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 444.094969743437500000
          Top = 7.000000000000000000
          Width = 66.141732280000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'qtde'
          DataSet = frxDBDatasetVendasDetalhes
          DataSetName = 'frxDBDatasetVendasDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVendasDetalhes."qtde"]')
          ParentFont = False
        end
        object frxDBDatasetItensvl_custo: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 510.236702023437500000
          Top = 7.000000000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'vl_custo'
          DataSet = frxDBDatasetVendasDetalhes
          DataSetName = 'frxDBDatasetVendasDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVendasDetalhes."vl_custo"]')
          ParentFont = False
        end
        object frxDBDatasetItenstotal_item: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 604.724891003437500000
          Top = 7.000000000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'total_item'
          DataSet = frxDBDatasetVendasDetalhes
          DataSetName = 'frxDBDatasetVendasDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetVendasDetalhes."total_item"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 56.692913390000000000
          Top = 0.267470000000000000
          Width = 387.401574800000000000
          Height = 18.897637800000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o Item')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 444.094488190000000000
          Top = 0.267470000000000000
          Width = 66.141732280000000000
          Height = 18.897637800000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'QTD')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 510.236220470000000000
          Top = 0.267470000000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Unit'#225'rio')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 604.724409450000000000
          Top = 0.267470000000000000
          Width = 113.385826770000000000
          Height = 18.897637800000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220472440900000
        Top = 619.842920000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 624.000000000000000000
          Top = 10.542980000000000000
          Width = 94.488220210000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g: [Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetEmpresa: TfrxDBDataset
    UserName = 'frxDBDatasetVendasDetalhesEmpresa'
    CloseDataSource = False
    DataSource = dmDadosConsultas.fdDataSourceEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 546
    FieldDefs = <
      item
        FieldName = 'id_empresa'
      end
      item
        FieldName = 'raza_social'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'n_fantasia'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'endereco'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'numero'
      end
      item
        FieldName = 'bairro'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'cidade'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'uf'
        FieldType = fftString
      end
      item
        FieldName = 'telefone'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'cnpj'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'email'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'cadastro'
        FieldType = fftDateTime
      end
      item
        FieldName = 'logo'
      end>
  end
  object frxDBDatasetVendas: TfrxDBDataset
    UserName = 'frxDBDatasetVendas'
    CloseDataSource = False
    DataSource = dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 520
    Top = 546
    FieldDefs = <
      item
        FieldName = 'id_venda'
      end
      item
        FieldName = 'id_cliente'
      end
      item
        FieldName = 'id_forma_pgto'
      end
      item
        FieldName = 'usuario'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'valor'
      end
      item
        FieldName = 'cadastro'
        FieldType = fftDateTime
      end
      item
        FieldName = 'nomecliente'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'nomepagamento'
        FieldType = fftString
        Size = 50
      end>
  end
  object frxDBDatasetVendasDetalhes: TfrxDBDataset
    UserName = 'frxDBDatasetVendasDetalhes'
    CloseDataSource = False
    DataSource = dmDadosMovimentacoes.fdDataSourceSaidasItens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 546
    FieldDefs = <
      item
        FieldName = 'id_sequencia'
      end
      item
        FieldName = 'id_venda'
      end
      item
        FieldName = 'id_produto'
      end
      item
        FieldName = 'qtde'
      end
      item
        FieldName = 'vl_custo'
      end
      item
        FieldName = 'desconto'
      end
      item
        FieldName = 'total_item'
      end
      item
        FieldName = 'descricaoitem'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'subtotal'
      end>
  end
end
