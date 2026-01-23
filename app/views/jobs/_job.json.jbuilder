json.extract! job, :id, :company, :title, :applied_date, :status, :source, :created_at, :updated_at
json.url job_url(job, format: :json)
