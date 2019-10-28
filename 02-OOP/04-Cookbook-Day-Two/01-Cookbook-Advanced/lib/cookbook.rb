require 'csv'
require_relative 'recipe'

class Cookbook
  attr_accessor :recipes

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_csv
  end

  def add_recipe(recipe)
    # binding.pry
    @recipes << recipe
    update_csv
  end

  def all
    @recipes
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    update_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
      name        = row[0]
      description = row[1]
      recipe      = Recipe.new(name, description)
      @recipes << recipe
    end
  end

  def update_csv
    CSV.open(@csv_file_path, "wb") do |csv_file|
      @recipes.each do |recipe|
        csv_file << [recipe.name, recipe.description]
      end
    end
  end
end
