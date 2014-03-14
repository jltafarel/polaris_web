json.array!(@nascimentos) do |nascimento|
  json.extract! nascimento, :id, :data
  json.url nascimento_url(nascimento, format: :json)
end
