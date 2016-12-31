FactoryGirl.define do
  factory :check_in_out do
    check_in_no 1
    customer_code "MyString"
    customer_staff_id 1
    status "MyString"
    check_in_time "2016-11-26 15:05:29"
    check_out_time "2016-11-26 15:05:29"
  end
end
