json.array!(@regalia_lists) do |regalia_list|
  json.extract! regalia_list, :id, :regalia_id, :name
  json.url regalia_list_url(regalia_list, format: :json)
end
