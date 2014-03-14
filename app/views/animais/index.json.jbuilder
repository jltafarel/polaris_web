json.array!(@animais) do |animal|
  json.extract! animal, :id, :nome, :identificacao, :raca_id, :propriedade_id, :classificacao_id
  json.url animal_url(animal, format: :json)
end
