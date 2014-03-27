json.array!(@blogs) do |blog|
  json.extract! blog, :id, :name, :permalink, :image, :content
  json.url blog_url(blog, format: :json)
end
