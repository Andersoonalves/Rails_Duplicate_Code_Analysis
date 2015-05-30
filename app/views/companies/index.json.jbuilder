json.array!(@companies) do |company|
  json.extract! company, :id, :numberOfEmployees, :number, :cnpj, :adress, :zipCode, :card
  json.url company_url(company, format: :json)
end
