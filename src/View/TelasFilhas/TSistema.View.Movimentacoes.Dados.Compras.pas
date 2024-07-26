unit TSistema.View.Movimentacoes.Dados.Compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TSistema.View.Cadastros.Principal.Pai.Dados, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxGeometry, dxFramedControl,
  Vcl.Menus, dxCore, frxClass, frxExportBaseDialog, frxExportPDF, cxClasses,
  dxLayoutLookAndFeels, dxSkinsForm, Vcl.StdCtrls, cxButtons, dxPanel,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, Vcl.DBCtrls, cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, uDmDadosMovimentacoes, cxLabel, ControleMovimentacoesEntrada,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, dxtree, dxdbtree, cxFilter,
  cxCustomData, cxStyles, dxScrollbarAnnotations, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGrid,
  cxDBData, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridDBTableView, cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridWinExplorerView,
  cxGridDBWinExplorerView, Vcl.Mask, Vcl.ExtCtrls, frxSmartMemo, frxDBSet,
  frCoreClasses, RelatoriosSistema, dxCoreGraphics, cxButtonEdit,
  TSistema.View.Cadastro.Visualizacao.Produtos;

type
  TuFrmMovimentacoesDadosCompra = class(TuFrmCadastroDados)
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigo: TcxLabel;
    dxPanelBottom2: TdxPanel;
    dxPanelCenter: TdxPanel;
    lblIdFornec: TLabel;
    lblIdPagamento: TLabel;
    lblValorCompra: TLabel;
    lblDateCompra: TLabel;
    cxDBDateEditDataCompra: TcxDBDateEdit;
    lblNomeFornec: TLabel;
    DBLookupComboBoxFornecedor: TDBLookupComboBox;
    lblDescricaoPag: TLabel;
    DBLookupComboBoxFormaPagto: TDBLookupComboBox;
    DBGridItens: TcxGrid;
    DBGridItensLevel1: TcxGridLevel;
    DBGridItens1id_produto: TcxGridDBColumn;
    DBGridItens1descricaoprod: TcxGridDBColumn;
    DBGridItens1qtde: TcxGridDBColumn;
    DBGridItens1vl_custo: TcxGridDBColumn;
    DBGridItens1vl_desconto: TcxGridDBColumn;
    DBGridItens1vl_subtotal: TcxGridDBColumn;
    DBGridItens1: TcxGridDBTableView;
    dbEditDescricao: TDBEdit;
    dbEditQtde: TDBEdit;
    dbEditCusto: TDBEdit;
    dbEditDesconto: TDBEdit;
    dbEditSubTotal: TDBEdit;
    cxDBCurrencyEditValorCompra: TcxDBCurrencyEdit;
    Label1Codigo: TLabel;
    Label2Descricao: TLabel;
    Label3Quantidade: TLabel;
    Label5Desconto: TLabel;
    Label4Custo: TLabel;
    Label6Subtotal: TLabel;
    frxReportEntradas: TfrxReport;
    frxDBDatasetEntradas: TfrxDBDataset;
    frxDBDatasetEntradasItens: TfrxDBDataset;
    dbEditCodProd: TcxDBButtonEdit;
    cxDBSpinEditIdFornecedor: TcxDBButtonEdit;
    cxDBSpinEditCodPagto: TcxDBButtonEdit;
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure cxButton2_EditarClick(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure AtualizaBotoes;
    procedure AtualizaBoxText;
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure dxFluentDesignFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure dbEditCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditCustoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEditIdFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBDateEditDataCompraKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEditCodPagtoKeyPress(Sender: TObject; var Key: Char);
    function AtualizarTotal : Currency;
    procedure DBGridItens1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxDBSpinEditCodPagtoExit(Sender: TObject);
    procedure cxDBSpinEditIdFornecedorExit(Sender: TObject);
    procedure dbEditCodProdExit(Sender: TObject);
    procedure dbEditCustoExit(Sender: TObject);
    procedure dbEditQtdeExit(Sender: TObject);
    procedure dbEditCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure frxReportEntradasClosePreview(Sender: TObject);
  private
    CodigoProdutoSelecionado: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesDadosCompra: TuFrmMovimentacoesDadosCompra;

implementation

{$R *.dfm}


procedure TuFrmMovimentacoesDadosCompra.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmMovimentacoesDadosCompra.AtualizaBoxText;
begin
  cxDBSpinEditIdFornecedor.Enabled := not cxDBSpinEditIdFornecedor.Enabled;
  cxDBSpinEditCodPagto.Enabled := not cxDBSpinEditCodPagto.Enabled;
  cxDBDateEditDataCompra.Enabled := not cxDBDateEditDataCompra.Enabled;
  DBGridItens.Enabled := not DBGridItens.Enabled;
  dbEditCodProd.Enabled := not dbEditCodProd.Enabled;
  dbEditQtde.Enabled := not dbEditQtde.Enabled;
  dbEditCusto.Enabled := not dbEditCusto.Enabled;
  dbEditDesconto.Enabled := not dbEditDesconto.Enabled;
end;

function TuFrmMovimentacoesDadosCompra.AtualizarTotal: Currency;
var
  Total: Currency;
begin
  Total := 0;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.First;
  while not dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Eof do
  begin
    Total := Total + dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItenssubtotal.AsCurrency;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Next;
  end;
  Result := Total;
end;

procedure TuFrmMovimentacoesDadosCompra.cxButton1_SalvarClick(Sender: TObject);
begin
  inherited;
  if
    (cxDBSpinEditIdFornecedor.Text = '' ) OR
    (cxDBSpinEditCodPagto.Text = '' ) OR
    (cxDBDateEditDataCompra.Text = '' ) OR
    (DBGridItens1.ViewData.RecordCount = 0)
  then
    begin
    Application.MessageBox('Preencha todos os campos!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    end
  else
  begin
  try
    GravarAlteracoes;
    Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    AtualizaBotoes;
    AtualizaBoxText;
  except on e : Exception do
  begin
    Application.MessageBox(PWideChar('Não foi possível salvar os dados ' + e.Message), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
  end;
  end;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBSpinEditIdFornecedor.SetFocus;
  EditarInformacoes;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.AppEnd;
end;

procedure TuFrmMovimentacoesDadosCompra.cxButton3_ImprimirClick(
  Sender: TObject);
begin
  inherited;
  DBGridItens1.DataController.DataSource := nil;
  cxDBCurrencyEditValorCompra.DataBinding.DataSource := nil;
  RelatorioComprasDetalhes(frxReportEntradas);
  DBGridItens1.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceItensEntrada;
  cxDBCurrencyEditValorCompra.DataBinding.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Refresh;
end;

procedure TuFrmMovimentacoesDadosCompra.cxDBDateEditDataCompraKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    cxDBSpinEditCodPagto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.cxDBSpinEditCodPagtoExit(
  Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxFormaPagto.Text = '' then
    begin
      Application.MessageBox('Forma de pagamento não encontrada!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      cxDBSpinEditCodPagto.SetFocus;
    end
end;

procedure TuFrmMovimentacoesDadosCompra.cxDBSpinEditCodPagtoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if DBLookupComboBoxFormaPagto.Text = '' then
    begin
      Application.MessageBox('Forma de pagamento não encontrada!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Key := #0;
    end
    else
    begin
      dbEditCodProd.SetFocus;
      Key := #0;
    end;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.cxDBSpinEditIdFornecedorExit(
  Sender: TObject);
begin
  inherited;
  if cxDBSpinEditIdFornecedor.Text = '' then
  begin
    Application.MessageBox('Informe o fornecedor!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    cxDBSpinEditIdFornecedor.SetFocus;
  end
  else
  if (cxDBSpinEditIdFornecedor.Text <> '') AND (DBLookupComboBoxFornecedor.Text = '') then
    begin
      Application.MessageBox('Fornecedor não encontrado!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      cxDBSpinEditIdFornecedor.SetFocus;
    end
end;

procedure TuFrmMovimentacoesDadosCompra.cxDBSpinEditIdFornecedorKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    cxDBDateEditDataCompra.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditCodProdExit(Sender: TObject);
begin
  inherited;
  if (dbEditCodProd.Text <> '') AND (dbEditDescricao.Text = '') then
    begin
      Application.MessageBox('Produto não encontrado!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      dbEditCodProd.SetFocus;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditCodProdKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if (dbEditCodProd.Text = '') then
    begin
      Application.MessageBox('Informe o produto!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Key := #0;
    end
    else
    begin
      dbEditQtde.SetFocus;
      Key := #0;
    end;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditCodProdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  CodigoProduto: Integer;
  FormProduto: TuFrmCadastroPrincipalVisualizacaoProdutos;
begin
  inherited;
  FormProduto := TuFrmCadastroPrincipalVisualizacaoProdutos.Create(nil);
  try
    CodigoProduto := FormProduto.SelecionarProduto;
    if CodigoProduto > 0 then
    begin
      CodigoProdutoSelecionado := CodigoProduto;
      dbEditCodProd.Text := CodigoProdutoSelecionado.ToString;
      dmDadosMovimentacoes.fdDataSourceItensEntrada.Edit;
      dmDadosMovimentacoes.fdDataSourceItensEntrada.DataSet.FieldByName('id_produto').AsInteger := CodigoProdutoSelecionado;
      dmDadosMovimentacoes.fdDataSourceItensEntrada.DataSet.Post;
      dbEditQtde.SetFocus;
    end;
  finally
    FormProduto.Free;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditCustoExit(Sender: TObject);
begin
  inherited;
  if dbEditCusto.Text	= '' then
  begin
    Application.MessageBox('Informe o custo!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    dbEditCusto.SetFocus;
  end
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    dbEditDesconto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
  if (dbEditCodProd.Text <> '') AND (dbEditDescricao.Text = '') then
  begin
    Application.MessageBox('Produto não encontrado!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    Abort;
  end
  else if (dbEditCodProd.Text = '') then
  begin
    Application.MessageBox('Informe o produto!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    Abort;
  end
  else
  begin
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItensid_compra.Value := dmDadosMovimentacoes.fdQueryMovimentacoesCompraid_compra.Value;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItenstotal_item.Value := dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItenssubtotal.Value;
    dmDadosMovimentacoes.fdQueryMovimentacoesCompravalor.Value := AtualizarTotal;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.AppEnd;
    dbEditCodProd.SetFocus;
    Key := #0;
  end;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditQtdeExit(Sender: TObject);
begin
  inherited;
  if dbEditQtde.Text= '' then
  begin
    Application.MessageBox('Informe a quantidade!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    dbEditQtde.SetFocus;
  end
end;

procedure TuFrmMovimentacoesDadosCompra.dbEditQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    dbEditCusto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.DBGridItens1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  cxDBCurrencyEditValorCompra.Value := AtualizarTotal;
end;

procedure TuFrmMovimentacoesDadosCompra.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (dmDadosMovimentacoes.fdTransaction.Active) then
  begin
    FechaConexao;
    CancelarTransacao;
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit, dsInsert]) then
  begin
  if Application.MessageBox('Deseja realmente fechar?', 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_YESNO) = mrNo then
    begin
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;
  end
  else
  Self.Close;
end;

procedure TuFrmMovimentacoesDadosCompra.dxFluentDesignFormCreate(
  Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosMovimentacoes.fdQueryMovimentacoesCompraid_compra.Value.ToString;
end;

procedure TuFrmMovimentacoesDadosCompra.dxFluentDesignFormShow(Sender: TObject);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
    DBGridItens.Enabled := True
  end
  else if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsInsert]) then
  begin
    cxDBSpinEditIdFornecedor.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
    DBGridItens.Enabled := True;
  end
  else
  begin
    AtualizaBoxText;
    uFrmMovimentacoesDadosCompra.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
    DBGridItens.Enabled := False
  end;
end;

procedure TuFrmMovimentacoesDadosCompra.frxReportEntradasClosePreview(
  Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
