json.array!(@next_battles) do |next_battle|
  json.extract! next_battle, :id, :result_no, :generate_no, :block_no, :e_no
  json.url next_battle_url(next_battle, format: :json)
end
