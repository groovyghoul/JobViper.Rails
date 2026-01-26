json.extract! contact, :id, :job_id, :name, :email, :role, :created_at, :updated_at
json.url job_contact_url(contact.job, contact, format: :json)
