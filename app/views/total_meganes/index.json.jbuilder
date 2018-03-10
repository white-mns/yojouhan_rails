json.array!(@total_meganes) do |total_megane|
  json.extract! total_megane, :id, :result_no, :generate_no, :e_no, :megane_type_id, :megane_count
  json.url total_megane_url(total_megane, format: :json)
end
