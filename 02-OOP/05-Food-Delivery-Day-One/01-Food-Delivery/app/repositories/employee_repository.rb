require_relative '../models/employee'

class EmployeeRepository
  attr_accessor :id
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @employees = []
    @next_id = 1
    load_csv if File.exist?(csv_file_path)
  end

  def all_delivery_guys
    @employees.filter { |employee| employee.role == "delivery_guy" }
  end

  def find(id)
    @employees.select { |employee| employee.id == id }.first
  end

  def find_by_username(username)
    @employees.select { |employee| employee.username == username }.first
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @employees << Employee.new(row)
    end
    @employees.empty? ? @next_id = 1 : @next_id = @employees.last.id + 1
  end

  def save_csv
    csv_options = { write_headers: true, headers: [:id, :name, :price] }
    serialized_employees = @employees.map { |employee| { id: employee.id, name: employee.name } }
    CSV.open(@csv_file_path, 'wb', csv_options) do |row|
      serialized_employees.each { |employee| row << employee }
    end
  end
end
