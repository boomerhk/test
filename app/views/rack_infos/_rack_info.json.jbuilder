json.extract! rack_info, :id, :rack_no, :tpye, :customer_code, :total_unit, :low_unit, :height_unit, :created_at, :updated_at
json.url rack_info_url(rack_info, format: :json)