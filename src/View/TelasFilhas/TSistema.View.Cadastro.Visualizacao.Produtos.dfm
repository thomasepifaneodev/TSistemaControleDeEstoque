inherited uFrmCadastroPrincipalVisualizacaoProdutos: TuFrmCadastroPrincipalVisualizacaoProdutos
  Caption = 'Produtos'
  ClientHeight = 700
  ClientWidth = 1000
  TextHeight = 15
  inherited dxLayoutControl: TdxLayoutControl
    Width = 1000
    Height = 497
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    Width = 1000
    inherited cxButton1_Novo: TcxButton
      OnClick = cxButton1_NovoClick
    end
    inherited cxButton2_Exibir: TcxButton
      OnClick = cxButton2_ExibirClick
    end
    inherited cxButton3_Excluir: TcxButton
      OnClick = cxButton3_ExcluirClick
    end
    object cxButton3_Imprimir: TcxButton
      AlignWithMargins = True
      Left = 737
      Top = 10
      Width = 120
      Height = 45
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = '&Relat'#243'rio'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 4
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3_ImprimirClick
      ExplicitLeft = 733
    end
  end
  inherited dxPanelTop: TdxPanel
    Width = 1000
    inherited cxLabelTop: TcxLabel
      Caption = 'Localizar Produtos'
    end
    inherited cxTextEditSource: TcxTextEdit
      Properties.OnChange = cxTextEditSourcePropertiesChange
    end
    object cxComboBoxFiltro: TcxImageComboBox
      Left = 725
      Top = 91
      AutoSize = False
      ParentFont = False
      Properties.Items = <
        item
          Description = 'C'#243'digo'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Descri'#231#227'o'
          Value = '1'
        end>
      Properties.OnChange = cxComboBoxFiltroPropertiesChange
      Properties.OnInitPopup = cxComboBoxFiltroPropertiesInitPopup
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 31
      Width = 121
    end
    object cxLabelFiltro: TcxLabel
      AlignWithMargins = True
      Left = 668
      Top = 91
      Margins.Left = 10
      Margins.Top = 20
      Margins.Right = 10
      Margins.Bottom = 10
      AutoSize = False
      Caption = 'Filtro'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 31
      Width = 60
    end
  end
  inherited dxPanelCenter: TdxPanel
    Width = 1000
    Height = 497
    object cxDBTreeListProdutos: TcxDBTreeList
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 980
      Height = 481
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alClient
      Bands = <
        item
          Expandable = tlbeNotExpandable
        end>
      DataController.ImageIndexField = 'id_produto'
      DataController.ParentField = 'id_produto'
      DataController.KeyField = 'id_produto'
      DataController.StateIndexField = 'id_produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      OnClick = cxDBTreeListProdutosClick
      OnDblClick = cxDBTreeListProdutosDblClick
      ExplicitWidth = 976
      ExplicitHeight = 480
      object cxDBTreeListProdutosidproduto: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'id_produto'
        MinWidth = 100
        Options.Sizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListProdutosdescricao: TcxDBTreeListColumn
        Caption.Text = 'Descri'#231#227'o'
        DataBinding.FieldName = 'produto_descricao'
        MinWidth = 508
        Options.Sizing = False
        Options.Editing = False
        Width = 508
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListProdutosunidade: TcxDBTreeListColumn
        Caption.Text = 'Unidade'
        DataBinding.FieldName = 'unidade'
        MinWidth = 100
        Options.Sizing = False
        Options.Editing = False
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListProdutosquantidadeestoque: TcxDBTreeListColumn
        Caption.Text = 'Estoque'
        DataBinding.FieldName = 'estoque'
        MinWidth = 125
        Options.Sizing = False
        Options.Editing = False
        Width = 125
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListProdutospreco: TcxDBTreeListColumn
        Caption.Text = 'Pre'#231'o'
        DataBinding.FieldName = 'vl_venda'
        MinWidth = 145
        Options.Sizing = False
        Options.Editing = False
        Width = 145
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  inherited dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object frxDBDatasetListagemProdutos: TfrxDBDataset
    UserName = 'frxDBDatasetProdutosList'
    CloseDataSource = False
    DataSource = dmDadosConsultas.fdDataSourceProdutos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 792
    Top = 537
    FieldDefs = <
      item
        FieldName = 'id_produto'
      end
      item
        FieldName = 'produto_descricao'
        FieldType = fftString
        Size = 80
      end
      item
        FieldName = 'id_fornecedor'
      end
      item
        FieldName = 'vl_custo'
      end
      item
        FieldName = 'vl_venda'
      end
      item
        FieldName = 'estoque'
      end
      item
        FieldName = 'estoque_min'
      end
      item
        FieldName = 'unidade'
        FieldType = fftString
      end
      item
        FieldName = 'cadastro'
        FieldType = fftDateTime
      end>
  end
  object frxReportListagemProdutos: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.350293287000000000
    ReportOptions.LastChange = 45488.481416655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 537
    Datasets = <
      item
        DataSet = frxDBDatasetListagemProdutos
        DataSetName = 'frxDBDatasetProdutosList'
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
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
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
        Frame.ShadowWidth = 5.000000000000000000
        Frame.Style = fsAltDot
        Frame.Typ = []
        Height = 105.826851100000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 86.929195960000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            'RELAT'#211'RIO DE PRODUTOS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 275.905690001718800000
          Top = 58.133891800000000000
          Width = 166.299337770000000000
          Height = 34.015771670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 58.133891800000000000
          Width = 75.590617770000000000
          Height = 34.015771590000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929184860000000000
          Width = 75.590600730000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 86.929191800000000000
          Width = 396.850650730000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 86.929191800000000000
          Width = 143.622091180000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 86.929191800000000000
          Width = 102.047258740000000000
          Height = 18.897659300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456695350000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetListagemProdutos
        DataSetName = 'frxDBDatasetProdutosList'
        RowCount = 0
        object frxDBDatasetidproduto: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetListagemProdutos
          DataSetName = 'frxDBDatasetProdutosList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetProdutosList."id_produto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDatasetdescricaoproduto: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 75.590551180000000000
          Width = 396.850650000000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetListagemProdutos
          DataSetName = 'frxDBDatasetProdutosList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetProdutosList."produto_descricao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frxDBDatasetestoqueproduto: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 472.441201180000000000
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetListagemProdutos
          DataSetName = 'frxDBDatasetProdutosList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetProdutosList."estoque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDatasetprecovenda: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 616.063341180000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetListagemProdutos
          DataSetName = 'frxDBDatasetProdutosList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetProdutosList."vl_venda"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417736520000000000
          Top = 18.897643710000000000
          Width = 56.692981250000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
end
