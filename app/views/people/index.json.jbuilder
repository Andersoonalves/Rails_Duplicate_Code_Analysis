json.array!(@people) do |person|
  json.extract! person, :id, :address
  json.url person_url(person, format: :json)
end
