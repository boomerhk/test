json.extract! ticket, :id, :ticket_no, :services, :customer_code, :build_date, :staff_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)