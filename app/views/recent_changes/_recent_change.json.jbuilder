json.extract! recent_change, :id, :version, :date, :title, :body, :created_at, :updated_at
json.url recent_change_url(recent_change, format: :json)