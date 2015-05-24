json.array!(@companies) do |company|
  json.extract! company, :id, :numberOfEmployees
  json.url company_url(company, format: :json)
end
