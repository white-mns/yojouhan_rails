json.array!(@castle_structure_major_type_nums) do |castle_structure_major_type_num|
  json.extract! castle_structure_major_type_num, :id, :result_no, :generate_no, :e_no, :build_num, :guard_num, :goods_num
  json.url castle_structure_major_type_num_url(castle_structure_major_type_num, format: :json)
end
