json.array!(@companies) do |company|
  json.extract! company, :id, :numberOfEmployess, :creation, :cnpj, :state
  json.url company_url(company, format: :json)
end
