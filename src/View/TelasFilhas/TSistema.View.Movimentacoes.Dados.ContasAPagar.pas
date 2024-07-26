unit TSistema.View.Movimentacoes.Dados.ContasAPagar;

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
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, cxLabel, uDmDadosMovimentacoes,
  ControleConsultaContasAPagar, Vcl.DBCtrls, cxDBEdit, cxSpinEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxCurrencyEdit, Data.DB;

type
  TuFrmMovimentacoesDadosContasAPagar = class(TuFrmCadastroDados)
    dxPanelCenter: TdxPanel;
    dxPanelTop: TdxPanel;
    cxLabelTop: TcxLabel;
    lblCodigo: TcxLabel;
    LabelIdFornecedor: TLabel;
    LabelValorParcela: TLabel;
    cxDBCurrencyEditValorParcela: TcxDBCurrencyEdit;
    LabelDataVencimento: TLabel;
    cxDBDateEditDataVencimento: TcxDBDateEdit;
    LabelDataPagamento: TLabel;
    cxDBDateEditDataPagamento: TcxDBDateEdit;
    LabelAtraso: TLabel;
    cxDBSpinEditAtraso: TcxDBSpinEdit;
    LabelJuros: TLabel;
    cxDBCurrencyEditJuros: TcxDBCurrencyEdit;
    LabelVl_Juros: TLabel;
    cxDBCurrencyEditVl_Juros: TcxDBCurrencyEdit;
    LabelTotal_Pagar: TLabel;
    cxDBCurrencyEditTotalConta: TcxDBCurrencyEdit;
    LabelStatus: TLabel;
    cxDBTextEditStatus: TcxDBTextEdit;
    LabelNomeFornecedor: TLabel;
    cxDBTextEditCodigoFornecedor: TcxDBTextEdit;
    cxDBTextEditNomeFornecedor: TcxDBTextEdit;
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
  uFrmMovimentacoesDadosContasAPagar: TuFrmMovimentacoesDadosContasAPagar;

implementation

{$R *.dfm}

procedure TuFrmMovimentacoesDadosContasAPagar.AtualizaBotoes;
begin
  cxButton1_Salvar.Enabled := not cxButton1_Salvar.Enabled;
  cxButton2_Editar.Enabled := not cxButton2_Editar.Enabled;
  cxButton3_Imprimir.Enabled := not cxButton3_Imprimir.Enabled;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.AtualizaBoxText;
begin
  cxDBCurrencyEditValorParcela.Enabled := Not cxDBCurrencyEditValorParcela.Enabled;
  cxDBDateEditDataVencimento.Enabled := Not cxDBDateEditDataVencimento.Enabled;
  cxDBDateEditDataPagamento.Enabled := Not cxDBDateEditDataPagamento.Enabled;
  cxDBSpinEditAtraso.Enabled := Not cxDBSpinEditAtraso.Enabled;
  cxDBCurrencyEditJuros.Enabled := Not cxDBCurrencyEditJuros.Enabled;
  cxDBCurrencyEditVl_Juros.Enabled := Not cxDBCurrencyEditVl_Juros.Enabled;
  cxDBCurrencyEditTotalConta.Enabled := Not cxDBCurrencyEditTotalConta.Enabled;
  cxDBTextEditStatus.Enabled := Not cxDBTextEditStatus.Enabled;
  cxDBTextEditCodigoFornecedor.Enabled := Not cxDBTextEditCodigoFornecedor.Enabled;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.cxButton1_SalvarClick(
  Sender: TObject);
begin
  inherited;
  try
    ControleConsultaContasAPagar.GravarAlteracoes;
      Application.MessageBox('Dados salvos com sucesso!', 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
      Self.Close;
    except on e: Exception do
    begin
      Application.MessageBox(PWideChar(e.Message), 'TSistema Controle de Estoque', MB_ICONEXCLAMATION + MB_OK);
    end;
    end;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.cxButton2_EditarClick(
  Sender: TObject);
begin
  inherited;
  AtualizaBotoes;
  AtualizaBoxText;
  cxDBTextEditCodigoFornecedor.SetFocus;
  EditarInformacoes;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.dxFluentDesignFormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (dmDadosMovimentacoes.fdTransaction.Active) then
  begin
    CancelarTransacao;
  end;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.dxFluentDesignFormCloseQuery(
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

procedure TuFrmMovimentacoesDadosContasAPagar.dxFluentDesignFormCreate(
  Sender: TObject);
begin
  inherited;
  lblCodigo.Caption := dmDadosMovimentacoes.fdQueryContasAPagarid_sequencia.Value.ToString;
end;

procedure TuFrmMovimentacoesDadosContasAPagar.dxFluentDesignFormShow(
  Sender: TObject);
begin
  inherited;
  if (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsEdit]) then
  begin
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := True;
  end
  else if (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsInsert]) then
  begin
    cxDBTextEditCodigoFornecedor.SetFocus;
    cxButton1_Salvar.Enabled := True;
    cxButton2_Editar.Enabled := False;
    cxButton3_Imprimir.Enabled := False;
  end
  else
  begin
    AtualizaBoxText;
    uFrmMovimentacoesDadosContasAPagar.SetFocus;
    cxButton1_Salvar.Enabled := False;
    cxButton2_Editar.Enabled := True;
    cxButton3_Imprimir.Enabled := True;
  end;
end;

end.
