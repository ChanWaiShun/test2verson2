json.extract! recent_change_comment, :id, :user_name, :body, :recent_change_id, :created_at, :updated_at
json.url recent_change_comment_url(recent_change_comment, format: :json)