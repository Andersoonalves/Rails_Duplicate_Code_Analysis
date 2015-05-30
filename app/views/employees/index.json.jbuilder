json.array!(@employees) do |employee|
  json.extract! employee, :id, :data
  json.url employee_url(employee, format: :json)
end
