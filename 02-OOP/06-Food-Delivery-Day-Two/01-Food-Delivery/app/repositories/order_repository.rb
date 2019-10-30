require 'pry-byebug'
require_relative '../models/order'

class OrderRepository
  attr_accessor :id
  def initialize(csv_file_path, meal_repository, employee_repository, customer_repository)
    @csv_file_path        = csv_file_path
    @orders               = []
    @meal_repository      = meal_repository
    @employee_repository  = employee_repository
    @customer_repository  = customer_repository
    @next_id              = 1
    load_csv if File.exist?(csv_file_path)
  end

  def undelivered_orders
    @orders.select { |order| order.delivered? == false }
  end

  def add(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save_csv
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      data = {}
      # Writing ID to new Order instance
      data[:id] = row[:id].to_i
      # Writing meal to new Order instance
      meal_id = row[:meal_id].to_i
      new_meal = @meal_repository.find(meal_id)
      data[:meal] = new_meal
      # Writing employee to new Order instance
      employee_id = row[:employee_id].to_i
      new_employee = @employee_repository.find(employee_id)
      data[:employee] = new_employee
      # Writing customer to new Order instance
      customer_id = row[:customer_id].to_i
      new_customer = @customer_repository.find(customer_id)
      data[:customer] = new_customer
      # Writing delivered to new Order delivered
      delivered = (row[:delivered] == "true")
      data[:delivered] = delivered
      # Instantiating the new Order with the data hash
      new_order = Order.new(data)
      # Pushing the new Order to the orders array
      @orders << new_order
    end
    @orders.empty? ? @next_id = 1 : @next_id = @orders.last.id + 1
  end

  def save_csv
    csv_options = { write_headers: true, headers: [:id, :delivered, :meal_id, :employee_id, :customer_id] }
    serialized_orders = @orders.map { |order| { id: order.id, meal_id: order.meal.id, employee_id: order.employee.id, customer_id: order.customer.id, delivered: order.delivered } }
    CSV.open(@csv_file_path, 'wb', csv_options) do |row|
      serialized_orders.each { |order| row << order }
    end
  end
end
