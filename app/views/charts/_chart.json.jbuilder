json.extract! chart, :id, :name, :year, :quarter, :image_q, :image_y, :ticker, :created_at, :updated_at
json.url chart_url(chart, format: :json)
