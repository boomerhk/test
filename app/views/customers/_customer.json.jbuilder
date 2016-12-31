json.extract! customer, :id, :customer_code, :customer_name, :email, :phone_no, :address, :join_date, :created_at, :updated_at
json.url customer_url(customer, format: :json)