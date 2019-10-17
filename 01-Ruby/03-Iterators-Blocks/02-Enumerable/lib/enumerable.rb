def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  (array.select.each_with_index { |_element, index| index.odd? }).sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select { |num| num.even? }
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject { |word| word.length > max_length }
  # alternative code below
  # array.reject do |word|
  # word.length > max_length
  # end
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |number| number < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |element| element + '!' }
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
  array.reduce(:+)
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use of Enumerable#each_slice
  array.each_slice(2).map { |pairs| pairs.sort }
end
