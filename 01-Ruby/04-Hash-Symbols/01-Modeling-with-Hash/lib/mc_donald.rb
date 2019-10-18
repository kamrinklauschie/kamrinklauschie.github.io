MENU = {

  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150

}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this mcDonald order
  MENU.fetch_values(burger, side, beverage).sum
end

p poor_calories_counter("Hamburger", "Salad", "Coca Cola")

# Create a poor_calories_counter that returns the total number of calories for the three items of your order.
# constraint: your method should make use of a hash (obviously!)
# constraint: your method must use our given calorie values!
