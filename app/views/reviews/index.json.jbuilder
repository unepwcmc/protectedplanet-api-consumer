json.array!(@reviews) do |review|
  json.extract! review, :name, :description, :picture
  json.url review_url(review, format: :json)
end
