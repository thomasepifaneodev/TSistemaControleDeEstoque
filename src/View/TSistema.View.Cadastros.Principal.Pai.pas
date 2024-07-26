unit TSistema.View.Cadastros.Principal.Pai;

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
  dxSkinXmas2008Blue, dxCore, cxGeometry, dxFramedControl, dxPanel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCustomData, cxStyles, dxBarBuiltInMenu,
  cxCustomPivotGrid, cxPivotGrid, cxFilter, dxScrollbarAnnotations, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  cxLabel, cxTextEdit, frxClass, frxExportBaseDialog, frxExportPDF;

type
  TuFrmCadastroPrincipalPai = class(TdxFluentDesignForm)
    dxSkinController: TdxSkinController;
    dxLayoutControlGroup_Root: TdxLayoutGroup;
    dxLayoutControl: TdxLayoutControl;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel;
    dxPanelBottom: TdxPanel;
    cxButton1_Novo: TcxButton;
    cxButton2_Exibir: TcxButton;
    cxButton3_Excluir: TcxButton;
    cxButton4_Sair: TcxButton;
    dxPanelTop: TdxPanel;
    dxPanelCenter: TdxPanel;
    cxLabelTop: TcxLabel;
    cxTextEditSource: TcxTextEdit;
    frxPDFExport: TfrxPDFExport;
    procedure cxButton4_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmCadastroPrincipalPai: TuFrmCadastroPrincipalPai;

implementation

{$R *.dfm}

procedure TuFrmCadastroPrincipalPai.cxButton4_SairClick(Sender: TObject);
begin
  Self.Close;
end;

end.
