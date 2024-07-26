inherited uFrmMovimentacoesContasAPagar: TuFrmMovimentacoesContasAPagar
  Caption = 'Localizar Contas a Pagar'
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
  end
  inherited dxPanelTop: TdxPanel
    Width = 1000
    inherited cxLabelTop: TcxLabel
      Caption = 'Localizar Contas a Pagar'
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
    object cxDBTreeListContasAPagar: TcxDBTreeList
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
      DataController.ImageIndexField = 'id_sequencia'
      DataController.ParentField = 'id_sequencia'
      DataController.KeyField = 'id_sequencia'
      DataController.StateIndexField = 'id_sequencia'
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
      OnDblClick = cxDBTreeListContasAPagarDblClick
      ExplicitWidth = 976
      ExplicitHeight = 480
      object cxDBTreeListContasAPagarIdConta: TcxDBTreeListColumn
        Caption.Text = 'C'#243'digo'
        DataBinding.FieldName = 'id_sequencia'
        MinWidth = 100
        Options.Sizing = False
        Options.Editing = False
        Width = 120
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListContasAPagarFornecedor: TcxDBTreeListColumn
        Caption.Text = 'Fornecedor'
        DataBinding.FieldName = 'nomeFornecedor'
        MinWidth = 508
        Options.Sizing = False
        Options.Editing = False
        Width = 588
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListContasAPagarSituacao: TcxDBTreeListColumn
        Caption.Text = 'Situa'#231#227'o'
        DataBinding.FieldName = 'status'
        MinWidth = 100
        Options.Sizing = False
        Options.Editing = False
        Width = 120
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListContasAPagarValor: TcxDBTreeListColumn
        Caption.Text = 'Valor'
        DataBinding.FieldName = 'total_pagar'
        MinWidth = 145
        Options.Sizing = False
        Options.Editing = False
        Width = 150
        Position.ColIndex = 3
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
end
