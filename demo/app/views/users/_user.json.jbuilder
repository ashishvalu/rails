json.extract! user, :id, :name, :email, :phone, :brith_date, :created_at, :updated_at
json.url user_url(user, format: :json)
