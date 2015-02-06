json.array!(@xiaoshuos) do |xiaoshuo|
  json.extract! xiaoshuo, :id, :title, :content, :user_id
  json.url xiaoshuo_url(xiaoshuo, format: :json)
end
