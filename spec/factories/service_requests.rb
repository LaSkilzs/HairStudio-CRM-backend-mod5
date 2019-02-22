FactoryBot.define do
  factory :service_request do
    hairstyle { "MyString" }
    appointment { nil }
    service_type { nil }
  end
end
