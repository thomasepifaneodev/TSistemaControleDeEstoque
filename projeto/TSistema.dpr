program TSistema;

uses
  Vcl.Forms,
  TSistema.View.Principal in '..\src\View\TSistema.View.Principal.pas' {uFrmPrincipal},
  TSistema.View.Cadastros.Principal.Pai in '..\src\View\TSistema.View.Cadastros.Principal.Pai.pas' {uFrmCadastroPrincipalPai: TdxFluentDesignForm},
  uDmDadosPrincipal in '..\src\Model\uDmDadosPrincipal.pas' {dmDadosPrincipal: TDataModule},
  TSistema.View.Login in '..\src\View\TSistema.View.Login.pas' {uFrmLogin: TdxFluentDesignForm},
  TSistema.View.Cadastros.Principal.Pai.Dados in '..\src\View\TSistema.View.Cadastros.Principal.Pai.Dados.pas' {uFrmCadastroDados: TdxFluentDesignForm},
  TSistema.View.Cadastro.Visualizacao.Clientes in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Visualizacao.Clientes.pas' {uFrmCadastroPrincipalVisualizacaoClientes: TdxFluentDesignForm},
  uDmDadosConsultas in '..\src\Model\uDmDadosConsultas.pas' {dmDadosConsultas: TDataModule},
  TSistema.View.Cadastro.Dados.Clientes in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Dados.Clientes.pas' {uFrmCadastroDadosCliente: TdxFluentDesignForm},
  ControleConsultaClientes in '..\src\Controller\ControleConsultaClientes.pas',
  RelatoriosSistema in '..\src\Controller\RelatoriosSistema.pas',
  TSistema.View.Cadastro.Visualizacao.Fornecedores in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Visualizacao.Fornecedores.pas' {uFrmCadastroPrincipalVisualizacaoFornecedores: TdxFluentDesignForm},
  TSistema.View.Cadastro.Dados.Fornecedores in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Dados.Fornecedores.pas' {uFrmCadastroDadosFornecedores: TdxFluentDesignForm},
  ControleConsultaFornecedores in '..\src\Controller\ControleConsultaFornecedores.pas',
  TSistema.View.Cadastro.Visualizacao.Produtos in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Visualizacao.Produtos.pas' {uFrmCadastroPrincipalVisualizacaoProdutos: TdxFluentDesignForm},
  TSistema.View.Cadastro.Dados.Produtos in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Dados.Produtos.pas' {uFrmCadastroDadosProdutos: TdxFluentDesignForm},
  ControleConsultaProdutos in '..\src\Controller\ControleConsultaProdutos.pas',
  TSistema.View.Cadastro.Dados.Empresa in '..\src\View\TelasFilhas\TSistema.View.Cadastro.Dados.Empresa.pas' {uFrmCadastroDadosEmpresa: TdxFluentDesignForm},
  ControleConsultaEmpresa in '..\src\Controller\ControleConsultaEmpresa.pas',
  TSistema.View.Movimentacoes.Visualizacao.Compras in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Visualizacao.Compras.pas' {uFrmMovimentacoesCompra: TdxFluentDesignForm},
  TSistema.View.Movimentacoes.Dados.Compras in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Dados.Compras.pas' {uFrmMovimentacoesDadosCompra: TdxFluentDesignForm},
  uDmDadosMovimentacoes in '..\src\Model\uDmDadosMovimentacoes.pas' {dmDadosMovimentacoes: TDataModule},
  ControleMovimentacoesEntrada in '..\src\Controller\ControleMovimentacoesEntrada.pas',
  TSistema.View.Movimentacoes.Visualizacao.Vendas in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Visualizacao.Vendas.pas' {uFrmMovimentacoesVenda: TdxFluentDesignForm},
  ControleMovimentacoesSaidas in '..\src\Controller\ControleMovimentacoesSaidas.pas',
  TSistema.View.Movimentacoes.Dados.Vendas in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Dados.Vendas.pas' {uFrmMovimentacoesDadosVenda: TdxFluentDesignForm},
  ControleConexao in '..\src\Controller\ControleConexao.pas',
  ControleUlib in '..\src\Controller\ControleUlib.pas',
  TSistema.View.LoginConfiguracao in '..\src\View\TSistema.View.LoginConfiguracao.pas' {uFrmConfig: TdxFluentDesignForm},
  TSistema.View.Movimentacoes.Visualizacao.ContasAPagar in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Visualizacao.ContasAPagar.pas' {uFrmMovimentacoesContasAPagar: TdxFluentDesignForm},
  TSistema.View.Movimentacoes.Dados.ContasAPagar in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Dados.ContasAPagar.pas' {uFrmMovimentacoesDadosContasAPagar: TdxFluentDesignForm},
  ControleConsultaContasAPagar in '..\src\Controller\ControleConsultaContasAPagar.pas',
  TSistema.View.Movimentacoes.Dados.ContasAReceber in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Dados.ContasAReceber.pas' {uFrmMovimentacoesDadosContasAReceber: TdxFluentDesignForm},
  TSistema.View.Movimentacoes.Visualizacao.ContasAReceber in '..\src\View\TelasFilhas\TSistema.View.Movimentacoes.Visualizacao.ContasAReceber.pas' {uFrmMovimentacoesContasAReceber: TdxFluentDesignForm},
  ControleConsultaContasAReceber in '..\src\Controller\ControleConsultaContasAReceber.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDadosPrincipal, dmDadosPrincipal);
  Application.CreateForm(TuFrmPrincipal, uFrmPrincipal);
  Application.CreateForm(TdmDadosConsultas, dmDadosConsultas);
  Application.CreateForm(TdmDadosMovimentacoes, dmDadosMovimentacoes);
  Application.Run;
end.
