json.array!(@add_effect_lists) do |add_effect_list|
  json.extract! add_effect_list, :id, :add_effect_id, :name
  json.url add_effect_list_url(add_effect_list, format: :json)
end
