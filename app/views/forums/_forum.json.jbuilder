json.extract! forum, :id, :topic, :body, :created_at, :updated_at
json.url forum_url(forum, format: :json)