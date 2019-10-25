require 'csv'
require 'pry-byebug'
require_relative 'recipe'

class Cookbook
  attr_accessor :recipes

  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path
    CSV.foreach(csv_file_path) do |csv_recipe|
      name = csv_recipe[0]
      description = csv_recipe[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
    end
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(@csv_file_path, "wb") do |csv|
      @recipes.each do
        csv << [recipe.name, recipe.description]
      end
    end
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    CSV.open(@csv_file_path, "wb") do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
