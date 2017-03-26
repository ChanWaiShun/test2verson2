json.extract! forum_comment, :id, :user_name, :body, :forum_id, :created_at, :updated_at
json.url forum_comment_url(forum_comment, format: :json)