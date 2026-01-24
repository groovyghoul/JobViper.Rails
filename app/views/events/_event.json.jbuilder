json.extract! event, :id, :job_id, :date, :status, :notes, :created_at, :updated_at
json.url event_url(event, format: :json)
