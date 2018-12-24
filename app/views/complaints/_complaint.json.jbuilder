json.extract! complaint, :id, :call_date, :dealer, :product_name, :fault, :complaint_status, :call_history, :warranty, :mechenic, :site_address, :coustomer_name, :coustomer_address, :coustomer_city, :coustomer_phone, :product_sr_no, :purchase_date, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
