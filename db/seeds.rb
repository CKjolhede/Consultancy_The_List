20.times do
  User.create!(
    email: Faker::Internet.unique.email,
    name: Faker::Name.name
  )
end
