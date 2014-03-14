json.array!(@racas) do |raca|
  json.extract! raca, :id, :raca
  json.url raca_url(raca, format: :json)
end
