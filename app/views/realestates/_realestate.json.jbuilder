json.extract! realestate, :id, :name, :rent, :address, :age, :remarks, :route1, :station1, :distance_walk1, :route2, :station2, :distance_walk2, :created_at, :updated_at
json.url realestate_url(realestate, format: :json)