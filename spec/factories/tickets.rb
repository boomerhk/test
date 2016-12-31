FactoryGirl.define do
  factory :ticket do
    ticket_no 1
    services "MyString"
    customer_code "MyString"
    build_date "2016-11-26"
    staff_id 1
  end
end
