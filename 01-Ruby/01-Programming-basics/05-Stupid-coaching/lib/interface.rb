require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

### Talking with the user ###

while true
  puts "Welcome to your coaching session!"
  your_message = gets.chomp
  the_answer = coach_answer(your_message)
  p the_answer
  break if the_answer == ""
end

#############################
