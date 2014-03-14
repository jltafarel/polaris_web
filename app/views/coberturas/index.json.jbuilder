json.array!(@coberturas) do |cobertura|
  json.extract! cobertura, :id, :data, :animal_id
  json.url cobertura_url(cobertura, format: :json)
end
