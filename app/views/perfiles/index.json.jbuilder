json.array!(@perfiles) do |perfile|
  json.extract! perfile, :id, :name, :nivel
  json.url perfile_url(perfile, format: :json)
end
