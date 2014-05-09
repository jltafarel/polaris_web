json.array!(@classificacoes) do |classificacao|
  json.extract! classificacao, :id, :classificacao
  json.url classificacao_url(classificacao, format: :json)
end
