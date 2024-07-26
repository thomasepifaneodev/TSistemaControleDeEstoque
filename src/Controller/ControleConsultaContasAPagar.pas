unit ControleConsultaContasAPagar;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB, Vcl.DBGrids, Winapi.Windows, uDmDadosMovimentacoes;

procedure InserirContasAPagar;
procedure ConsultarContasAPagar;
procedure ExcluirContasAPagar;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;

implementation

procedure InserirContasAPagar;
begin
  ConsultarContasAPagar;
  if not (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdTransaction.StartTransaction;
    dmDadosMovimentacoes.fdQueryContasAPagar.Insert;
  end;
end;

procedure ConsultarContasAPagar;
begin
  dmDadosMovimentacoes.fdQueryContasAPagar.Open();
end;

procedure ExcluirContasAPagar;
begin
  dmDadosMovimentacoes.fdTransaction.StartTransaction;
  dmDadosMovimentacoes.fdQueryContasAPagar.Delete;
  dmDadosMovimentacoes.fdTransaction.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryContasAPagar.Post;
    dmDadosMovimentacoes.fdTransaction.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosMovimentacoes.fdQueryContasAPagar.State in [dsEdit, dsInsert]) then
  begin
    dmDadosMovimentacoes.fdQueryContasAPagar.Cancel;
    dmDadosMovimentacoes.fdTransaction.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosMovimentacoes.fdQueryContasAPagar.Edit;
end;


end.
