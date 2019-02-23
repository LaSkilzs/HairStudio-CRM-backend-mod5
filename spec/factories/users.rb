FactoryBot.define do
  factory :user do
    username { "MyString" }
    password_digest { "MyString" }
    image { "MyString" }
    role { "client" }
    salon 
  end
end
