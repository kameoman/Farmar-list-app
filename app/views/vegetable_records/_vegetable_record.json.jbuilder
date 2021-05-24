json.extract! vegetable_record, :id, :name, :varaiety, :body, :image, :created_at, :updated_at
json.url vegetable_record_url(vegetable_record, format: :json)
