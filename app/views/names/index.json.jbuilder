json.array!(@names) do |name|
  json.extract! name, :id, :result_no, :generate_no, :e_no, :name, :nickname
  json.url name_url(name, format: :json)
end
