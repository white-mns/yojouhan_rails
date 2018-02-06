json.array!(@castle_structures) do |castle_structure|
  json.extract! castle_structure, :id, :result_no, :generate_no, :e_no, :frame_type, :i_no
  json.url castle_structure_url(castle_structure, format: :json)
end
