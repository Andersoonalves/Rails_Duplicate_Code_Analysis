json.array!(@companies) do |company|
  json.extract! company, :id, :numberOfEmployess, :creation
  json.url company_url(company, format: :json)
end
