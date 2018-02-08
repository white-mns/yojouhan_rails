json.array!(@frame_type_lists) do |frame_type_list|
  json.extract! frame_type_list, :id, :frame_type_id, :name
  json.url frame_type_list_url(frame_type_list, format: :json)
end
