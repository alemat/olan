json.extract! news, :id, :medium_id, :headline, :intro_text, :link, :created_at, :updated_at
json.url news_url(news, format: :json)
