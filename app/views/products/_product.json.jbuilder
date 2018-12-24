json.extract! product, :id, :name, :sr_number, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)
