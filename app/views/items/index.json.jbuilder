json.array!(@items) do |item|
  json.extract! item, :id, :name, :photo, :category_id, :characteristics
  json.url item_url(item, format: :json)
end
