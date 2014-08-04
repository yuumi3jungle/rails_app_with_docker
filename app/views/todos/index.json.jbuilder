json.array!(@todos) do |todo|
  json.extract! todo, :id, :due, :task
  json.url todo_url(todo, format: :json)
end
