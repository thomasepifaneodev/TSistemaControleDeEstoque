unit ControleConexao;

interface

uses uDmDadosPrincipal, System.Classes, System.SysUtils, Vcl.Forms, ControleUlib,
  Vcl.Controls, System.UITypes, Winapi.Windows, Winapi.Messages, Vcl.Dialogs,
  FireDAC.Comp.Client;

procedure Conexao(Ip, Porta, Base : String);
procedure LoginUser(User, Pass : String);
function ReturnForm(Acao: TModalResult) : TModalResult;

implementation

function ReturnForm(Acao: TModalResult) : TModalResult;
begin
  Result := Acao;
end;

procedure LoginUser(User, Pass: String);
var
  Check: Boolean;
  ConsultaSql: TFDQuery;
  vFileName: string;
begin
  if (GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'IP') = '') OR
     (GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'PORTA') = '') OR
     (GetValorIni(ExtractFilePath(Application.ExeName) + 'TSistema.ini', 'CONFIGURACAO', 'BASE') = '') then
  begin
    MessageDlg('Verifique as informações do arquivo INI!', TMsgDlgType.mtError, [mbOk], 0);
    Exit;
  end;

    dmDadosPrincipal.fdPgLink.VendorHome := ExtractFilePath(Application.ExeName);
    vFileName := ExtractFilePath(Application.ExeName) + 'TSistema.ini';


    dmDadosPrincipal.fdConnectionPrincipal.Params.Clear;
    dmDadosPrincipal.fdConnectionPrincipal.Params.Add('DriverID=PG');
    dmDadosPrincipal.fdConnectionPrincipal.Params.Add('Database=' + GetValorIni(vFileName, 'CONFIGURACAO', 'BASE'));
    dmDadosPrincipal.fdConnectionPrincipal.Params.Add('Port=' + GetValorIni(vFileName, 'CONFIGURACAO', 'PORTA'));
    dmDadosPrincipal.fdConnectionPrincipal.Params.Add('Server=' + GetValorIni(vFileName, 'CONFIGURACAO', 'IP'));
    dmDadosPrincipal.fdConnectionPrincipal.Params.Add('LoginTimeout=2');

    dmDadosPrincipal.fdConnectionPrincipal.Params.UserName := User;
    dmDadosPrincipal.fdConnectionPrincipal.Params.Password := Pass;


  try
    dmDadosPrincipal.fdConnectionPrincipal.Connected := True;
    ConsultaSql := TFDQuery.Create(nil);
      try
        ConsultaSql.Connection := dmDadosPrincipal.fdConnectionPrincipal;
        ConsultaSql.SQL.Text := 'SELECT * FROM usuario WHERE nome = :User AND senha = MD5(:Pass);';
        ConsultaSql.ParamByName('User').AsString := User;
        ConsultaSql.ParamByName('Pass').AsString := Pass;
        ConsultaSql.Open;

        if ConsultaSql.IsEmpty then
        begin
          dmDadosPrincipal.fdConnectionPrincipal.Connected := False;
          MessageDlg('Usuário ou senha inválidos!', mtWarning, [mbOk], 0);
        end;
      except on e: Exception do
      begin
        MessageDlg(e.Message, TMsgDlgType.mtWarning, [mbOk], 0);
      end;
      end;
  except
    on E: Exception do
    begin
      if e.Message.Contains('password authentication failed for user') then
      begin
        MessageDlg('Usuário ou senha inválidos!', mtWarning, [mbOk], 0);
      end
      else if e.Message.Contains('does not exist') then
      begin
        MessageDlg('Erro nas informações de conexão, verifique o arquivo de configuração! TSistema.ini', mtWarning, [mbOk], 0);
      end
      else
      begin
        MessageDlg('Erro ao conectar: ' + E.Message, mtError, [mbOk], 0);
        dmDadosPrincipal.fdConnectionPrincipal.Connected := False;
      end;
    end;
  end;
end;

procedure Conexao(Ip, Porta, Base : String);
var
  vFileName: string;
begin
  vFileName := ExtractFilePath(Application.ExeName) + 'TSistema.ini';
  SetValorIni(vFileName, 'CONFIGURACAO', 'BASE', Base);
  SetValorIni(vFileName, 'CONFIGURACAO', 'IP', Ip);
  SetValorIni(vFileName, 'CONFIGURACAO', 'PORTA', Porta);
end;

end.

