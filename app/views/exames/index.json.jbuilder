json.array!(@exames) do |exame|
  json.extract! exame, :id, :tipo_exame_id, :data, :animal_id
  json.url exame_url(exame, format: :json)
end
