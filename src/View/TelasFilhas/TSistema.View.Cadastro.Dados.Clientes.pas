unit TSistema.View.Cadastro.Dados.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
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
  Vcl.Menus, dxCore, cxClasses, dxLayoutLookAndFeels, dxSkinsForm, Vcl.StdCtrls,
  cxButtons, dxPanel, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  cxLabel, cxDBLabel, cxDBEdit, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Data.DB, Vcl.Dialogs, ControleConsultaClientes,
  uDmDadosConsultas, dxLayoutcxEditAdapters, dxFormattedLabel, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, frxSmartMemo, frxClass, frCoreClasses, frxDBSet, frxGradient,
  frxExportBaseDialog, frxExportPDF, RelatoriosSistema;

type
  TuFrmCadastroDadosCliente = class(TuFrmCadastroDados)
    DataSourceClientes: TDataSource;
    dxPanelTop: TdxPanel;
    dxPanelCenter: TdxPanel;
    cxDBText10Telefone: TcxDBTextEdit;
    cxDBText1NomeCliente: TcxDBTextEdit;
    cxDBText2CpfCnpjCliente: TcxDBTextEdit;
    cxDBText3EnderecoCliente: TcxDBTextEdit;
    cxDBText4NumeroEndereco: TcxDBTextEdit;
    cxDBText5CidadeCliente: TcxDBTextEdit;
    cxDBText6UfCliente: TcxDBTextEdit;
    cxDBText7BairroCliente: TcxDBTextEdit;
    cxDBText8CEP: TcxDBTextEdit;
    cxDBText9EmailCliente: TcxDBTextEdit;
    lblNome: TLabel;
    lblCpfCpnj: TLabel;
    lblEndereco: TLabel;
    lblNumeroEndereco: TLabel;
    lblCidadeCliente: TLabel;
    lblUfEstado: TLabel;
    lblBairro: TLabel;
    lblCep: TLabel;
    lblTelefone: TLabel;
    lblEmail7: TLabel;
    cxLabelTop: TcxLabel;
    frxDBDatasetClientesDetalhes: TfrxDBDataset;
    frxReportClientesDetalhes: TfrxReport;
    lblCodigo: TcxLabel;
    procedure dxFluentDesignFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure dxFluentDesignFormCreate(Sender: TObject);
    procedure AtualizaBotoes;
    procedure AtualizaBoxText;
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure cxButton2_EditarClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroDadosCliente: TuFrmCadastroDadosCliente;

implementation

{$R *.dfm}

procedure TuFrmCadastroDadosCliente.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmCadastroDadosCliente.AtualizaBoxText;
begin
  cxDBText1NomeCliente.Enabled := not cxDBText1NomeCliente.Enabled;
  cxDBText10Telefone.Enabled := not cxDBText10Telefone.Enabled;
  cxDBText2CpfCnpjCliente.Enabled := not cxDBText2CpfCnpjCliente.Enabled;
  cxDBText3EnderecoCliente.Enabled := not cxDBText3EnderecoCliente.Enabled;
  cxDBText4NumeroEndereco.Enabled := not cxDBText4NumeroEndereco.Enabled;
  cxDBText5CidadeCliente.Enabled := not cxDBText5CidadeCliente.Enabled;
  cxDBText6UfCliente.Enabled := not cxDBText6UfCliente.Enabled;
  cxDBText7BairroCliente.Enabled := not cxDBText7BairroCliente.Enabled;
  cxDBText8CEP.Enabled := not cxDBText8CEP.Enabled;
  cxDBText9EmailCliente.Enabled := not cxDBText9EmailCliente.Enabled;
end;

procedure TuFrmCadastroDadosCliente.cxButton1_SalvarClick(Sender: TObject);
var
FecharApp : Boolean;
begin
  inherited;
    try
      ControleConsultaClientes.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
    end;
end;

procedure TuFrmCadastroDadosCliente.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBText1NomeCliente.SetFocus;
  EditarInformacoes;
end;

procedure TuFrmCadastroDadosCliente.cxButton3_ImprimirClick(Sender: TObject);
var
  registroID: Integer;
begin
  inherited;
  registroID := dmDadosConsultas.fdQueryClientesid_cliente.Value;
  dmDadosConsultas.fdQueryClientes.Filter := 'id_cliente= ' + registroID.ToString;
  dmDadosConsultas.fdQueryClientes.Filtered := True;
  RelatorioClientesDetalhes(frxReportClientesDetalhes, registroID);
  dmDadosConsultas.fdQueryClientes.Filtered := False;
end;

procedure TuFrmCadastroDadosCliente.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (dmDadosConsultas.fdTransactionClientes.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmCadastroDadosCliente.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosConsultas.fdQueryClientes.State in [dsEdit, dsInsert]) then
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

procedure TuFrmCadastroDadosCliente.dxFluentDesignFormCreate(Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosConsultas.fdQueryClientesid_cliente.Value.ToString;
end;

procedure TuFrmCadastroDadosCliente.dxFluentDesignFormShow(Sender: TObject);
begin
  inherited;
  if (dmDadosConsultas.fdQueryClientes.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
  end
  else if (dmDadosConsultas.fdQueryClientes.State in [dsInsert]) then
  begin
    cxDBText1NomeCliente.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
  end
  else
  begin
    AtualizaBoxText;
    uFrmCadastroDadosCliente.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
  end;
end;
end.
