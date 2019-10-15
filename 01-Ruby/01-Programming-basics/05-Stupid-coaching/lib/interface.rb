require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

### Talking with the user ###

puts "Welcome to your coaching session!"
your_message = gets.chomp

until coach_answer(your_message) == ""
  p coach_answer(your_message)
  your_message = gets.chomp
end

#############################
