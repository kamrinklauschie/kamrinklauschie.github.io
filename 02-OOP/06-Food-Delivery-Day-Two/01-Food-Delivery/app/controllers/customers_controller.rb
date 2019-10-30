require_relative '../repositories/customer_repository'
require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def list
    @customer_repository.all.each do |customer|
      @view.show_customers(customer)
    end
  end

  def add
    name = @view.ask_for_customer_name
    address = @view.ask_for_customer_address
    @customer_repository.add(Customer.new(name: name, address: address))
  end
end
