json.extract! movimento_estoque, :id, :data, :quantidade, :pessoa_id, :operacao_id, :produto_id, :created_at, :updated_at
json.url movimento_estoque_url(movimento_estoque, format: :json)
