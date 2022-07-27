FactoryBot.define do
  factory :user do
    email { Faker::Name.name}
    name { Faker::Internet.unique.email  }
  end
end
