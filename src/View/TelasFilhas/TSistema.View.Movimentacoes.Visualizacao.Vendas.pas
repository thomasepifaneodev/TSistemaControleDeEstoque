unit TSistema.View.Movimentacoes.Visualizacao.Vendas;

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
  cxButtons, dxPanel, dxLayoutContainer, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, TSistema.View.Movimentacoes.Dados.Vendas,
  ControleMovimentacoesSaidas, uDmDadosMovimentacoes, frxSmartMemo,
  frCoreClasses, frxDBSet;

type
  TuFrmMovimentacoesVenda = class(TuFrmCadastroPrincipalPai)
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelFiltro: TcxLabel;
    cxButton3_Imprimir: TcxButton;
    cxGridListaDeVenda: TcxGrid;
    cxDBTreeListVenda: TcxGridDBTableView;
    cxDBTreeListVendavalor: TcxGridDBColumn;
    cxDBTreeListVendacadastro: TcxGridDBColumn;
    cxGridListaDeVendaLevelCompras: TcxGridLevel;
    cxDBTreeListVendaid_venda: TcxGridDBColumn;
    cxDBTreeListVendanomecliente: TcxGridDBColumn;
    procedure CriarFormulario;
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure cxDBTreeListVendaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesVenda: TuFrmMovimentacoesVenda;

implementation

{$R *.dfm}

{ TuFrmMovimentacoesVenda }

procedure TuFrmMovimentacoesVenda.CriarFormulario;
begin
  try
  uFrmMovimentacoesDadosVenda := TuFrmMovimentacoesDadosVenda.Create(Self);
  uFrmMovimentacoesDadosVenda.ShowModal;
 finally
  uFrmMovimentacoesDadosVenda.Free;
  uFrmMovimentacoesDadosVenda := nil;
 end;
end;

procedure TuFrmMovimentacoesVenda.cxButton1_NovoClick(Sender: TObject);
begin
  inherited;
  ControleMovimentacoesSaidas.InserirMovimentacoesSaidas;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesVenda.cxButton2_ExibirClick(Sender: TObject);
begin
  inherited;
  if not (cxDBTreeListVenda.DataController.DataSource = nil) then
  begin
   ControleMovimentacoesSaidas.ConsultarMovimentacoesSaidas;
   dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Filter := 'id_venda =' + dmDadosMovimentacoes.fdQueryMovimentacoesVendaid_venda.Value.ToString;
   dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Filtered := True;
   CriarFormulario;
   dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Filtered := False;
  end;

end;

procedure TuFrmMovimentacoesVenda.cxButton3_ExcluirClick(Sender: TObject);
begin
  inherited;
  if not (cxDBTreeListVenda.DataController.DataSource = nil) then
  begin
  if Application.MessageBox('Deseja realmente excluir a venda?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
  begin
    //
  end
  else
  begin
    ControleMovimentacoesSaidas.ExcluirMovimentacoesSaidas(dmDadosMovimentacoes.fdQueryMovimentacoesVendaid_venda.Value);
    cxDBTreeListVenda.DataController.DataSource.DataSet.Refresh;
  end;
  end;
end;

procedure TuFrmMovimentacoesVenda.cxButton3_ImprimirClick(Sender: TObject);
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

procedure TuFrmMovimentacoesVenda.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmMovimentacoesVenda.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmMovimentacoesVenda.cxDBTreeListVendaDblClick(Sender: TObject);
begin
  inherited;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesVenda.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleMovimentacoesSaidas.ConsultarMovimentacoesSaidas;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListVenda.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filter := 'id_venda LIKE ''%' + FilterValue + '%''';
        dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filtered := True;
        cxDBTreeListVenda.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesVenda;
      end;

      {1,-1: begin
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filter := 'nomefornecedor LIKE ''%' + FilterValue + '%''';;
        dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Filtered := True;
        cxDBTreeListCompras.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceMovimentacoesCompra;
      end;}
    end;
  end
  else
  begin
    dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Filtered := False;
    cxDBTreeListVenda.DataController.DataSource := nil;
  end;

end;

procedure TuFrmMovimentacoesVenda.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FechaConexao;
end;

end.
