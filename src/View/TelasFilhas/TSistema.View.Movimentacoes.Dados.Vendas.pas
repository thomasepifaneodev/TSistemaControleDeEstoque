unit TSistema.View.Movimentacoes.Dados.Vendas;

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
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, cxButtonEdit, cxDBEdit,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  uDmDadosMovimentacoes, ControleMovimentacoesSaidas,
  TSistema.View.Cadastro.Visualizacao.Produtos, frxSmartMemo, frxDBSet,
  frCoreClasses, uDmDadosConsultas, RelatoriosSistema;

type
  TuFrmMovimentacoesDadosVenda = class(TuFrmCadastroDados)
    dxPanelBottom2: TdxPanel;
    lblIdCliente: TLabel;
    lblIdPagamento: TLabel;
    lblValorVenda: TLabel;
    lblDateVenda: TLabel;
    lblNomeCliente: TLabel;
    lblDescricaoPag: TLabel;
    cxDBDateEditDataVenda: TcxDBDateEdit;
    DBLookupComboBoxCliente: TDBLookupComboBox;
    DBLookupComboBoxFormaPagto: TDBLookupComboBox;
    cxDBCurrencyEditValorVenda: TcxDBCurrencyEdit;
    cxDBSpinEditIdCliente: TcxDBButtonEdit;
    cxDBSpinEditCodPagto: TcxDBButtonEdit;
    dxPanelCenter: TdxPanel;
    Label1Codigo: TLabel;
    Label2Descricao: TLabel;
    Label3Quantidade: TLabel;
    Label5Desconto: TLabel;
    Label4Custo: TLabel;
    Label6Subtotal: TLabel;
    dbEditDescricao: TDBEdit;
    dbEditQtde: TDBEdit;
    dbEditCusto: TDBEdit;
    dbEditDesconto: TDBEdit;
    dbEditSubTotal: TDBEdit;
    DBGridItens: TcxGrid;
    DBGridItens1: TcxGridDBTableView;
    DBGridItens1id_produto: TcxGridDBColumn;
    DBGridItens1descricaoprod: TcxGridDBColumn;
    DBGridItens1qtde: TcxGridDBColumn;
    DBGridItens1vl_custo: TcxGridDBColumn;
    DBGridItens1vl_desconto: TcxGridDBColumn;
    DBGridItens1vl_subtotal: TcxGridDBColumn;
    DBGridItensLevel1: TcxGridLevel;
    dbEditCodProd: TcxDBButtonEdit;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigo: TcxLabel;
    frxReportVendas: TfrxReport;
    frxDBDatasetEmpresa: TfrxDBDataset;
    frxDBDatasetVendas: TfrxDBDataset;
    frxDBDatasetVendasDetalhes: TfrxDBDataset;
    procedure AtualizaBotoes;
    procedure AtualizaBoxText;
    function AtualizarTotal : Currency;
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure cxButton2_EditarClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxDBDateEditDataVendaKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEditCodPagtoExit(Sender: TObject);
    procedure cxDBSpinEditCodPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBSpinEditIdClienteExit(Sender: TObject);
    procedure cxDBSpinEditIdClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditCodProdExit(Sender: TObject);
    procedure dbEditCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbEditCustoExit(Sender: TObject);
    procedure dbEditCustoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEditQtdeExit(Sender: TObject);
    procedure dbEditQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridItens1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure dxFluentDesignFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure frxReportVendasClosePreview(Sender: TObject);
    procedure RelPosVenda(id_venda: integer);
  private
    { Private declarations }
    CodigoProdutoSelecionado: Integer;
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesDadosVenda: TuFrmMovimentacoesDadosVenda;

implementation

{$R *.dfm}

procedure TuFrmMovimentacoesDadosVenda.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmMovimentacoesDadosVenda.AtualizaBoxText;
begin
  cxDBSpinEditIdCliente.Enabled := not cxDBSpinEditIdCliente.Enabled;
  cxDBSpinEditCodPagto.Enabled := not cxDBSpinEditCodPagto.Enabled;
  cxDBDateEditDataVenda.Enabled := not cxDBDateEditDataVenda.Enabled;
  DBGridItens.Enabled := not DBGridItens.Enabled;
  dbEditCodProd.Enabled := not dbEditCodProd.Enabled;
  dbEditQtde.Enabled := not dbEditQtde.Enabled;
  dbEditCusto.Enabled := not dbEditCusto.Enabled;
  dbEditDesconto.Enabled := not dbEditDesconto.Enabled;
end;

function TuFrmMovimentacoesDadosVenda.AtualizarTotal: Currency;
var
  Total: Currency;
begin
  Total := 0;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.First;
  while not dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Eof do
  begin
    Total := Total + dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItenssubtotal.AsCurrency;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Next;
  end;
  Result := Total;
end;

