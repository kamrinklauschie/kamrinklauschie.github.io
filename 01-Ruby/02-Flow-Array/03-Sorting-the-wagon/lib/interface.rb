require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.5.3/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.5.3/String.html#method-i-chomp


names = []
puts "Type a student name:"
input = gets.chomp
names << input

counter = 0
until input == ""
  puts "Type another student name or press enter to finish:"
  input = gets.chomp
  counter += 1
  break if input == ""

  names << input

end

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
string_list = wagon_sort(names)

puts 'debugging'
p "this is names"
p names

puts "Congratulations! Your Wagon has #{counter} students:
#{string_list[0..-2].join(', ')} and #{string_list.last}"
