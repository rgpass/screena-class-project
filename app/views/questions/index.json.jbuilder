json.array!(@questions) do |question|
  json.extract! question, :id, :name, :label, :input_type, :question_number
  json.url question_url(question, format: :json)
end
