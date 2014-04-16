def linear_search(to_find, numbers)
  
  i = 0

  while numbers.length > i do
    return i if numbers[i] == to_find
    i += 1
  end

  nil

end

def global_linear_search(to_find, numbers)
  
  i = 0
  matches = []

  while numbers.length > i do
    matches << i if numbers[i] == to_find
    i += 1
  end

  matches

end

random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
puts linear_search(-1, random_numbers)
puts linear_search(18, random_numbers)
puts linear_search(6, random_numbers)
puts linear_search(37, random_numbers)
puts linear_search(99, random_numbers)


bananas_arr = "bananas".split(//)
puts global_linear_search("a", bananas_arr)