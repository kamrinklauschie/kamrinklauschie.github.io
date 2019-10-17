# Very dirty code that needs refactoring...
def hop_hop_hop(number_of_exercises)
  array = (1..number_of_exercises).to_a
  array.each { |number| puts "hop! " * number + "One more time..." }
end

hop_hop_hop(6)
