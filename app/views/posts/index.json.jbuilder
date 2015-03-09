json.array!(@posts) do |post|
  json.extract! post, :id, :title, :url, :image, :affiliate, :duration
  json.url post_url(post, format: :json)
end
