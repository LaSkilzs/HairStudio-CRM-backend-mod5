FactoryBot.define do
  factory :product do
    name { "MyString" }
    size { "MyString" }
    quantity { 1 }
    cost { 1.5 }
    ProductCategory { nil }
  end
end
