json.array!(@statuses) do |status|
  json.extract! status, :id, :result_no, :generate_no, :e_no, :acc_profit, :rp, :repute, :charm, :tact, :smile, :elegance, :knowledge, :perseverance, :funds, :exp
  json.url status_url(status, format: :json)
end
