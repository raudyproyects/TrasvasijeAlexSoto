json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :direccion, :fono
  json.url cliente_url(cliente, format: :json)
end
