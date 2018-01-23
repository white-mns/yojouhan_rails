json.array!(@unit_type_lists) do |unit_type_list|
  json.extract! unit_type_list, :id, :type_id, :name
  json.url unit_type_list_url(unit_type_list, format: :json)
end
