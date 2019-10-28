class RecipesView
  def ask_for_name
    puts "What's the recipe name?"
  end

  def ask_for_description
    puts "What's the recipe description?"
  end

  def ask_for_index
    puts "Which number?"
    gets.chomp
  end

  def ask_for_search
    puts "What would you like to search?"
    gets.chomp
  end

  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end
end
