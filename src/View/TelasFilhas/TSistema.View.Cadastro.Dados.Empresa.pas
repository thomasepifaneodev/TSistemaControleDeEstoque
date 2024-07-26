unit TSistema.View.Cadastro.Dados.Empresa;

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
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxDBEdit, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, uDmDadosConsultas,
  Data.DB, ControleConsultaEmpresa, Vcl.DBCtrls;

type
  TuFrmCadastroDadosEmpresa = class(TuFrmCadastroDados)
    dxPanelCenter: TdxPanel;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblRazao: TLabel;
    cxDBTextEditRazaoSocial: TcxDBTextEdit;
    lbFantasia: TLabel;
    cxDBTextEditFantasia: TcxDBTextEdit;
    lbEndereco: TLabel;
    cxDBTextEditEndereco: TcxDBTextEdit;
    lbNumero: TLabel;
    cxDBSpinEditNumero: TcxDBSpinEdit;
    lbBairro: TLabel;
    cxDBTextEditBairro: TcxDBTextEdit;
    lbCidade: TLabel;
    cxDBTextEditCidade: TcxDBTextEdit;
    lbUf: TLabel;
    cxDBTextEditUF: TcxDBTextEdit;
    lbTelefone: TLabel;
    cxDBTextEditTelefone: TcxDBTextEdit;
    lbCpfCnpj: TLabel;
    cxDBTextEditCNPJ: TcxDBTextEdit;
    lbEmail: TLabel;
    cxDBTextEditEmail: TcxDBTextEdit;
    lbDataCadastro: TLabel;
    cxDBDateEditCadastro: TcxDBDateEdit;
    dbLogo: TDBImage;
    OpenDialogImg: TOpenDialog;
    lbLogo: TLabel;
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure AtualizaControles;
    procedure AtualizaBotoes;
    procedure cxButton2_EditarClick(Sender: TObject);
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure cxButton3_ImprimirClick(Sender: TObject);
    procedure dxFluentDesignFormClose(Sender: TObject;
      var Action: TCloseAction);
    procedure dxFluentDesignFormCloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure dbLogoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroDadosEmpresa: TuFrmCadastroDadosEmpresa;

implementation

{$R *.dfm}

procedure TuFrmCadastroDadosEmpresa.AtualizaBotoes;
begin
 cxButton1_Salvar.Enabled := Not cxButton1_Salvar.Enabled;
 cxButton2_Editar.Enabled := Not cxButton2_Editar.Enabled;
 cxButton3_Imprimir.Enabled := Not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmCadastroDadosEmpresa.AtualizaControles;
begin
  cxDBTextEditRazaoSocial.Enabled := Not cxDBTextEditRazaoSocial.Enabled;
  cxDBTextEditFantasia.Enabled := Not cxDBTextEditFantasia.Enabled;
  cxDBTextEditEndereco.Enabled := Not cxDBTextEditEndereco.Enabled;
  cxDBSpinEditNumero.Enabled := Not cxDBSpinEditNumero.Enabled;
  cxDBTextEditBairro.Enabled := Not cxDBTextEditBairro.Enabled;
  cxDBTextEditCidade.Enabled := Not cxDBTextEditCidade.Enabled;
  cxDBTextEditUF.Enabled := Not cxDBTextEditUF.Enabled;
  cxDBTextEditTelefone.Enabled := Not cxDBTextEditTelefone.Enabled;
  cxDBTextEditCNPJ.Enabled := Not cxDBTextEditCNPJ.Enabled;
  cxDBTextEditEmail.Enabled := Not cxDBTextEditEmail.Enabled;
  dbLogo.Enabled := Not dbLogo.Enabled;
end;

procedure TuFrmCadastroDadosEmpresa.cxButton1_SalvarClick(Sender: TObject);
begin
  inherited;
  try
      ControleConsultaEmpresa.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      AtualizaBotoes;
      AtualizaControles;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
  end;
end;

procedure TuFrmCadastroDadosEmpresa.cxButton2_EditarClick(Sender: TObject);
begin
  inherited;
  EditarInformacoes;
  AtualizaBotoes;
  AtualizaControles;
  cxDBTextEditRazaoSocial.SetFocus;
end;

procedure TuFrmCadastroDadosEmpresa.cxButton3_ImprimirClick(Sender: TObject);
var
  registroID: Integer;
begin
  inherited;
  registroID := dmDadosConsultas.fdQueryEmpresaid_empresa.Value;
  dmDadosConsultas.fdQueryEmpresa.Filter := 'id_empresa= ' + registroID.ToString;
  dmDadosConsultas.fdQueryEmpresa.Filtered := True;
  //RelatorioProdutosDetalhes(frxReportProdutosDetalhes, registroID);
  dmDadosConsultas.fdQueryEmpresa.Filtered := False;
end;

procedure TuFrmCadastroDadosEmpresa.dbLogoClick(Sender: TObject);
begin
  inherited;
  OpenDialogImg.Execute();
  if OpenDialogImg.FileName <> '' then
  begin
    dbLogo.Picture.LoadFromFile(OpenDialogImg.FileName);
  end;
end;

procedure TuFrmCadastroDadosEmpresa.dxFluentDesignFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
inherited;
  if (dmDadosConsultas.fdTransactionEmpresa.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmCadastroDadosEmpresa.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosConsultas.fdQueryEmpresa.State in [dsEdit, dsInsert]) then
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

procedure TuFrmCadastroDadosEmpresa.dxFluentDesignFormShow(Sender: TObject);
begin
  inherited;
  AtualizaControles;
  ConsultarEmpresa;
end;

end.
