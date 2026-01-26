json.extract! event, :id, :job_id, :event_date, :event_type, :notes, :created_at, :updated_at
json.url job_event_url(event.job, event, format: :json)
