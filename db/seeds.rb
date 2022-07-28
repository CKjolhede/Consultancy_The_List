User.destroy_all
Recommendation.destroy_all

1.times do
  FactoryBot.create_list(:user, 20)
  @user = User.all.sample
  FactoryBot.create_list(:recommendation, 6)
end
  # name: Faker::Movies::PrincessBride.character,
  # email: Faker::Internet.email(domain: 'thelist.org') #=> "alice@example.name"
# )
# end
# 6.times do
# build_stubbed(:recommendation)