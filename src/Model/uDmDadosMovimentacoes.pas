unit uDmDadosMovimentacoes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, uDmDadosPrincipal;

type
  TdmDadosMovimentacoes = class(TDataModule)
    fdDataSourceMovimentacoesCompra: TDataSource;
    fdDataSourceItensEntrada: TDataSource;
    fdTransaction: TFDTransaction;
    fdQueryProdutosLookUp: TFDQuery;
    fdQueryFornecedorLookUp: TFDQuery;
    fdQueryFormaPagtoLookUp: TFDQuery;
    fdQueryProdutosLookUpid_produto: TIntegerField;
    fdQueryProdutosLookUpproduto_descricao: TWideStringField;
    fdQueryProdutosLookUpvl_custo: TBCDField;
    fdQueryFornecedorLookUpid_fornecedor: TIntegerField;
    fdQueryFornecedorLookUpnome: TWideStringField;
    fdQueryFormaPagtoLookUpid_forma_pgto: TIntegerField;
    fdQueryFormaPagtoLookUpdescricao: TWideStringField;
    fdQueryExclusao: TFDQuery;
    fdQueryMovimentacoesCompra: TFDQuery;
    fdQueryMovimentacoesEntradaItens: TFDQuery;
    fdQueryMovimentacoesCompraid_compra: TFDAutoIncField;
    fdQueryMovimentacoesCompraid_fornecedor: TIntegerField;
    fdQueryMovimentacoesCompraid_forma_pgto: TIntegerField;
    fdQueryMovimentacoesComprausuario: TWideStringField;
    fdQueryMovimentacoesCompravalor: TBCDField;
    fdQueryMovimentacoesCompracadastro: TDateField;
    fdQueryMovimentacoesEntradaItensid_sequencia: TFDAutoIncField;
    fdQueryMovimentacoesEntradaItensid_compra: TIntegerField;
    fdQueryMovimentacoesEntradaItensid_produto: TIntegerField;
    fdQueryMovimentacoesEntradaItensqtde: TBCDField;
    fdQueryMovimentacoesEntradaItensvl_custo: TBCDField;
    fdQueryMovimentacoesEntradaItensdesconto: TBCDField;
    fdQueryMovimentacoesEntradaItenstotal_item: TBCDField;
    fdQueryMovimentacoesEntradaItensdescricaoitem: TStringField;
    fdQueryMovimentacoesEntradaItenssubtotal: TFloatField;
    fdQueryMovimentacoesCompranomefornecedor: TStringField;
    fdQueryMovimentacoesCompranomepagamento: TStringField;
    fdQueryMovimentacoesVenda: TFDQuery;
    fdDataSourceMovimentacoesVenda: TDataSource;
    fdQueryClienteLookUp: TFDQuery;
    fdQueryMovimentacoesSaidaItens: TFDQuery;
    fdDataSourceSaidasItens: TDataSource;
    fdQueryMovimentacoesVendaid_venda: TIntegerField;
    fdQueryMovimentacoesVendaid_cliente: TIntegerField;
    fdQueryMovimentacoesVendaid_forma_pgto: TIntegerField;
    fdQueryMovimentacoesVendausuario: TWideStringField;
    fdQueryMovimentacoesVendavalor: TBCDField;
    fdQueryMovimentacoesVendacadastro: TDateField;
    fdQueryMovimentacoesSaidaItensid_sequencia: TIntegerField;
    fdQueryMovimentacoesSaidaItensid_venda: TIntegerField;
    fdQueryMovimentacoesSaidaItensid_produto: TIntegerField;
    fdQueryMovimentacoesSaidaItensqtde: TBCDField;
    fdQueryMovimentacoesSaidaItensvl_custo: TBCDField;
    fdQueryMovimentacoesSaidaItensdesconto: TBCDField;
    fdQueryMovimentacoesSaidaItenstotal_item: TBCDField;
    fdQueryMovimentacoesSaidaItensdescricaoitem: TStringField;
    fdQueryMovimentacoesSaidaItenssubtotal: TCurrencyField;
    fdQueryMovimentacoesVendanomecliente: TStringField;
    fdQueryMovimentacoesVendanomepagamento: TStringField;
    fdQueryContasAPagar: TFDQuery;
    fdQueryContasAReceber: TFDQuery;
    fdDataSourceContasAPagar: TDataSource;
    fdDataSourceContasAReceber: TDataSource;
    fdQueryContasAPagarid_sequencia: TIntegerField;
    fdQueryContasAPagarid_fornecedor: TIntegerField;
    fdQueryContasAPagarvalor_parcela: TBCDField;
    fdQueryContasAPagardt_vencimento: TDateField;
    fdQueryContasAPagardt_pagamento: TDateField;
    fdQueryContasAPagaratraso: TIntegerField;
    fdQueryContasAPagarjuros: TBCDField;
    fdQueryContasAPagarvl_juros: TBCDField;
    fdQueryContasAPagartotal_pagar: TBCDField;
    fdQueryContasAPagarstatus: TWideStringField;
    fdQueryContasAReceberid_sequencia: TIntegerField;
    fdQueryContasAReceberid_cliente: TIntegerField;
    fdQueryContasARecebervalor_parcela: TBCDField;
    fdQueryContasAReceberdt_vencimento: TDateField;
    fdQueryContasAReceberdt_pagamento: TDateField;
    fdQueryContasAReceberatraso: TIntegerField;
    fdQueryContasAReceberjuros: TBCDField;
    fdQueryContasARecebervl_juros: TBCDField;
    fdQueryContasARecebertotal_pagar: TBCDField;
    fdQueryContasAReceberstatus: TWideStringField;
    fdQueryContasAPagarnomeFornecedor: TStringField;
    fdQueryContasARecebernomeCliente: TStringField;
    procedure fdQueryMovimentacoesEntradaItensCalcFields(DataSet: TDataSet);
    procedure fdQueryMovimentacoesSaidaItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDadosMovimentacoes: TdmDadosMovimentacoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDadosMovimentacoes.fdQueryMovimentacoesEntradaItensCalcFields(
  DataSet: TDataSet);
begin
  fdQueryMovimentacoesEntradaItenssubtotal.AsFloat := fdQueryMovimentacoesEntradaItensvl_custo.AsFloat * fdQueryMovimentacoesEntradaItensqtde.AsFloat - fdQueryMovimentacoesEntradaItensdesconto.AsFloat;

end;

procedure TdmDadosMovimentacoes.fdQueryMovimentacoesSaidaItensCalcFields(
  DataSet: TDataSet);
begin
  fdQueryMovimentacoesSaidaItenssubtotal.AsFloat := fdQueryMovimentacoesSaidaItensvl_custo.AsFloat * fdQueryMovimentacoesSaidaItensqtde.AsFloat - fdQueryMovimentacoesSaidaItensdesconto.AsFloat;
end;

end.
