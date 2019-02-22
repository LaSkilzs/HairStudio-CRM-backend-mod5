FactoryBot.define do
  factory :certification do
    name { "MyString" }
    organization { "MyString" }
    license { false }
    license_id { 1 }
    renewal { "2019-02-22 13:43:10" }
  end
end
