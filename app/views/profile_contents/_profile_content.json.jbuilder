json.extract! profile_content, :id, :title, :content, :created_at, :updated_at
json.url profile_content_url(profile_content, format: :json)