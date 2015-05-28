json.array!(@people) do |person|
  json.extract! person, :id, :name, :salary, :cpf
  json.url person_url(person, format: :json)
end
