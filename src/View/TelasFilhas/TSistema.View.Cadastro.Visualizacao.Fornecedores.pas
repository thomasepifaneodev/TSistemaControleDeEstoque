unit TSistema.View.Cadastro.Visualizacao.Fornecedores;

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
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxDropDownEdit,
  cxImageComboBox, Data.DB, cxCalendar, ControleConsultaFornecedores,
  TSistema.View.Cadastro.Dados.Fornecedores, frxSmartMemo, frxDBSet, frCoreClasses, uDmDadosConsultas, RelatoriosSistema;

type
  TuFrmCadastroPrincipalVisualizacaoFornecedores = class(TuFrmCadastroPrincipalPai)
    cxDBTreeListFornecedores: TcxDBTreeList;
    cxLabelFiltro: TcxLabel;
    cxComboBoxFiltro: TcxImageComboBox;
    cxDBTreeListFornecedoresidfornecedor: TcxDBTreeListColumn;
    cxDBTreeListFornecedoresnome: TcxDBTreeListColumn;
    cxDBTreeListFornecedoresuf: TcxDBTreeListColumn;
    cxDBTreeListFornecedorestelefone: TcxDBTreeListColumn;
    cxDBTreeListFornecedorescpfcnpj: TcxDBTreeListColumn;
    cxDBTreeListFornecedorescadastro: TcxDBTreeListColumn;
    cxButton3_Imprimir: TcxButton;
    frxReportFornecedores: TfrxReport;
    frxDBDatasetFornecedores: TfrxDBDataset;
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure CriarFormulario();
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxDBTreeListFornecedoresDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroPrincipalVisualizacaoFornecedores: TuFrmCadastroPrincipalVisualizacaoFornecedores;

implementation

{$R *.dfm}

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.CriarFormulario;
begin
  try
    uFrmCadastroDadosFornecedores := TuFrmCadastroDadosFornecedores.Create(Self);
    uFrmCadastroDadosFornecedores.ShowModal;
  finally
    uFrmCadastroDadosFornecedores.Free;
    uFrmCadastroDadosFornecedores := nil;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxButton1_NovoClick(
  Sender: TObject);
begin
  inherited;
  ControleConsultaFornecedores.InserirFornecedores;
  CriarFormulario;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxButton2_ExibirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListFornecedores.AbsoluteCount >= 1 then
  begin
   ControleConsultaFornecedores.ConsultarFornecedores;
   CriarFormulario;
  end
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxButton3_ExcluirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListFornecedores.AbsoluteCount >= 1 then
    begin
    if Application.MessageBox('Deseja realmente excluir o fornecedor?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
    begin
      {}
    end
    else
    begin
      ControleConsultaFornecedores.ExcluirFornecedores;
    end;
    end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxButton3_ImprimirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListFornecedores.AbsoluteCount >= 1 then
  begin
    cxDBTreeListFornecedores.DataController.DataSource := nil;
    RelatorioListagemDeFornecedores(frxReportFornecedores);
    cxDBTreeListFornecedores.DataController.DataSource := dmDadosConsultas.fdDataSourceFornecedores;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxDBTreeListFornecedoresDblClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
    CriarFormulario;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoFornecedores.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ConsultarFornecedores;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListFornecedores.DataController.DataSource := dmDadosConsultas.fdDataSourceFornecedores;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosConsultas.fdQueryFornecedores.Filter := 'id_fornecedor LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryFornecedores.Filtered := True;
        cxDBTreeListFornecedores.DataController.DataSource := dmDadosConsultas.fdDataSourceFornecedores;
      end;

      1,-1: begin
        dmDadosConsultas.fdQueryFornecedores.Filter := 'nome LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryFornecedores.Filtered := True;
        cxDBTreeListFornecedores.DataController.DataSource := dmDadosConsultas.fdDataSourceFornecedores;
      end;

      2: begin
        dmDadosConsultas.fdQueryFornecedores.Filter := 'cnpj LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryFornecedores.Filtered := True;
        cxDBTreeListFornecedores.DataController.DataSource := dmDadosConsultas.fdDataSourceFornecedores;
      end;
    end;
  end
  else
  begin
    dmDadosConsultas.fdQueryFornecedores.Filtered := False;
    cxDBTreeListFornecedores.DataController.DataSource := nil;
  end;
end;
end.
