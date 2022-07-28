FactoryBot.define do
  factory :user do
    name {Faker::Movies::PrincessBride.character}
    sequence(:email) { |n| "#{name.gsub(" ","")}_#{n}@thelist.com".downcase }
  end
end
