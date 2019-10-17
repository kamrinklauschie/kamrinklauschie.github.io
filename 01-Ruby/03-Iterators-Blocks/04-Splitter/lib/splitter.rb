def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  super_array = []
  array_select = array.select { |word| word.length == size }
  array_reject = array.reject { |word| word.length == size }
  super_array << array_select.sort
  super_array << array_reject.sort
  super_array
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  array_true = array.select { |condition| yield(condition) }
  array_false = array.reject { |condition| yield(condition) }
  return [array_true, array_false]
end
