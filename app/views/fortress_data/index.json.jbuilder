json.array!(@fortress_data) do |fortress_datum|
  json.extract! fortress_datum, :id, :result_no, :generate_no, :e_no, :grand, :caution, :continuance, :enthusiasm, :goodwill, :forecast, :stock, :high_grade, :mob, :drink, :regalia
  json.url fortress_datum_url(fortress_datum, format: :json)
end
