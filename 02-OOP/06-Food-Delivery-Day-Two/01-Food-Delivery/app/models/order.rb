class Order
  attr_reader :name, :meal, :employee, :customer, :delivered
  attr_accessor :id

  def initialize(params = {})
    @id = params[:id]
    @meal = params[:meal]
    @employee = params[:employee]
    @customer = params[:customer]
    @delivered = params[:delivered] || false
  end

  def delivered?
    @delivered
  end

  def deliver!
    @delivered = true
  end
end
