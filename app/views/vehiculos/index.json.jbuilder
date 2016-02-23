json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :marca, :modelo, :anio
  json.url vehiculo_url(vehiculo, format: :json)
end
