unit ControleConsultaContasAReceber;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB, Vcl.DBGrids, Winapi.Windows, uDmDadosMovimentacoes;

procedure InserirContasAReceber;
procedure ConsultarContasAReceber;
procedure ExcluirContasAReceber;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;

implementation

procedure InserirContasAReceber;
begin
  ConsultarContasAReceber;
  if not (dmDadosMovimentacoes.fdQueryContasAReceber.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdTransaction.StartTransaction;
    dmDadosMovimentacoes.fdQueryContasAReceber.Insert;
  end;
end;

procedure ConsultarContasAReceber;
begin
  dmDadosMovimentacoes.fdQueryContasAReceber.Open();
end;

procedure ExcluirContasAReceber;
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryContasAReceber.Delete;
  dmDadosMovimentacoes.fdTransaction.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosMovimentacoes.fdQueryContasAReceber.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryContasAReceber.Post;
    dmDadosMovimentacoes.fdTransaction.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosMovimentacoes.fdQueryContasAReceber.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryContasAReceber.Cancel;
    dmDadosMovimentacoes.fdTransaction.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosMovimentacoes.fdQueryContasAReceber.Edit;
end;


end.
