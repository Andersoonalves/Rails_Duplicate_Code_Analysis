json.array!(@jobs) do |job|
  json.extract! job, :id, :quantity
  json.url job_url(job, format: :json)
end
