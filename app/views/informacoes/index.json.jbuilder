json.array!(@informacoes) do |informacao|
  json.extract! informacao, :id
  json.url informacao_url(informacao, format: :json)
end
