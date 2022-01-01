json.extract! yr_profit, :id, :name, :year, :quarter, :latest_amt, :previous_amt, :inc_amt, :inc_pct, :created_at, :updated_at
json.url yr_profit_url(yr_profit, format: :json)
