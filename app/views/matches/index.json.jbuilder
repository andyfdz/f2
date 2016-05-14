json.array!(@matches) do |match|
  json.extract! match, :id, :object_one_id, :object_two_id
  json.url match_url(match, format: :json)
end
