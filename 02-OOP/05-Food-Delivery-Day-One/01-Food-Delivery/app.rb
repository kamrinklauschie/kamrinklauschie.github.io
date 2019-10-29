# Modules
require "csv"
require "pry-byebug"

# Repository
require_relative 'repositories/meal_repository'

# Controller
require_relative 'controllers/meal_controller'

# Router
require_relative 'router'

csv_file        = File.join(__dir__, 'data/meals.csv')
meal_repository = MealRepository.new(csv_file)
meal_controller = MealsController.new(meal_repository)

router = Router.new(meal_controller)

# Start the app
router.run
