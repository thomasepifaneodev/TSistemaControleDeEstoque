unit ControleConsultaClientes;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB,
  Vcl.DBGrids, Winapi.Windows;

procedure InserirClientes;
procedure ConsultarClientes;
procedure ExcluirClientes;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;

implementation

procedure InserirClientes;
begin
  ConsultarClientes;
  if not (dmDadosConsultas.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdTransactionClientes.StartTransaction;
    dmDadosConsultas.fdQueryClientes.Insert;
    dmDadosConsultas.fdDataSourceClientes.DataSet.FieldByName('cadastro').AsString := DateToStr(Now);
  end;
end;

procedure ConsultarClientes;
begin
  dmDadosConsultas.fdQueryClientes.Open();
end;

procedure ExcluirClientes;
begin
  dmDadosConsultas.fdTransactionClientes.StartTransaction;
  dmDadosConsultas.fdQueryClientes.Delete;
  dmDadosConsultas.fdTransactionClientes.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosConsultas.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryClientes.Post;
    dmDadosConsultas.fdTransactionClientes.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosConsultas.fdQueryClientes.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryClientes.Cancel;
    dmDadosConsultas.fdTransactionClientes.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosConsultas.fdQueryClientes.Edit;
end;
end.
