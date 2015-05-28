json.array!(@products) do |product|
  json.extract! product, :id, :address
  json.url product_url(product, format: :json)
end
