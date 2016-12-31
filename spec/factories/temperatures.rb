FactoryGirl.define do
  factory :temperature do
    date "2016-11-26"
    time "2016-11-26 15:11:27"
    datetime "2016-11-26 15:11:27"
    temperature 1
    rack_no "MyString"
    min_temp 1
    max_temp 1
    low_warnlv 1
    high_warnlv 1
    timestamp "2016-11-26 15:11:27"
  end
end
