FactoryBot.define do
  factory :appointment do
    date { "2019-02-22 13:49:52" }
    start_time { "2019-02-22 13:49:52" }
    duration { "90 mins" }
    status { "cancelled" }
    service_total { 1.5 }
    user 
    stylist
  end
end
