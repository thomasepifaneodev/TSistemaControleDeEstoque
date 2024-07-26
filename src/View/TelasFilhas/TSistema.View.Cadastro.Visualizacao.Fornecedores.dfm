inherited uFrmCadastroPrincipalVisualizacaoFornecedores: TuFrmCadastroPrincipalVisualizacaoFornecedores
  Caption = 'Fornecedores'
  ClientHeight = 700
  ClientWidth = 1000
  TextHeight = 15
  inherited dxLayoutControl: TdxLayoutControl
    Width = 1000
    Height = 497
    ExplicitHeight = 496
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    Width = 1000
    ExplicitTop = 633
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
      Caption = 'Localizar Fornecedores'
      ExplicitWidth = 976
    end
    inherited cxTextEditSource: TcxTextEdit
      Properties.OnChange = cxTextEditSourcePropertiesChange
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
      TabOrder = 2
      Height = 31
      Width = 60
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
          Description = 'Nome'
          Value = 1
        end
        item
          Description = 'CPF/CNPJ'
          Value = 2
        end>
      Properties.OnChange = cxComboBoxFiltroPropertiesChange
      Properties.OnInitPopup = cxComboBoxFiltroPropertiesInitPopup
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 31
      Width = 121
    end
  end
  inherited dxPanelCenter: TdxPanel
    Width = 1000
    Height = 497
    ExplicitHeight = 496
    object cxDBTreeListFornecedores: TcxDBTreeList
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
      DataController.ImageIndexField = 'id_fornecedor'
      DataController.ParentField = 'id_fornecedor'
      DataController.KeyField = 'id_fornecedor'
      DataController.StateIndexField = 'id_fornecedor'
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
      OnDblClick = cxDBTreeListFornecedoresDblClick
      ExplicitWidth = 976
      ExplicitHeight = 480
      object cxDBTreeListFornecedoresidfornecedor: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'id_fornecedor'
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
      object cxDBTreeListFornecedoresnome: TcxDBTreeListColumn
        Caption.Text = 'Nome/Fantasia'
        DataBinding.FieldName = 'nome'
        MinWidth = 408
        Options.Sizing = False
        Options.Editing = False
        Width = 408
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListFornecedoresuf: TcxDBTreeListColumn
        Caption.Text = 'UF'
        DataBinding.FieldName = 'uf'
        MinWidth = 50
        Options.Sizing = False
        Options.Editing = False
        Width = 50
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListFornecedorestelefone: TcxDBTreeListColumn
        Caption.Text = 'Telefone'
        DataBinding.FieldName = 'telefone'
        MinWidth = 150
        Options.Sizing = False
        Options.Editing = False
        Width = 150
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListFornecedorescpfcnpj: TcxDBTreeListColumn
        Caption.Text = 'CPF/CNPJ'
        DataBinding.FieldName = 'cnpj'
        MinWidth = 150
        Options.Sizing = False
        Options.Editing = False
        Width = 150
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListFornecedorescadastro: TcxDBTreeListColumn
        Caption.Text = 'Cadastro'
        DataBinding.FieldName = 'cadastro'
        MinWidth = 120
        Options.Sizing = False
        Options.Editing = False
        Width = 120
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  inherited dxSkinController: TdxSkinController
    Left = 922
    Top = 542
  end
  inherited dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 818
    Top = 542
    inherited dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited frxPDFExport: TfrxPDFExport
    Left = 720
    Top = 542
  end
  object frxReportFornecedores: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.350293287000000000
    ReportOptions.LastChange = 45485.700647083340000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 712
    Top = 449
    Datasets = <
      item
        DataSet = frxDBDatasetFornecedores
        DataSetName = 'frxDBDatasetFornecedores'
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
            'RELAT'#211'RIO DE FORNECEDORES')
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
            'Nome')
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
            'CPF/CNPJ')
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
            'Cadastro')
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
        DataSet = frxDBDatasetFornecedores
        DataSetName = 'frxDBDatasetFornecedores'
        RowCount = 0
        object frxDBDatasetClientesid_cliente: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = uFrmCadastroPrincipalVisualizacaoClientes.frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetFornecedores."id_fornecedor"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDatasetClientesnome: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 75.590551180000000000
          Width = 396.850650000000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = uFrmCadastroPrincipalVisualizacaoClientes.frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetFornecedores."nome"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frxDBDatasetClientescpf: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 472.441201180000000000
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = uFrmCadastroPrincipalVisualizacaoClientes.frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetFornecedores."cnpj"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDatasetClientescadastro: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 616.063341180000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = uFrmCadastroPrincipalVisualizacaoClientes.frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetFornecedores."cadastro"]')
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
  object frxDBDatasetFornecedores: TfrxDBDataset
    UserName = 'frxDBDatasetFornecedores'
    CloseDataSource = False
    DataSet = dmDadosConsultas.fdQueryFornecedores
    BCDToCurrency = False
    DataSetOptions = []
    Left = 856
    Top = 449
    FieldDefs = <
      item
        FieldName = 'id_fornecedor'
      end
      item
        FieldName = 'nome'
        FieldType = fftString
        Size = 80
      end
      item
        FieldName = 'endereco'
        FieldType = fftString
        Size = 80
      end
      item
        FieldName = 'numero'
      end
      item
        FieldName = 'bairro'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'cidade'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'uf'
        FieldType = fftString
      end
      item
        FieldName = 'cep'
        FieldType = fftString
        Size = 16
      end
      item
        FieldName = 'telefone'
        FieldType = fftString
        Size = 16
      end
      item
        FieldName = 'cnpj'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'email'
        FieldType = fftString
        Size = 80
      end
      item
        FieldName = 'cadastro'
        FieldType = fftDateTime
      end>
  end
end
