json.array!(@fuka_lists) do |fuka_list|
  json.extract! fuka_list, :id, :fuka_id, :name
  json.url fuka_list_url(fuka_list, format: :json)
end
