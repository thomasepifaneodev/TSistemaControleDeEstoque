inherited uFrmMovimentacoesVenda: TuFrmMovimentacoesVenda
  Caption = 'Localizar Vendas'
  ClientHeight = 700
  ClientWidth = 1000
  OnClose = dxFluentDesignFormClose
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
      Caption = 'Localizar Vendas'
      ExplicitWidth = 976
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
    object cxGridListaDeVenda: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 994
      Height = 490
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 990
      ExplicitHeight = 489
      object cxDBTreeListVenda: TcxGridDBTableView
        OnDblClick = cxDBTreeListVendaDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' dados>'
        object cxDBTreeListVendaid_venda: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'id_venda'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object cxDBTreeListVendanomecliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nomecliente'
          DataBinding.IsNullValueType = True
          Width = 692
        end
        object cxDBTreeListVendavalor: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'valor'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object cxDBTreeListVendacadastro: TcxGridDBColumn
          Caption = 'Data Compra'
          DataBinding.FieldName = 'cadastro'
          DataBinding.IsNullValueType = True
          Width = 100
        end
      end
      object cxGridListaDeVendaLevelCompras: TcxGridLevel
        GridView = cxDBTreeListVenda
      end
    end
  end
  inherited dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
