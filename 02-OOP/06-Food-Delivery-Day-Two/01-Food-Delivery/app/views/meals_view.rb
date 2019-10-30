class MealsView
  def ask_for_meal_name
    puts "What's the meal name?"
    gets.chomp
  end

  def ask_for_meal_price
    puts "What's the meal price?"
    gets.chomp
  end

  def show_meals(meals)
    puts meals.name
  end
end
