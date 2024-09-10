json.extract! evento, :id, :nombre, :imagen, :descripcion, :lugar, :fecha, :hora, :fuente, :letra_chica, :created_at, :updated_at
json.url evento_url(evento, format: :json)
