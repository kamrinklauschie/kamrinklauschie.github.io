class CustomersView
  def ask_for_customer_name
    puts "What's the customer name?"
    gets.chomp
  end

  def ask_for_customer_address
    puts "What's the customer address?"
    gets.chomp
  end

  def show_customers(customers)
    puts customers.name
  end
end
