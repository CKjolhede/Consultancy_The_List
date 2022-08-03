# frozen_string_literal: true

User.destroy_all
Recommendation.destroy_all

# 1.times do
#   FactoryBot.create_list(:user, 20)
#   @user = User.all.sample
#   FactoryBot.create_list(:recommendation, 6)
# end

user1 = User.create!(email: 'alaine.nader@hammes.co', name: 'Devon Keeling')
user2 = User.create!(email: 'rafael_leffler@gislason.biz', name: 'Santiago Conn')
User.create!(email: 'jewel.schmeler@aufderhar.info', name: 'Ms. Garnet Borer')
User.create!(email: 'allyson_wisozk@walter-waelchi.org', name: 'Jerrell Howe')
User.create!(email: 'german_abernathy@funk.info', name: 'Msgr. Shad Kihn')
User.create!(email: 'preston@crist.net', name: 'Mrs. Jewell Boehm')
User.create!(email: 'owen@hartmann.co', name: 'Britt Lubowitz')
User.create!(email: 'jeramy_west@wuckert-heathcote.biz', name: 'Rufus Oberbrunner DVM')
User.create!(email: 'eleanor@klein.net', name: 'Santana Sipes')
User.create!(email: 'brock@beatty-herman.net', name: 'Sharla Torp')

Recommendation.create!(media_id: '278', title: 'The Shawshank Redemption', media_type: 'movie',
                       recommended_by_id: user2.id, status: 'pending', user_id: user1.id)
Recommendation.create!(media_id: 'rk2MDQAAQBAJ', title: 'The Book Thief', media_type: 'book',
                       recommended_by_id: user2.id, status: 'pending', user_id: user1.id)
Recommendation.create!(media_id: '11868', title: 'Dracula', media_type: 'movie', recommended_by_id: user2.id,
                       status: 'accepted', user_id: user1.id)
Recommendation.create!(media_id: 'LnVPj0lN0eIC', title: 'Krampus', media_type: 'book', recommended_by_id: user2.id,
                       status: 'accepted', user_id: user1.id)
Recommendation.create!(media_id: 'rIpIBAAAQBAJ',
                       title: 'Captain Underpants and the Preposterous Plight of the Purple Potty People', media_type: 'book', recommended_by_id: user1.id, status: 'pending', user_id: user2.id)
