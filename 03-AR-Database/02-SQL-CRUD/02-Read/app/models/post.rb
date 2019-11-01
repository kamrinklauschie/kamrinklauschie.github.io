# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.
require 'pry-byebug'

class Post
  # TODO
  attr_reader :votes, :id
  attr_accessor :title, :url
  def initialize(attributes = {})
    @title = attributes[:title]
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes]
  end

  def self.find(id)
    DB.results_as_hash = true
    results = DB.execute("SELECT * FROM posts WHERE id = ?", id)[0]
    return nil if results.nil?

    post_instance = Post.new(id: results["id"], title: results["title"], url: results["url"], votes: results["votes"])
    return post_instance
  end

  def self.all
    all_instances = []
    results = DB.execute('SELECT * FROM posts')
    results.each do |result|
      all_instances << Post.new(id: result["id"], title: result["title"], url: result["url"], votes: result["votes"])
    end
    return [] if results.nil?

    return all_instances
  end
end
