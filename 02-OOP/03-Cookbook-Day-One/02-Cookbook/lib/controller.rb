require_relative 'cookbook'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
  end

  def destroy
    remove_recipe(index)
  end

  def create
    add_recipe(recipe)
  end

  def list
    all
  end
end
