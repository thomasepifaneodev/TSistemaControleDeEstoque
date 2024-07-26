unit TSistema.View.Cadastro.Visualizacao.Clientes;

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
  cxEdit, cxFilter, cxCustomData, cxStyles, dxScrollbarAnnotations, cxTL,
  cxTLdxBarBuiltInMenu, dxCore, cxClasses, dxLayoutLookAndFeels, dxSkinsForm,
  cxInplaceContainer, cxTLData, cxDBTL, cxTextEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, dxPanel, dxLayoutContainer, dxLayoutControl, uDmDadosConsultas,
  Data.DB, cxMaskEdit, cxCalendar, dxBarBuiltInMenu, cxCustomPivotGrid,
  cxDBPivotGrid, cxVGrid, cxDBVGrid, cxSchedulercxGridConnection,
  TSistema.View.Cadastro.Dados.Clientes, ControleConsultaClientes, frxSmartMemo,
  frxClass, frCoreClasses, frxDBSet, cxDropDownEdit, cxImageComboBox,
  frxExportBaseDialog, frxExportPDF, RelatoriosSistema;

type
  TuFrmCadastroPrincipalVisualizacaoClientes = class(TuFrmCadastroPrincipalPai)
    cxDBTreeListClientes: TcxDBTreeList;
    cxDBTreeListClientesid_cliente: TcxDBTreeListColumn;
    cxDBTreeListClientesnome: TcxDBTreeListColumn;
    cxDBTreeListClientesuf: TcxDBTreeListColumn;
    cxDBTreeListClientestelefone: TcxDBTreeListColumn;
    cxDBTreeListClientescpf: TcxDBTreeListColumn;
    cxDBTreeListClientescadastro: TcxDBTreeListColumn;
    cxButton3_Imprimir: TcxButton;
    frxDBDatasetClientes: TfrxDBDataset;
    frxReportClientes: TfrxReport;
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelInfoFormulario: TcxLabel;
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
    procedure cxDBTreeListClientesDblClick(Sender: TObject);
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure CriarFormulario();
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroPrincipalVisualizacaoClientes: TuFrmCadastroPrincipalVisualizacaoClientes;

implementation

{$R *.dfm}

procedure TuFrmCadastroPrincipalVisualizacaoClientes.CriarFormulario;
begin
  try
    uFrmCadastroDadosCliente := TuFrmCadastroDadosCliente.Create(Self);
    uFrmCadastroDadosCliente.ShowModal;
  finally
    uFrmCadastroDadosCliente.Free;
    uFrmCadastroDadosCliente := nil;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxButton1_NovoClick(
  Sender: TObject);
begin
  inherited;
  ControleConsultaClientes.InserirClientes;
  CriarFormulario;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxButton2_ExibirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListClientes.AbsoluteCount >= 1 then
  begin
   ControleConsultaClientes.ConsultarClientes;
   CriarFormulario;
  end
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxButton3_ExcluirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListClientes.AbsoluteCount >= 1 then
  begin
  if Application.MessageBox('Deseja realmente excluir o cliente?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
  begin
    {}
  end
  else
  begin
    ControleConsultaClientes.ExcluirClientes;
  end;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxButton3_ImprimirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListClientes.AbsoluteCount >= 1 then
  begin
    cxDBTreeListClientes.DataController.DataSource := nil;
    RelatorioListagemDeClientes(frxReportClientes);
    cxDBTreeListClientes.DataController.DataSource := dmDadosConsultas.fdDataSourceClientes;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxDBTreeListClientesDblClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
    CriarFormulario;
  end;
end;

procedure TuFrmCadastroPrincipalVisualizacaoClientes.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleConsultaClientes.ConsultarClientes;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListClientes.DataController.DataSource := dmDadosConsultas.fdDataSourceClientes;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosConsultas.fdQueryClientes.Filter := 'id_cliente LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryClientes.Filtered := True;
        cxDBTreeListClientes.DataController.DataSource := dmDadosConsultas.fdDataSourceClientes;
      end;

      1,-1: begin
        dmDadosConsultas.fdQueryClientes.Filter := 'nome LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryClientes.Filtered := True;
        cxDBTreeListClientes.DataController.DataSource := dmDadosConsultas.fdDataSourceClientes;
      end;

      2: begin
        dmDadosConsultas.fdQueryClientes.Filter := 'cpf LIKE ''%' + FilterValue + '%''';
        dmDadosConsultas.fdQueryClientes.Filtered := True;
        cxDBTreeListClientes.DataController.DataSource := dmDadosConsultas.fdDataSourceClientes;
      end;
    end;

  end
  else
  begin
    dmDadosConsultas.fdQueryClientes.Filtered := False;
    cxDBTreeListClientes.DataController.DataSource := nil;
  end;
end;
end.
