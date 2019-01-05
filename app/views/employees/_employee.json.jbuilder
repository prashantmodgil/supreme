json.extract! employee, :id, :name, :contact, :created_at, :updated_at
json.url employee_url(employee, format: :json)
