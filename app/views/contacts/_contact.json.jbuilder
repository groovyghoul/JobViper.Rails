json.extract! contact, :id, :job_id, :date, :contact_type, :person, :notes, :created_at, :updated_at
json.url contact_url(contact, format: :json)
