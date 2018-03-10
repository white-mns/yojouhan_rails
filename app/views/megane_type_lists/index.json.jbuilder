json.array!(@megane_type_lists) do |megane_type_list|
  json.extract! megane_type_list, :id, :megane_type_id, :name
  json.url megane_type_list_url(megane_type_list, format: :json)
end
