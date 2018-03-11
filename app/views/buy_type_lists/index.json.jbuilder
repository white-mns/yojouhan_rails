json.array!(@buy_type_lists) do |buy_type_list|
  json.extract! buy_type_list, :id, :buy_type_id, :name
  json.url buy_type_list_url(buy_type_list, format: :json)
end
