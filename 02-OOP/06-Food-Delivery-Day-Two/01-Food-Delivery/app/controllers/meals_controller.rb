require_relative '../repositories/meal_repository'
require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
    @meal_repository.all.each do |meal|
      @view.show_meals(meal)
    end
  end

  def add
    name = @view.ask_for_meal_name
    price = @view.ask_for_meal_price.to_i
    @meal_repository.add(Meal.new(name: name, price: price))
  end
end
