json.extract! package_in_out, :id, :ticket_no, :customer_code, :quantity, :package_no, :Courier, :floor, :location, :package_in_time, :package_out_time, :created_at, :updated_at
json.url package_in_out_url(package_in_out, format: :json)