object dmDadosConsultas: TdmDadosConsultas
  Height = 500
  Width = 445
  object fdQueryClientes: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransactionClientes
    FetchOptions.AssignedValues = [evCursorKind]
    FetchOptions.CursorKind = ckDefault
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'cliente_id_cliente_seq'
    UpdateOptions.AutoIncFields = 'id_cliente'
    SQL.Strings = (
      'SELECT * FROM cliente ORDER BY id_cliente')
    Left = 72
    Top = 40
    object fdQueryClientesid_cliente: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object fdQueryClientesendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object fdQueryClientesnumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 8190
    end
    object fdQueryClientesbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object fdQueryClientescidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object fdQueryClientesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object fdQueryClientescep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object fdQueryClientestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 16
    end
    object fdQueryClientescpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 16
    end
    object fdQueryClientesemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object fdQueryClientescadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
  end
  object fdDataSourceClientes: TDataSource
    DataSet = fdQueryClientes
    Left = 184
    Top = 40
  end
  object fdTransactionClientes: TFDTransaction
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Left = 312
    Top = 40
  end
  object fdQueryFornecedores: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransactionFornecedores
    FetchOptions.AssignedValues = [evCursorKind]
    FetchOptions.CursorKind = ckDefault
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'fornecedor_id_fornecedor_seq'
    UpdateOptions.AutoIncFields = 'id_fornecedor'
    SQL.Strings = (
      'SELECT * FROM fornecedor '
      'ORDER BY id_fornecedor')
    Left = 72
    Top = 104
    object fdQueryFornecedoresid_fornecedor: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryFornecedoresnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object fdQueryFornecedoresendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object fdQueryFornecedoresnumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object fdQueryFornecedoresbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object fdQueryFornecedorescidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 60
    end
    object fdQueryFornecedoresuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object fdQueryFornecedorescep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object fdQueryFornecedorestelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 16
    end
    object fdQueryFornecedorescnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object fdQueryFornecedoresemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 80
    end
    object fdQueryFornecedorescadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
  end
  object fdTransactionFornecedores: TFDTransaction
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Left = 312
    Top = 104
  end
  object fdDataSourceFornecedores: TDataSource
    DataSet = fdQueryFornecedores
    Left = 176
    Top = 104
  end
  object fdQueryProdutos: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransactionProdutos
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'produto_id_produto_seq'
    UpdateOptions.AutoIncFields = 'id_produto'
    SQL.Strings = (
      'SELECT * FROM produto')
    Left = 72
    Top = 168
    object fdQueryProdutosid_produto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryProdutosproduto_descricao: TWideStringField
      FieldName = 'produto_descricao'
      Origin = 'produto_descricao'
      Size = 80
    end
    object fdQueryProdutosid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object fdQueryProdutosvl_custo: TBCDField
      FieldName = 'vl_custo'
      Origin = 'vl_custo'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryProdutosvl_venda: TBCDField
      FieldName = 'vl_venda'
      Origin = 'vl_venda'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryProdutosestoque: TBCDField
      FieldName = 'estoque'
      Origin = 'estoque'
      Precision = 11
      Size = 2
    end
    object fdQueryProdutosestoque_min: TBCDField
      FieldName = 'estoque_min'
      Origin = 'estoque_min'
      Precision = 11
      Size = 2
    end
    object fdQueryProdutosunidade: TWideStringField
      FieldName = 'unidade'
      Origin = 'unidade'
      Size = 6
    end
    object fdQueryProdutoscadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
  end
  object fdTransactionProdutos: TFDTransaction
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Left = 312
    Top = 168
  end
  object fdDataSourceProdutos: TDataSource
    DataSet = fdQueryProdutos
    Left = 176
    Top = 168
  end
  object fdQueryEmpresa: TFDQuery
    Active = True
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransactionEmpresa
    SQL.Strings = (
      'SELECT * FROM empresa')
    Left = 72
    Top = 232
    object fdQueryEmpresaid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryEmpresaraza_social: TWideStringField
      FieldName = 'raza_social'
      Origin = 'raza_social'
      Size = 100
    end
    object fdQueryEmpresan_fantasia: TWideStringField
      FieldName = 'n_fantasia'
      Origin = 'n_fantasia'
      Size = 100
    end
    object fdQueryEmpresaendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object fdQueryEmpresanumero: TIntegerField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object fdQueryEmpresabairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 100
    end
    object fdQueryEmpresacidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 100
    end
    object fdQueryEmpresauf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object fdQueryEmpresatelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object fdQueryEmpresacnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object fdQueryEmpresaemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object fdQueryEmpresacadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
    object fdQueryEmpresalogo: TBlobField
      FieldName = 'logo'
      Origin = 'logo'
    end
  end
  object fdTransactionEmpresa: TFDTransaction
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Left = 312
    Top = 232
  end
  object fdDataSourceEmpresa: TDataSource
    DataSet = fdQueryEmpresa
    Left = 181
    Top = 232
  end
end
