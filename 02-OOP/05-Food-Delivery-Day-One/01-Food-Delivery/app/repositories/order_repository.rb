require_relative '../models/order'

class OrderRepository
  attr_accessor :id
  def initialize(csv_file_path, meal, employee, customer)
    @csv_file_path = csv_file_path
    @orders = []
    @meal = meal
    @employee = employee
    @customer = customer
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def undelivered_orders
  end

  def all
    @orders
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
      row[:id] = row[:id].to_i
      @orders << Order.new(row)
    end
    @orders.empty? ? @next_id = 1 : @next_id = @orders.last.id + 1
  end

  def save_csv
    csv_options = { write_headers: true, headers: [:id] }
    serialized_orders = @orders.map { |order| { id: order.id } }
    CSV.open(@csv_file_path, 'wb', csv_options) do |row|
      serialized_orders.each { |order| row << order }
    end
  end
end
