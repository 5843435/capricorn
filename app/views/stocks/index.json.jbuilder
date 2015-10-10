json.array!(@stocks) do |stock|
  json.extract! stock, :id, :user_id, :item_id, :unit, :num
  json.url stock_url(stock, format: :json)
end
