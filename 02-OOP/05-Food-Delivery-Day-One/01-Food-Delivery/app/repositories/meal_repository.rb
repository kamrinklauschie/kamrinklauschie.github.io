require 'csv'
require_relative '../models/meal'

class MealRepository
  attr_accessor :id
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @meals
  end

  def add(meal)
    meal.id = @next_id
    @next_id += 1
    @meals << meal
    save_csv
  end

  def find(id)
    @meals.select { |meal| meal.id == id }.first
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id]    = row[:id].to_i
      row[:price] = row[:price].to_i
      @meals << Meal.new(row)
    end
    @meals.empty? ? @next_id = 1 : @next_id = @meals.last.id + 1
  end

  def save_csv
    csv_options = { write_headers: true, headers: [:id, :name, :price] }
    serialized_meals = @meals.map { |meal| { id: meal.id, name: meal.name, price: meal.price } }
    CSV.open(@csv_file_path, 'wb', csv_options) do |row|
      serialized_meals.each { |meal| row << meal }
    end
  end
end
