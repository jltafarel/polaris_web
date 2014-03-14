json.array!(@cios) do |cio|
  json.extract! cio, :id, :data, :previsao_proximo, :cobertura_id, :animal_id
  json.url cio_url(cio, format: :json)
end
