FactoryGirl.define do
  factory :package_in_out do
    ticket_no 1
    customer_code "MyString"
    quantity 1
    package_no "MyString"
    Courier "MyString"
    floor 1
    location "MyString"
    package_in_time "2016-11-26 15:09:37"
    package_out_time "2016-11-26 15:09:37"
  end
end
