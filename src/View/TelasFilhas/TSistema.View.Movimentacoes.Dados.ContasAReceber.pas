unit TSistema.View.Movimentacoes.Dados.ContasAReceber;

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
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxLabel, cxDBEdit,
  cxSpinEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxCurrencyEdit,
  uDmDadosMovimentacoes, ControleConsultaContasAReceber, Data.DB;

type
  TuFrmMovimentacoesDadosContasAReceber = class(TuFrmCadastroDados)
    dxPanelCenter: TdxPanel;
    LabelIdCliente: TLabel;
    LabelValorParcela: TLabel;
    LabelDataVencimento: TLabel;
    LabelDataPagamento: TLabel;
    LabelAtraso: TLabel;
    LabelJuros: TLabel;
    LabelVl_Juros: TLabel;
    LabelTotal_Pagar: TLabel;
    LabelStatus: TLabel;
    LabelNomeCliente: TLabel;
    cxDBCurrencyEditValorParcela: TcxDBCurrencyEdit;
    cxDBDateEditDataVencimento: TcxDBDateEdit;
    cxDBDateEditDataPagamento: TcxDBDateEdit;
    cxDBSpinEditAtraso: TcxDBSpinEdit;
    cxDBCurrencyEditJuros: TcxDBCurrencyEdit;
    cxDBCurrencyEditVl_Juros: TcxDBCurrencyEdit;
    cxDBCurrencyEditTotalConta: TcxDBCurrencyEdit;
    cxDBTextEditStatus: TcxDBTextEdit;
    cxDBTextEditCodigoCliente: TcxDBTextEdit;
    cxDBTextEditNomeCliente: TcxDBTextEdit;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigo: TcxLabel;
    procedure AtualizaBotoes;
    procedure AtualizaBoxText;
    procedure cxButton1_SalvarClick(Sender: TObject);
    procedure cxButton2_EditarClick(Sender: TObject);
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
  uFrmMovimentacoesDadosContasAReceber: TuFrmMovimentacoesDadosContasAReceber;

implementation

{$R *.dfm}

procedure TuFrmMovimentacoesDadosContasAReceber.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmMovimentacoesDadosContasAReceber.AtualizaBoxText;
begin
  cxDBCurrencyEditValorParcela.Enabled := Not cxDBCurrencyEditValorParcela.Enabled;
  cxDBDateEditDataVencimento.Enabled := Not cxDBDateEditDataVencimento.Enabled;
  cxDBDateEditDataPagamento.Enabled := Not cxDBDateEditDataPagamento.Enabled;
  cxDBSpinEditAtraso.Enabled := Not cxDBSpinEditAtraso.Enabled;
  cxDBCurrencyEditJuros.Enabled := Not cxDBCurrencyEditJuros.Enabled;
  cxDBCurrencyEditVl_Juros.Enabled := Not cxDBCurrencyEditVl_Juros.Enabled;
  cxDBCurrencyEditTotalConta.Enabled := Not cxDBCurrencyEditTotalConta.Enabled;
  cxDBTextEditStatus.Enabled := Not cxDBTextEditStatus.Enabled;
  cxDBTextEditCodigoCliente.Enabled := Not cxDBTextEditCodigoCliente.Enabled;
end;


procedure TuFrmMovimentacoesDadosContasAReceber.cxButton1_SalvarClick(
  Sender: TObject);
begin
  inherited;
  try
    ControleConsultaContasAReceber.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
    end;
end;

procedure TuFrmMovimentacoesDadosContasAReceber.cxButton2_EditarClick(
  Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBTextEditCodigoCliente.SetFocus;
  EditarInformacoes;
end;

procedure TuFrmMovimentacoesDadosContasAReceber.dxFluentDesignFormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (dmDadosMovimentacoes.fdTransaction.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmMovimentacoesDadosContasAReceber.dxFluentDesignFormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsEdit, dsInsert]) then
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

procedure TuFrmMovimentacoesDadosContasAReceber.dxFluentDesignFormCreate(
  Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosMovimentacoes.fdQueryContasAReceberid_sequencia.Value.ToString;
end;

procedure TuFrmMovimentacoesDadosContasAReceber.dxFluentDesignFormShow(
  Sender: TObject);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryContasAReceber.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
  end
  else if (dmDadosMovimentacoes.fdQueryContasAReceber.State in [dsInsert]) then
  begin
    cxDBTextEditCodigoCliente.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
  end
  else
  begin
    AtualizaBoxText;
    uFrmMovimentacoesDadosContasAReceber.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
  end;
end;

end.
