json.array!(@questions) do |question|
  json.extract! question, :id, :name, :label, :inputType
  json.url question_url(question, format: :json)
end
