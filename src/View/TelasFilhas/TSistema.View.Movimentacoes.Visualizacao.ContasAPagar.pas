unit TSistema.View.Movimentacoes.Visualizacao.ContasAPagar;

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
  cxImageComboBox, uDmDadosMovimentacoes, TSistema.View.Movimentacoes.Dados.ContasAPagar,
  ControleConsultaContasAPagar;

type
  TuFrmMovimentacoesContasAPagar = class(TuFrmCadastroPrincipalPai)
    cxDBTreeListContasAPagar: TcxDBTreeList;
    cxDBTreeListContasAPagarIdConta: TcxDBTreeListColumn;
    cxDBTreeListContasAPagarFornecedor: TcxDBTreeListColumn;
    cxDBTreeListContasAPagarSituacao: TcxDBTreeListColumn;
    cxDBTreeListContasAPagarValor: TcxDBTreeListColumn;
    cxComboBoxFiltro: TcxImageComboBox;
    cxLabelFiltro: TcxLabel;
    procedure CriarFormulario;
    procedure cxButton1_NovoClick(Sender: TObject);
    procedure cxButton2_ExibirClick(Sender: TObject);
    procedure cxButton3_ExcluirClick(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesChange(Sender: TObject);
    procedure cxComboBoxFiltroPropertiesInitPopup(Sender: TObject);
    procedure cxDBTreeListContasAPagarDblClick(Sender: TObject);
    procedure cxTextEditSourcePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmMovimentacoesContasAPagar: TuFrmMovimentacoesContasAPagar;

implementation

{$R *.dfm}

{ TuFrmMovimentacoesContasAPagar }

procedure TuFrmMovimentacoesContasAPagar.CriarFormulario;
begin
  try
    uFrmMovimentacoesDadosContasAPagar := TuFrmMovimentacoesDadosContasAPagar.Create(Self);
    uFrmMovimentacoesDadosContasAPagar.ShowModal;
  finally
    uFrmMovimentacoesDadosContasAPagar.Free;
    uFrmMovimentacoesDadosContasAPagar := nil;
  end;
end;

procedure TuFrmMovimentacoesContasAPagar.cxButton1_NovoClick(Sender: TObject);
begin
  inherited;
  ControleConsultaContasAPagar.InserirContasAPagar;
  CriarFormulario;
end;

procedure TuFrmMovimentacoesContasAPagar.cxButton2_ExibirClick(Sender: TObject);
begin
  inherited;
  if cxDBTreeListContasAPagar.AbsoluteCount >= 1 then
  begin
   ControleConsultaContasAPagar.ConsultarContasAPagar;
   CriarFormulario;
  end
end;

procedure TuFrmMovimentacoesContasAPagar.cxButton3_ExcluirClick(
  Sender: TObject);
begin
  inherited;
   if cxDBTreeListContasAPagar.AbsoluteCount >= 1 then
    begin
    if Application.MessageBox('Deseja realmente excluir o produto?', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_YESNO) = mrNo then
    begin
      {}
    end
    else
    begin
      ControleConsultaContasAPagar.ExcluirContasAPagar;
    end;
    end;
end;

procedure TuFrmMovimentacoesContasAPagar.cxComboBoxFiltroPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxTextEditSource.SetFocus;
end;

procedure TuFrmMovimentacoesContasAPagar.cxComboBoxFiltroPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  cxComboBoxFiltro.Clear;
end;

procedure TuFrmMovimentacoesContasAPagar.cxDBTreeListContasAPagarDblClick(
  Sender: TObject);
begin
  inherited;
  if TcxDBTreeList(Sender).HitTest.HitAtNode then
  begin
    CriarFormulario;
  end;
end;

procedure TuFrmMovimentacoesContasAPagar.cxTextEditSourcePropertiesChange(
  Sender: TObject);
var
  FilterValue: string;
begin
  inherited;
  ControleConsultaContasAPagar.ConsultarContasAPagar;

  if cxTextEditSource.Text = '' then
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecNormal
  else
    cxTextEditSource.Properties.CharCase := TEditCharCase.ecUpperCase;

  FilterValue := cxTextEditSource.Text;
  if FilterValue.Contains('\') then
  begin
    cxDBTreeListContasAPagar.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceContasAPagar;
  end
  else if not FilterValue.Contains('\') AND (FilterValue <> '') then
  begin
    case cxComboBoxFiltro.ItemIndex of
      0: begin
        dmDadosMovimentacoes.fdQueryContasAPagar.Filter := 'id_sequencia LIKE ''%' + FilterValue + '%''';
        dmDadosMovimentacoes.fdQueryContasAPagar.Filtered := True;
        cxDBTreeListContasAPagar.DataController.DataSource := dmDadosMovimentacoes.fdDataSourceContasAPagar
      end;
    end;
  end
  else
  begin
    dmDadosMovimentacoes.fdQueryContasAPagar.Filtered := False;
    cxDBTreeListContasAPagar.DataController.DataSource := nil;
  end;
end;

end.
