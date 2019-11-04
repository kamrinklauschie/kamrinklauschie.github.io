require "json"
require "rest-client"
# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.

response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
repos = JSON.parse(response).first(10)


repos.each do |repo_id|
  response = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{repo_id}.json"
  json_post = JSON.parse(response)
  post = Post.new(id: json_post["id"], title: json_post["title"], url: json_post["url"])
  post.save!
end
