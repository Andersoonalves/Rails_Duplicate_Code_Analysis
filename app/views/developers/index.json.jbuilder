json.array!(@developers) do |developer|
  json.extract! developer, :id, :skill
  json.url developer_url(developer, format: :json)
end
