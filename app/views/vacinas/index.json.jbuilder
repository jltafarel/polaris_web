json.array!(@vacinas) do |vacina|
  json.extract! vacina, :id, :tipo_vacina_id, :medicamento_id, :animal_id, :data
  json.url vacina_url(vacina, format: :json)
end
