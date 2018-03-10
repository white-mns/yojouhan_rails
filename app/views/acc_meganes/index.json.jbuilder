json.array!(@acc_meganes) do |acc_megane|
  json.extract! acc_megane, :id, :result_no, :generate_no, :e_no, :megane_type_id, :megane_count
  json.url acc_megane_url(acc_megane, format: :json)
end
