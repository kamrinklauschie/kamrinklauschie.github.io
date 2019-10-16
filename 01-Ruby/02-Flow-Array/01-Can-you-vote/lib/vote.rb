def allowed_to_vote?(age)
  # TODO: return (not print!) a boolean stating whether `age` is old enough to vote
  # NOTE: Use an if/else statment

puts "What is your age?"
age = gets.chomp

if age < 18
  return false
else
  return true
end
