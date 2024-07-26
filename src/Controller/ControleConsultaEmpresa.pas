unit ControleConsultaEmpresa;

interface

uses uDmDadosConsultas, Vcl.Dialogs, System.SysUtils, Data.DB,
  Vcl.DBGrids, Winapi.Windows;

procedure InserirEmpresa;
procedure ConsultarEmpresa;
procedure ExcluirEmpresa;
procedure GravarAlteracoes;
procedure CancelarTransacao;
procedure EditarInformacoes;

implementation

procedure InserirEmpresa;
begin
  ConsultarEmpresa;
  if not (dmDadosConsultas.fdQueryEmpresa.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdTransactionEmpresa.StartTransaction;
    dmDadosConsultas.fdQueryEmpresa.Insert;
    dmDadosConsultas.fdDataSourceEmpresa.DataSet.FieldByName('cadastro').AsString := DateToStr(Now);
  end;
end;

procedure ConsultarEmpresa;
begin
  dmDadosConsultas.fdQueryEmpresa.Open();
end;

procedure ExcluirEmpresa;
begin
  dmDadosConsultas.fdTransactionEmpresa.StartTransaction;
  dmDadosConsultas.fdQueryEmpresa.Delete;
  dmDadosConsultas.fdTransactionEmpresa.CommitRetaining;
end;

procedure GravarAlteracoes;
begin
  if (dmDadosConsultas.fdQueryEmpresa.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryEmpresa.Post;
    dmDadosConsultas.fdTransactionEmpresa.CommitRetaining;
  end;
end;

procedure CancelarTransacao;
begin
  if (dmDadosConsultas.fdQueryEmpresa.State in [dsEdit, dsInsert]) then
  begin
    dmDadosConsultas.fdQueryEmpresa.Cancel;
    dmDadosConsultas.fdTransactionEmpresa.RollbackRetaining;
  end;
end;

procedure EditarInformacoes;
begin
  dmDadosConsultas.fdTransactionEmpresa.StartTransaction;
  dmDadosConsultas.fdQueryEmpresa.Edit;
end;
end.
