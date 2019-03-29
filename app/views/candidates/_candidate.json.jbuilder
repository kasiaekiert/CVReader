json.extract! candidate, :id, :name, :email, :phone, :job, :created, :note, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
