json.array!(@unit_orig_name_lists) do |unit_orig_name_list|
  json.extract! unit_orig_name_list, :id, :orig_name_id, :name
  json.url unit_orig_name_list_url(unit_orig_name_list, format: :json)
end
