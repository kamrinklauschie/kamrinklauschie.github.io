require_relative 'recipe'
require_relative 'recipes_view'
require_relative 'parsing'
require "pry-byebug"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = RecipesView.new
  end

  def destroy
    # 1. ASk the cookbook for the recipes
    recipes = @cookbook.all
    # 2. Ask the view to display them
    @view.display_recipes(recipes)
    # 3. Ask the view to prompt the user for an index
    index = @view.ask_for_index
    # 4. Ask the cookbook to remove the recipe by its index
    @cookbook.remove_recipe(index)
  end

  def create
    # 1. Ask the view for a name
    name = @view.ask_for_name
    # 2. Ask the view for a description
    description = @view.ask_for_description
    # 3. Initialize the recipe
    recipe = Recipe.new(name, description)
    # 4. Add the recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def list
    # 1. Ask the cookbook for the recipes
    recipes = @cookbook.all
    # 2. Ask the view to display them
    @view.display_recipes(recipes)
  end

  def search
    # 1. Ask a user for a keyword to search
    search_criteria = @view.ask_for_search
    # 2. Make an HTTP request to the recipes website with our keyword
    # 3. Parse the HTML document to extract the first 5 recipes suggested and store them in an Array
    search_recipes = parsing(search_criteria)
    # 4. Display them in an indexed list
    @view.display_recipes(search_recipes)
    # 5. Ask the user which recipe they want to import (ask for an index)
    recipe_number = @view.ask_for_index
    # binding.pry
    # 6. Add it to the Cookbook
    @cookbook.add_recipe(search_recipes[recipe_number.to_i - 1])
  end
end
