FactoryBot.define do
  factory :user do
    username { "MyString" }
    password_digest { "MyString" }
    image { "MyString" }
    role { 1 }
    salon { nil }
  end
end
