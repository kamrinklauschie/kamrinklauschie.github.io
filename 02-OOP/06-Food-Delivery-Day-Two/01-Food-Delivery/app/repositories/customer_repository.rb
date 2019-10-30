require_relative '../models/customer'

class CustomerRepository
  attr_accessor :id
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all
    @customers
  end

  def add(customer)
    customer.id = @next_id
    @next_id += 1
    @customers << customer
    save_csv
  end

  def find(id)
    @customers.select { |customer| customer.id == id }.first
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @customers << Customer.new(row)
    end
    @customers.empty? ? @next_id = 1 : @next_id = @customers.last.id + 1
  end

  def save_csv
    csv_options = { write_headers: true, headers: [:id, :name, :address] }
    serialized_customers = @customers.map { |customer| { id: customer.id, name: customer.name, address: customer.address} }
    CSV.open(@csv_file_path, 'wb', csv_options) do |row|
      serialized_customers.each { |customer| row << customer }
    end
  end
end
