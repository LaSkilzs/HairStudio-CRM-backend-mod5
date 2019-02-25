FactoryBot.define do
  factory :user, aliases: [:stylist] do
    username { "MyString" }
    password_digest { "MyString" }
    image { "MyString" }
    role { "client" }
    salon 
  end
end
