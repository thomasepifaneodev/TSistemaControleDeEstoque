unit ControleConsultaProdutos;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB, Vcl.DBGrids, Winapi.Windows, uDmDadosMovimentacoes;

procedure InserirProdutos;
procedure ConsultarProdutos;
procedure ExcluirProdutos;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;
function CheckVendaCompra : Boolean;

implementation

procedure InserirProdutos;
begin
  ConsultarProdutos;
  if not (dmDadosConsultas.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdTransactionProdutos.StartTransaction;
    dmDadosConsultas.fdQueryProdutos.Insert;
    dmDadosConsultas.fdDataSourceProdutos.DataSet.FieldByName('cadastro').AsString := DateToStr(Now);
    dmDadosConsultas.fdDataSourceProdutos.DataSet.FieldByName('estoque').AsString := '0';
  end;
end;

procedure ConsultarProdutos;
begin
  dmDadosConsultas.fdQueryProdutos.Open();
end;

procedure ExcluirProdutos;
begin
  dmDadosConsultas.fdTransactionProdutos.StartTransaction;
  dmDadosConsultas.fdQueryProdutos.Delete;
  dmDadosConsultas.fdTransactionProdutos.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosConsultas.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryProdutos.Post;
    dmDadosConsultas.fdTransactionProdutos.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosConsultas.fdQueryProdutos.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryProdutos.Cancel;
    dmDadosConsultas.fdTransactionProdutos.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosConsultas.fdQueryProdutos.Edit;
end;

function CheckVendaCompra : Boolean;
begin
  if (dmDadosMovimentacoes.fdQueryMovimentacoesCompra.State IN  [dsInsert, dsEdit]) OR (dmDadosMovimentacoes.fdQueryMovimentacoesVenda.State IN  [dsInsert, dsEdit]) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

end.
