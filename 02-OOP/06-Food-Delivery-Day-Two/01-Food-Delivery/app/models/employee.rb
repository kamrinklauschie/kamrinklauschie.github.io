class Employee
  attr_reader :name, :username, :password, :role
  attr_accessor :id

  def initialize(params = {})
    @id = params[:id]
    @name = params[:name]
    @username = params[:username]
    @password = params[:password]
    @role = params[:role]
  end

  def manager?
    @role == "manager"
  end

  def delivery_guy?
    @role == "delivery_guy"
  end
end
