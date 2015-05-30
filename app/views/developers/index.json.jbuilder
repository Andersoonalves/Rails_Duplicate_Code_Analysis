json.array!(@developers) do |developer|
  json.extract! developer, :id, :address
  json.url developer_url(developer, format: :json)
end
