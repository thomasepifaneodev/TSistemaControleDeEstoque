unit TSistema.View.Login;

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
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, uDmDadosPrincipal,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, TSistema.View.LoginConfiguracao,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, dxCore, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxGeometry, dxFramedControl, dxGDIPlusClasses, Vcl.ExtCtrls, dxPanel, ControleConexao, ControleUlib;

type
  TuFrmLogin = class(TdxFluentDesignForm)
    dxSkinControllerLogin: TdxSkinController;
    dxLayoutControlLoginGroup_Root: TdxLayoutGroup;
    dxLayoutControlLogin: TdxLayoutControl;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeelLogin: TdxLayoutSkinLookAndFeel;
    cxTextEditUsuario: TcxTextEdit;
    cxTextEditSenha: TcxTextEdit;
    cxButtonLogar: TcxButton;
    dxPanelImagem: TdxPanel;
    Image: TImage;
    cxButtonConfig: TcxButton;
    procedure cxButtonConfigClick(Sender: TObject);
    procedure dxFluentDesignFormShow(Sender: TObject);
    procedure cxTextEditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEditSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmLogin: TuFrmLogin;

implementation

{$R *.dfm}

procedure TuFrmLogin.cxButtonConfigClick(Sender: TObject);
begin
  uFrmConfig := TuFrmConfig.Create(nil);
    try
      uFrmConfig.ShowModal();
    finally
      FreeAndNil(uFrmConfig);
    end;
end;

procedure TuFrmLogin.cxButtonLogarClick(Sender: TObject);
begin
  if (cxTextEditUsuario.Text = '') or (cxTextEditSenha.Text = '')	 then
  MessageDlg('Informe usuário e senha!', mtWarning, [mbOk], 0)
  else
  begin
    try
      LoginUser(cxTextEditUsuario.Text, cxTextEditSenha.Text);

    if dmDadosPrincipal.fdConnectionPrincipal.Connected then
    begin
      Close;
    end;
  except on e: Exception do
  begin
    Application.MessageBox('Não foi possível conectar. Verifique as configurações!', 'TSistema Controle de Estoque', MB_ICONASTERISK + MB_OK);
  end;
  end;
  end;

end;

procedure TuFrmLogin.cxTextEditSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxButtonLogar.Click;
  end;
end;

procedure TuFrmLogin.cxTextEditUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxTextEditSenha.SetFocus;
  end;
end;

procedure TuFrmLogin.dxFluentDesignFormShow(Sender: TObject);
begin
  cxTextEditUsuario.SetFocus;
end;

end.
