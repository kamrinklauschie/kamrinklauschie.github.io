# You can use a global variable, DB, which
# is an instance of SQLite3::Database
# NO NEED TO CREATE IT, JUST USE IT.

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
    results = db.execute("SELECT * FROM table WHERE (?, ?)", [id, #{id}])
    return results
  end

  def self.all
    results = db.execute('SELECT * FROM posts;')
  end
end


# CREATE TABLE `posts` (
#   `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
#   `title` TEXT,
#   `url` TEXT,
#   `votes`  INTEGER
# );


# db.execute("INSERT INTO player_info (touchdowns, team) VALUES (?, ?)", [10, "Giants"]
