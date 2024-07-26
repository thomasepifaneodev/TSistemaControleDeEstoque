unit TSistema.View.Cadastro.Visualizacao.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TSistema.View.Cadastros.Principal.Pai,
  cxGraphics, dxUIAClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxGeometry, dxFramedControl, Vcl.Menus, cxContainer,
  cxEdit, dxCore, frxClass, frxExportBaseDialog, frxExportPDF, cxClasses,
  dxLayoutLookAndFeels, dxSkinsForm, cxTextEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, dxPanel, dxLayoutContainer, dxLayoutControl, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxFilter, cxCustomData, cxStyles,
  dxScrollbarAnnotations, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, uDmDadosConsultas, ControleConsultaProdutos,
  TSistema.View.Cadastro.Dados.Produtos, RelatoriosSistema, frxSmartMemo,
  frCoreClasses, frxDBSet, fcxCustomExport, fcxCustomSliceGridExport,
  fcxExportXLSX, frxExportXLS, frxExportXLSX, cxCurrencyEdit;

type
  TuFrmCadastroPrincipalVisualizacaoProdutos = class(TuFrmCadastroPrincipalPai)
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelFiltro: TcxLabel;
    cxDBTreeListProdutos: TcxDBTreeList;
    cxDBTreeListProdutosidproduto: TcxDBTreeListColumn;
    cxDBTreeListProdutosdescricao: TcxDBTreeListColumn;
    cxDBTreeListProdutosunidade: TcxDBTreeListColumn;
    cxDBTreeListProdutosquantidadeestoque: TcxDBTreeListColumn;
    cxDBTreeListProdutospreco: TcxDBTreeListColumn;
    cxButton3_Imprimir: TcxButton;
    frxDBDatasetListagemProdutos: TfrxDBDataset;
    frxReportListagemProdutos: TfrxReport;
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
    procedure CriarFormulario();
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure cxDBTreeListProdutosDblClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxDBTreeListProdutosClick(Sender: TObject);
  private
    { Private declarations }
    CodigoProduto: Integer;
  public
    function SelecionarProduto: Integer;
    { Public declarations }
  end;

var
  uFrmCadastroPrincipalVisualizacaoProdutos: TuFrmCadastroPrincipalVisualizacaoProdutos;

implementation

{$R *.dfm}

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.CriarFormulario;
begin
  try
    uFrmCadastroDadosProdutos := TuFrmCadastroDadosProdutos.Create(Self);
    uFrmCadastroDadosProdutos.ShowModal;
  finally
    uFrmCadastroDadosProdutos.Free;
    uFrmCadastroDadosProdutos := nil;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxButton1_NovoClick(
  Sender: TObject);
begin
  inherited;
  ControleConsultaProdutos.InserirProdutos;
  CriarFormulario;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxButton2_ExibirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListProdutos.AbsoluteCount >= 1 then
  begin
   ControleConsultaProdutos.ConsultarProdutos;
   CriarFormulario;
  end
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxButton3_ExcluirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListProdutos.AbsoluteCount >= 1 then
    begin
    if Application.MessageBox('Deseja realmente excluir o produto?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
    begin
      {}
    end
    else
    begin
      ControleConsultaProdutos.ExcluirProdutos;
    end;
    end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxButton3_ImprimirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListProdutos.AbsoluteCount >= 1 then
  begin
    cxDBTreeListProdutos.DataController.DataSource := nil;
    RelatorioListagemDeProdutos(frxReportListagemProdutos);
    cxDBTreeListProdutos.DataController.DataSource := dmDadosConsultas.fdDataSourceProdutos;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxDBTreeListProdutosClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
  if CheckVendaCompra then
  begin
    CodigoProduto := cxDBTreeListProdutos.DataController.DataSet.FieldByName('id_produto').AsInteger;
    ModalResult := mrOk;
  end;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxDBTreeListProdutosDblClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
    CriarFormulario;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoProdutos.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleConsultaProdutos.ConsultarProdutos;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListProdutos.DataController.DataSource := dmDadosConsultas.fdDataSourceProdutos;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosConsultas.fdQueryProdutos.Filter := 'id_produto LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryProdutos.Filtered := True;
        cxDBTreeListProdutos.DataController.DataSource := dmDadosConsultas.fdDataSourceProdutos;
      end;

      1,-1: begin
        dmDadosConsultas.fdQueryProdutos.Filter := 'produto_descricao LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryProdutos.Filtered := True;
        cxDBTreeListProdutos.DataController.DataSource := dmDadosConsultas.fdDataSourceProdutos;
      end;
    end;
  end
  else
  begin
    dmDadosConsultas.fdQueryProdutos.Filtered := False;
    cxDBTreeListProdutos.DataController.DataSource := nil;
  end;
end;

function TuFrmCadastroPrincipalVisualizacaoProdutos.SelecionarProduto: Integer;
begin
  CodigoProduto := 0;
  if ShowModal = mrOk then
    Result := CodigoProduto
  else
    Result := 0;
end;

end.
