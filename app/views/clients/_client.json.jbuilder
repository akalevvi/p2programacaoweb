json.extract! client, :id, :name, :phone, :city, :state, :country, :email, :password, :string, :avatar, :created_at, :updated_at
json.url client_url(client, format: :json)