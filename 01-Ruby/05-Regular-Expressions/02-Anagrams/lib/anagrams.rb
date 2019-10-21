def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  a_string.gsub(/\W/, "").downcase.chars.sort == another_string.gsub(/\W/, "").downcase.chars.sort
end

# TODO: implement the improved method
def anagrams_on_steroids?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  chars1 = a_string.gsub(/\W/, "").downcase.chars
  chars2 = another_string.gsub(/\W/, "").downcase.chars
  the_frequencies1 = Hash.new(0)
  the_frequencies2 = Hash.new(0)
  chars1.each { |chars| the_frequencies1[chars] += 1 }
  chars2.each { |chars| the_frequencies2[chars] += 1 }
  the_frequencies1 == the_frequencies2
end
