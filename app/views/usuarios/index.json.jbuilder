json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :login, :senha, :permissao_id, :propriedade_id
  json.url usuario_url(usuario, format: :json)
end
