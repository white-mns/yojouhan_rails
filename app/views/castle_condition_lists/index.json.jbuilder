json.array!(@castle_condition_lists) do |castle_condition_list|
  json.extract! castle_condition_list, :id, :castle_condition_id, :name
  json.url castle_condition_list_url(castle_condition_list, format: :json)
end
