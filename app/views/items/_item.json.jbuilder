json.extract! item, :id, :name, :hour, :publish_date, :quarter, :year, :created_at, :updated_at
json.url item_url(item, format: :json)
