json.extract! repository, :id, :repository_type_id, :name, :created_at, :updated_at
json.url repository_url(repository, format: :json)
