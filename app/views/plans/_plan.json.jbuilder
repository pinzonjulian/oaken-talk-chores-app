json.extract! plan, :id, :name, :price_in_cents, :created_at, :updated_at
json.url plan_url(plan, format: :json)
