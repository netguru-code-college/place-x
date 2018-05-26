json.extract! place, :id, :name, :description, :lat, :lng, :created_at, :updated_at
json.url place_url(place, format: :json)
