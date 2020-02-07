json.extract! incident, :id, :issue, :system_id, :solution, :created_at, :updated_at
json.url incident_url(incident, format: :json)
