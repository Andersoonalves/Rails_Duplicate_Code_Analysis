json.array!(@orders) do |order|
  json.extract! order, :id, :available
  json.url order_url(order, format: :json)
end
