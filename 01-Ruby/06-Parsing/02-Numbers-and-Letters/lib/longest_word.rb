require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
  letters = ["a".."z"]
  $grid = letters.sample(grid_size)
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
  url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  user_serialized = open(url).read
  api_hash = JSON.parse(user_serialized)

  case error_handling
  when api_hash["word"].match? $grid
    p $grid
end

run_game("kamrin", 6, 0, 0)

# custom message for correct word
# compute high score for longer word
# compute high score for quicker answer



# make sure word entered is an actual English work
# make sure that every character appears in the grid
# score 0 for non-English word
# custom message for invalid word
# score 0 for word not in the grid
# custom message for word not in grid
# catches overused letters
