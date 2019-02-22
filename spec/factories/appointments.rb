FactoryBot.define do
  factory :appointment do
    date { "2019-02-22 13:49:52" }
    start_time { "2019-02-22 13:49:52" }
    end_time { "2019-02-22 13:49:52" }
    status { 1 }
    service_total { 1.5 }
    user { nil }
  end
end
