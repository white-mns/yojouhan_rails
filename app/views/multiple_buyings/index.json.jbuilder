json.array!(@multiple_buyings) do |multiple_buying|
  json.extract! multiple_buying, :id, :result_no, :generate_no, :e_no, :battle_no, :multiple_buying
  json.url multiple_buying_url(multiple_buying, format: :json)
end
