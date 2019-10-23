require 'pry-byebug'

class OrangeTree
  attr_accessor :age, :height, :fruits, :status

  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    @height += 1 if height < 10
    fruit_count
    if @age > 50 && @age < 100
      @dead = true if rand(1..100) < @age
    elsif @age >= 100
      @dead = true
    end
  end

  def fruit_count
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    @dead
  end

  def pick_a_fruit!
    @fruits = @fruits - 1 if @fruits.positive?
  end
end
