json.array!(@markets) do |market|
  json.extract! market, :id, :result_no, :generate_no, :market_no, :unit_type, :orig_name, :name, :value, :attack, :biattack, :grand, :guard_elemental, :guard_value, :forecast, :caution, :continuance, :enthusiasm, :goodwill, :charge, :tokushu, :fuka1, :fuka2, :strength, :e_no
  json.url market_url(market, format: :json)
end
