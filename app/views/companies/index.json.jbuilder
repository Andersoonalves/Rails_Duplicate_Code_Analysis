json.array!(@companies) do |company|
  json.extract! company, :id, :address
  json.url company_url(company, format: :json)
end
