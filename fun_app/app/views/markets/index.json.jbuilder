json.array!(@markets) do |market|
  json.extract! market, :name
  json.url market_url(market, format: :json)
end
