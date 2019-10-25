require_relative 'recipe'

class Cookbook
  attr_accessor :recipes
  def initialize(recipe)
    @recipes = []
  end

  def all
    return @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
  end
end
