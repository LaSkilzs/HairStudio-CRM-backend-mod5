FactoryBot.define do
  factory :comment do
    text { "MyString" }
    conversation { nil }
  end
end
