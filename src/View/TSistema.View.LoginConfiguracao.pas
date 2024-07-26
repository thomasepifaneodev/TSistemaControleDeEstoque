unit TSistema.View.LoginConfiguracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  cxControls, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels,
  dxSkinsCore, cxContainer, cxEdit, dxNavBar, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsForm, dxSkinsFluentDesignForm, dxSkinOffice2019Colorful, dxUIAClasses,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxCore, cxTextEdit, cxMaskEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, ControleConexao, ControleUlib;

type
  TuFrmConfig = class(TdxFluentDesignForm)
    dxSkinController: TdxSkinController;
    dxLayoutControlConfigGroup_Root: TdxLayoutGroup;
    dxLayoutControlConfig: TdxLayoutControl;
    dxLayoutLookAndFeelListConfig: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeelConfig: TdxLayoutSkinLookAndFeel;
    cxMaskEditIp: TcxMaskEdit;
    cxMaskEditPorta: TcxMaskEdit;
    cxMaskEditBase: TcxMaskEdit;
    cxButtonSalvar: TcxButton;
    cxButtonSair: TcxButton;
    procedure cxButtonSalvarClick(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure cxMaskEditIpKeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEditPortaKeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEditBaseKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmConfig: TuFrmConfig;

implementation

{$R *.dfm}

procedure TuFrmConfig.cxButtonSalvarClick(Sender: TObject);
begin
  try
    Conexao(cxMaskEditIp.Text, cxMaskEditPorta.Text, cxMaskEditBase.Text);
    MessageDlg('Dados salvos com sucesso!', TMsgDlgType.mtInformation, [mbOK], 0);
    Close;
  except on e: Exception do
  begin
    MessageDlg(e.Message, TMsgDlgType.mtConfirmation, [mbOK], 0);
  end;
  end;
end;

procedure TuFrmConfig.cxMaskEditBaseKeyPress(Sender: TObject; var Key: Char);
begin
  cxButtonSalvar.Click;
end;

procedure TuFrmConfig.cxMaskEditIpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxMaskEditPorta.SetFocus;
  end;
end;

procedure TuFrmConfig.cxMaskEditPortaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxMaskEditBase.SetFocus;
  end;
end;

procedure TuFrmConfig.dxFluentDesignFormShow(Sender: TObject);
begin
  cxMaskEditIp.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'IP');
  cxMaskEditPorta.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'PORTA');
  cxMaskEditBase.Text := GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'BASE');
end;

end.
