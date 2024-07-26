inherited uFrmCadastroDadosProdutos: TuFrmCadastroDadosProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 700
  ClientWidth = 1000
  OnClose = dxFluentDesignFormClose
  OnCloseQuery = dxFluentDesignFormCloseQuery
  OnCreate = dxFluentDesignFormCreate
  OnShow = dxFluentDesignFormShow
  TextHeight = 15
  inherited dxLayoutControlDados: TdxLayoutControl
    Top = 73
    Width = 1000
    Height = 561
    ExplicitTop = 73
    ExplicitHeight = 560
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
      Visible = False
      OnClick = cxButton3_ImprimirClick
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
    ExplicitWidth = 996
    ExplicitHeight = 560
    object lblDescricao: TLabel
      Left = 139
      Top = 117
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblUnidade: TLabel
      Left = 702
      Top = 117
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Unidade Medida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblIdFornec: TLabel
      Left = 139
      Top = 213
      Width = 100
      Height = 25
      AutoSize = False
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblEstoqueMin: TLabel
      Left = 405
      Top = 213
      Width = 180
      Height = 25
      AutoSize = False
      Caption = 'Quantidade M'#237'nima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblEstoque: TLabel
      Left = 681
      Top = 213
      Width = 180
      Height = 25
      AutoSize = False
      Caption = 'Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblCusto: TLabel
      Left = 139
      Top = 317
      Width = 200
      Height = 25
      AutoSize = False
      Caption = 'Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblPrecoVenda: TLabel
      Left = 661
      Top = 317
      Width = 200
      Height = 25
      AutoSize = False
      Caption = 'Pre'#231'o de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object cxDBText1DescricaoProduto: TcxDBTextEdit
      Left = 139
      Top = 144
      Hint = 'Nome'
      AutoSize = False
      DataBinding.DataField = 'produto_descricao'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 35
      Width = 415
    end
    object cxDBText2UnidadeProduto: TcxDBTextEdit
      Left = 702
      Top = 144
      AutoSize = False
      DataBinding.DataField = 'unidade'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 35
      Width = 159
    end
    object cxDBText4QuantidadeMinima: TcxDBTextEdit
      Left = 405
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'estoque_min'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 35
      Width = 180
    end
    object cxDBText5Estoque: TcxDBTextEdit
      Left = 681
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'estoque'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 35
      Width = 180
    end
    object cxDBText6Custo: TcxDBTextEdit
      Left = 139
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'vl_custo'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 35
      Width = 200
    end
    object cxDBText8PrecoVenda: TcxDBTextEdit
      Left = 661
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'vl_venda'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 35
      Width = 200
    end
    object cxDBText3IdFornecedor: TcxDBTextEdit
      Left = 139
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'id_fornecedor'
      DataBinding.DataSource = dmDadosConsultas.fdDataSourceProdutos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 35
      Width = 159
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
      Left = 707
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cadastro de Produtos'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 703
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
      Caption = 'lblCodigoProduto'
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
  inherited dxSkinControllerDados: TdxSkinController
    Left = 936
    Top = 384
  end
  inherited dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object frxDBDatasetProdutosDetalhes: TfrxDBDataset
    UserName = 'frxDBDatasetProdDet'
    CloseDataSource = False
    DataSource = dmDadosConsultas.fdDataSourceProdutos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 936
    Top = 449
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
  object frxReportProdutosDetalhes: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.616247997700000000
    ReportOptions.LastChange = 45488.635797847220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 936
    Top = 505
    Datasets = <
      item
        DataSet = frxDBDatasetProdutosDetalhes
        DataSetName = 'frxDBDatasetProdDet'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 65.897651670000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 61.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CADASTRO DO PRODUTO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 262.055358886718800000
          Top = 41.000000000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 888.677185060000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetProdutosDetalhes
        DataSetName = 'frxDBDatasetProdDet'
        RowCount = 0
        object Memo4: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 452.622497563437500000
          Top = 8.377860000000000000
          Width = 265.488220210000000000
          Height = 25.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetProdutosDetalhes
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Gradient1: TfrxGradientView
          Align = baWidth
          AllowVectorExport = True
          Top = 46.377860000000000000
          Width = 718.110717773437500000
          Height = 18.897644040000000000
          BeginColor = clSkyBlue
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight]
          Color = 12101011
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 8.377860000000000000
          Width = 230.488220210000000000
          Height = 25.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetProdutosDetalhes
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo: [frxDBDatasetProdDet."id_produto"]')
          ParentFont = False
        end
        object Gradient2: TfrxGradientView
          Align = baWidth
          AllowVectorExport = True
          Top = 148.039270000000000000
          Width = 718.110717773437500000
          Height = 18.897644040000000000
          BeginColor = clSkyBlue
          Style = gsHorizontal
          Frame.Typ = [ftLeft, ftRight]
          Color = 12101011
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 68.377860000000000000
          Width = 718.110717773437500000
          Height = 66.141732280000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetProdutosDetalhes
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o: [frxDBDatasetProdDet."produto_descricao"]'
            ''
            'Unidade: [frxDBDatasetProdDet."unidade"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 170.039270000000000000
          Width = 718.110717773437500000
          Height = 198.425196850000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDatasetProdutosDetalhes
          DataSetName = 'frxDBDatasetProdDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade: [frxDBDatasetProdDet."estoque"]'
            ''
            'Quantidade M'#237'nima: [frxDBDatasetProdDet."estoque_min"]'
            ''
            'Custo: R$: [frxDBDatasetProdDet."vl_custo"]'
            ''
            'Pre'#231'o Venda: R$: [frxDBDatasetProdDet."vl_venda"]'
            ''
            'Fornecedor: [frxDBDatasetProdDet."id_fornecedor"]')
          ParentFont = False
          Formats = <
            item
            end
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
            'INFORMA'#199#213'ES B'#193'SICAS')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 18.897878571718750000
          Top = 148.039270000000000000
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
            'INFORMA'#199#213'ES ADICIONAIS')
          ParentFont = False
        end
      end
    end
  end
end
