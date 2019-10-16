def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if min > max
    return -1
  else
    sum = 0
    for i in (min..max) do
      sum = i + sum
    end
  end

  return sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  sum = 0
  counter = min
  while counter <= max
    sum = counter + sum
    counter += 1
  end

  return sum
end
