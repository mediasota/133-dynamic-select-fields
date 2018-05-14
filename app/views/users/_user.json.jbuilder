json.extract! user, :id, :first_name, :last_name, :country_id, :state_id, :created_at, :updated_at
json.url user_url(user, format: :json)
