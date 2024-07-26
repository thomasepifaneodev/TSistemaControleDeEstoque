unit TSistema.View.Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxUIAClasses, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, uDmDadosPrincipal,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, dxCore, cxTextEdit,
  cxContainer, cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxLabel,
  dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, Vcl.ExtCtrls,
  Vcl.ComCtrls, fqbClass, cxStyles, cxCustomData, cxFilter, cxData, TSistema.View.LoginConfiguracao,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, TSistema.View.Cadastro.Visualizacao.Clientes,
  TSistema.View.Cadastro.Visualizacao.Fornecedores, TSistema.View.Cadastro.Visualizacao.Produtos,
  TSistema.View.Cadastro.Dados.Empresa, TSistema.View.Movimentacoes.Visualizacao.Compras,
  TSistema.View.Movimentacoes.Visualizacao.Vendas, ControleUlib, ControleConexao, TSistema.View.Login,
  TSistema.View.Movimentacoes.Visualizacao.ContasAPagar, TSistema.View.Movimentacoes.Visualizacao.ContasAReceber,
  uDmDadosMovimentacoes, uDmDadosConsultas;

type
  TuFrmPrincipal = class(TdxRibbonForm)
    dxBarManagerPrincipal: TdxBarManager;
    dxBarManagerBar: TdxBar;
    dxRibbon: TdxRibbon;
    dxRibbonTabCadastros: TdxRibbonTab;
    dxRibbonStatusBar: TdxRibbonStatusBar;
    dxSkinController: TdxSkinController;
    dxRibbonTabMovimentacoes: TdxRibbonTab;
    dxRibbonTabAjuda: TdxRibbonTab;
    Timer: TTimer;
    dxBarManagerPrincipalBarInfoBasic: TdxBar;
    btn1_CadClientes: TdxBarLargeButton;
    btn2_CadFornecedores: TdxBarLargeButton;
    btn3_CadProdutos: TdxBarLargeButton;
    btn4_CadEmpresa: TdxBarLargeButton;
    btn5_CadUsuarios: TdxBarLargeButton;
    dxBarManagerPrincipalBar1: TdxBar;
    btn1_Compras: TdxBarLargeButton;
    btn2_Vendas: TdxBarLargeButton;
    btn3_ContasAPagar: TdxBarLargeButton;
    btn4_ContasaReceber: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btn1_CadClientesClick(Sender: TObject);
    procedure btn2_CadFornecedoresClick(Sender: TObject);
    procedure btn3_CadProdutosClick(Sender: TObject);
    procedure btn4_CadEmpresaClick(Sender: TObject);
    procedure btn1_ComprasClick(Sender: TObject);
    procedure btn2_VendasClick(Sender: TObject);
    procedure btn3_ContasAPagarClick(Sender: TObject);
    procedure btn4_ContasaReceberClick(Sender: TObject);
    procedure EncerrarAplicacao;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmPrincipal: TuFrmPrincipal;

implementation

{$R *.dfm}

{ TForm }

procedure TuFrmPrincipal.btn1_CadClientesClick(Sender: TObject);
begin
  uFrmCadastroPrincipalVisualizacaoClientes := TuFrmCadastroPrincipalVisualizacaoClientes.Create(Self);
  try
    uFrmCadastroPrincipalVisualizacaoClientes.ShowModal;
  finally
    uFrmCadastroPrincipalVisualizacaoClientes.Free;
  end;
end;

procedure TuFrmPrincipal.btn1_ComprasClick(Sender: TObject);
begin
 uFrmMovimentacoesCompra := TuFrmMovimentacoesCompra.Create(Self);
  try
    uFrmMovimentacoesCompra.ShowModal;
  finally
    uFrmMovimentacoesCompra.Free
  end;
end;

procedure TuFrmPrincipal.btn2_CadFornecedoresClick(Sender: TObject);
begin
  uFrmCadastroPrincipalVisualizacaoFornecedores := TuFrmCadastroPrincipalVisualizacaoFornecedores.Create(Self);
  try
    uFrmCadastroPrincipalVisualizacaoFornecedores.ShowModal;
  finally
    uFrmCadastroPrincipalVisualizacaoFornecedores.Free
  end;

end;

procedure TuFrmPrincipal.btn2_VendasClick(Sender: TObject);
begin
  uFrmMovimentacoesVenda := TuFrmMovimentacoesVenda.Create(Self);
  try
    uFrmMovimentacoesVenda.ShowModal;
  finally
    uFrmMovimentacoesVenda.Free
  end;
end;

procedure TuFrmPrincipal.btn3_CadProdutosClick(Sender: TObject);
begin
  uFrmCadastroPrincipalVisualizacaoProdutos := TuFrmCadastroPrincipalVisualizacaoProdutos.Create(Self);
  try
    uFrmCadastroPrincipalVisualizacaoProdutos.ShowModal;
  finally
    uFrmCadastroPrincipalVisualizacaoProdutos.Free;
  end;
end;

procedure TuFrmPrincipal.btn3_ContasAPagarClick(Sender: TObject);
begin
  uFrmMovimentacoesContasAPagar := TuFrmMovimentacoesContasAPagar.Create(Self);
  try
    uFrmMovimentacoesContasAPagar.ShowModal;
  finally
    uFrmMovimentacoesContasAPagar.Free;
  end;
end;

procedure TuFrmPrincipal.btn4_CadEmpresaClick(Sender: TObject);
begin
  uFrmCadastroDadosEmpresa := TuFrmCadastroDadosEmpresa.Create(Self);
  try
    uFrmCadastroDadosEmpresa.ShowModal;
  finally
    uFrmCadastroDadosEmpresa.Free;
  end;
end;

procedure TuFrmPrincipal.btn4_ContasaReceberClick(Sender: TObject);
begin
  uFrmMovimentacoesContasAReceber := TuFrmMovimentacoesContasAReceber.Create(Self);
  try
    uFrmMovimentacoesContasAReceber.ShowModal;
  finally
    uFrmMovimentacoesContasAReceber.Free;
  end;
end;

procedure TuFrmPrincipal.EncerrarAplicacao;
begin
  uFrmPrincipal.Free;
  dmDadosPrincipal.Free;
  dmDadosConsultas.Free;
  dmDadosMovimentacoes.Free;
end;

procedure TuFrmPrincipal.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  if not ArquivoINIExiste(ExtractFilePath(Application.ExeName) + 'TSistema.ini') then
  begin
    Application.MessageBox('Arquivo de configuração não encontrado!', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_OK);
    uFrmConfig := TuFrmConfig.Create(nil);
    try
      uFrmConfig.ShowModal;
    finally
      uFrmConfig.Free;
    end;
  end;

  uFrmLogin := TuFrmLogin.Create(nil);
  try
    uFrmLogin.ShowModal;
    if dmDadosPrincipal.fdConnectionPrincipal.Connected then
    begin
      uFrmLogin.ModalResult := ReturnForm(mrOk);
    end
    else
    begin
      ExitProcess(0);
    end;
  finally
  begin
    uFrmLogin.Free;
  end;
  end;

end;

procedure TuFrmPrincipal.TimerTimer(Sender: TObject);
begin
  dxRibbonStatusBar.Panels[0].Text := 'Versão 1.0.0.0';
  dxRibbonStatusBar.Panels[1].Text := DateToStr(Now);
  dxRibbonStatusBar.Panels[2].Text := TimeToStr(Now);
  dxRibbonStatusBar.Panels[3].Text := 'Thomás Epifâneo';
end;
end.
