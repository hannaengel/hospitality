json.extract! meeting, :id, :title, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