procedure TuFrmMovimentacoesDadosVenda.cxButton1_SalvarClick(Sender: TObject);
begin
  inherited;
  if
    (cxDBSpinEditIdCliente.Text = '' ) OR
    (cxDBSpinEditCodPagto.Text = '' ) OR
    (cxDBDateEditDataVenda.Text = '' ) OR
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
    RelPosVenda(dmDadosMovimentacoes.fdQueryMovimentacoesVendaid_venda.Value);
  except on e : Exception do
  begin
    Application.MessageBox(PWideChar('Não foi possível salvar os dados ' + e.Message), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
  end;
  end;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBSpinEditIdCliente.SetFocus;
  EditarInformacoes;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.AppEnd;
end;

procedure TuFrmMovimentacoesDadosVenda.cxButton3_ImprimirClick(Sender: TObject);
begin
  inherited;
  DBGridItens1.DataController.DataSource := nil;
  cxDBCurrencyEditValorVenda.DataBinding.DataSource := nil;
  RelatorioVendasDetalhes(frxReportVendas);
  DBGridItens1.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceSaidasItens;
  cxDBCurrencyEditValorVenda.DataBinding.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Refresh;
end;

procedure TuFrmMovimentacoesDadosVenda.cxDBDateEditDataVendaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    cxDBSpinEditCodPagto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.cxDBSpinEditCodPagtoExit(
  Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxFormaPagto.Text = '' then
    begin
      Application.MessageBox('Forma de pagamento não encontrada!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      cxDBSpinEditCodPagto.SetFocus;
    end
end;

procedure TuFrmMovimentacoesDadosVenda.cxDBSpinEditCodPagtoKeyPress(
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

procedure TuFrmMovimentacoesDadosVenda.cxDBSpinEditIdClienteExit(
  Sender: TObject);
begin
  inherited;
  if cxDBSpinEditIdCliente.Text = '' then
  begin
    Application.MessageBox('Informe o cliente!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    cxDBSpinEditIdCliente.SetFocus;
  end
  else
  if (cxDBSpinEditIdCliente.Text <> '') AND (DBLookupComboBoxCliente.Text = '') then
    begin
      Application.MessageBox('Cliente não encontrado!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      cxDBSpinEditIdCliente.SetFocus;
    end
end;

procedure TuFrmMovimentacoesDadosVenda.cxDBSpinEditIdClienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    cxDBDateEditDataVenda.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditCodProdExit(Sender: TObject);
begin
  inherited;
  if (dbEditCodProd.Text <> '') AND (dbEditDescricao.Text = '') then
    begin
      Application.MessageBox('Produto não encontrado!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      dbEditCodProd.SetFocus;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditCodProdKeyPress(Sender: TObject;
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

procedure TuFrmMovimentacoesDadosVenda.dbEditCodProdPropertiesButtonClick(
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
      dmDadosMovimentacoes.fdDataSourceSaidasItens.Edit;
      dmDadosMovimentacoes.fdDataSourceSaidasItens.DataSet.FieldByName('id_produto').AsInteger := CodigoProdutoSelecionado;
      dmDadosMovimentacoes.fdDataSourceSaidasItens.DataSet.Post;
      dbEditQtde.SetFocus;
    end;
  finally
    FormProduto.Free;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditCustoExit(Sender: TObject);
begin
  inherited;
  if dbEditCusto.Text	= '' then
  begin
    Application.MessageBox('Informe o preço!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    dbEditCusto.SetFocus;
  end
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    dbEditDesconto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditDescontoKeyPress(Sender: TObject;
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
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItensid_venda.Value := dmDadosMovimentacoes.fdQueryMovimentacoesVendaid_venda.Value;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItenstotal_item.Value := dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItenssubtotal.Value;
    dmDadosMovimentacoes.fdQueryMovimentacoesVendavalor.Value := AtualizarTotal;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.AppEnd;
    dbEditCodProd.SetFocus;
    Key := #0;
  end;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditQtdeExit(Sender: TObject);
begin
  inherited;
  if dbEditQtde.Text= '' then
  begin
    Application.MessageBox('Informe a quantidade!','TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
    dbEditQtde.SetFocus;
  end
end;

procedure TuFrmMovimentacoesDadosVenda.dbEditQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    dbEditCusto.SetFocus;
    Key := #0;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.DBGridItens1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  cxDBCurrencyEditValorVenda.Value := AtualizarTotal;
end;

procedure TuFrmMovimentacoesDadosVenda.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (dmDadosMovimentacoes.fdTransaction.Active) then
  begin
    FechaConexao;
    CancelarTransacao;
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit, dsInsert]) then
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

procedure TuFrmMovimentacoesDadosVenda.dxFluentDesignFormCreate(
  Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosMovimentacoes.fdQueryMovimentacoesVendaid_venda.Value.ToString;
end;

procedure TuFrmMovimentacoesDadosVenda.dxFluentDesignFormShow(Sender: TObject);
begin
  inherited;
  inherited;
  if (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
    DBGridItens.Enabled := True
  end
  else if (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsInsert]) then
  begin
    cxDBSpinEditIdCliente.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
    DBGridItens.Enabled := True;
  end
  else
  begin
    AtualizaBoxText;
    uFrmMovimentacoesDadosVenda.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
    DBGridItens.Enabled := False
  end;
end;

procedure TuFrmMovimentacoesDadosVenda.frxReportVendasClosePreview(
  Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TuFrmMovimentacoesDadosVenda.RelPosVenda(id_venda: integer);
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filter := 'id_venda = ' + id_venda.ToString;
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filtered := True;
  RelatorioVendasDetalhes(frxReportVendas);
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filtered := False;
end;

end.
