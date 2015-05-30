json.array!(@jobs) do |job|
  json.extract! job, :id, :address
  json.url job_url(job, format: :json)
end
