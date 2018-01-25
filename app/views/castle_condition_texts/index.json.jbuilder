json.array!(@castle_condition_texts) do |castle_condition_text|
  json.extract! castle_condition_text, :id, :result_no, :generate_no, :e_no, :condition_text
  json.url castle_condition_text_url(castle_condition_text, format: :json)
end
