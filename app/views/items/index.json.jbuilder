json.array!(@items) do |item|
  json.extract! item, :id, :name, :spent_men, :spent_women, :spent_child
  json.url item_url(item, format: :json)
end
