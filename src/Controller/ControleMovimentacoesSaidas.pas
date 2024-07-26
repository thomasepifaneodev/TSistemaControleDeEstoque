unit ControleMovimentacoesSaidas;

interface

uses uDmDadosMovimentacoes, uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB,
  Vcl.DBGrids, Winapi.Windows, Vcl.Forms;

procedure InserirMovimentacoesSaidas;
procedure ConsultarMovimentacoesSaidas;
procedure ExcluirMovimentacoesSaidas(id_Venda: Integer);
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;
procedure FechaConexao;
procedure AtualizaEstoque;

implementation

procedure InserirMovimentacoesSaidas();
begin
  ConsultarMovimentacoesSaidas;
  if not (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdTransaction.StartTransaction;
    dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Insert;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Insert;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItensqtde.AsFloat := 1;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItensvl_custo.AsFloat := 0.00;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItensdesconto.AsFloat := 0.00;
  end;
end;

procedure ConsultarMovimentacoesSaidas;
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Open;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Open;
  dmDadosMovimentacoes.fdQueryProdutosLookUp.Refresh;
  dmDadosMovimentacoes.fdQueryClienteLookUp.Refresh;
  dmDadosMovimentacoes.fdQueryFormaPagtoLookUp.Refresh;
end;

procedure ExcluirMovimentacoesSaidas(id_venda: Integer);
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Clear;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Add('DELETE FROM item_venda WHERE id_venda = :id_venda');
  dmDadosMovimentacoes.fdQueryExclusao.Params.ParamByName('id_venda').AsInteger := id_venda;
  dmDadosMovimentacoes.fdQueryExclusao.ExecSQL;
  dmDadosMovimentacoes.fdTransaction.Commit;

  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Clear;
  dmDadosMovimentacoes.fdQueryExclusao.SQL.Add('DELETE FROM venda WHERE id_venda = :id_venda');
  dmDadosMovimentacoes.fdQueryExclusao.Params.ParamByName('id_venda').AsInteger := id_venda;
  dmDadosMovimentacoes.fdQueryExclusao.ExecSQL;
  dmDadosMovimentacoes.fdTransaction.Commit;
end;

procedure GravarAlteracoes;
begin
if (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit, dsInsert]) then
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.ApplyUpdates(0);
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.ApplyUpdates(0);
  dmDadosMovimentacoes.fdTransaction.Commit;
end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Cancel;
    dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Cancel;
  end;
end;

procedure EditarInformacoes;
begin
if not (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State in [dsEdit, dsInsert]) then
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Edit;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Edit;
end;
end;

procedure FechaConexao;
begin
  dmDadosMovimentacoes.fdQueryMovimentacoesVenda.Close;
  dmDadosMovimentacoes.fdQueryMovimentacoesSaidaItens.Close;
end;

procedure AtualizaEstoque;
begin
  dmDadosConsultas.fdQueryProdutos.Refresh;
end;

end.
