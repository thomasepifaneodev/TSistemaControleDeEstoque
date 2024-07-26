unit TSistema.View.Cadastro.Dados.Fornecedores;

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
  dxLayoutContainer, dxLayoutControl, frxSmartMemo, frCoreClasses, frxDBSet,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxDBEdit, Data.DB, ControleConsultaFornecedores,
  uDmDadosConsultas, RelatoriosSistema;

type
  TuFrmCadastroDadosFornecedores = class(TuFrmCadastroDados)
    frxDBDatasetFornecedoresDetalhes: TfrxDBDataset;
    frxReportFornecedoresDetalhes: TfrxReport;
    dxPanelCenter: TdxPanel;
    lblNome: TLabel;
    lblCpfCpnj: TLabel;
    lblEndereco: TLabel;
    lblNumeroEndereco: TLabel;
    lblCidadeFornecedor: TLabel;
    lblUfEstado: TLabel;
    lblBairro: TLabel;
    lblCep: TLabel;
    lblTelefone: TLabel;
    lblEmail7: TLabel;
    cxDBText10Telefone: TcxDBTextEdit;
    cxDBText1NomeFornecedor: TcxDBTextEdit;
    cxDBText2CpfCnpjFornecedor: TcxDBTextEdit;
    cxDBText3EnderecoFornecedor: TcxDBTextEdit;
    cxDBText4NumeroEndereco: TcxDBTextEdit;
    cxDBText5CidadeFornecedor: TcxDBTextEdit;
    cxDBText6UfFornecedor: TcxDBTextEdit;
    cxDBText7BairroFornecedor: TcxDBTextEdit;
    cxDBText8CEP: TcxDBTextEdit;
    cxDBText9EmailFornecedor: TcxDBTextEdit;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigoFornec: TcxLabel;
    DataSourceFornecedores: TDataSource;
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
  uFrmCadastroDadosFornecedores: TuFrmCadastroDadosFornecedores;

implementation

{$R *.dfm}

procedure TuFrmCadastroDadosFornecedores.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmCadastroDadosFornecedores.AtualizaBoxText;
begin
  cxDBText1NomeFornecedor.Enabled := not cxDBText1NomeFornecedor.Enabled;
  cxDBText10Telefone.Enabled := not cxDBText10Telefone.Enabled;
  cxDBText2CpfCnpjFornecedor.Enabled := not cxDBText2CpfCnpjFornecedor.Enabled;
  cxDBText3EnderecoFornecedor.Enabled := not cxDBText3EnderecoFornecedor.Enabled;
  cxDBText4NumeroEndereco.Enabled := not cxDBText4NumeroEndereco.Enabled;
  cxDBText5CidadeFornecedor.Enabled := not cxDBText5CidadeFornecedor.Enabled;
  cxDBText6UfFornecedor.Enabled := not cxDBText6UfFornecedor.Enabled;
  cxDBText7BairroFornecedor.Enabled := not cxDBText7BairroFornecedor.Enabled;
  cxDBText8CEP.Enabled := not cxDBText8CEP.Enabled;
  cxDBText9EmailFornecedor.Enabled := not cxDBText9EmailFornecedor.Enabled;
end;

procedure TuFrmCadastroDadosFornecedores.cxButton1_SalvarClick(Sender: TObject);
begin
  inherited;
  try
      ControleConsultaFornecedores.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
    end;
end;

procedure TuFrmCadastroDadosFornecedores.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBText1NomeFornecedor.SetFocus;
  EditarInformacoes;
end;

procedure TuFrmCadastroDadosFornecedores.cxButton3_ImprimirClick(
  Sender: TObject);
var
  registroID: Integer;
begin
  inherited;
  registroID := dmDadosConsultas.fdQueryFornecedoresid_fornecedor.Value;
  dmDadosConsultas.fdQueryFornecedores.Filter := 'id_fornecedor= ' + registroID.ToString;
  dmDadosConsultas.fdQueryFornecedores.Filtered := True;
  RelatorioFornecedoresDetalhes(frxReportFornecedoresDetalhes, registroID);
  dmDadosConsultas.fdQueryFornecedores.Filtered := False;
end;

procedure TuFrmCadastroDadosFornecedores.dxFluentDesignFormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (dmDadosConsultas.fdTransactionFornecedores.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmCadastroDadosFornecedores.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosConsultas.fdQueryFornecedores.State in [dsEdit, dsInsert]) then
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

procedure TuFrmCadastroDadosFornecedores.dxFluentDesignFormCreate(
  Sender: TObject);
begin
  inherited;
  lblCodigoFornec.Caption := dmDadosConsultas.fdQueryFornecedoresid_fornecedor.Value.ToString;
end;

procedure TuFrmCadastroDadosFornecedores.dxFluentDesignFormShow(
  Sender: TObject);
begin
  inherited;
  if (dmDadosConsultas.fdQueryFornecedores.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
  end
  else if (dmDadosConsultas.fdQueryFornecedores.State in [dsInsert]) then
  begin
    cxDBText1NomeFornecedor.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
  end
  else
  begin
    AtualizaBoxText;
    uFrmCadastroDadosFornecedores.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
  end;
end;

end.
