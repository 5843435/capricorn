json.array!(@user_items) do |user_item|
  json.extract! user_item, :id
  json.url user_item_url(user_item, format: :json)
end
