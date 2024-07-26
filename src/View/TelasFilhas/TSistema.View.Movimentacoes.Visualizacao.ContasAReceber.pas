unit TSistema.View.Movimentacoes.Visualizacao.ContasAReceber;

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
  cxEdit, dxCore, cxFilter, cxCustomData, cxStyles, dxScrollbarAnnotations,
  cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  frxClass, frxExportBaseDialog, frxExportPDF, cxClasses, dxLayoutLookAndFeels,
  dxSkinsForm, cxTextEdit, cxLabel, Vcl.StdCtrls, cxButtons, dxPanel,
  dxLayoutContainer, dxLayoutControl, uDmDadosMovimentacoes, ControleConsultaContasAReceber,
  TSistema.View.Movimentacoes.Dados.ContasAReceber, cxDropDownEdit,
  cxImageComboBox;

type
  TuFrmMovimentacoesContasAReceber = class(TuFrmCadastroPrincipalPai)
    cxDBTreeListContasAReceber: TcxDBTreeList;
    cxDBTreeListContasAReceberIdConta: TcxDBTreeListColumn;
    cxDBTreeListContasAReceberFornecedor: TcxDBTreeListColumn;
    cxDBTreeListContasAReceberSituacao: TcxDBTreeListColumn;
    cxDBTreeListContasAReceberValor: TcxDBTreeListColumn;
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelFiltro: TcxLabel;
    procedure CriarFormulario;
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure cxDBTreeListContasAReceberDblClick(Sender: TObject);
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesContasAReceber: TuFrmMovimentacoesContasAReceber;

implementation

{$R *.dfm}

procedure TuFrmMovimentacoesContasAReceber.CriarFormulario;
begin
  try
    uFrmMovimentacoesDadosContasAReceber := TuFrmMovimentacoesDadosContasAReceber.Create(Self);
    uFrmMovimentacoesDadosContasAReceber.ShowModal;
  finally
    uFrmMovimentacoesDadosContasAReceber.Free;
    uFrmMovimentacoesDadosContasAReceber := nil;
  end;
end;

procedure TuFrmMovimentacoesContasAReceber.cxButton1_NovoClick(Sender: TObject);
begin
  inherited;
  ControleConsultaContasAReceber.InserirContasAReceber;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesContasAReceber.cxButton2_ExibirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListContasAReceber.AbsoluteCount >= 1 then
  begin
   ControleConsultaContasAReceber.ConsultarContasAReceber;
   CriarFormulario;
  end
end;

procedure TuFrmMovimentacoesContasAReceber.cxButton3_ExcluirClick(
  Sender: TObject);
begin
  inherited;
  if cxDBTreeListContasAReceber.AbsoluteCount >= 1 then
    begin
    if Application.MessageBox('Deseja realmente excluir o produto?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
    begin
      {}
    end
    else
    begin
      ControleConsultaContasAReceber.ExcluirContasAReceber;
    end;
    end;
end;

procedure TuFrmMovimentacoesContasAReceber.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmMovimentacoesContasAReceber.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmMovimentacoesContasAReceber.cxDBTreeListContasAReceberDblClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
    CriarFormulario;
  end
end;

procedure TuFrmMovimentacoesContasAReceber.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleConsultaContasAReceber.ConsultarContasAReceber;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListContasAReceber.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceContasAReceber;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosMovimentacoes.fdQueryContasAReceber.Filter := 'id_sequencia LIKE ''%' + FilterValue + '%''';
        dmDadosMovimentacoes.fdQueryContasAReceber.Filtered := True;
        cxDBTreeListContasAReceber.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceContasAReceber;
      end;
    end;
  end
  else
  begin
    dmDadosMovimentacoes.fdQueryContasAReceber.Filtered := False;
    cxDBTreeListContasAReceber.DataController.DataSource := nil;
  end;
end;

end.
