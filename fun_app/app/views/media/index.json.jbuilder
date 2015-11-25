json.array!(@media) do |medium|
  json.extract! medium, :id, :title, :description, :media_type, :market_id, :market_name, :media_target, :media_reach, :media_url
  json.url medium_url(medium, format: :json)
end
