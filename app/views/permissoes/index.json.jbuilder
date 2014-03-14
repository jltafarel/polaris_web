json.array!(@permissoes) do |permissao|
  json.extract! permissao, :id, :permissao
  json.url permissao_url(permissao, format: :json)
end
