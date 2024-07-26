object dmDadosMovimentacoes: TdmDadosMovimentacoes
  Height = 644
  Width = 638
  object fdDataSourceMovimentacoesCompra: TDataSource
    DataSet = fdQueryMovimentacoesCompra
    Left = 96
    Top = 136
  end
  object fdDataSourceItensEntrada: TDataSource
    DataSet = fdQueryMovimentacoesEntradaItens
    Left = 312
    Top = 136
  end
  object fdTransaction: TFDTransaction
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Left = 96
    Top = 192
  end
  object fdQueryProdutosLookUp: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    SQL.Strings = (
      'SELECT'
      'id_produto,'
      'produto_descricao, '
      'vl_custo'
      'FROM produto')
    Left = 488
    Top = 192
    object fdQueryProdutosLookUpid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryProdutosLookUpproduto_descricao: TWideStringField
      FieldName = 'produto_descricao'
      Origin = 'produto_descricao'
      Size = 80
    end
    object fdQueryProdutosLookUpvl_custo: TBCDField
      FieldName = 'vl_custo'
      Origin = 'vl_custo'
      currency = True
      Precision = 11
      Size = 2
    end
  end
  object fdQueryFornecedorLookUp: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    SQL.Strings = (
      'SELECT '
      'id_fornecedor,'
      'nome'
      'FROM fornecedor')
    Left = 488
    Top = 80
    object fdQueryFornecedorLookUpid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryFornecedorLookUpnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
  end
  object fdQueryFormaPagtoLookUp: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    SQL.Strings = (
      'SELECT '
      'id_forma_pgto,'
      'descricao'
      'FROM forma_pgto')
    Left = 488
    Top = 136
    object fdQueryFormaPagtoLookUpid_forma_pgto: TIntegerField
      FieldName = 'id_forma_pgto'
      Origin = 'id_forma_pgto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryFormaPagtoLookUpdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
  end
  object fdQueryExclusao: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransaction
    Left = 312
    Top = 192
  end
  object fdQueryMovimentacoesCompra: TFDQuery
    CachedUpdates = True
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvUpdateMode, uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'compra_id_compra_seq'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.AutoIncFields = 'id_compra'
    SQL.Strings = (
      'SELECT * FROM compra')
    Left = 96
    Top = 80
    object fdQueryMovimentacoesCompraid_compra: TFDAutoIncField
      FieldName = 'id_compra'
      Origin = 'id_compra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQueryMovimentacoesCompraid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object fdQueryMovimentacoesCompraid_forma_pgto: TIntegerField
      FieldName = 'id_forma_pgto'
      Origin = 'id_forma_pgto'
    end
    object fdQueryMovimentacoesComprausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 30
    end
    object fdQueryMovimentacoesCompravalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesCompracadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
    object fdQueryMovimentacoesCompranomefornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'nomefornecedor'
      LookupDataSet = fdQueryFornecedorLookUp
      LookupKeyFields = 'id_fornecedor'
      LookupResultField = 'nome'
      KeyFields = 'id_fornecedor'
      Size = 100
      Lookup = True
    end
    object fdQueryMovimentacoesCompranomepagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'nomepagamento'
      LookupDataSet = fdQueryFormaPagtoLookUp
      LookupKeyFields = 'id_forma_pgto'
      LookupResultField = 'descricao'
      KeyFields = 'id_forma_pgto'
      Size = 100
      Lookup = True
    end
  end
  object fdQueryMovimentacoesEntradaItens: TFDQuery
    OnCalcFields = fdQueryMovimentacoesEntradaItensCalcFields
    CachedUpdates = True
    IndexFieldNames = 'id_compra'
    MasterSource = fdDataSourceMovimentacoesCompra
    MasterFields = 'id_compra'
    DetailFields = 'id_compra'
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransaction
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'item_compra_id_sequencia_seq'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.AutoIncFields = 'id_sequencia'
    SQL.Strings = (
      'SELECT * FROM item_compra'
      'WHERE id_compra = :id_compra'
      '')
    Left = 312
    Top = 80
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 267
      end>
    object fdQueryMovimentacoesEntradaItensid_sequencia: TFDAutoIncField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQueryMovimentacoesEntradaItensid_compra: TIntegerField
      FieldName = 'id_compra'
      Origin = 'id_compra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryMovimentacoesEntradaItensid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object fdQueryMovimentacoesEntradaItensqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesEntradaItensvl_custo: TBCDField
      FieldName = 'vl_custo'
      Origin = 'vl_custo'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesEntradaItensdesconto: TBCDField
      FieldName = 'desconto'
      Origin = 'desconto'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesEntradaItenstotal_item: TBCDField
      FieldName = 'total_item'
      Origin = 'total_item'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesEntradaItensdescricaoitem: TStringField
      FieldKind = fkLookup
      FieldName = 'descricaoitem'
      LookupDataSet = fdQueryProdutosLookUp
      LookupKeyFields = 'id_produto'
      LookupResultField = 'produto_descricao'
      KeyFields = 'id_produto'
      Size = 100
      Lookup = True
    end
    object fdQueryMovimentacoesEntradaItenssubtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      currency = True
      Calculated = True
    end
  end
  object fdQueryMovimentacoesVenda: TFDQuery
    CachedUpdates = True
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'venda_id_venda_seq'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.AutoIncFields = 'id_venda'
    SQL.Strings = (
      'SELECT * FROM venda')
    Left = 128
    Top = 296
    object fdQueryMovimentacoesVendaid_venda: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryMovimentacoesVendaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object fdQueryMovimentacoesVendaid_forma_pgto: TIntegerField
      FieldName = 'id_forma_pgto'
      Origin = 'id_forma_pgto'
    end
    object fdQueryMovimentacoesVendausuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 50
    end
    object fdQueryMovimentacoesVendavalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesVendacadastro: TDateField
      FieldName = 'cadastro'
      Origin = 'cadastro'
    end
    object fdQueryMovimentacoesVendanomecliente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomecliente'
      LookupDataSet = fdQueryClienteLookUp
      LookupKeyFields = 'id_cliente'
      LookupResultField = 'nome'
      KeyFields = 'id_cliente'
      Size = 100
      Lookup = True
    end
    object fdQueryMovimentacoesVendanomepagamento: TStringField
      FieldKind = fkLookup
      FieldName = 'nomepagamento'
      LookupDataSet = fdQueryFormaPagtoLookUp
      LookupKeyFields = 'id_forma_pgto'
      LookupResultField = 'descricao'
      KeyFields = 'id_forma_pgto'
      Size = 50
      Lookup = True
    end
  end
  object fdDataSourceMovimentacoesVenda: TDataSource
    DataSet = fdQueryMovimentacoesVenda
    Left = 128
    Top = 352
  end
  object fdQueryClienteLookUp: TFDQuery
    Active = True
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    SQL.Strings = (
      'SELECT id_cliente, nome'
      'FROM cliente')
    Left = 488
    Top = 248
  end
  object fdQueryMovimentacoesSaidaItens: TFDQuery
    OnCalcFields = fdQueryMovimentacoesSaidaItensCalcFields
    CachedUpdates = True
    IndexFieldNames = 'id_venda'
    MasterSource = fdDataSourceMovimentacoesVenda
    MasterFields = 'id_venda'
    DetailFields = 'id_venda'
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    Transaction = fdTransaction
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'item_venda_id_sequencia_seq'
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.AutoIncFields = 'id_sequencia'
    SQL.Strings = (
      'SELECT * FROM item_venda'
      'WHERE id_venda = :id_venda')
    Left = 312
    Top = 296
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 11
      end>
    object fdQueryMovimentacoesSaidaItensid_sequencia: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryMovimentacoesSaidaItensid_venda: TIntegerField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryMovimentacoesSaidaItensid_produto: TIntegerField
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object fdQueryMovimentacoesSaidaItensqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesSaidaItensvl_custo: TBCDField
      FieldName = 'vl_custo'
      Origin = 'vl_custo'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesSaidaItensdesconto: TBCDField
      FieldName = 'desconto'
      Origin = 'desconto'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesSaidaItenstotal_item: TBCDField
      FieldName = 'total_item'
      Origin = 'total_item'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryMovimentacoesSaidaItensdescricaoitem: TStringField
      FieldKind = fkLookup
      FieldName = 'descricaoitem'
      LookupDataSet = fdQueryProdutosLookUp
      LookupKeyFields = 'id_produto'
      LookupResultField = 'produto_descricao'
      KeyFields = 'id_produto'
      Size = 100
      Lookup = True
    end
    object fdQueryMovimentacoesSaidaItenssubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
  end
  object fdDataSourceSaidasItens: TDataSource
    DataSet = fdQueryMovimentacoesSaidaItens
    Left = 312
    Top = 352
  end
  object fdQueryContasAPagar: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'contas_pagar_id_sequencia_seq'
    UpdateOptions.AutoIncFields = 'id_sequencia'
    SQL.Strings = (
      'SELECT * FROM contas_pagar')
    Left = 128
    Top = 432
    object fdQueryContasAPagarid_sequencia: TIntegerField
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryContasAPagarid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object fdQueryContasAPagarvalor_parcela: TBCDField
      FieldName = 'valor_parcela'
      Origin = 'valor_parcela'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasAPagardt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
    end
    object fdQueryContasAPagardt_pagamento: TDateField
      FieldName = 'dt_pagamento'
      Origin = 'dt_pagamento'
    end
    object fdQueryContasAPagaratraso: TIntegerField
      FieldName = 'atraso'
      Origin = 'atraso'
    end
    object fdQueryContasAPagarjuros: TBCDField
      FieldName = 'juros'
      Origin = 'juros'
      Precision = 11
      Size = 2
    end
    object fdQueryContasAPagarvl_juros: TBCDField
      FieldName = 'vl_juros'
      Origin = 'vl_juros'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasAPagartotal_pagar: TBCDField
      FieldName = 'total_pagar'
      Origin = 'total_pagar'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasAPagarstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 30
    end
    object fdQueryContasAPagarnomeFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeFornecedor'
      LookupDataSet = fdQueryFornecedorLookUp
      LookupKeyFields = 'id_fornecedor'
      LookupResultField = 'nome'
      KeyFields = 'id_fornecedor'
      Lookup = True
    end
  end
  object fdQueryContasAReceber: TFDQuery
    Connection = dmDadosPrincipal.fdConnectionPrincipal
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'contas_receber_id_sequencia_seq'
    UpdateOptions.AutoIncFields = 'id_sequencia'
    SQL.Strings = (
      'SELECT * FROM contas_receber')
    Left = 320
    Top = 440
    object fdQueryContasAReceberid_sequencia: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_sequencia'
      Origin = 'id_sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryContasAReceberid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object fdQueryContasARecebervalor_parcela: TBCDField
      FieldName = 'valor_parcela'
      Origin = 'valor_parcela'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasAReceberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
    end
    object fdQueryContasAReceberdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
      Origin = 'dt_pagamento'
    end
    object fdQueryContasAReceberatraso: TIntegerField
      FieldName = 'atraso'
      Origin = 'atraso'
    end
    object fdQueryContasAReceberjuros: TBCDField
      FieldName = 'juros'
      Origin = 'juros'
      Precision = 11
      Size = 2
    end
    object fdQueryContasARecebervl_juros: TBCDField
      FieldName = 'vl_juros'
      Origin = 'vl_juros'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasARecebertotal_pagar: TBCDField
      FieldName = 'total_pagar'
      Origin = 'total_pagar'
      currency = True
      Precision = 11
      Size = 2
    end
    object fdQueryContasAReceberstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 30
    end
    object fdQueryContasARecebernomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeCliente'
      LookupDataSet = fdQueryClienteLookUp
      LookupKeyFields = 'id_cliente'
      LookupResultField = 'nome'
      KeyFields = 'id_cliente'
      Lookup = True
    end
  end
  object fdDataSourceContasAPagar: TDataSource
    DataSet = fdQueryContasAPagar
    Left = 128
    Top = 504
  end
  object fdDataSourceContasAReceber: TDataSource
    DataSet = fdQueryContasAReceber
    Left = 320
    Top = 504
  end
end
