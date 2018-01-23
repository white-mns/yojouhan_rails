json.array!(@elemental_lists) do |elemental_list|
  json.extract! elemental_list, :id, :elemental_id, :name
  json.url elemental_list_url(elemental_list, format: :json)
end
