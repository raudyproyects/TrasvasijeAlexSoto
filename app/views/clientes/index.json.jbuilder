json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :rut, :direccion, :fono
  json.url cliente_url(cliente, format: :json)
end
