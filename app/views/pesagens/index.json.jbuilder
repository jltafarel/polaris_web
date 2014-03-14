json.array!(@pesagens) do |pesagem|
  json.extract! pesagem, :id, :peso, :data, :animal_id
  json.url pesagem_url(pesagem, format: :json)
end
