unit RelatoriosSistema;

interface

uses frxSmartMemo, frxClass, frCoreClasses, frxDBSet, cxDropDownEdit, cxImageComboBox, frxExportBaseDialog, frxExportPDF,
  System.SysUtils, Vcl.Forms, Winapi.Windows;

procedure RelatorioListagemDeClientes(frxReportClientes : TfrxReport);
procedure RelatorioClientesDetalhes(frxReportClientesDetalhes : TfrxReport; idCliente: Integer);
procedure RelatorioFornecedoresDetalhes(frxReportFornecedoresDetalhes : TfrxReport; idFornec: Integer);
procedure RelatorioListagemDeFornecedores(frxReportFornecedores : TfrxReport);
procedure RelatorioListagemDeProdutos(frxReportListagemProdutos : TfrxReport);
procedure RelatorioProdutosDetalhes(frxReportProdutosDetalhes : TfrxReport; idProduto: Integer);
procedure RelatorioComprasDetalhes(frxReportCompraDetalhes : TfrxReport);
procedure RelatorioVendasDetalhes(frxReportCompraDetalhes : TfrxReport);

implementation

procedure RelatorioListagemDeClientes(frxReportClientes : TfrxReport);
var
  caminhoArquivo: String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatorioclientes.fr3';
  if frxReportClientes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportClientes.Clear;
    frxReportClientes.LoadFromFile(caminhoArquivo);
    frxReportClientes.PrepareReport(True);
    frxReportClientes.ShowPreparedReport();
  end
  else
  begin
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure RelatorioClientesDetalhes(frxReportClientesDetalhes : TfrxReport; idCliente: Integer);
var
  caminhoArquivo : String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatorioclientesdetalhes.fr3';
  if frxReportClientesDetalhes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportClientesDetalhes.Clear;
    frxReportClientesDetalhes.LoadFromFile(caminhoArquivo);

    frxReportClientesDetalhes.Variables['registroID'] := idCliente;

    frxReportClientesDetalhes.PrepareReport(True);
    frxReportClientesDetalhes.ShowPreparedReport();
  end
  else
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
end;

procedure RelatorioListagemDeFornecedores(frxReportFornecedores : TfrxReport);
var
  caminhoArquivo: String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatoriofornecedores.fr3';
  if frxReportFornecedores.LoadFromFile(caminhoArquivo) then
  begin
    frxReportFornecedores.Clear;
    frxReportFornecedores.LoadFromFile(caminhoArquivo);
    frxReportFornecedores.PrepareReport(True);
    frxReportFornecedores.ShowPreparedReport();
  end
  else
  begin
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure RelatorioFornecedoresDetalhes(frxReportFornecedoresDetalhes : TfrxReport; idFornec: Integer);
var
  caminhoArquivo : String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatoriofornecedoresdetalhes.fr3';
  if frxReportFornecedoresDetalhes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportFornecedoresDetalhes.Clear;
    frxReportFornecedoresDetalhes.LoadFromFile(caminhoArquivo);

    frxReportFornecedoresDetalhes.Variables['registroID'] := idFornec;

    frxReportFornecedoresDetalhes.PrepareReport(True);
    frxReportFornecedoresDetalhes.ShowPreparedReport();
  end
  else
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
end;

procedure RelatorioListagemDeProdutos(frxReportListagemProdutos : TfrxReport);
var
  caminhoArquivo: String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatorioprodutos.fr3';
  if frxReportListagemProdutos.LoadFromFile(caminhoArquivo) then
  begin
    frxReportListagemProdutos.Clear;
    frxReportListagemProdutos.LoadFromFile(caminhoArquivo);
    frxReportListagemProdutos.PrepareReport(True);
    frxReportListagemProdutos.ShowPreparedReport();
  end
  else
  begin
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
  end;
end;

procedure RelatorioProdutosDetalhes(frxReportProdutosDetalhes : TfrxReport; idProduto: Integer);
var
  caminhoArquivo : String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatorioprodutosdetalhes.fr3';
  if frxReportProdutosDetalhes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportProdutosDetalhes.Clear;
    frxReportProdutosDetalhes.LoadFromFile(caminhoArquivo);

    frxReportProdutosDetalhes.Variables['registroID'] := idProduto;

    frxReportProdutosDetalhes.PrepareReport(True);
    frxReportProdutosDetalhes.ShowPreparedReport();
  end
  else
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
end;

procedure RelatorioComprasDetalhes(frxReportCompraDetalhes : TfrxReport);
var
  caminhoArquivo : String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatoriocompraprodutos.fr3';
  if frxReportCompraDetalhes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportCompraDetalhes.Clear;
    frxReportCompraDetalhes.LoadFromFile(caminhoArquivo);
    frxReportCompraDetalhes.PrepareReport(True);
    frxReportCompraDetalhes.ShowPreparedReport();
  end
  else
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
end;

procedure RelatorioVendasDetalhes(frxReportCompraDetalhes : TfrxReport);
var
  caminhoArquivo : String;
begin
  caminhoArquivo := ExtractFilePath(Application.ExeName) + 'relatorios\relatoriovendaprodutos.fr3';
  if frxReportCompraDetalhes.LoadFromFile(caminhoArquivo) then
  begin
    frxReportCompraDetalhes.Clear;
    frxReportCompraDetalhes.LoadFromFile(caminhoArquivo);
    frxReportCompraDetalhes.PrepareReport(True);
    frxReportCompraDetalhes.ShowPreparedReport();
  end
  else
    Application.MessageBox(PWideChar('Relatório não encontrado, entre em contato com o suporte!'), 'TSistema Controle de Estoque', MB_ICONINFORMATION + MB_OK);
end;

end.
