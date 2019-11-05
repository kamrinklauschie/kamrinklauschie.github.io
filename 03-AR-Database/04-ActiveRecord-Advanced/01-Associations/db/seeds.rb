require "faker"

5.times do
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email
  )
  user.save!

  10.times do
    post = Post.new(
      name: Faker::Quote.yoda,
      url: Faker::Internet.url,
      votes: rand(1..10),
      user: user
    )
    post.save!
  end
end
