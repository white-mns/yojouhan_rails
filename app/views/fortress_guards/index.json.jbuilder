json.array!(@fortress_guards) do |fortress_guard|
  json.extract! fortress_guard, :id, :result_no, :generate_no, :e_no, :pysics, :electric_shock, :cold, :flame, :saint_devil
  json.url fortress_guard_url(fortress_guard, format: :json)
end
