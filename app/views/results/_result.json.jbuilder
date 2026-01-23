json.extract! result, :id, :job_id, :date, :status, :notes, :created_at, :updated_at
json.url result_url(result, format: :json)
