json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :attack, :defence
  json.url unit_url(unit, format: :json)
end
