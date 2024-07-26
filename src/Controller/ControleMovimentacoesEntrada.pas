unit ControleMovimentacoesEntrada;

interface

uses uDmDadosMovimentacoes, uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB,
  Vcl.DBGrids, Winapi.Windows, Vcl.Forms;

procedure InserirMovimentacoesEntrada;
procedure ConsultarMovimentacoesEntrada;
procedure ExcluirMovimentacoesEntrada(id_compra: Integer);
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;
procedure FechaConexao;
procedure AtualizaEstoque;

implementation

procedure InserirMovimentacoesEntrada();
begin
  ConsultarMovimentacoesEntrada;
  if not (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdTransaction.StartTransaction;
    dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Insert;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Insert;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItensqtde.AsFloat := 1;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItensvl_custo.AsFloat := 0.00;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItensdesconto.AsFloat := 0.00;

  end;
end;

procedure ConsultarMovimentacoesEntrada;
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Open;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Open;
  dmDadosMovimentacoes.fdQueryProdutosLookUp.Refresh;
  dmDadosMovimentacoes.fdQueryFornecedorLookUp.Refresh;
  dmDadosMovimentacoes.fdQueryFormaPagtoLookUp.Refresh;
end;

procedure ExcluirMovimentacoesEntrada(id_compra: Integer);
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Clear;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Add('DELETE FROM item_compra WHERE id_compra = :id_compra');
  dmDadosMovimentacoes.fdQueryExclusao.Params.ParamByName('id_compra').AsInteger := id_compra;
  dmDadosMovimentacoes.fdQueryExclusao.ExecSQL;
  dmDadosMovimentacoes.fdTransaction.Commit;

  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Clear;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Add('DELETE FROM compra WHERE id_compra = :id_compra');
  dmDadosMovimentacoes.fdQueryExclusao.Params.ParamByName('id_compra').AsInteger := id_compra;
  dmDadosMovimentacoes.fdQueryExclusao.ExecSQL;
  dmDadosMovimentacoes.fdTransaction.Commit;
end;

procedure GravarAlteracoes;
begin
if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit, dsInsert]) then
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesCompra.ApplyUpdates(0);
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.ApplyUpdates(0);
  dmDadosMovimentacoes.fdTransaction.Commit;
end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Cancel;
    dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Cancel;
  end;
end;

procedure EditarInformacoes;
begin
if not (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State in [dsEdit, dsInsert]) then
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Edit;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Edit;
end;
end;

procedure FechaConexao;
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesCompra.Close;
  dmDadosMovimentacoes.fdQueryMovimentacoesEntradaItens.Close;
end;

procedure AtualizaEstoque;
begin
  dmDadosConsultas.fdQueryProdutos.Refresh;
end;

end.
