json.array!(@entregas) do |entrega|
  json.extract! entrega, :id, :cantidad, :fecha, :cliente_id, :materia_id
  json.url entrega_url(entrega, format: :json)
end
