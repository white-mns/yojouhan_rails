json.array!(@meganes) do |megane|
  json.extract! megane, :id, :result_no, :generate_no, :e_no, :page_type, :page_no, :megane_type_id, :megane_count
  json.url megane_url(megane, format: :json)
end
