json.array!(@developers) do |developer|
  json.extract! developer, :id, :age
  json.url developer_url(developer, format: :json)
end
