json.array!(@people) do |person|
  json.extract! person, :id, :age, :cel, :birthday, :name, :salary
  json.url person_url(person, format: :json)
end
