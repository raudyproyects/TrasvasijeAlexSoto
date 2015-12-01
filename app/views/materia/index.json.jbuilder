json.array!(@materia) do |materium|
  json.extract! materium, :id, :codigo, :nombre
  json.url materium_url(materium, format: :json)
end
