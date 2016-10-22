json.extract! cadastro, :id, :nome, :nasc, :endereco, :bairro, :cidade, :estado, :cep, :genero, :created_at, :updated_at
json.url cadastro_url(cadastro, format: :json)