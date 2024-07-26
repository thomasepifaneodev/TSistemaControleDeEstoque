unit uDmDadosConsultas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDmDadosPrincipal;

type
  TdmDadosConsultas = class(TDataModule)
    fdQueryClientes: TFDQuery;
    fdDataSourceClientes: TDataSource;
    fdQueryClientesid_cliente: TIntegerField;
    fdQueryClientesnome: TWideStringField;
    fdQueryClientesendereco: TWideStringField;
    fdQueryClientesbairro: TWideStringField;
    fdQueryClientescidade: TWideStringField;
    fdQueryClientesuf: TWideStringField;
    fdQueryClientescep: TWideStringField;
    fdQueryClientestelefone: TWideStringField;
    fdQueryClientescpf: TWideStringField;
    fdQueryClientesemail: TWideStringField;
    fdQueryClientescadastro: TDateField;
    fdTransactionClientes: TFDTransaction;
    fdQueryClientesnumero: TWideStringField;
    fdQueryFornecedores: TFDQuery;
    fdTransactionFornecedores: TFDTransaction;
    fdDataSourceFornecedores: TDataSource;
    fdQueryFornecedoresid_fornecedor: TIntegerField;
    fdQueryFornecedoresnome: TWideStringField;
    fdQueryFornecedoresendereco: TWideStringField;
    fdQueryFornecedoresnumero: TIntegerField;
    fdQueryFornecedoresbairro: TWideStringField;
    fdQueryFornecedorescidade: TWideStringField;
    fdQueryFornecedoresuf: TWideStringField;
    fdQueryFornecedorescep: TWideStringField;
    fdQueryFornecedorestelefone: TWideStringField;
    fdQueryFornecedorescnpj: TWideStringField;
    fdQueryFornecedoresemail: TWideStringField;
    fdQueryFornecedorescadastro: TDateField;
    fdQueryProdutos: TFDQuery;
    fdTransactionProdutos: TFDTransaction;
    fdDataSourceProdutos: TDataSource;
    fdQueryProdutosid_produto: TIntegerField;
    fdQueryProdutosproduto_descricao: TWideStringField;
    fdQueryProdutosid_fornecedor: TIntegerField;
    fdQueryProdutosvl_custo: TBCDField;
    fdQueryProdutosvl_venda: TBCDField;
    fdQueryProdutosestoque: TBCDField;
    fdQueryProdutosestoque_min: TBCDField;
    fdQueryProdutosunidade: TWideStringField;
    fdQueryProdutoscadastro: TDateField;
    fdQueryEmpresa: TFDQuery;
    fdTransactionEmpresa: TFDTransaction;
    fdQueryEmpresaid_empresa: TIntegerField;
    fdQueryEmpresaraza_social: TWideStringField;
    fdQueryEmpresan_fantasia: TWideStringField;
    fdQueryEmpresaendereco: TWideStringField;
    fdQueryEmpresanumero: TIntegerField;
    fdQueryEmpresabairro: TWideStringField;
    fdQueryEmpresacidade: TWideStringField;
    fdQueryEmpresauf: TWideStringField;
    fdQueryEmpresatelefone: TWideStringField;
    fdQueryEmpresacnpj: TWideStringField;
    fdQueryEmpresaemail: TWideStringField;
    fdQueryEmpresacadastro: TDateField;
    fdDataSourceEmpresa: TDataSource;
    fdQueryEmpresalogo: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDadosConsultas: TdmDadosConsultas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
