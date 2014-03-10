json.array!(@messages) do |message|
  json.extract! message, :id, :name, :phone, :email, :company, :idea, :message, :extra, :type
  json.url message_url(message, format: :json)
end
