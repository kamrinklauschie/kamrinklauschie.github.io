require_relative '../repositories/order_repository'

class OrdersController
  def initialize(meal_repository, employee_repository, customer_repository, order_repository)
    @order_repository = order_repository
  end

  def list_undelivered_orders

  end

  def add

  end

  def list_my_orders(employee)

  end

  def mark_as_delivered(employee)

  end
end
