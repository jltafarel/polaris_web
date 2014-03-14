json.array!(@tipo_vacinas) do |tipo_vacina|
  json.extract! tipo_vacina, :id, :tipo_vacina
  json.url tipo_vacina_url(tipo_vacina, format: :json)
end
