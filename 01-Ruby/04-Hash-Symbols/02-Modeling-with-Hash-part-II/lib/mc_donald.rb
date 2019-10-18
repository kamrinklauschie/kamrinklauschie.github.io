DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

MEALS = {
  "Happy Meal" => ["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac" => ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken" => ["McChicken", "Salad", "Sprite"]
}

def calories_counter(orders)
  sum = 0
  orders.each do |order|
    if MEALS.include? order
      foods_array = MEALS[order]
      foods_array.each do |each_food|
        sum += DISHES_CALORIES[each_food]
      end
    elsif DISHES_CALORIES.include? order
      sum += DISHES_CALORIES[order]
    end
  end
  return sum
end

orders = ["French Fries", "Sprite"]
p calories_counter(orders)
