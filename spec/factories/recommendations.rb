FactoryBot.define do

  factory :recommendation do

    media_id {Faker::Number.unique.within(range:1..10_000)}
    title { Faker::Movie.title}
    media_type {0}
    recommended_by {Faker::Number.unique.within(range:1..20)}
    user_id {User.all.sample.id}
    # user_id {Faker::Number.unique.within(range:1..20)}
    status {0}    
  end
end
