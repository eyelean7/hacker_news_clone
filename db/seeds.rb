Post.destroy_all

50.times do |index|
  Post.create!(user_id: 1,
  url: Faker::Lorem.sentence(20, false, 0).chop)
end
