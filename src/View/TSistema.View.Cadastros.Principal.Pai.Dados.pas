unit TSistema.View.Cadastros.Principal.Pai.Dados;

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
  dxSkinXmas2008Blue, dxCore, cxGeometry, dxFramedControl, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxPanel, frxClass, frxExportBaseDialog, frxExportPDF;

type
  TuFrmCadastroDados = class(TdxFluentDesignForm)
    dxSkinControllerDados: TdxSkinController;
    dxLayoutControlDadosGroup_Root: TdxLayoutGroup;
    dxLayoutControlDados: TdxLayoutControl;
    dxLayoutLookAndFeelListDados: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeelDados: TdxLayoutSkinLookAndFeel;
    dxPanelBottom: TdxPanel;
    cxButton1_Salvar: TcxButton;
    cxButton2_Editar: TcxButton;
    cxButton3_Imprimir: TcxButton;
    cxButton4_Sair: TcxButton;
    frxPDFExport: TfrxPDFExport;
    procedure cxButton4_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroDados: TuFrmCadastroDados;

implementation

{$R *.dfm}

procedure TuFrmCadastroDados.cxButton4_SairClick(Sender: TObject);
begin
  Self.Close;
end;

end.
