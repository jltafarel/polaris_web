json.array!(@classificacoes) do |classificacao|
  json.extract! classificacao, :id, :classificao
  json.url classificacao_url(classificacao, format: :json)
end
