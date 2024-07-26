unit ControleConsultaFornecedores;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB,
  Vcl.DBGrids, Winapi.Windows;

procedure InserirFornecedores;
procedure ConsultarFornecedores;
procedure ExcluirFornecedores;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;

implementation

procedure InserirFornecedores;
begin
  ConsultarFornecedores;
  if not (dmDadosConsultas.fdQueryFornecedores.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdTransactionFornecedores.StartTransaction;
    dmDadosConsultas.fdQueryFornecedores.Insert;
    dmDadosConsultas.fdDataSourceFornecedores.DataSet.FieldByName('cadastro').AsString := DateToStr(Now);
  end;
end;

procedure ConsultarFornecedores;
begin
  dmDadosConsultas.fdQueryFornecedores.Open();
end;

procedure ExcluirFornecedores;
begin
  dmDadosConsultas.fdTransactionFornecedores.StartTransaction;
  dmDadosConsultas.fdQueryFornecedores.Delete;
  dmDadosConsultas.fdTransactionFornecedores.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosConsultas.fdQueryFornecedores.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryFornecedores.Post;
    dmDadosConsultas.fdTransactionFornecedores.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosConsultas.fdQueryFornecedores.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryFornecedores.Cancel;
    dmDadosConsultas.fdTransactionFornecedores.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosConsultas.fdQueryFornecedores.Edit;
end;

end.
