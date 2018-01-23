json.array!(@items) do |item|
  json.extract! item, :id, :result_no, :generate_no, :e_no, :i_no, :type, :orig_name, :name, :strength, :fuka1, :fuka2, :guard_elemental, :stock, :value
  json.url item_url(item, format: :json)
end
