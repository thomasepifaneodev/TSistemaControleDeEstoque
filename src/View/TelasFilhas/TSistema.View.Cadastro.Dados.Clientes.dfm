inherited uFrmCadastroDadosCliente: TuFrmCadastroDadosCliente
  Caption = 'Cadastro de Clientes'
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
    inherited dxLayoutControlDadosGroup_Root: TdxLayoutGroup
      AlignHorz = ahRight
    end
  end
  inherited dxPanelBottom: TdxPanel
    Top = 634
    ExplicitTop = 633
    ExplicitWidth = 992
    inherited cxButton1_Salvar: TcxButton
      OnClick = cxButton1_SalvarClick
    end
    inherited cxButton2_Editar: TcxButton
      OnClick = cxButton2_EditarClick
    end
    inherited cxButton3_Imprimir: TcxButton
      OnClick = cxButton3_ImprimirClick
    end
    inherited cxButton4_Sair: TcxButton
      Left = 871
      ExplicitLeft = 867
    end
  end
  object dxPanelTop: TdxPanel [2]
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
    TabOrder = 2
    ExplicitWidth = 992
    object cxLabelTop: TcxLabel
      AlignWithMargins = True
      Left = 719
      Top = 10
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cadastro de Clientes'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitLeft = 715
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
      Caption = 'lblCodigoCliente'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      ExplicitLeft = 66
      Height = 48
      Width = 220
    end
  end
  object dxPanelCenter: TdxPanel [3]
    Left = 0
    Top = 73
    Width = 996
    Height = 561
    Align = alClient
    Anchors = []
    Frame.Borders = [bTop]
    TabOrder = 3
    ExplicitWidth = 992
    ExplicitHeight = 560
    object lblNome: TLabel
      Left = 138
      Top = 69
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblCpfCpnj: TLabel
      Left = 701
      Top = 69
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'CPF/CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblEndereco: TLabel
      Left = 138
      Top = 165
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblNumeroEndereco: TLabel
      Left = 788
      Top = 165
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'N'#186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblCidadeCliente: TLabel
      Left = 138
      Top = 269
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblUfEstado: TLabel
      Left = 380
      Top = 269
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblBairro: TLabel
      Left = 459
      Top = 269
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblCep: TLabel
      Left = 739
      Top = 269
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblTelefone: TLabel
      Left = 718
      Top = 374
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object lblEmail7: TLabel
      Left = 138
      Top = 374
      Width = 150
      Height = 25
      AutoSize = False
      Caption = 'E-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      StyleName = 'Windows'
    end
    object cxDBText10Telefone: TcxDBTextEdit
      Left = 718
      Top = 400
      AutoSize = False
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = DataSourceClientes
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
      Width = 142
    end
    object cxDBText1NomeCliente: TcxDBTextEdit
      Left = 138
      Top = 96
      Hint = 'Nome'
      AutoSize = False
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSourceClientes
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
      Width = 415
    end
    object cxDBText2CpfCnpjCliente: TcxDBTextEdit
      Left = 701
      Top = 96
      AutoSize = False
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = DataSourceClientes
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
      Width = 159
    end
    object cxDBText3EnderecoCliente: TcxDBTextEdit
      Left = 138
      Top = 192
      AutoSize = False
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = DataSourceClientes
      ParentFont = False
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
      Width = 502
    end
    object cxDBText4NumeroEndereco: TcxDBTextEdit
      Left = 788
      Top = 192
      AutoSize = False
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = DataSourceClientes
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
      Width = 72
    end
    object cxDBText5CidadeCliente: TcxDBTextEdit
      Left = 138
      Top = 296
      AutoSize = False
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = DataSourceClientes
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
    object cxDBText6UfCliente: TcxDBTextEdit
      Left = 380
      Top = 296
      AutoSize = False
      DataBinding.DataField = 'uf'
      DataBinding.DataSource = DataSourceClientes
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
      Width = 45
    end
    object cxDBText7BairroCliente: TcxDBTextEdit
      Left = 459
      Top = 296
      AutoSize = False
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = DataSourceClientes
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 35
      Width = 247
    end
    object cxDBText8CEP: TcxDBTextEdit
      Left = 739
      Top = 296
      AutoSize = False
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = DataSourceClientes
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 35
      Width = 121
    end
    object cxDBText9EmailCliente: TcxDBTextEdit
      Left = 138
      Top = 400
      AutoSize = False
      DataBinding.DataField = 'email'
      DataBinding.DataSource = DataSourceClientes
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 35
      Width = 375
    end
  end
  inherited dxSkinControllerDados: TdxSkinController
    Left = 760
    Top = 552
  end
  inherited dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList
    Left = 920
    Top = 552
    inherited dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object DataSourceClientes: TDataSource
    DataSet = dmDadosConsultas.fdQueryClientes
    Left = 832
    Top = 552
  end
  object frxDBDatasetClientesDetalhes: TfrxDBDataset
    UserName = 'frxDBDatasetClientesDetalhes'
    CloseDataSource = False
    DataSet = dmDadosConsultas.fdQueryClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 552
    FieldDefs = <
      item
        FieldName = 'id_cliente'
      end
      item
        FieldName = 'nome'
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
        FieldType = fftString
        Size = 8190
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
        FieldName = 'cpf'
        FieldType = fftString
        Size = 16
      end
      item
        FieldName = 'email'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'cadastro'
        FieldType = fftDateTime
      end>
  end
  object frxReportClientesDetalhes: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45483.616247997700000000
    ReportOptions.LastChange = 45484.647817372690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 552
    Datasets = <
      item
        DataSet = frxDBDatasetClientesDetalhes
        DataSetName = 'frxDBDatasetClientesDetalhes'
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
            'CADASTRO DO CLIENTE')
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
        DataSet = frxDBDatasetClientesDetalhes
        DataSetName = 'frxDBDatasetClientesDetalhes'
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Cadastro: [frxDBDatasetClientesDetalhes."cadastro"]')
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo: [frxDBDatasetClientesDetalhes."id_cliente"]')
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
        object Gradient3: TfrxGradientView
          Align = baWidth
          AllowVectorExport = True
          Top = 375.377860000000000000
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome: [frxDBDatasetClientesDetalhes."nome"]'
            ''
            'CPF/CNPJ: [frxDBDatasetClientesDetalhes."cpf"]')
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o: [frxDBDatasetClientesDetalhes."endereco"]'
            ''
            'N'#250'mero: [frxDBDatasetClientesDetalhes."numero"]'
            ''
            'Bairro: [frxDBDatasetClientesDetalhes."bairro"]'
            ''
            'Cidade: [frxDBDatasetClientesDetalhes."cidade"]'
            ''
            'Estado: [frxDBDatasetClientesDetalhes."uf"]')
          ParentFont = False
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
            'INFORMA'#199#213'ES DE ENDERE'#199'O')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 397.377860000000000000
          Width = 718.110717773437500000
          Height = 70.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail: [frxDBDatasetClientesDetalhes."email"]'
            ''
            'Contato: [frxDBDatasetClientesDetalhes."telefone"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 18.897878571718750000
          Top = 375.377860000000000000
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
            'INFORMA'#199#213'ES DE CONTATO')
          ParentFont = False
        end
      end
    end
  end
end
