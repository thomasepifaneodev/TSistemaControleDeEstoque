unit TSistema.View.Movimentacoes.Visualizacao.Compras;

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
  cxButtons, dxPanel, dxLayoutContainer, dxLayoutControl, cxFilter,
  cxCustomData, cxStyles, dxScrollbarAnnotations, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, uDmDadosMovimentacoes,
  cxDBLookupComboBox, cxCalendar, cxDropDownEdit, cxImageComboBox, ControleMovimentacoesEntrada,
  FireDAC.Stan.ExprFuncs, cxCurrencyEdit, TSistema.View.Movimentacoes.Dados.Compras,
  Data.DB, Vcl.Grids, Vcl.DBGrids, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TuFrmMovimentacoesCompra = class(TuFrmCadastroPrincipalPai)
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelFiltro: TcxLabel;
    cxButton3_Imprimir: TcxButton;
    cxDBTreeListCompras: TcxGridDBTableView;
    cxGridListaDeComprasLevelCompras: TcxGridLevel;
    cxGridListaDeCompras: TcxGrid;
    cxDBTreeListComprasid_compra: TcxGridDBColumn;
    cxDBTreeListComprasfornecedornome: TcxGridDBColumn;
    cxDBTreeListComprasvalor: TcxGridDBColumn;
    cxDBTreeListComprascadastro: TcxGridDBColumn;
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
    procedure cxDBTreeListComprasDblClick(Sender: TObject);
    procedure CriarFormulario;
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure cxDBTreeListComprasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesCompra: TuFrmMovimentacoesCompra;

implementation

{$R *.dfm}

procedure TuFrmMovimentacoesCompra.CriarFormulario;
begin
 try
  uFrmMovimentacoesDadosCompra := TuFrmMovimentacoesDadosCompra.Create(Self);
  uFrmMovimentacoesDadosCompra.ShowModal;
 finally
  uFrmMovimentacoesDadosCompra.Free;
  uFrmMovimentacoesDadosCompra := nil;
 end;
end;

procedure TuFrmMovimentacoesCompra.cxButton1_NovoClick(Sender: TObject);
begin
  inherited;
  ControleMovimentacoesEntrada.InserirMovimentacoesEntrada;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesCompra.cxButton2_ExibirClick(Sender: TObject);
begin
  inherited;
  if not (cxDBTreeListCompras.DataController.DataSource = nil) then
  begin
   ControleMovimentacoesEntrada.ConsultarMovimentacoesEntrada;
   dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Filter := 'id_compra =' + dmDadosMovimentacoes.fdQueryMovimentacoesCompraid_compra.Value.ToString;
   dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Filtered := True;
   CriarFormulario;
  end;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Filtered := False;
end;

procedure TuFrmMovimentacoesCompra.cxButton3_ExcluirClick(Sender: TObject);
begin
  inherited;
  if not (cxDBTreeListCompras.DataController.DataSource = nil) then
  begin
  if Application.MessageBox('Deseja realmente excluir a compra?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
  begin
    {}
  end
  else
  begin
    ControleMovimentacoesEntrada.ExcluirMovimentacoesEntrada(dmDadosMovimentacoes.fdQueryMovimentacoesCompraid_compra.Value);
    cxDBTreeListCompras.DataController.DataSource.DataSet.Refresh;
  end;
  end;
end;

procedure TuFrmMovimentacoesCompra.cxButton3_ImprimirClick(Sender: TObject);
begin
  inherited;
  {
  if cxDBTreeListCompras.DataController.DataSet.RecordCount >= 1 then
  begin
    cxDBTreeListCompras.DataController := nil;
    //RelatorioListagemDeClientes(frxReportClientes);
    cxDBTreeListCompras.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
  end;
  }
end;

procedure TuFrmMovimentacoesCompra.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmMovimentacoesCompra.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmMovimentacoesCompra.cxDBTreeListComprasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxButton2_Exibir.Click;
end;

procedure TuFrmMovimentacoesCompra.cxDBTreeListComprasDblClick(Sender: TObject);
begin
  inherited;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesCompra.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleMovimentacoesEntrada.ConsultarMovimentacoesEntrada;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListCompras.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filter := 'id_compra LIKE ''%' + FilterValue + '%''';
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filtered := True;
        cxDBTreeListCompras.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
      end;

      {else
      begin
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filter := 'nomefornecedor LIKE ''%' + FilterValue + '%''';;
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filtered := True;
        cxDBTreeListCompras.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
      end;}
    end;
  end
  else
  begin
    dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filtered := False;
    cxDBTreeListCompras.DataController.DataSource := nil;
  end;
end;

procedure TuFrmMovimentacoesCompra.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FechaConexao;
end;

end.
