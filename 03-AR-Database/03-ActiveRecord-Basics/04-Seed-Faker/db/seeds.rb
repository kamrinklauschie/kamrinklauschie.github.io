require "faker"

# TODO: Write a seed to insert 100 posts in the database

puts 'Creating 100 quotes...'
100.times do
  post = Post.new(
    title: Faker::Quote.yoda,
    url: Faker::Internet.url,
    votes: rand(1..10)
  )
  post.save!
end
puts 'Finished!'
