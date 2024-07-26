unit TSistema.View.Cadastro.Dados.Produtos;

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
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxLabel, cxTextEdit,
  cxDBEdit, ControleConsultaProdutos, uDmDadosConsultas, cxCurrencyEdit,
  cxMaskEdit, cxSpinEdit, Data.DB, cxDropDownEdit, frxSmartMemo, frCoreClasses,
  frxDBSet, RelatoriosSistema;

type
  TuFrmCadastroDadosProdutos = class(TuFrmCadastroDados)
    dxPanelCenter: TdxPanel;
    lblDescricao: TLabel;
    lblUnidade: TLabel;
    lblIdFornec: TLabel;
    lblEstoqueMin: TLabel;
    lblEstoque: TLabel;
    lblCusto: TLabel;
    lblPrecoVenda: TLabel;
    cxDBText1DescricaoProduto: TcxDBTextEdit;
    cxDBText2UnidadeProduto: TcxDBTextEdit;
    cxDBText4QuantidadeMinima: TcxDBTextEdit;
    cxDBText5Estoque: TcxDBTextEdit;
    cxDBText6Custo: TcxDBTextEdit;
    cxDBText8PrecoVenda: TcxDBTextEdit;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigo: TcxLabel;
    cxDBText3IdFornecedor: TcxDBTextEdit;
    frxDBDatasetProdutosDetalhes: TfrxDBDataset;
    frxReportProdutosDetalhes: TfrxReport;
    procedure AtualizaBotoes;
    procedure AtualizaBoxText;
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure cxButton2_EditarClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure dxFluentDesignFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroDadosProdutos: TuFrmCadastroDadosProdutos;

implementation

{$R *.dfm}

procedure TuFrmCadastroDadosProdutos.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmCadastroDadosProdutos.AtualizaBoxText;
begin
  cxDBText1DescricaoProduto.Enabled := not cxDBText1DescricaoProduto.Enabled;
  cxDBText2UnidadeProduto.Enabled := not cxDBText2UnidadeProduto.Enabled;
  cxDBText3IdFornecedor.Enabled := not cxDBText3IdFornecedor.Enabled;
  cxDBText4QuantidadeMinima.Enabled := not cxDBText4QuantidadeMinima.Enabled;
  cxDBText5Estoque.Enabled := not cxDBText5Estoque.Enabled;
  cxDBText6Custo.Enabled := not cxDBText6Custo.Enabled;
  cxDBText8PrecoVenda.Enabled := not cxDBText8PrecoVenda.Enabled;
end;


procedure TuFrmCadastroDadosProdutos.cxButton1_SalvarClick(Sender: TObject);
begin
  inherited;
  try
    ControleConsultaProdutos.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
    end;
end;

procedure TuFrmCadastroDadosProdutos.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBText1DescricaoProduto.SetFocus;
  EditarInformacoes;
end;

procedure TuFrmCadastroDadosProdutos.cxButton3_ImprimirClick(Sender: TObject);
var
  registroID: Integer;
begin
  inherited;
  registroID := dmDadosConsultas.fdQueryProdutosid_produto.Value;
  dmDadosConsultas.fdQueryProdutos.Filter := 'id_produto= ' + registroID.ToString;
  dmDadosConsultas.fdQueryProdutos.Filtered := True;
  RelatorioProdutosDetalhes(frxReportProdutosDetalhes, registroID);
  dmDadosConsultas.fdQueryProdutos.Filtered := False;
end;

procedure TuFrmCadastroDadosProdutos.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (dmDadosConsultas.fdTransactionProdutos.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmCadastroDadosProdutos.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosConsultas.fdQueryProdutos.State in [dsEdit, dsInsert]) then
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

procedure TuFrmCadastroDadosProdutos.dxFluentDesignFormCreate(Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosConsultas.fdQueryProdutosid_produto.Value.ToString;
end;

procedure TuFrmCadastroDadosProdutos.dxFluentDesignFormShow(Sender: TObject);
begin
  inherited;
  if (dmDadosConsultas.fdQueryProdutos.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
  end
  else if (dmDadosConsultas.fdQueryProdutos.State in [dsInsert]) then
  begin
    cxDBText1DescricaoProduto.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
  end
  else
  begin
    AtualizaBoxText;
    uFrmCadastroDadosProdutos.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
  end;
end;

end.
